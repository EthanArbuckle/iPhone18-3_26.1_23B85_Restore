uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v7 = *v0;
  v8 = *(v0 + 8);
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_17_0(v2);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v11 = OUTLINED_FUNCTION_58_0();
  v12(v11);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status();
    OUTLINED_FUNCTION_35_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = OUTLINED_FUNCTION_18_0();
    v10(v9);
    *v4 = v11;
    *(v4 + 8) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C0CDEEF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E7265746E69 && a2 == 0xEC0000006C6F6F54;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6C616E7265746E69;
      break;
    case 3:
      result = 0x656C756465686373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_112();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO19ScheduledCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO19ScheduledCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_0(v7, v33);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO22InternalToolCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO22InternalToolCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_0(v12, v34);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO28AvailabilityChangeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO28AvailabilityChangeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_125(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12_0();
  v28 = *v0;
  v30 = v2[3];
  v29 = v2[4];
  OUTLINED_FUNCTION_17_0(v2);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys();
  OUTLINED_FUNCTION_66_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v28)
  {
    case 1:
      OUTLINED_FUNCTION_119();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys();
      OUTLINED_FUNCTION_26_0();
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_122();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys();
      OUTLINED_FUNCTION_26_0();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_91();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys();
      OUTLINED_FUNCTION_26_0();
LABEL_6:
      v31 = OUTLINED_FUNCTION_89();
      break;
    default:
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys();
      OUTLINED_FUNCTION_34_0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = OUTLINED_FUNCTION_123();
      break;
  }

  v32(v31);
  (*(v24 + 8))(v1, v22);
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.init(from:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_112();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO19ScheduledCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO19ScheduledCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v55);
  v54 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO22InternalToolCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO22InternalToolCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_0(v10, v51);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO28AvailabilityChangeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO28AvailabilityChangeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8_2();
  v23 = v1[4];
  OUTLINED_FUNCTION_28_0(v1, v1[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys();
  OUTLINED_FUNCTION_67_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v56)
  {
    v24 = OUTLINED_FUNCTION_87();
    _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v24, 0);
    if (v26 != v25 >> 1)
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_116();
      if (v29 == v30)
      {
        __break(1u);
        return;
      }

      v31 = OUTLINED_FUNCTION_118(v27, v28);
      specialized ArraySlice.subscript.getter(v31);
      OUTLINED_FUNCTION_129();
      if (v0 == v23 >> 1)
      {
        OUTLINED_FUNCTION_117();
        switch(v32)
        {
          case 1:
            OUTLINED_FUNCTION_119();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys();
            OUTLINED_FUNCTION_27_0();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            OUTLINED_FUNCTION_122();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys();
            OUTLINED_FUNCTION_27_0();
            swift_unknownObjectRelease();
LABEL_14:
            v33 = OUTLINED_FUNCTION_88();
            goto LABEL_15;
          case 3:
            OUTLINED_FUNCTION_91();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys();
            OUTLINED_FUNCTION_44_0();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            v46 = *(v54 + 8);
            v47 = OUTLINED_FUNCTION_86();
            v48(v47);
            goto LABEL_16;
          default:
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys();
            OUTLINED_FUNCTION_27_0();
            swift_unknownObjectRelease();
            v33 = OUTLINED_FUNCTION_88();
            v35 = v53;
LABEL_15:
            v34(v33, v35);
LABEL_16:
            v49 = OUTLINED_FUNCTION_63_0();
            v50(v49);
            MEMORY[0] = v52;
            __swift_destroy_boxed_opaque_existential_1(0);
            break;
        }

        goto LABEL_10;
      }
    }

    v36 = OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_134();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v38 = &type metadata for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger;
    v40 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v40);
    v41 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_42(v36);
    (*(v42 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = *(v23 + 8);
    v44 = OUTLINED_FUNCTION_86();
    v45(v44);
    v1 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
LABEL_10:
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269)
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

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7263736275736E75;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO21UnsubscribeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO21UnsubscribeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22_0(v9, v28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO19SubscribeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO19SubscribeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  v11 = OUTLINED_FUNCTION_1(v10);
  v29 = v12;
  v30 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_36();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12_0();
  v22 = *v0;
  v23 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = (v18 + 8);
  if (v22)
  {
    OUTLINED_FUNCTION_78();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys();
    OUTLINED_FUNCTION_34_0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v25 = OUTLINED_FUNCTION_88();
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys();
    OUTLINED_FUNCTION_34_0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v30;
    v27 = *(v29 + 8);
    v25 = v2;
  }

  v27(v25, v26);
  (*v24)(v1, v16);
  OUTLINED_FUNCTION_47();
}

Swift::Int AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_135();
  return Hasher._finalize()();
}

void AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v46 = v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO21UnsubscribeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO21UnsubscribeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v48);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO19SubscribeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO19SubscribeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0L6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v11);
  v47 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_2();
  v16 = v2[4];
  OUTLINED_FUNCTION_28_0(v2, v2[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v49 = v2;
    v17 = KeyedDecodingContainer.allKeys.getter();
    _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v17, 0);
    if (v19 != v18 >> 1)
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_116();
      if (v22 == v23)
      {
        __break(1u);
        return;
      }

      v24 = *(v21 + v20);
      specialized ArraySlice.subscript.getter(v20 + 1);
      v26 = v25;
      v28 = v27;
      swift_unknownObjectRelease();
      if (v26 == v28 >> 1)
      {
        if (v24)
        {
          OUTLINED_FUNCTION_78();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys();
          OUTLINED_FUNCTION_44_0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v29 = v46;
          v30 = v47;
          swift_unknownObjectRelease();
          v31 = OUTLINED_FUNCTION_68();
          v33 = v48;
        }

        else
        {
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys();
          OUTLINED_FUNCTION_44_0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v29 = v46;
          v30 = v47;
          swift_unknownObjectRelease();
          v31 = OUTLINED_FUNCTION_68();
          v33 = v7;
        }

        v32(v31, v33);
        v43 = *(v30 + 8);
        v44 = OUTLINED_FUNCTION_74();
        v45(v44);
        *v29 = v24;
        __swift_destroy_boxed_opaque_existential_1(v49);
        goto LABEL_10;
      }
    }

    v34 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_134();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v36 = &type metadata for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction;
    v38 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v38);
    v39 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_42(v34);
    (*(v40 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = OUTLINED_FUNCTION_123();
    v42(v41, v11);
    v2 = v49;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.batchIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState() + 24);

  return outlined init with copy of UUIDIdentifier(v3, a1);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.init(trigger:action:batchIdentifier:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a2;
  *a4 = *a1;
  a4[1] = v6;
  v7 = *(type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState() + 24);
  OUTLINED_FUNCTION_47_0();
  return outlined init with take of UUIDIdentifier(a3, &a4[v8], v9);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.toReportingSubscriptionState.getter()
{
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState();
  OUTLINED_FUNCTION_81();
  return OUTLINED_FUNCTION_4_1();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.toReportingSubscriptionState.getter(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMR);
  OUTLINED_FUNCTION_29(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV7TriggerOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV7TriggerOSgMR);
  OUTLINED_FUNCTION_29(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  closure #1 in closure #1 in AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.toReportingSubscriptionState.getter(a2, (&v23 - v12));
  AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.trigger.setter();
  v13 = a2[1];
  v14 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction();
  OUTLINED_FUNCTION_9(v14);
  v16 = MEMORY[0x1E69AA198];
  if (!v13)
  {
    v16 = MEMORY[0x1E69AA1A0];
  }

  (*(v15 + 104))(v2, *v16, v14);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.action.setter();
  v21 = &a2[*(type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState() + 24)];
  UUID.uuidString.getter();
  return AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.batchIdentifier.setter();
}

uint64_t closure #1 in closure #1 in AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.toReportingSubscriptionState.getter@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  switch(*a1)
  {
    case 1:
      v3 = MEMORY[0x1E69AA1B0];
      break;
    case 2:
      v3 = MEMORY[0x1E69AA1A8];
      break;
    case 3:
      v3 = MEMORY[0x1E69AA1C0];
      break;
    default:
      *a2 = 0;
      v3 = MEMORY[0x1E69AA1B8];
      break;
  }

  v4 = *v3;
  v5 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v5);
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState() + 24);

  return static UUID.== infix(_:_:)();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
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

    else if (a1 == 0x6564496863746162 && a2 == 0xEF7265696669746ELL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x72656767697274;
  }

  if (a1 == 1)
  {
    return 0x6E6F69746361;
  }

  return 0x6564496863746162;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v12 = a1[3];
  v13 = a1[4];
  OUTLINED_FUNCTION_17_0(a1);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys();
  OUTLINED_FUNCTION_66_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v4;
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger();
  OUTLINED_FUNCTION_90();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = v4[1];
    OUTLINED_FUNCTION_120();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction();
    OUTLINED_FUNCTION_90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState() + 24);
    type metadata accessor for UUIDIdentifier();
    lazy protocol witness table accessor for type UUIDIdentifier and conformance UUIDIdentifier(&lazy protocol witness table cache variable for type UUIDIdentifier and conformance UUIDIdentifier);
    OUTLINED_FUNCTION_90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_48();
  v16 = v15;
  v44 = v17;
  v18 = type metadata accessor for UUIDIdentifier();
  v19 = OUTLINED_FUNCTION_9(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v25);
  v45 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_36();
  v30 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v36 = (v35 - v34);
  v37 = v16[4];
  OUTLINED_FUNCTION_28_0(v16, v16[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger();
    OUTLINED_FUNCTION_30_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v36 = a14;
    OUTLINED_FUNCTION_120();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction();
    OUTLINED_FUNCTION_30_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36[1] = a12;
    lazy protocol witness table accessor for type UUIDIdentifier and conformance UUIDIdentifier(&lazy protocol witness table cache variable for type UUIDIdentifier and conformance UUIDIdentifier);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = *(v45 + 8);
    v39 = OUTLINED_FUNCTION_121();
    v40(v39);
    v41 = *(v30 + 24);
    OUTLINED_FUNCTION_47_0();
    outlined init with take of UUIDIdentifier(v24, &v36[v42], v43);
    outlined init with take of UUIDIdentifier(v36, v44, type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.init(code:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.toReportingOperationMetadata.getter()
{
  v3 = *v0;
  v1 = *(v0 + 2);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  return OUTLINED_FUNCTION_110();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.toReportingOperationMetadata.getter(uint64_t a1, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.code.setter();

    return AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.name.setter();
  }

  __break(1u);
  return result;
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_128(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_60_0(v2);
  v6 = v3 == *(v4 + 8) && *(v5 + 16) == *(v4 + 16);
  if (v6)
  {
    return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
  }

  else
  {
    return OUTLINED_FUNCTION_71();
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG17OperationMetadataV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG17OperationMetadataV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_2();
  v11 = *v0;
  v13 = v0[2];
  v14 = v0[1];
  v12 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys();
  OUTLINED_FUNCTION_67_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.init(from:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_54_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG17OperationMetadataV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG17OperationMetadataV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys();
  OUTLINED_FUNCTION_31_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_93();
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_93();
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_19_1();
    v12(v11);
    *v2 = v7;
    v2[1] = v8;
    v2[2] = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.assetType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.assetSpecifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.assetVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.init(assetType:assetSpecifier:assetVersion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.toReportingAssetSelector.getter()
{
  OUTLINED_FUNCTION_100();
  v2 = *(v0 + 32);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_4_1();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.toReportingAssetSelector.getter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];

  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetType.setter();
  v5 = a2[2];
  v6 = a2[3];

  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.setter();
  v7 = a2[4];
  v8 = a2[5];

  return AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetVersion.setter();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (OUTLINED_FUNCTION_56_0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_98();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570537465737361 && a2 == 0xEE00726569666963;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7079547465737361;
  }

  if (a1 == 1)
  {
    return 0x6570537465737361;
  }

  return 0x7265567465737361;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8SelectorV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8SelectorV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_2();
  v11 = *v0;
  v12 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v14 = v0[5];
  v15 = v0[4];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_76();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8SelectorV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8SelectorV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys();
  OUTLINED_FUNCTION_16_0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_48_0();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v13;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_0();
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v14;
    OUTLINED_FUNCTION_104();
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v18 = v15;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    v5[1] = v21;
    v5[2] = v19;
    v5[3] = v20;
    v5[4] = v18;
    v5[5] = v17;

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.assetSetIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.init(assetSetIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.toReportingAssetSet.getter()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  return OUTLINED_FUNCTION_4_1();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
  }

  else
  {
    return OUTLINED_FUNCTION_71();
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001C0CDF090 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys.hashValue.getter()
{
  OUTLINED_FUNCTION_111();
  MEMORY[0x1C68E2B10](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG3SetV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG3SetV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_2();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_28_0(v3, v3[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.init(from:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_54_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG3SetV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG3SetV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys();
  OUTLINED_FUNCTION_31_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_93();
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_19_1();
    v11(v10);
    *v2 = v7;
    v2[1] = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.atomicInstanceId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_50();
}

void *AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.init(assetSet:atomicInstanceId:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.toReportingAtomicInstance.getter()
{
  v4 = *v0;
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  return OUTLINED_FUNCTION_110();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.toReportingAtomicInstance.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11[-v7];
  v9 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  v12 = a2;
  v13 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.assetSet.setter();

  return AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.atomicInstanceId.setter();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_98();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465537465737361 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C0CDF0B0 == a2)
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

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7465537465737361;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG14AtomicInstanceV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG14AtomicInstanceV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_2();
  v11 = *v0;
  v12 = v0[1];
  v14 = v0[3];
  v15 = v0[2];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys();

  OUTLINED_FUNCTION_67_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet();
  OUTLINED_FUNCTION_105();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.init(from:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_59_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG14AtomicInstanceV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG14AtomicInstanceV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys();
  OUTLINED_FUNCTION_16_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet();
    OUTLINED_FUNCTION_10_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_48_0();
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_6_2();
    v11(v10);
    *v2 = v12;
    v2[1] = v13;
    v2[2] = v7;
    v2[3] = v9;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

__n128 AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.init(metadata:numJobsTriggered:assetSets:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u64[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.toReportingSchedulerState.getter()
{
  OUTLINED_FUNCTION_100();
  v2 = *(v0 + 32);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState();
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_4_1();
}

void closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.toReportingSchedulerState.getter()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v25 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  v2 = OUTLINED_FUNCTION_1(v25);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_125(v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
  OUTLINED_FUNCTION_29(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20();
  v27 = *v1;
  v13 = *(v1 + 2);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.metadata.setter();
  *(v1 + 3);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.numJobsTriggered.setter();
  v18 = *(v1 + 4);
  v19 = *(v18 + 16);
  if (v19)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v21 = (v18 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      MEMORY[0x1EEE9AC00](v20);

      static Buildable.with(_:)();

      v24 = *(v28 + 16);
      if (v24 >= *(v28 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v28 + 16) = v24 + 1;
      v20 = (*(v4 + 32))(v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v26, v25);
      v21 += 2;
      --v19;
    }

    while (v19);
  }

  AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.assetSets.setter();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_128(a1, a2);
  if (!v10)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_60_0(v2);
  v6 = v5[3];
  v7 = v5[4];
  v9 = v4[3];
  v8 = v4[4];
  v10 = v3 == v4[1] && v5[2] == v4[2];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v6 != v9)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_50();

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v11, v12);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C0CDF0D0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7465537465737361 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x7465537465737361;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG14SchedulerStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG14SchedulerStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v18 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20();
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v16 = v1[4];
  v17 = v1[3];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys();

  OUTLINED_FUNCTION_75();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v2)
  {
    v14 = OUTLINED_FUNCTION_89();
    v15(v14, v5);
  }

  else
  {
    OUTLINED_FUNCTION_124(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_103();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD3SetVGMd, &_sSay26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD3SetVGMR);
    lazy protocol witness table accessor for type [AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet] and conformance <A> [A], lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v0, v5);
  }

  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.init(from:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_59_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG14SchedulerStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG14SchedulerStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys();
  OUTLINED_FUNCTION_16_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
    OUTLINED_FUNCTION_10_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v11;
    LOBYTE(v11) = 1;
    OUTLINED_FUNCTION_48_0();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD3SetVGMd, &_sSay26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD3SetVGMR);
    OUTLINED_FUNCTION_103();
    lazy protocol witness table accessor for type [AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet] and conformance <A> [A], lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet);
    OUTLINED_FUNCTION_48_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = OUTLINED_FUNCTION_6_2();
    v9(v8);
    *v2 = v7;
    v2[1] = v12;
    v2[2] = v13;
    v2[3] = v10;
    v2[4] = v11;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.clientDomainName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_50();
}

__n128 AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.init(metadata:assetSet:configuredCount:requestedCount:fromPallasCount:clientDomainName:)@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v8 = a1[1].n128_u64[0];
  v9 = *a2;
  v10 = a2[1];
  result = *a1;
  *a8 = *a1;
  a8[1].n128_u64[0] = v8;
  a8[1].n128_u64[1] = v9;
  a8[2].n128_u64[0] = v10;
  a8[2].n128_u64[1] = a3;
  a8[3].n128_u64[0] = a4;
  a8[3].n128_u64[1] = a5;
  a8[4].n128_u64[0] = a6;
  a8[4].n128_u64[1] = a7;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.toReportingConfigurationState.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState();
  OUTLINED_FUNCTION_81();
  return OUTLINED_FUNCTION_4_1();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.toReportingConfigurationState.getter(uint64_t a1, __int128 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  OUTLINED_FUNCTION_29(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
  OUTLINED_FUNCTION_29(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_2();
  v26 = *a2;
  v11 = *(a2 + 2);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.metadata.setter();
  v16 = *(a2 + 3);
  v17 = *(a2 + 4);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.assetSet.setter();
  OUTLINED_FUNCTION_38_0(*(a2 + 5));
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.configuredCount.setter();
  OUTLINED_FUNCTION_38_0(*(a2 + 6));
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.requestedCount.setter();
  v22 = OUTLINED_FUNCTION_38_0(*(a2 + 7));
  MEMORY[0x1C68E1CD0](v22);
  v24 = *(a2 + 8);
  v23 = *(a2 + 9);

  return AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.clientDomainName.setter();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_128(a1, a2);
  if (!v16)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_60_0(v2);
  v6 = v5[3];
  v8 = v5[4];
  v7 = v5[5];
  v10 = v5[6];
  v9 = v5[7];
  v11 = v4[3];
  v12 = v4[4];
  v14 = v4[5];
  v13 = v4[6];
  v15 = v4[7];
  v25 = v4[8];
  v26 = v5[8];
  v16 = v3 == v4[1] && v5[2] == v4[2];
  v27 = v4[9];
  v28 = v5[9];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6 == v11 && v8 == v12)
  {
    if (v7 != v14 || v10 != v13 || v9 != v15)
    {
      return 0;
    }

    goto LABEL_29;
  }

  v18 = OUTLINED_FUNCTION_56_0();
  result = 0;
  if (v18)
  {
    v19 = v7 == v14 && v10 == v13;
    if (v19 && v9 == v15)
    {
LABEL_29:
      if (v28)
      {
        if (v27)
        {
          v24 = v26 == v25 && v28 == v27;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v27)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465537465737361 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72756769666E6F63 && a2 == 0xEF746E756F436465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574736575716572 && a2 == 0xEE00746E756F4364;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6C61506D6F7266 && a2 == 0xEF746E756F437361;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x80000001C0CDF0F0 == a2)
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

unint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys.stringValue.getter(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 0x7465537465737361;
      break;
    case 2:
      result = 0x72756769666E6F63;
      break;
    case 3:
      result = 0x6574736575716572;
      break;
    case 4:
      result = 0x6C6C61506D6F7266;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG21SetConfigurationStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG21SetConfigurationStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v21 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v19 = v0[3];
  v20 = v0[4];
  v17 = v0[6];
  v18 = v0[5];
  v15 = v0[8];
  v16 = v0[7];
  v14 = v0[9];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys();

  OUTLINED_FUNCTION_75();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_105();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {

    (*(v21 + 8))(v2, v5);
  }

  else
  {

    OUTLINED_FUNCTION_78();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet();

    OUTLINED_FUNCTION_105();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    OUTLINED_FUNCTION_124(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_124(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_124(4);
    KeyedEncodingContainer.encode(_:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    (*(v21 + 8))(v2, v5);
  }

  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG21SetConfigurationStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG21SetConfigurationStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_0();
  v12 = v3[4];
  OUTLINED_FUNCTION_28_0(v3, v3[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_69();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v30;
    LOBYTE(v27[0]) = 1;
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet();
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_69();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v29;
    v25 = v28;
    v13 = v28;
    v14 = v29;
    v23 = OUTLINED_FUNCTION_53_0(2);
    OUTLINED_FUNCTION_53_0(3);
    OUTLINED_FUNCTION_53_0(4);
    OUTLINED_FUNCTION_69();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v1;
    v18 = v17;
    (*(v8 + 8))(v16, v6);
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    v27[3] = v28;
    v27[4] = v29;
    v27[5] = v23;
    OUTLINED_FUNCTION_102();
    v27[6] = v20;
    v27[7] = v19;
    v27[8] = v15;
    v27[9] = v18;
    memcpy(v5, v27, 0x50uLL);
    outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(v27, &v28);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v28 = v25;
    v29 = v24;
    v30 = v26;
    v31 = v13;
    v32 = v14;
    v33 = v23;
    OUTLINED_FUNCTION_102();
    v34 = v22;
    v35 = v21;
    v36 = v15;
    v37 = v18;
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(&v28);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.atomicInstance.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.init(metadata:atomicInstance:assetCount:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  result = *a2;
  v6 = a2[1].n128_u64[0];
  v7 = a2[1].n128_u64[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = result;
  *(a4 + 40) = v6;
  *(a4 + 48) = v7;
  *(a4 + 56) = a3;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.toReportingAtomicInstanceState.getter()
{
  OUTLINED_FUNCTION_100();
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState();
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_4_1();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.toReportingAtomicInstanceState.getter(uint64_t a1, __int128 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMR);
  OUTLINED_FUNCTION_29(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
  OUTLINED_FUNCTION_29(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_2();
  v24 = *a2;
  v11 = *(a2 + 2);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.metadata.setter();
  v25 = *(a2 + 24);
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  result = AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.atomicInstance.setter();
  v23 = *(a2 + 7);
  if (!HIDWORD(v23))
  {
    return MEMORY[0x1C68E1C70](v23);
  }

  __break(1u);
  return result;
}

BOOL static AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_128(a1, a2);
  if (!v15)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_60_0(v2);
  v6 = v5[3];
  v8 = v5[4];
  v7 = v5[5];
  v9 = v5[6];
  v10 = v5[7];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[5];
  v14 = v4[6];
  v15 = v3 == v4[1] && v5[2] == v4[2];
  v16 = v4[7];
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v6 == v11 ? (v17 = v8 == v12) : (v17 = 0), (v17 || (OUTLINED_FUNCTION_56_0()) && (v7 == v13 ? (v18 = v9 == v14) : (v18 = 0), v18 || (OUTLINED_FUNCTION_50(), OUTLINED_FUNCTION_98(), (_stringCompareWithSmolCheck(_:_:expecting:)()))))
  {
    return v10 == v16;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E4963696D6F7461 && a2 == 0xEE0065636E617473;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x756F437465737361 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 0x6E4963696D6F7461;
  }

  return 0x756F437465737361;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG19AtomicInstanceStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG19AtomicInstanceStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v21 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20();
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v20 = v1[6];
  v16 = v1[7];
  v17 = v1[5];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys();
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_75();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v2)
  {
    v14 = OUTLINED_FUNCTION_89();
    v15(v14, v5);
  }

  else
  {
    OUTLINED_FUNCTION_78();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v0, v5);
  }

  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.init(from:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_59_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG19AtomicInstanceStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobileG19AtomicInstanceStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys();
  OUTLINED_FUNCTION_16_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
    OUTLINED_FUNCTION_10_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = *v23;
    v18 = *&v23[16];
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance();
    OUTLINED_FUNCTION_10_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = *&v23[8];
    v7 = *&v23[8];
    v14 = *&v23[16];
    v15 = *v23;
    v16 = v24;
    OUTLINED_FUNCTION_103();
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = OUTLINED_FUNCTION_6_2();
    v10(v9);
    v19 = *v23;
    *&v20 = *&v23[16];
    *(&v20 + 1) = *v23;
    v21 = *&v23[8];
    *&v22 = v24;
    *(&v22 + 1) = v8;
    v11 = v20;
    *v2 = *v23;
    v2[1] = v11;
    v12 = v22;
    v2[2] = v21;
    v2[3] = v12;
    outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(&v19, v23);
    __swift_destroy_boxed_opaque_existential_1(v0);
    *v23 = v17;
    *&v23[8] = v13;
    *&v23[16] = v18;
    v24 = v15;
    v25 = v7;
    v26 = v14;
    v27 = v16;
    v28 = v8;
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(v23);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus.toReportingUAFSubscriptionStatus.getter@<X0>(void *a1@<X8>)
{
  if (*v1)
  {
    if (*v1 == 1)
    {
      v3 = MEMORY[0x1E69AA1E0];
    }

    else
    {
      v3 = MEMORY[0x1E69AA1E8];
    }
  }

  else
  {
    *a1 = 0;
    v3 = MEMORY[0x1E69AA1F0];
  }

  v4 = *v3;
  v5 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 104);

  return v8(a1, v4, v6);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus.toReportingUAFSubscriptionDownloadStatus.getter@<X0>(void *a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      v3 = MEMORY[0x1E69AA218];
      break;
    case 2:
      v3 = MEMORY[0x1E69AA200];
      break;
    case 3:
      v3 = MEMORY[0x1E69AA230];
      break;
    case 4:
      v3 = MEMORY[0x1E69AA228];
      break;
    case 5:
      v3 = MEMORY[0x1E69AA1F8];
      break;
    case 6:
      v3 = MEMORY[0x1E69AA220];
      break;
    case 7:
      v3 = MEMORY[0x1E69AA208];
      break;
    case 8:
      v3 = MEMORY[0x1E69AA210];
      break;
    default:
      *a1 = 0;
      v3 = MEMORY[0x1E69AA238];
      break;
  }

  v4 = *v3;
  v5 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 104);

  return v8(a1, v4, v6);
}

_BYTE *AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.init(subscriptionStatus:downloadStatus:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.toReportingUAFSubscriptionEventState.getter()
{
  v1 = *v0;
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState();
  return OUTLINED_FUNCTION_4_1();
}

void closure #1 in AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.toReportingUAFSubscriptionEventState.getter()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  OUTLINED_FUNCTION_29(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  OUTLINED_FUNCTION_29(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_0();
  v21 = MEMORY[0x1E69AA1E0];
  switch(v3)
  {
    case 1:
      goto LABEL_4;
    case 2:
      v21 = MEMORY[0x1E69AA1E8];
      goto LABEL_4;
    case 3:
      v27 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus();
      v25 = v1;
      v26 = 1;
      goto LABEL_6;
    default:
      *v1 = 0;
      v21 = MEMORY[0x1E69AA1F0];
LABEL_4:
      v22 = *v21;
      v23 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus();
      OUTLINED_FUNCTION_9(v23);
      (*(v24 + 104))(v1, v22, v23);
      type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus();
      v25 = v1;
      v26 = 0;
      v27 = v23;
LABEL_6:
      __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
      AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.subscriptionStatus.setter();
      v28 = MEMORY[0x1E69AA218];
      v29 = 1;
      switch(HIBYTE(v3))
      {
        case 1:
          goto LABEL_15;
        case 2:
          v28 = MEMORY[0x1E69AA200];
          goto LABEL_15;
        case 3:
          v28 = MEMORY[0x1E69AA230];
          goto LABEL_15;
        case 4:
          v28 = MEMORY[0x1E69AA228];
          goto LABEL_15;
        case 5:
          v28 = MEMORY[0x1E69AA1F8];
          goto LABEL_15;
        case 6:
          v28 = MEMORY[0x1E69AA220];
          goto LABEL_15;
        case 7:
          v28 = MEMORY[0x1E69AA208];
          goto LABEL_15;
        case 8:
          v28 = MEMORY[0x1E69AA210];
          goto LABEL_15;
        case 9:
          goto LABEL_16;
        default:
          *v12 = 0;
          v28 = MEMORY[0x1E69AA238];
LABEL_15:
          (*(v7 + 104))(v12, *v28, v4);
          (*(v7 + 32))(v0, v12, v4);
          v29 = 0;
LABEL_16:
          __swift_storeEnumTagSinglePayload(v0, v29, 1, v4);
          AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.downloadStatus.setter();
          OUTLINED_FUNCTION_47();
          return;
      }
  }
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v2 != v4)
  {
    return 0;
  }

  if (v3 == 9)
  {
    if (v5 != 9)
    {
      return 0;
    }
  }

  else if (v5 == 9 || v3 != v5)
  {
    return 0;
  }

  return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C0CDF110 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE00737574617453)
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

uint64_t AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV20UAFSubscriptionStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV20UAFSubscriptionStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_2();
  v11 = *v0;
  v14 = v0[1];
  v12 = v4[3];
  v13 = v4[4];
  OUTLINED_FUNCTION_17_0(v4);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys();
  OUTLINED_FUNCTION_66_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus();
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_120();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_48();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV20UAFSubscriptionStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV20UAFSubscriptionStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus();
    OUTLINED_FUNCTION_35_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_120();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus();
    OUTLINED_FUNCTION_35_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = OUTLINED_FUNCTION_18_0();
    v24(v23);
    *v18 = a14;
    v18[1] = a12;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.init(cellularAccessRequest:cellularAccessResponse:constrainedNetworkAccessRequest:constrainedNetworkAccessResponse:expensiveNetworkAccessRequest:expensiveNetworkAccessResponse:isMAAutoAsset:isDiscretionary:isUserPriority:resultName:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.toReportingDownloadResult.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = v0[3];
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult();
  v5 = *v0;
  return OUTLINED_FUNCTION_4_1();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.toReportingDownloadResult.getter()
{
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.cellularAccessRequest.setter();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.cellularAccessResponse.setter();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.constrainedNetworkAccessRequest.setter();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.constrainedNetworkAccessResponse.setter();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.expensiveNetworkAccessRequest.setter();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.expensiveNetworkAccessResponse.setter();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.isMAAutoAsset.setter();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.isDiscretionary.setter();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.isUserPriority.setter();

  return AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.atomicInstanceId.setter();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[6];
  v23 = a2[7];
  v24 = a2[8];
  v25 = *(a2 + 2);
  v26 = *(a2 + 3);
  if (v5 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v16 == 2 || ((v16 ^ v5) & 1) != 0)
    {
      return v27;
    }
  }

  if (v6 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v17 == 2 || ((v17 ^ v6) & 1) != 0)
    {
      return v27;
    }
  }

  if (v7 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v18 == 2 || ((v18 ^ v7) & 1) != 0)
    {
      return v27;
    }
  }

  if (v8 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v19 == 2 || ((v19 ^ v8) & 1) != 0)
    {
      return v27;
    }
  }

  if (v9 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v20 == 2 || ((v20 ^ v9) & 1) != 0)
    {
      return v27;
    }
  }

  if (v10 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v21 == 2 || ((v21 ^ v10) & 1) != 0)
    {
      return v27;
    }
  }

  if (v11 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v22 == 2 || ((v22 ^ v11) & 1) != 0)
    {
      return v27;
    }
  }

  if (v12 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v23 == 2 || ((v23 ^ v12) & 1) != 0)
    {
      return v27;
    }
  }

  if (v13 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v24 == 2 || ((v24 ^ v13) & 1) != 0)
    {
      return v27;
    }
  }

  if (v14 == v25 && v15 == v26)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C0CDF130 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C0CDF150 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001FLL && 0x80000001C0CDF170 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000020 && 0x80000001C0CDF190 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x80000001C0CDF1C0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ELL && 0x80000001C0CDF1E0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F747541414D7369 && a2 == 0xED00007465737341;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6572637369447369 && a2 == 0xEF7972616E6F6974;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7250726573557369 && a2 == 0xEE00797469726F69;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x614E746C75736572 && a2 == 0xEA0000000000656DLL)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6F747541414D7369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      return result;
    case 7:
      result = 0x6572637369447369;
      break;
    case 8:
      result = 0x7250726573557369;
      break;
    case 9:
      result = 0x614E746C75736572;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8JobStateV14DownloadResultV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8JobStateV14DownloadResultV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v22 = v0[2];
  v23 = v0[1];
  v20 = v0[4];
  v21 = v0[3];
  v19 = v0[5];
  v16 = v0[7];
  v17 = v0[6];
  v15 = v0[8];
  v11 = *(v0 + 3);
  v18 = *(v0 + 2);
  v12 = v4[3];
  v13 = v4[4];
  v14 = *v0;
  OUTLINED_FUNCTION_17_0(v4);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys();
  OUTLINED_FUNCTION_66_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_101();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8JobStateV14DownloadResultV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8JobStateV14DownloadResultV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_1();
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_9_1();
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_9_1();
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_1();
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_1();
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_1();
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_1();
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_1();
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_1();
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_1();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v14;
    v15 = v13;
    v16 = *(v7 + 8);
    v17 = OUTLINED_FUNCTION_74();
    v18(v17);
    *v4 = v11;
    *(v4 + 1) = v12;
    *(v4 + 2) = v26;
    *(v4 + 3) = v25;
    *(v4 + 4) = v24;
    *(v4 + 5) = v23;
    *(v4 + 6) = v22;
    *(v4 + 7) = v21;
    *(v4 + 8) = v20;
    *(v4 + 16) = v15;
    *(v4 + 24) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.assetSelector.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_43_0(a1);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.downloadResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.init(metadata:assetSelector:downloadResult:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_127(a1, a2, a3);
  result = *v3;
  v5 = *(v3 + 16);
  *(v6 + 72) = *v3;
  *(v6 + 88) = v5;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.toReportingAssetJobState.getter()
{
  OUTLINED_FUNCTION_25_0();
  memcpy(v0, v1, 0x68uLL);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState();
  OUTLINED_FUNCTION_81();
  return OUTLINED_FUNCTION_4_1();
}

void closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.toReportingAssetJobState.getter()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateV14DownloadResultVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateV14DownloadResultVSgMR);
  OUTLINED_FUNCTION_29(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
  OUTLINED_FUNCTION_29(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
  OUTLINED_FUNCTION_29(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_0();
  v31 = *v1;
  v14 = *(v1 + 2);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.metadata.setter();
  v32 = *(v1 + 24);
  v33 = *(v1 + 40);
  v34 = *(v1 + 56);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.assetSelector.setter();
  if (*(v1 + 12))
  {
    v23 = *(v1 + 11);
    v24 = *(v1 + 80);
    v25 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult();
    v26 = *(v1 + 9);
    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_5_2();
  }

  else
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult();
    v27 = OUTLINED_FUNCTION_113();
  }

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.downloadResult.setter();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_47();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_128(a1, a2);
  if (!v18)
  {
    goto LABEL_16;
  }

  v3 = OUTLINED_FUNCTION_60_0(v2);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v10 = *(v5 + 48);
  v9 = *(v5 + 56);
  v11 = *(v5 + 64);
  v29 = *(v5 + 72);
  v28 = *(v5 + 88);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v15 = *(v4 + 40);
  v14 = *(v4 + 48);
  v17 = *(v4 + 56);
  v16 = *(v4 + 64);
  v27 = *(v4 + 72);
  v18 = v3 == *(v4 + 8) && *(v5 + 16) == *(v4 + 16);
  v26 = *(v4 + 88);
  v30 = *(v4 + 96);
  v31 = *(v5 + 96);
  if (!v18)
  {
    v24 = *(v4 + 64);
    v25 = *(v5 + 32);
    v19 = *(v5 + 56);
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = v19;
    v16 = v24;
    v7 = v25;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  *&v39 = v6;
  *(&v39 + 1) = v7;
  *&v40 = v8;
  *(&v40 + 1) = v10;
  v41 = v9;
  v42 = v11;
  *&v35 = v12;
  *(&v35 + 1) = v13;
  *&v36 = v15;
  *(&v36 + 1) = v14;
  v37 = v17;
  v38 = v16;
  v21 = static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.== infix(_:_:)(&v39, &v35);

  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v31)
  {
    if (!v30)
    {

      v22 = 1;
      return v22 & 1;
    }

    goto LABEL_15;
  }

  v39 = v29;
  *&v40 = v28;
  *(&v40 + 1) = v31;
  if (!v30)
  {
    v35 = v39;
    v36 = v40;
    swift_bridgeObjectRetain_n();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult(&v35);
LABEL_15:

LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  v32 = v27;
  *&v33 = v26;
  *(&v33 + 1) = v30;
  v22 = static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.== infix(_:_:)(&v39, &v32);
  v34[0] = v32;
  v34[1] = v33;

  swift_bridgeObjectRetain_n();
  outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult(v34);
  v35 = v39;
  v36 = v40;
  outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult(&v35);

  return v22 & 1;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65537465737361 && a2 == 0xED0000726F746365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE00746C75736552)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 0x6C65537465737361;
  }

  return 0x64616F6C6E776F64;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8JobStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8JobStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v18 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20();
  v11 = *v1;
  v10 = v1[1];
  OUTLINED_FUNCTION_79();
  v16 = *(v1 + 9);
  v17 = *(v1 + 11);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_28_0(v14, v15);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys();
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_75();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_95();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    OUTLINED_FUNCTION_78();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector();

    OUTLINED_FUNCTION_95();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    OUTLINED_FUNCTION_103();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult();

    OUTLINED_FUNCTION_95();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v18 + 8))(v0, v5);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8JobStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG8JobStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_0();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_17_0(v2);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_69();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v29;
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector();
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_69();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v27;
    v23 = v28;
    v21 = v27;
    v24 = v28;
    v11 = v30;
    v20 = v29;
    v12 = v32;
    v19 = v31;
    OUTLINED_FUNCTION_103();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult();
    OUTLINED_FUNCTION_30_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = OUTLINED_FUNCTION_52_0();
    v14(v13);
    v18 = v40;
    v17 = v41;
    v16 = v42;
    v15 = v43;
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    v26[3] = v27;
    v26[4] = v28;
    v26[5] = v29;
    v26[6] = v30;
    v26[7] = v31;
    v26[8] = v32;
    v26[9] = v40;
    v26[10] = v41;
    v26[11] = v42;
    v26[12] = v43;
    memcpy(v4, v26, 0x68uLL);
    outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(v26, &v27);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v27 = v22;
    v28 = v23;
    v29 = v25;
    v30 = v21;
    v31 = v24;
    v32 = v20;
    v33 = v11;
    v34 = v19;
    v35 = v12;
    v36 = v18;
    v37 = v17;
    v38 = v16;
    v39 = v15;
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(&v27);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.assetSelector.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_43_0(a1);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.toReportingAssetAssetUpdateState.getter()
{
  OUTLINED_FUNCTION_25_0();
  memcpy(v0, v1, 0x48uLL);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState();
  OUTLINED_FUNCTION_81();
  return OUTLINED_FUNCTION_4_1();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.toReportingAssetAssetUpdateState.getter(uint64_t a1, __int128 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
  OUTLINED_FUNCTION_29(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
  OUTLINED_FUNCTION_29(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_2();
  v21 = *a2;
  v11 = *(a2 + 2);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.metadata.setter();
  v22 = *(a2 + 24);
  v23 = *(a2 + 40);
  v24 = *(a2 + 56);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  return AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.assetSelector.setter();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_128(a1, a2);
  if (!v16)
  {
    goto LABEL_9;
  }

  v3 = OUTLINED_FUNCTION_60_0(v2);
  v6 = v5[3];
  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[7];
  v11 = v5[8];
  v13 = v4[3];
  v12 = v4[4];
  v15 = v4[5];
  v14 = v4[6];
  v16 = v3 == v4[1] && v5[2] == v4[2];
  v18 = v4[7];
  v17 = v4[8];
  if (v16)
  {
    goto LABEL_8;
  }

  v24 = v5[4];
  v25 = v5[6];
  v19 = v18;
  v20 = v17;
  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v17 = v20;
  v18 = v19;
  v7 = v24;
  v9 = v25;
  if (v21)
  {
LABEL_8:
    v27[0] = v6;
    v27[1] = v7;
    v27[2] = v8;
    v27[3] = v9;
    v27[4] = v10;
    v27[5] = v11;
    v26[0] = v13;
    v26[1] = v12;
    v26[2] = v15;
    v26[3] = v14;
    v26[4] = v18;
    v26[5] = v17;
    v22 = static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.== infix(_:_:)(v27, v26);
  }

  else
  {
LABEL_9:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65537465737361 && a2 == 0xED0000726F746365)
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

Swift::Int AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys.hashValue.getter(char a1)
{
  OUTLINED_FUNCTION_111();
  MEMORY[0x1C68E2B10](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C65537465737361;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  OUTLINED_FUNCTION_135();
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11UpdateStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11UpdateStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_2();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_79();
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_28_0(v12, v13);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys();
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_67_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_105();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    OUTLINED_FUNCTION_78();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector();

    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v14 = OUTLINED_FUNCTION_88();
  v15(v14, v4);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.init(from:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_59_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11UpdateStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11UpdateStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys();
  OUTLINED_FUNCTION_16_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
    OUTLINED_FUNCTION_10_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v20;
    v17 = v19;
    v8 = v21;
    OUTLINED_FUNCTION_78();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector();
    OUTLINED_FUNCTION_10_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = OUTLINED_FUNCTION_6_2();
    v10(v9);
    v11 = v29;
    v12 = v30;
    v13 = v31;
    v16 = v32;
    v15 = v33;
    v18[0] = v19;
    v18[1] = v20;
    v18[2] = v21;
    v18[3] = v28;
    v18[4] = v29;
    v18[5] = v30;
    v18[6] = v31;
    v18[7] = v32;
    v18[8] = v33;
    memcpy(v2, v18, 0x48uLL);
    outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(v18, &v19);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v19 = v17;
    v20 = v7;
    OUTLINED_FUNCTION_102();
    v21 = v8;
    v22 = v14;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v16;
    v27 = v15;
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(&v19);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.clientName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.fromLocation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.failureReason.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.secureReason.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.result.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_50();
}

__n128 AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.init(clientName:fromLocation:success:failureReason:secureReason:result:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u8[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.toReportingAssetSecureStateOperationMetadata.getter()
{
  OUTLINED_FUNCTION_25_0();
  memcpy(v0, v1, 0x58uLL);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata();
  OUTLINED_FUNCTION_81();
  return OUTLINED_FUNCTION_4_1();
}

uint64_t closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.toReportingAssetSecureStateOperationMetadata.getter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];

  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.clientName.setter();
  v5 = a2[2];
  v6 = a2[3];

  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.fromLocation.setter();
  v7 = *(a2 + 32);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.success.setter();
  v8 = a2[5];
  v9 = a2[6];

  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.failureReason.setter();
  v10 = a2[7];
  v11 = a2[8];

  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.secureReason.setter();
  v12 = a2[9];
  v13 = a2[10];

  return AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.result.setter();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = *(a2 + 56);
  v19 = *(a2 + 64);
  v22 = *(a2 + 72);
  v21 = *(a2 + 80);
  if (v3)
  {
    if (!v13)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v13)
    {
      v56 = *(a1 + 56);
      v58 = *(a1 + 64);
      v52 = *(a2 + 80);
      v54 = *(a2 + 72);
      v46 = *(a1 + 80);
      v48 = *(a1 + 48);
      v24 = *(a1 + 72);
      v25 = *(a2 + 64);
      v26 = *(a2 + 56);
      v50 = *(a2 + 48);
      v27 = *(a1 + 40);
      v28 = *(a2 + 40);
      v29 = *(a1 + 32);
      v30 = *(a2 + 32);
      v45 = *(a1 + 16);
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v30;
      v6 = v29;
      v17 = v28;
      v7 = v27;
      v20 = v26;
      v8 = v48;
      v18 = v50;
      v19 = v25;
      v11 = v24;
      v4 = v45;
      v12 = v46;
      v21 = v52;
      v22 = v54;
      v9 = v56;
      v10 = v58;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 == v14 && v5 == v15)
    {
      if (v6 != v16)
      {
        return 0;
      }
    }

    else
    {
      v47 = v16;
      v49 = v6;
      v51 = v17;
      v53 = v7;
      v55 = v20;
      v57 = v19;
      v59 = v11;
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if ((v33 & 1) == 0)
      {
        return result;
      }

      v19 = v57;
      v11 = v59;
      v7 = v53;
      v20 = v55;
      v17 = v51;
      if ((v49 ^ v47))
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  result = 0;
  if (!v15 && ((v6 ^ v16) & 1) == 0)
  {
LABEL_23:
    if (v8)
    {
      if (!v18)
      {
        return 0;
      }

      if (v7 != v17 || v8 != v18)
      {
        v36 = v9;
        v37 = v11;
        v38 = v19;
        v39 = v20;
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v20 = v39;
        v19 = v38;
        v11 = v37;
        v9 = v36;
        if ((v40 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v18)
    {
      return 0;
    }

    if (v10)
    {
      if (!v19)
      {
        return 0;
      }

      if (v9 != v20 || v10 != v19)
      {
        v42 = v11;
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v11 = v42;
        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v19)
    {
      return 0;
    }

    if (v12)
    {
      if (v21)
      {
        v44 = v11 == v22 && v12 == v21;
        if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v21)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65696C63 && a2 == 0xEA0000000000656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61636F4C6D6F7266 && a2 == 0xEC0000006E6F6974;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552657275636573 && a2 == 0xEC0000006E6F7361;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
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

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys.stringValue.getter(char a1)
{
  result = 0x614E746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x61636F4C6D6F7266;
      break;
    case 2:
      result = 0x73736563637573;
      break;
    case 3:
      result = 0x526572756C696166;
      break;
    case 4:
      result = 0x6552657275636573;
      break;
    case 5:
      result = 0x746C75736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV8MetadataV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV8MetadataV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_2();
  v12 = *v0;
  v11 = v0[1];
  v21 = v0[3];
  v22 = v0[2];
  v20 = *(v0 + 32);
  v18 = v0[6];
  v19 = v0[5];
  v16 = v0[8];
  v17 = v0[7];
  v14 = v0[9];
  v15 = v0[10];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV8MetadataV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV8MetadataV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = v2[4];
  OUTLINED_FUNCTION_28_0(v2, v2[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v39[0]) = 0;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    OUTLINED_FUNCTION_13_0(1);
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v17;
    OUTLINED_FUNCTION_13_0(2);
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_13_0(3);
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v18;
    OUTLINED_FUNCTION_13_0(4);
    v32[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v19;
    v47 &= 1u;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = v12;
    v23 = v22;
    (*(v7 + 8))(v21, v5);
    v38[0] = v14;
    OUTLINED_FUNCTION_102();
    v38[1] = v16;
    v38[2] = v24;
    v25 = v37;
    v38[3] = v37;
    LOBYTE(v38[4]) = v47;
    v26 = v36;
    v38[5] = v33;
    v38[6] = v36;
    OUTLINED_FUNCTION_115();
    v38[7] = v28;
    v38[8] = v27;
    v38[9] = v20;
    v38[10] = v23;
    memcpy(v4, v38, 0x58uLL);
    outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v39[0] = v14;
    v39[1] = v16;
    OUTLINED_FUNCTION_102();
    v39[2] = v29;
    v39[3] = v25;
    v40 = v47;
    v41 = v33;
    v42 = v26;
    OUTLINED_FUNCTION_115();
    v43 = v31;
    v44 = v30;
    v45 = v20;
    v46 = v23;
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata(v39);
  }

  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E6F73726570 && a2 == 0xEF6E6F6974617A69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7466617267 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576616C637865 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746E756F6DLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616E6F73726570;
  switch(a1)
  {
    case 1:
      result = 0x7466617267;
      break;
    case 2:
      result = 0x6576616C637865;
      break;
    case 3:
      result = 0x746E756F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_112();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO15MountCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO15MountCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_0(v7, v33);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO17ExclaveCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO17ExclaveCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_0(v12, v34);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO15GraftCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO15GraftCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_125(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO25PersonalizationCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO25PersonalizationCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12_0();
  v28 = *v0;
  v30 = v2[3];
  v29 = v2[4];
  OUTLINED_FUNCTION_17_0(v2);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys();
  OUTLINED_FUNCTION_66_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v28)
  {
    case 1:
      OUTLINED_FUNCTION_119();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys();
      OUTLINED_FUNCTION_26_0();
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_122();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys();
      OUTLINED_FUNCTION_26_0();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_91();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys();
      OUTLINED_FUNCTION_26_0();
LABEL_6:
      v31 = OUTLINED_FUNCTION_89();
      break;
    default:
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys();
      OUTLINED_FUNCTION_34_0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = OUTLINED_FUNCTION_123();
      break;
  }

  v32(v31);
  (*(v24 + 8))(v1, v22);
  OUTLINED_FUNCTION_47();
}

Swift::Int AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_135();
  return Hasher._finalize()();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.init(from:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_112();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO15MountCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO15MountCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v55);
  v54 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO17ExclaveCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO17ExclaveCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_0(v10, v51);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO15GraftCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO15GraftCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO25PersonalizationCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO25PersonalizationCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV0K13OperationTypeO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8_2();
  v23 = v1[4];
  OUTLINED_FUNCTION_28_0(v1, v1[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys();
  OUTLINED_FUNCTION_67_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v56)
  {
    v24 = OUTLINED_FUNCTION_87();
    _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v24, 0);
    if (v26 != v25 >> 1)
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_116();
      if (v29 == v30)
      {
        __break(1u);
        return;
      }

      v31 = OUTLINED_FUNCTION_118(v27, v28);
      specialized ArraySlice.subscript.getter(v31);
      OUTLINED_FUNCTION_129();
      if (v0 == v23 >> 1)
      {
        OUTLINED_FUNCTION_117();
        switch(v32)
        {
          case 1:
            OUTLINED_FUNCTION_119();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys();
            OUTLINED_FUNCTION_27_0();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            OUTLINED_FUNCTION_122();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys();
            OUTLINED_FUNCTION_27_0();
            swift_unknownObjectRelease();
LABEL_14:
            v33 = OUTLINED_FUNCTION_88();
            goto LABEL_15;
          case 3:
            OUTLINED_FUNCTION_91();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys();
            OUTLINED_FUNCTION_44_0();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            v46 = *(v54 + 8);
            v47 = OUTLINED_FUNCTION_86();
            v48(v47);
            goto LABEL_16;
          default:
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys();
            OUTLINED_FUNCTION_27_0();
            swift_unknownObjectRelease();
            v33 = OUTLINED_FUNCTION_88();
            v35 = v53;
LABEL_15:
            v34(v33, v35);
LABEL_16:
            v49 = OUTLINED_FUNCTION_63_0();
            v50(v49);
            MEMORY[0] = v52;
            __swift_destroy_boxed_opaque_existential_1(0);
            break;
        }

        goto LABEL_10;
      }
    }

    v36 = OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_134();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v38 = &type metadata for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType;
    v40 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v40);
    v41 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_42(v36);
    (*(v42 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = *(v23 + 8);
    v44 = OUTLINED_FUNCTION_86();
    v45(v44);
    v1 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
LABEL_10:
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.assetSelector.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_43_0(a1);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.secureOperationMetadata.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), sizeof(__dst));
  memcpy(a1, (v1 + 80), 0x58uLL);
  return outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(__dst, &v4);
}

void *AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.init(metadata:assetSelector:type:secureOperationMetadata:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, __int128 *a3@<X1>, char *a4@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 4);
  v9 = *(a3 + 5);
  v10 = *a4;
  *a5 = *a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = v6;
  *(a5 + 40) = v7;
  *(a5 + 56) = v8;
  *(a5 + 64) = v9;
  *(a5 + 72) = v10;
  return memcpy((a5 + 80), __src, 0x58uLL);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.toReportingAssetSecureState.getter()
{
  OUTLINED_FUNCTION_25_0();
  memcpy(v0, v1, 0xA8uLL);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState();
  OUTLINED_FUNCTION_81();
  return OUTLINED_FUNCTION_4_1();
}

void closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.toReportingAssetSecureState.getter()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateV8MetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateV8MetadataVSgMR);
  OUTLINED_FUNCTION_29(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateV13OperationTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateV13OperationTypeOSgMR);
  OUTLINED_FUNCTION_29(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
  OUTLINED_FUNCTION_29(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
  OUTLINED_FUNCTION_29(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_36();
  v36 = *v2;
  v19 = *(v2 + 16);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.metadata.setter();
  v37 = *(v2 + 24);
  v38 = *(v2 + 40);
  v39 = *(v2 + 56);
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.assetSelector.setter();
  closure #1 in closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.toReportingAssetSecureState.getter(v2, v0);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.type.setter();
  v28 = *(v2 + 88);
  if (v28 == 1)
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata();
    v29 = OUTLINED_FUNCTION_113();
  }

  else
  {
    v33 = *(v2 + 80);
    memcpy(v41, (v2 + 96), sizeof(v41));
    v40[0] = v33;
    v40[1] = v28;
    v34 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata();
    MEMORY[0x1EEE9AC00](v34);
    OUTLINED_FUNCTION_92();
    *(v35 - 16) = v40;
    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_5_2();
  }

  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.secureOperationMetadata.setter();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.toReportingAssetSecureState.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType();
  (*(*(v4 - 8) + 104))(a2, **(&unk_1E8128708 + v3), v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v35 = a1[5];
  v36 = a1[3];
  v37 = a1[6];
  v38 = a1[4];
  v34 = a1[7];
  v33 = a1[8];
  HIDWORD(v29) = *(a1 + 72);
  memcpy(__dst, a1 + 10, sizeof(__dst));
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v31 = a2[7];
  v32 = a2[6];
  v30 = a2[8];
  LODWORD(v29) = *(a2 + 72);
  memcpy(v48, a2 + 10, 0x58uLL);
  if (v3 != v6 || (v4 == v7 ? (v12 = v5 == v8) : (v12 = 0), !v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
LABEL_16:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  __src[0] = v36;
  __src[1] = v38;
  __src[2] = v35;
  __src[3] = v37;
  __src[4] = v34;
  __src[5] = v33;
  v42[0] = v9;
  v42[1] = v10;
  v42[2] = v11;
  v42[3] = v32;
  v42[4] = v31;
  v42[5] = v30;
  v13 = static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.== infix(_:_:)(__src, v42);

  LOBYTE(v14) = 0;
  if ((v13 & 1) != 0 && HIDWORD(v29) == v29)
  {
    v15 = __dst[0];
    v16 = __dst[1];
    memcpy(v46, &__dst[2], sizeof(v46));
    v17 = v48[0];
    v14 = v48[1];
    v18 = memcpy(v45, &v48[2], sizeof(v45));
    if (__dst[1] == 1)
    {
      if (v48[1] == 1)
      {
        __src[0] = __dst[0];
        __src[1] = 1;
        OUTLINED_FUNCTION_131(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10]);
        outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(__dst, v42);
        outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(v48, v42);
        v26 = __src;
LABEL_19:
        outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v26, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSgMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSgMR);
        return v14 & 1;
      }

      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(__dst, __src);
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(v48, __src);
    }

    else
    {
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      OUTLINED_FUNCTION_131(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10]);
      memcpy(v42, __src, sizeof(v42));
      if (v14 != 1)
      {
        memcpy(&v41[2], &v48[2], 0x48uLL);
        v41[0] = v17;
        v41[1] = v14;
        LOBYTE(v14) = static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.== infix(_:_:)(v42, v41);
        memcpy(v39, v41, sizeof(v39));
        outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(__dst, v40);
        outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(v48, v40);
        outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(__src, v40);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata(v39);
        memcpy(v40, v42, sizeof(v40));
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata(v40);
        v41[0] = v15;
        v41[1] = v16;
        memcpy(&v41[2], v46, 0x48uLL);
        v26 = v41;
        goto LABEL_19;
      }

      memcpy(v41, __src, sizeof(v41));
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(__dst, v40);
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(v48, v40);
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(__src, v40);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata(v41);
    }

    __src[0] = v15;
    __src[1] = v16;
    memcpy(&__src[2], v46, 0x48uLL);
    __src[11] = v17;
    __src[12] = v14;
    memcpy(v44, v45, sizeof(v44));
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(__src, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSg_AHtMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSg_AHtMR);
    goto LABEL_16;
  }

  return v14 & 1;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65537465737361 && a2 == 0xED0000726F746365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000017 && 0x80000001C0CDF200 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_111();
  MEMORY[0x1C68E2B10](a1);
  return Hasher._finalize()();
}

unint64_t AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys.stringValue.getter(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6C65537465737361;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v26 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v9 = *v0;
  v10 = v0[2];
  v21 = v0[3];
  v22 = v0[4];
  v20 = v0[5];
  v23 = v0[6];
  v19 = v0[7];
  v24 = v0[8];
  v25 = v0[1];
  v30 = *(v0 + 72);
  memcpy(v29, v0 + 10, 0x58uLL);
  v11 = v3[3];
  v12 = v3[4];
  OUTLINED_FUNCTION_17_0(v3);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys();

  OUTLINED_FUNCTION_75();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28[0] = v9;
  v28[1] = v25;
  v28[2] = v10;
  LOBYTE(v27[0]) = 0;
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v1)
  {
    v13 = *(v26 + 8);
    v14 = OUTLINED_FUNCTION_76();
    v15(v14);
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector();
    OUTLINED_FUNCTION_133();

    OUTLINED_FUNCTION_90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    LOBYTE(v27[0]) = 2;
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType();
    OUTLINED_FUNCTION_90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v28, v29, sizeof(v28));
    OUTLINED_FUNCTION_91();
    outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(v29, v27);
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata();
    OUTLINED_FUNCTION_90();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v27, v28, sizeof(v27));
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v27, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSgMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSgMR);
    v16 = *(v26 + 8);
    v17 = OUTLINED_FUNCTION_76();
    v18(v17);
  }

  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV06MobilegG11SecureStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v23);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v8 = v2[3];
  v9 = v2[4];
  OUTLINED_FUNCTION_17_0(v2);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v22 = v4;
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata();
    OUTLINED_FUNCTION_44_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v27;
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector();
    OUTLINED_FUNCTION_44_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v26;
    v16 = v25;
    v10 = v27;
    v19 = v28;
    v20 = v26;
    v17 = v25;
    v18 = v30;
    LOBYTE(v24[0]) = 2;
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v29;
    v11 = v25;
    OUTLINED_FUNCTION_91();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = OUTLINED_FUNCTION_99();
    v13(v12);
    memcpy(&v37[7], v36, 0x58uLL);
    v24[0] = v16;
    v24[1] = v15;
    v24[2] = v21;
    v24[3] = v17;
    v24[4] = v20;
    v24[5] = v10;
    v24[6] = v19;
    v24[7] = v14;
    v24[8] = v18;
    LOBYTE(v24[9]) = v11;
    memcpy(&v24[9] + 1, v37, 0x5FuLL);
    memcpy(v22, v24, 0xA8uLL);
    outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(v24, &v25);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v25 = v16;
    v26 = v15;
    v27 = v21;
    v28 = v17;
    v29 = v20;
    v30 = v10;
    v31 = v19;
    v32 = v14;
    v33 = v18;
    v34 = v11;
    memcpy(v35, v37, sizeof(v35));
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(&v25);
  }

  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.UnsubscribeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.SubscribeCodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState()
{
  result = type metadata singleton initialization cache for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState;
  if (!type metadata singleton initialization cache for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of UUIDIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUIDIdentifier and conformance UUIDIdentifier(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUIDIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of UUIDIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_50();
  v8(v7);
  return a2;
}

uint64_t partial apply for closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.toReportingOperationMetadata.getter(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.toReportingOperationMetadata.getter(a1, v1[2]);
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector.CodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.toReportingAssetSet.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.toReportingAssetSet.getter();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.toReportingAtomicInstance.getter(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.toReportingAtomicInstance.getter(a1, v1[2], v1[3]);
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD3SetVGMd, &_sSay26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD3SetVGMR);
    a2();
    OUTLINED_FUNCTION_106();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus);
  }

  return result;
}

uint64_t partial apply for closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.toReportingDownloadResult.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  return closure #1 in AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.toReportingDownloadResult.getter();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.MountCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.ExclaveCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.GraftCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.PersonalizationCodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSgMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.AvailabilityState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_62_0(-1);
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_62_0(*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_62_0(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_62_0(-1);
  }
}

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.AvailabilityState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata completion function for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState()
{
  result = type metadata accessor for UUIDIdentifier();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65284;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AppleIntelligenceReporting0aB18AssetDeliveryEventV06MobiledD11SecureStateV8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.DownloadResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_62_0(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 6);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_62_0(v8);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_84(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_82(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_83(result, v6);
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
          result = OUTLINED_FUNCTION_73(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_62_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_62_0(v8);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.SubscriptionStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_84(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_82(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_83(result, v6);
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
          result = OUTLINED_FUNCTION_73(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_62_0(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_62_0(v8);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_84(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_82(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_83(result, v6);
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
          result = OUTLINED_FUNCTION_73(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_62_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_62_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_62_0(v8);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_84(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_82(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_83(result, v6);
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
          result = OUTLINED_FUNCTION_73(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return getEnumTag for AppleIntelligenceAsset.CodingKeys(a1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return static Buildable.with(_:)();
}

unint64_t OUTLINED_FUNCTION_38_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= v1)
  {
    a1 = v1;
  }

  *(v2 - 52) = 0;
  return a1;
}

uint64_t OUTLINED_FUNCTION_53_0@<X0>(char a1@<W8>)
{
  *(v1 - 168) = a1;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_72@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

void OUTLINED_FUNCTION_79()
{
  v2 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  *(v1 - 176) = v0[3];
  *(v1 - 168) = v3;
  v5 = v0[6];
  *(v1 - 192) = v0[7];
  *(v1 - 184) = v4;
  v6 = v0[8];
  *(v1 - 160) = v5;
  *(v1 - 152) = v6;
}

uint64_t OUTLINED_FUNCTION_87()
{
  *(v4 - 200) = v0;
  *(v4 - 192) = v1;
  *(v4 - 184) = v2;
  v6 = *(v4 - 104);
  v7 = *(v4 - 96);
  *(v4 - 88) = v3;

  return KeyedDecodingContainer.allKeys.getter();
}

uint64_t OUTLINED_FUNCTION_99()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 88);
  return result;
}

__n128 OUTLINED_FUNCTION_100()
{
  result = *v0;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_101()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_107()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_109()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_110()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_111()
{

  return Hasher.init(_seed:)();
}

void OUTLINED_FUNCTION_117()
{
  v2 = *(v1 - 120);
  v3 = *(v1 - 112);
  *(v1 - 216) = v0;
}

__n128 OUTLINED_FUNCTION_127@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  result = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = result;
  *(a3 + 40) = v5;
  *(a3 + 56) = v6;
  *(a3 + 64) = v7;
  return result;
}

uint64_t *OUTLINED_FUNCTION_128(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_130()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_131(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a66, (v66 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_132()
{
  v2 = *(v0 - 112);

  return type metadata accessor for DecodingError();
}

uint64_t OUTLINED_FUNCTION_133()
{
}

uint64_t OUTLINED_FUNCTION_134()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_135()
{

  JUMPOUT(0x1C68E2B10);
}

Swift::UInt32 __swiftcall crc32Checksum(_:)(Swift::String a1)
{
  v1 = String.utf8CString.getter();
  v2 = *(v1 + 16);
  if (HIDWORD(v2))
  {
    __break(1u);
  }

  else
  {
    v3 = crc32(0, (v1 + 32), v2);

    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v1) = -1;
    }

    else
    {
      LODWORD(v1) = v3;
    }
  }

  return v1;
}

uint64_t convertToAppleIntelligenceError(error:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = a1;
  MEMORY[0x1C68E2E60]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB5Error_pMd, &_s26AppleIntelligenceReporting0aB5Error_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of any Source<Self.Stream == A>(v10, v13);
    return outlined init with take of any Source<Self.Stream == A>(v13, a2);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    outlined destroy of AppleIntelligenceError?(v10, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
    v5 = type metadata accessor for GeneralAppleIntelligenceError();
    MEMORY[0x1C68E2E60](a1);
    GeneralAppleIntelligenceError.__allocating_init(error:)();
    v7 = v6;
    a2[3] = v5;
    OUTLINED_FUNCTION_0_3();
    result = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(v8, v9);
    a2[4] = result;
    *a2 = v7;
  }

  return result;
}

void AppleIntelligenceError.toGeneralReportingError.getter()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_2();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  AppleIntelligenceReportingGeneralError.init()();
  (*(v1 + 80))(v3, v1);
  v54 = v23;
  AppleIntelligenceReportingGeneralError.domain.setter();
  v24 = *(v1 + 8);
  v25 = dispatch thunk of CustomNSError.errorCode.getter();
  if (v25 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v25 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v52 = v11;
  v53 = v5;
  LOBYTE(v55[0]) = 0;
  AppleIntelligenceReportingGeneralError.errorCode.setter();
  v26 = *(v1 + 40);
  v27 = OUTLINED_FUNCTION_23_1();
  v28(v27);
  AppleIntelligenceReportingGeneralError.descriptionWithoutUnderlying.setter();
  v29 = *(v1 + 24);
  dispatch thunk of CustomStringConvertible.description.getter();
  AppleIntelligenceReportingGeneralError.description.setter();
  v57 = MEMORY[0x1E69E7CC0];
  AppleIntelligenceError.userInfo.getter();
  specialized Sequence.forEach(_:)(v30, &v57);

  v31 = v57;

  AppleIntelligenceReportingGeneralError.additionalUserInfo.setter();
  v32 = *(v1 + 56);
  v33 = OUTLINED_FUNCTION_23_1();
  v34(v33);
  AppleIntelligenceErrorCategory.rawValue.getter();
  AppleIntelligenceReportingGeneralError.category.setter();
  v35 = *(v1 + 64);
  v36 = OUTLINED_FUNCTION_23_1();
  v37(v36);
  AppleIntelligenceReportingGeneralError.retryAfterDate.setter();
  v38 = *(v1 + 48);
  v39 = OUTLINED_FUNCTION_23_1();
  v41 = v40(v39);
  v42 = *(v41 + 16);
  if (v42)
  {
    v52 = v31;
    v56 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v43 = v56;
    v51 = v41;
    v44 = v41 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v44, v55);
      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      v45 = OUTLINED_FUNCTION_50();
      AppleIntelligenceError.toGeneralReportingError.getter(v45);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v56 = v43;
      v47 = *(v43 + 16);
      v46 = *(v43 + 24);
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v46);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v56;
      }

      *(v43 + 16) = v47 + 1;
      v48 = *(v15 + 80);
      OUTLINED_FUNCTION_39_0();
      (*(v15 + 32))(v43 + v49 + *(v15 + 72) * v47, v20, v12);
      v44 += 40;
      --v42;
    }

    while (v42);
  }

  v50 = v54;
  AppleIntelligenceReportingGeneralError.internalUnderlyingErrors.setter();
  (*(v15 + 32))(v53, v50, v12);

  OUTLINED_FUNCTION_27_1();
}
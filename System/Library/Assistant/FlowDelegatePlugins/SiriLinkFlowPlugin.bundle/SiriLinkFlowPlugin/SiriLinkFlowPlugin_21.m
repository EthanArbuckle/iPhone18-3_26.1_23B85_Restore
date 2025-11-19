uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentErrorModel.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v0;
  v10 = v0[1];
  OUTLINED_FUNCTION_163();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
    OUTLINED_FUNCTION_49_13();
    v12 = OUTLINED_FUNCTION_76();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_21_24();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v14);
    OUTLINED_FUNCTION_172();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.CustomIntentErrorModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v4 = v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7_1(v22);
  v21 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_31_14();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v23);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_29_17();
  v12 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_85_6();
  v16 = v4[4];
  OUTLINED_FUNCTION_53_9(v4, v4[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_167();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    *v1 = KeyedDecodingContainer.decode(_:forKey:)();
    v1[1] = v17;
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_20_21();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v18);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = OUTLINED_FUNCTION_127_0();
    v20(v19);
    (*(v21 + 32))(v1 + *(v12 + 20), v2, v22);
    outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v1, type metadata accessor for WorkflowDataModels.CustomIntentErrorModel);
  }

  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.ConfirmActionModel.archivedViewData.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = OUTLINED_FUNCTION_22();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.ConfirmActionModel.prompt.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.ConfirmActionModel.archivedViewModel.getter@<X0>(uint64_t **a1@<X8>)
{
  v9 = v1[8];
  v8 = v1[9];
  if (v8 >> 60 == 15)
  {
    OUTLINED_FUNCTION_115_1();
  }

  else
  {
    v4 = *v1;
    v2 = v1[1];
    v5 = v1[2];
    v3 = v1[3];

    v1 = v9;
    v6 = v8;
  }

  result = outlined copy of Data?(v9, v8);
  *a1 = v1;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v2;
  a1[4] = v5;
  a1[5] = v3;
  return result;
}

uint64_t WorkflowDataModels.ConfirmActionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000000235180 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7572747365447369 && a2 == 0xED00006576697463;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.ConfirmActionModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x6C70736944707061;
      break;
    case 2:
      result = 0x4C6D7269666E6F63;
      break;
    case 3:
      result = 0x6C6562614C6F6ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7572747365447369;
      break;
    case 6:
      result = 0x74706D6F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.ConfirmActionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.ConfirmActionModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.ConfirmActionModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_12_33();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_9_31(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_9_31(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    OUTLINED_FUNCTION_9_31(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v1 + 4);
    outlined init with copy of DeviceState?();
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_48_13();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v19, *(&v19 + 1));
    v14 = *(v1 + 80);
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v1[11];
    v16 = v1[12];
    OUTLINED_FUNCTION_9_31(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v17 = OUTLINED_FUNCTION_25_18();
  v18(v17);
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.ConfirmActionModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_31_14();
  v12 = v3[4];
  OUTLINED_FUNCTION_53_9(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();
  OUTLINED_FUNCTION_167();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    LOBYTE(v34) = 0;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    OUTLINED_FUNCTION_30_17(1);
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v16;
    OUTLINED_FUNCTION_30_17(2);
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v13;
    v31 = v17;
    OUTLINED_FUNCTION_30_17(3);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v19;
    v26 = v18;
    LOBYTE(v33[0]) = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v34;
    v24 = v35;
    OUTLINED_FUNCTION_30_17(5);
    v20 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v22;
    (*(v8 + 8))(v1, v6);
    v33[0] = v28;
    v33[1] = v15;
    v33[2] = v30;
    v33[3] = v32;
    v33[4] = v27;
    v33[5] = v31;
    v33[6] = v26;
    v33[7] = v29;
    v33[8] = v34;
    v33[9] = v35;
    LOBYTE(v33[10]) = v20;
    v33[11] = v21;
    v33[12] = v23;
    outlined init with copy of WorkflowDataModels.ConfirmActionModel(v33, &v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    v34 = v28;
    v35 = v15;
    v36 = v30;
    v37 = v32;
    v38 = v27;
    v39 = v31;
    v40 = v26;
    v41 = v29;
    v42 = v25;
    v43 = v24;
    v44 = v20;
    v45 = v21;
    v46 = v23;
    outlined destroy of WorkflowDataModels.ConfirmActionModel(&v34);
    memcpy(v5, v33, 0x68uLL);
  }

  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.ConfirmActionModel(void *a1@<X8>)
{
  WorkflowDataModels.ConfirmActionModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x68uLL);
  }
}

uint64_t WorkflowDataModels.DisambiguateItemsModel.prompt.getter()
{
  OUTLINED_FUNCTION_23();

  return v0;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO33DisambiguateSmartPromptItemsModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO11stringValueSSvg_0(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO33DisambiguateSmartPromptItemsModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOs0M3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.DisambiguateItemsModel.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.DisambiguateItemsModel.encode(to:)()
{
  WorkflowDataModels.DisambiguateItemsModel.encode(to:)();
}

{
  OUTLINED_FUNCTION_74_6();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_7_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_29();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  OUTLINED_FUNCTION_167();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_163();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_49_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_67_9();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v14);
    OUTLINED_FUNCTION_23_21();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v15 = *(v9 + 8);
  v16 = OUTLINED_FUNCTION_52_11();
  v17(v16);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.DisambiguateItemsModel.init(from:)()
{
  WorkflowDataModels.DisambiguateItemsModel.init(from:)();
}

{
  OUTLINED_FUNCTION_74_6();
  v1 = v0;
  v3 = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_7_1(v13);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_40();
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_157_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
  OUTLINED_FUNCTION_49_13();
  OUTLINED_FUNCTION_66_9();
  lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v10);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = OUTLINED_FUNCTION_57_7();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Encodable.encode(to:) in conformance WorkflowDataModels.DisambiguateItemsModel()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  WorkflowDataModels.DisambiguateItemsModel.encode(to:)();
}

uint64_t WorkflowDataModels.DisambiguateItemsModel.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_23();
  v3 = v1 == 0x74706D6F7270 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_50() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x736D657469 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    OUTLINED_FUNCTION_48_3();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkflowDataModels.InvocationCommand.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000000002351A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000000002351C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7165527472617473 && a2 == 0xEC00000074736575)
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

uint64_t WorkflowDataModels.InvocationCommand.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x7165527472617473;
}

uint64_t WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    OUTLINED_FUNCTION_48_3();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directh4WithF10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO11stringValueSSvg_0(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 25705;
  }
}

uint64_t WorkflowDataModels.InvocationCommand.StartRequestCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065)
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

uint64_t protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.DisambiguateItemsModel@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void protocol witness for Encodable.encode(to:) in conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  WorkflowDataModels.DisambiguateSmartPromptItemsModel.encode(to:)();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.InvocationCommand.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directh4WithF10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOs0L3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.StartRequestCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();

  return CodingKey.description.getter(a1, started);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();

  return CodingKey.debugDescription.getter(a1, started);
}

void WorkflowDataModels.InvocationCommand.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  v53 = v2;
  v51 = v3;
  v45 = v4;
  v52 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  v9 = OUTLINED_FUNCTION_7_1(v8);
  v47 = v10;
  v48 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_30_14();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06DirectK20WithStringCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06DirectK20WithStringCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  v15 = OUTLINED_FUNCTION_7_1(v14);
  v49 = v16;
  v50 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_56_7();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directk4WithI10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directk4WithI10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v20);
  v46 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  v26 = &v45 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v27);
  v54 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_13_29();
  v32 = *(v7 + 24);
  v33 = *(v7 + 32);
  v34 = OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_53_9(v34, v35);
  lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v51)
  {
    if (v51 != 1)
    {
      lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();
      OUTLINED_FUNCTION_81_7();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      v41 = *(v47 + 8);
      v42 = OUTLINED_FUNCTION_65_10();
      v43(v42);
      v44 = *(v54 + 8);
      v38 = OUTLINED_FUNCTION_52_11();
      goto LABEL_11;
    }

    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();
    OUTLINED_FUNCTION_81_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v36 = v50;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v0)
    {
      HIBYTE(v55) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
      OUTLINED_FUNCTION_156();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v49 + 8))(v1, v36);
  }

  else
  {
    v37 = v46;
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();
    OUTLINED_FUNCTION_81_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v0)
    {
      HIBYTE(v55) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v37 + 8))(v26, v20);
  }

  v38 = OUTLINED_FUNCTION_97_1();
  v40 = v27;
LABEL_11:
  v39(v38, v40);
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.InvocationCommand.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v3);
  v61 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_16_9();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06DirectK20WithStringCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06DirectK20WithStringCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v63);
  v60 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_13_29();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directk4WithI10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directk4WithI10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v12);
  v62 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_8_20();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_56_7();
  v23 = v2[4];
  v64 = v2;
  OUTLINED_FUNCTION_53_9(v2, v2[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_10;
  }

  v59 = v19;
  v24 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO_Tt1g5(v24, 0);
  if (v26 == v25 >> 1)
  {
LABEL_9:
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v38 = &type metadata for WorkflowDataModels.InvocationCommand;
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_21_2(v36);
    (*(v40 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v59 + 8);
    v42 = OUTLINED_FUNCTION_138_1();
    v43(v42);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_75_6();
    return;
  }

  OUTLINED_FUNCTION_126();
  if (v30 < (v29 >> 1))
  {
    v31 = *(v28 + v27);
    specialized ArraySlice.subscript.getter(v27 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      if (v31)
      {
        if (v31 == 1)
        {
          lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();
          OUTLINED_FUNCTION_132();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          KeyedDecodingContainer.decode(_:forKey:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
          lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
          OUTLINED_FUNCTION_122_0();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v48 = *(v60 + 8);
          v49 = OUTLINED_FUNCTION_51_4();
          v50(v49);
          v51 = *(v59 + 8);
        }

        else
        {
          lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();
          OUTLINED_FUNCTION_132();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          KeyedDecodingContainer.decode(_:forKey:)();
          swift_unknownObjectRelease();
          v44 = *(v61 + 8);
          v45 = OUTLINED_FUNCTION_0_23();
          v46(v45);
          v47 = *(v59 + 8);
        }

        v52 = OUTLINED_FUNCTION_131_1();
        v53(v52);
      }

      else
      {
        lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
        lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B]);
        OUTLINED_FUNCTION_122_0();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v54 = *(v62 + 8);
        v55 = OUTLINED_FUNCTION_1_31();
        v56(v55);
        v57 = OUTLINED_FUNCTION_97_1();
        v58(v57, v17);
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  __break(1u);
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.InvocationCommand(uint64_t a1@<X8>)
{
  WorkflowDataModels.InvocationCommand.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

void protocol witness for Encodable.encode(to:) in conformance WorkflowDataModels.InvocationCommand()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  WorkflowDataModels.InvocationCommand.encode(to:)();
}

uint64_t WorkflowDataModels.DisambiguationItemModel.invocationCommand.getter()
{
  v1 = v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand;
  v2 = *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand);
  v3 = *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = OUTLINED_FUNCTION_22();
  outlined copy of WorkflowDataModels.InvocationCommand(v6, v7, v4, v5);
  return OUTLINED_FUNCTION_22();
}

void *WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  v13 = v9 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand;
  *v13 = a6;
  *(v13 + 1) = a7;
  *(v13 + 2) = a8;
  v13[24] = a9;
  return v9;
}

uint64_t WorkflowDataModels.DisambiguationItemModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000000235100 == a2)
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

unint64_t WorkflowDataModels.DisambiguationItemModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.DisambiguationItemModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkflowDataModels.DisambiguationItemModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_thumbnail, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  outlined consume of WorkflowDataModels.InvocationCommand(*(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand), *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8), *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 16), *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24));
  return v0;
}

uint64_t WorkflowDataModels.DisambiguationItemModel.__deallocating_deinit()
{
  WorkflowDataModels.DisambiguationItemModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void WorkflowDataModels.DisambiguationItemModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  v6 = v1[2];
  v7 = v1[3];
  OUTLINED_FUNCTION_2_41();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[4];
    v9 = v1[5];
    OUTLINED_FUNCTION_9_31(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_6_37();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v10);
    OUTLINED_FUNCTION_23_21();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v1 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand);
    v14 = *(v1 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 16);
    v15 = *(v1 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24);
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand();
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v11 = OUTLINED_FUNCTION_25_18();
  v12(v11);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

uint64_t WorkflowDataModels.DisambiguationItemModel.__allocating_init(from:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  WorkflowDataModels.DisambiguationItemModel.init(from:)();
  return v3;
}

void WorkflowDataModels.DisambiguationItemModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_40();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_56_7();
  v15 = v4[4];
  OUTLINED_FUNCTION_53_9(v4, v4[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();
  OUTLINED_FUNCTION_112_0();
  if (v1)
  {
    type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
    v19 = *(*v2 + 48);
    v20 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_156();
    v2[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v2[3] = v16;
    OUTLINED_FUNCTION_156();
    v2[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v2[5] = v17;
    type metadata accessor for VisualProperty();
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_6_37();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v18);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand();
    OUTLINED_FUNCTION_81_7();
    OUTLINED_FUNCTION_156();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = *(v11 + 8);
    v22 = OUTLINED_FUNCTION_31_16();
    v23(v22);
    v24 = v2 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand;
    *v24 = v25;
    *(v24 + 2) = v26;
    v24[24] = v27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkflowDataModels.DisambiguationItemModel@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.DisambiguationItemModel@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t key path setter for WorkflowDataModels.LinkMultiChoiceModel.options : WorkflowDataModels.LinkMultiChoiceModel(uint64_t *a1)
{
  v1 = *a1;

  return WorkflowDataModels.LinkMultiChoiceModel.options.setter(v2);
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.options.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO0B19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO06stringJ0SSvg_0(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x65646F4D6B6E696CLL;
  }
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO0B19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOs0L3KeyAAsAIP06stringJ0xSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.LinkMultiChoiceModel.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkMultiChoiceModel.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_164();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_8_20();
  v9 = v0[4];
  OUTLINED_FUNCTION_53_9(v0, v0[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();
  OUTLINED_FUNCTION_157_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_176(v22);
  OUTLINED_FUNCTION_176(&v21);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v22, v20);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_139();
  v10 = OUTLINED_FUNCTION_160();
  memcpy(v10, v11, v12);
  outlined destroy of WorkflowDataModels.LinkActionModel(v20);
  if (!v1)
  {
    v19 = *(v2 + 80);
    OUTLINED_FUNCTION_49_13();
    v13 = OUTLINED_FUNCTION_138_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_106_1();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v16 = *(v5 + 8);
  v17 = OUTLINED_FUNCTION_0_23();
  v18(v17);
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.LinkMultiChoiceModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_129();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v16);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_30_14();
  v8 = v1[4];
  OUTLINED_FUNCTION_53_9(v1, v1[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();
  OUTLINED_FUNCTION_112_0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    OUTLINED_FUNCTION_59_11();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v20, v19, sizeof(v20));
    v9 = OUTLINED_FUNCTION_138_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_106_1();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v11);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = *(v4 + 8);
    v13 = OUTLINED_FUNCTION_0_13();
    v14(v13);
    v15 = v18[11];
    OUTLINED_FUNCTION_118_0(v17);
    v17[10] = v15;
    outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v17, v18);
    OUTLINED_FUNCTION_86_2();
    v18[10] = v15;
    outlined destroy of WorkflowDataModels.LinkMultiChoiceModel(v18);
    memcpy(v2, v17, 0x58uLL);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkMultiChoiceModel(void *a1@<X8>)
{
  WorkflowDataModels.LinkMultiChoiceModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x58uLL);
  }
}

uint64_t WorkflowDataModels.LinkActionModel.archivedViewData.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_22();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_22();
}

void key path setter for WorkflowDataModels.LinkActionModel.snippetAction : WorkflowDataModels.LinkActionModel(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkflowDataModels.LinkActionModel.snippetAction.setter(v1);
}

uint64_t sub_1DDFC0()
{
  v1 = v0[3];

  if (v0[5])
  {

    v2 = v0[7];
  }

  v3 = v0[9];

  v4 = v0[11];

  OUTLINED_FUNCTION_116_0();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_1DE038()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

void *WorkflowDataModels.LinkActionModel.environment.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void key path setter for WorkflowDataModels.LinkActionModel.environment : WorkflowDataModels.LinkActionModel(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkflowDataModels.LinkActionModel.environment.setter(v1);
}

uint64_t WorkflowDataModels.LinkActionModel.archivedViewModel.getter@<X0>(uint64_t **a1@<X8>)
{
  v9 = v1[6];
  v8 = v1[7];
  if (v8 >> 60 == 15)
  {
    OUTLINED_FUNCTION_115_1();
  }

  else
  {
    v4 = *v1;
    v2 = v1[1];
    v5 = v1[2];
    v3 = v1[3];

    v1 = v9;
    v6 = v8;
  }

  result = outlined copy of Data?(v9, v8);
  *a1 = v1;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v2;
  a1[4] = v5;
  a1[5] = v3;
  return result;
}

uint64_t WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  if (!v0[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_116_0();
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x50uLL);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21ArchiveRenderingModelCySo8LNActionCGMd, &_s9SnippetUI21ArchiveRenderingModelCySo8LNActionCGMR);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  outlined init with copy of DeviceState?();
  v5 = OUTLINED_FUNCTION_119_1();
  outlined init with copy of WorkflowDataModels.LinkActionModel(v5, v6);
  return ArchiveRenderingModel.init(source:snippetEnvironmentProvider:)();
}

uint64_t closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  if (*(*(v0 + 16) + 72))
  {
    v1 = *(*(v0 + 16) + 72);
  }

  else
  {
    v1 = [objc_allocWithZone(LNSnippetEnvironment) init];
  }

  OUTLINED_FUNCTION_6_0();
  v6 = v2;
  v4 = v3;

  return v6(v1);
}

uint64_t WorkflowDataModels.LinkActionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000000235180 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4174657070696E73 && a2 == 0xED00006E6F697463;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
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

unint64_t WorkflowDataModels.LinkActionModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x6C70736944707061;
      break;
    case 2:
      result = 0x74706D6F7270;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x4174657070696E73;
      break;
    case 5:
      result = 0x6D6E6F7269766E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.LinkActionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.LinkActionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkActionModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_12_33();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_9_31(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_9_31(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v1 + 3);
    outlined init with copy of DeviceState?();
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_48_13();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v20, *(&v20 + 1));
    v21 = v1[8];
    v12 = OUTLINED_FUNCTION_76();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_106_1();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v14);
    OUTLINED_FUNCTION_172();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v1[9];
    v15 = OUTLINED_FUNCTION_138_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_106_1();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v17);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v18 = OUTLINED_FUNCTION_25_18();
  v19(v18);
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.LinkActionModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74_6();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_31_14();
  v19 = v12[4];
  OUTLINED_FUNCTION_53_9(v12, v12[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();
  OUTLINED_FUNCTION_167();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v21;
    OUTLINED_FUNCTION_128();
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v23;
    v31 = v22;
    LOBYTE(v36) = 2;
    OUTLINED_FUNCTION_128();
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v24;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v36;
    v28 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin13CodableActionVySo8LNActionCGMd, &_s18SiriLinkFlowPlugin13CodableActionVySo8LNActionCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAction<LNAction> and conformance CodableAction<A>);
    OUTLINED_FUNCTION_148_0();
    v27 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin18CodableEnvironmentVySo09LNSnippetF0CGMd, &_s18SiriLinkFlowPlugin18CodableEnvironmentVySo09LNSnippetF0CGMR);
    v46 = 5;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableEnvironment<LNSnippetEnvironment> and conformance CodableEnvironment<A>);
    OUTLINED_FUNCTION_148_0();
    v25 = OUTLINED_FUNCTION_36_16();
    v26(v25);
    v35[0] = v20;
    v35[1] = v34;
    v35[2] = v31;
    v35[3] = v33;
    v35[4] = v30;
    v35[5] = v32;
    v35[6] = v36;
    v35[7] = v37;
    v35[8] = v36;
    v35[9] = a10;
    outlined init with copy of WorkflowDataModels.LinkActionModel(v35, &v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v36 = v20;
    v37 = v34;
    v38 = v31;
    v39 = v33;
    v40 = v30;
    v41 = v32;
    v42 = v29;
    v43 = v28;
    v44 = v27;
    v45 = a10;
    outlined destroy of WorkflowDataModels.LinkActionModel(&v36);
    memcpy(v14, v35, 0x50uLL);
  }

  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkActionModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.LinkActionModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x50uLL);
  }
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.cancelLabel.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.LinkConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D6B6E696CLL && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7572747365447369 && a2 == 0xED00006576697463)
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

uint64_t WorkflowDataModels.LinkConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65646F4D6B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x4C6D7269666E6F63;
      break;
    case 2:
      result = 0x614C6C65636E6163;
      break;
    case 3:
      result = 0x7572747365447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.LinkConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkConfirmationModel.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_28_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_177(v18);
  OUTLINED_FUNCTION_177(&v17);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v18, v16);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_38_16();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v6 = OUTLINED_FUNCTION_165();
  if (v0)
  {
    memcpy(v6, v7, v8);
    outlined destroy of WorkflowDataModels.LinkActionModel(v16);
  }

  else
  {
    memcpy(v6, v7, v8);
    outlined destroy of WorkflowDataModels.LinkActionModel(v16);
    v9 = *(v1 + 80);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v1 + 112);
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v14 = OUTLINED_FUNCTION_25_18();
  v15(v14);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.LinkConfirmationModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_129();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v18);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_29_17();
  v6 = v0[4];
  OUTLINED_FUNCTION_53_9(v0, v0[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v23, v22, sizeof(v23));
    OUTLINED_FUNCTION_162(1);
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v8;
    v16 = v7;
    OUTLINED_FUNCTION_162(2);
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v15 = v9;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = OUTLINED_FUNCTION_93_3();
    v14(v13);
    v12 &= 1u;
    OUTLINED_FUNCTION_118_0(v19);
    v19[10] = v16;
    v19[11] = v17;
    v19[12] = v15;
    v19[13] = v11;
    LOBYTE(v19[14]) = v12;
    outlined init with copy of WorkflowDataModels.LinkConfirmationModel(v19, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v0);
    OUTLINED_FUNCTION_118_0(v20);
    v20[10] = v16;
    v20[11] = v17;
    v20[12] = v15;
    v20[13] = v11;
    v21 = v12;
    outlined destroy of WorkflowDataModels.LinkConfirmationModel(v20);
    memcpy(v2, v19, 0x71uLL);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkConfirmationModel(void *a1@<X8>)
{
  WorkflowDataModels.LinkConfirmationModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x71uLL);
  }
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_23();
  v3 = v1 == 0x65646F4D6B6E696CLL && v2 == 0xE90000000000006CLL;
  if (v3 || (OUTLINED_FUNCTION_0_50() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x736E6F6974706FLL && v0 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    OUTLINED_FUNCTION_48_3();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkPromptForValueModel.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_164();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_8_20();
  v9 = v0[4];
  OUTLINED_FUNCTION_53_9(v0, v0[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();
  OUTLINED_FUNCTION_157_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_176(v20);
  OUTLINED_FUNCTION_176(&v19);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v20, v18);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_139();
  v10 = OUTLINED_FUNCTION_160();
  memcpy(v10, v11, v12);
  outlined destroy of WorkflowDataModels.LinkActionModel(v18);
  if (!v1)
  {
    v17 = *(v2 + 80);
    OUTLINED_FUNCTION_49_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_67_9();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v13);
    OUTLINED_FUNCTION_154();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_0_23();
  v16(v15);
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.LinkPromptForValueModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_129();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v14);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_30_14();
  v8 = v1[4];
  OUTLINED_FUNCTION_53_9(v1, v1[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();
  OUTLINED_FUNCTION_112_0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    OUTLINED_FUNCTION_81_7();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v18, v17, sizeof(v18));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_66_9();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v9);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = *(v4 + 8);
    v11 = OUTLINED_FUNCTION_65_10();
    v12(v11);
    v13 = v16[11];
    OUTLINED_FUNCTION_118_0(v15);
    v15[10] = v13;
    outlined init with copy of WorkflowDataModels.LinkPromptForValueModel(v15, v16);
    OUTLINED_FUNCTION_86_2();
    v16[10] = v13;
    outlined destroy of WorkflowDataModels.LinkPromptForValueModel(v16);
    memcpy(v2, v15, 0x58uLL);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkPromptForValueModel(void *a1@<X8>)
{
  WorkflowDataModels.LinkPromptForValueModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, __src, 0x58uLL);
  }
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
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

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65646F4D77656976;
  }

  if (a1 == 1)
  {
    return 0x4C6D7269666E6F63;
  }

  return 0x614C6C65636E6163;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys(uint64_t a1)
{
  Run = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();

  return CodingKey.description.getter(a1, Run);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys(uint64_t a1)
{
  Run = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, Run);
}

void WorkflowDataModels.AutoShortcutFirstRunModel.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_28_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();
  OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_177(v17);
  OUTLINED_FUNCTION_177(&v16);
  outlined init with copy of AutoShortcutAppPhrasesViewModel(v17, v15);
  lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
  OUTLINED_FUNCTION_38_16();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v6 = OUTLINED_FUNCTION_165();
  if (v0)
  {
    memcpy(v6, v7, v8);
    outlined destroy of AutoShortcutAppPhrasesViewModel(v15);
  }

  else
  {
    memcpy(v6, v7, v8);
    outlined destroy of AutoShortcutAppPhrasesViewModel(v15);
    v9 = v1[10];
    v10 = v1[11];
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v1[12];
    v12 = v1[13];
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v13 = OUTLINED_FUNCTION_25_18();
  v14(v13);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.AutoShortcutFirstRunModel.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v3 = v2;
  v5 = v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v18);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_30_14();
  v11 = v3[4];
  OUTLINED_FUNCTION_53_9(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
    OUTLINED_FUNCTION_59_11();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v26, v25, sizeof(v26));
    v20[0] = 1;
    OUTLINED_FUNCTION_130_0();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v12;
    OUTLINED_FUNCTION_130_0();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*(v7 + 8))(v1, v18);
    OUTLINED_FUNCTION_118_0(v19);
    v19[10] = v16;
    v19[11] = v17;
    v19[12] = v13;
    v19[13] = v15;
    outlined init with copy of WorkflowDataModels.AutoShortcutFirstRunModel(v19, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_118_0(v20);
    v21 = v16;
    v22 = v17;
    v23 = v13;
    v24 = v15;
    outlined destroy of WorkflowDataModels.AutoShortcutFirstRunModel(v20);
    memcpy(v5, v19, 0x70uLL);
  }

  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.AutoShortcutFirstRunModel(void *a1@<X8>)
{
  WorkflowDataModels.AutoShortcutFirstRunModel.init(from:)();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[4] = v5;
  v6 = type metadata accessor for ImageElement.ImageStyle();
  v0[9] = v6;
  v7 = *(v6 - 8);
  v0[10] = v7;
  v8 = *(v7 + 64) + 15;
  v0[11] = swift_task_alloc();
  v9 = type metadata accessor for ImageElement();
  v0[12] = v9;
  v10 = *(v9 - 8);
  v0[13] = v10;
  v11 = *(v10 + 64) + 15;
  v0[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
  OUTLINED_FUNCTION_14(v12);
  v14 = *(v13 + 64) + 15;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  if (!v3[6])
  {
    OUTLINED_FUNCTION_103_0();
    v14 = OUTLINED_FUNCTION_152_0();
    v15(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v16 = type metadata accessor for _ProtoIdiom();
    OUTLINED_FUNCTION_7_1(v16);
    v18 = v17;
    v20 = *(v19 + 72);
    v21 = *(v17 + 80);
    OUTLINED_FUNCTION_83_5();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_216850;
    (*(v18 + 104))(v22 + v6, enum case for _ProtoIdiom.default(_:), v16);
    v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v22);
    OUTLINED_FUNCTION_147_0(v23, v24, v25, v26, v27, v28, v29, v30, v37, v38, v39);

    (*(v4 + 8))(v2, v5);
    ImageElement.convertToVisualProperty()();
    (*(v0 + 8))(v1);
    v32 = v3[15];
    v31 = v3[16];
    v33 = v3[14];
    v34 = v3[11];

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  type metadata accessor for VoiceShortcutClientWrapper();
  v3[17] = swift_initStackObject();
  v7 = swift_task_alloc();
  v3[18] = v7;
  *v7 = v3;
  v7[1] = static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:);
  v9 = v3[5];
  v8 = v3[6];
  OUTLINED_FUNCTION_58();

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  v3 = *(v1 + 144);
  v9 = *v0;
  *(v2 + 152) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

void static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:)()
{
  v6 = *(v2 + 152);
  if (v6)
  {
    v7 = [*(v2 + 152) shortcut];
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 120);
      static INShortcut._unconditionallyBridgeFromObjectiveC(_:)();

      v0 = 0;
    }

    else
    {
      v0 = &dword_0 + 1;
    }

    v4 = *(v2 + 120);
    v10 = *(v2 + 128);
    v1 = type metadata accessor for INShortcut();
    __swift_storeEnumTagSinglePayload(v4, v0, 1, v1);
    OUTLINED_FUNCTION_1_31();
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v1);
    v3 = *(v2 + 128);
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of Any?(v3, &_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
    }

    else
    {
      v12 = *(v2 + 128);
      v0 = INShortcut.intent.getter();
      OUTLINED_FUNCTION_21_2(v1);
      (*(v13 + 8))(v3, v1);
      if (v0)
      {
        v1 = [v0 _keyImage];

        v14 = outlined bridged method (ob) of @objc INImage._imageData.getter(v1);
        if (v15 >> 60 != 15)
        {
          v39 = v14;
          v40 = v15;
          v41 = *(v2 + 32);
          static WorkflowDataModels.getThumbnail(imageData:)();
          outlined consume of Data?(v39, v40);

LABEL_11:
          v34 = *(v2 + 120);
          v33 = *(v2 + 128);
          v35 = *(v2 + 112);
          v36 = *(v2 + 88);

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_58();

          __asm { BRAA            X1, X16 }
        }
      }
    }
  }

  OUTLINED_FUNCTION_103_0();
  v16 = OUTLINED_FUNCTION_152_0();
  v17(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v18 = type metadata accessor for _ProtoIdiom();
  OUTLINED_FUNCTION_7_1(v18);
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = *(v19 + 80);
  OUTLINED_FUNCTION_83_5();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_216850;
  (*(v20 + 104))(v24 + v5, enum case for _ProtoIdiom.default(_:), v18);
  v25 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v24);
  OUTLINED_FUNCTION_147_0(v25, v26, v27, v28, v29, v30, v31, v32, v42, v43, v44);

  (*(v3 + 8))(v1, v4);
  ImageElement.convertToVisualProperty()();
  (v6)[1](v0);
  goto LABEL_11;
}

uint64_t WorkflowDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656C41776F6873 && a2 == 0xED00007765695674;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4354656C62616E65 && a2 == 0xED00007765695643;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x80000000002351E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000000235200 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000000235220 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000000235240 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6569566863746177 && a2 == 0xE900000000000077;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x8000000000235260 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000020 && 0x8000000000235280 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x80000000002352B0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x697463416B6E696CLL && a2 == 0xEE00776569566E6FLL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x80000000002352D0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000016 && 0x80000000002352F0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001ELL && 0x8000000000235310 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000018 && 0x8000000000235330 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.CodingKeys.stringValue.getter(char a1)
{
  result = 0x72656C41776F6873;
  switch(a1)
  {
    case 1:
      result = 0x4354656C62616E65;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6569566863746177;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x697463416B6E696CLL;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_48_3();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOs0M3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys(uint64_t a1)
{
  RunViewCoding = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();

  return CodingKey.description.getter(a1, RunViewCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys(uint64_t a1)
{
  RunViewCoding = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunViewCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ConfirmActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ConfirmActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.EnableTCCViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.EnableTCCViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ShowAlertViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ShowAlertViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.WatchViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.WatchViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  v3 = v2;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v213);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_9();
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v211);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_16_9();
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v210);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_16_9();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v209);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_9();
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v208);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_16_9();
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v207);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_16_9();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v206);
  v188 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_16_9();
  v205 = v26;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v204);
  v187 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_16_9();
  v203 = v31;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v202);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_16_9();
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v201);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_16_9();
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v200);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_16_9();
  v41 = OUTLINED_FUNCTION_22_10();
  v198 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(v41);
  v42 = OUTLINED_FUNCTION_7(v198);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_3();
  v199 = v46 - v45;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v197);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_16_9();
  v50 = OUTLINED_FUNCTION_22_10();
  v195 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(v50);
  v51 = OUTLINED_FUNCTION_7(v195);
  v53 = *(v52 + 64);
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_3();
  v196 = v55 - v54;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v194);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_16_9();
  v59 = OUTLINED_FUNCTION_22_10();
  v192 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(v59);
  v60 = OUTLINED_FUNCTION_7(v192);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  OUTLINED_FUNCTION_3();
  v193 = v64 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v65);
  v191 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v69);
  OUTLINED_FUNCTION_8_20();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  v71 = OUTLINED_FUNCTION_7_1(v70);
  v189 = v72;
  v190 = v71;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v75);
  OUTLINED_FUNCTION_31_14();
  v76 = type metadata accessor for WorkflowDataModels(0);
  v77 = OUTLINED_FUNCTION_7(v76);
  v79 = *(v78 + 64);
  __chkstk_darwin(v77);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_85_6();
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v216);
  v215 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v83);
  OUTLINED_FUNCTION_30_14();
  v84 = v3[4];
  OUTLINED_FUNCTION_53_9(v3, v3[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
  OUTLINED_FUNCTION_31_16();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v140 = v0[1];
      v141 = v0[3];
      v212 = v0[2];
      v214 = *v0;
      v143 = v0[4];
      v142 = v0[5];
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();
      OUTLINED_FUNCTION_81_7();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v217 = v214;
      *(&v217 + 1) = v140;
      *&v218 = v212;
      *(&v218 + 1) = v141;
      *&v219 = v143;
      *(&v219 + 1) = v142;
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v144 = *(v191 + 8);
      v145 = OUTLINED_FUNCTION_0_23();
      v146(v145);
      v147 = OUTLINED_FUNCTION_17_33();
      v148(v147);

      goto LABEL_19;
    case 2u:
      v105 = v193;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v217) = 2;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      OUTLINED_FUNCTION_71_7();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v126);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v127 = OUTLINED_FUNCTION_17_33();
      v128(v127);
      v109 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel;
      goto LABEL_10;
    case 3u:
      v105 = v196;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v217) = 3;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      OUTLINED_FUNCTION_70_6();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v129);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = OUTLINED_FUNCTION_17_33();
      v131(v130);
      v109 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel;
      goto LABEL_10;
    case 4u:
      v105 = v199;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v217) = 4;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      OUTLINED_FUNCTION_72_8();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v106);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v107 = OUTLINED_FUNCTION_17_33();
      v108(v107);
      v109 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel;
LABEL_10:
      outlined destroy of WorkflowDataModels.CustomIntentModel(v105, v109);
      v132 = OUTLINED_FUNCTION_7_37();
      v133(v132);
      break;
    case 5u:
      v149 = OUTLINED_FUNCTION_98_0();
      memcpy(v149, v150, 0x68uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      v151 = OUTLINED_FUNCTION_99_2();
      memcpy(v151, v152, 0x68uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel();
      OUTLINED_FUNCTION_62_10();
      v153 = OUTLINED_FUNCTION_17_33();
      v154(v153);
      v155 = OUTLINED_FUNCTION_7_37();
      v156(v155);
      outlined destroy of WorkflowDataModels.ConfirmActionModel(&v217);
      break;
    case 6u:
      v165 = OUTLINED_FUNCTION_98_0();
      memcpy(v165, v166, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      v167 = OUTLINED_FUNCTION_99_2();
      memcpy(v167, v168, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel();
      OUTLINED_FUNCTION_62_10();
      v169 = OUTLINED_FUNCTION_17_33();
      v170(v169);
      v171 = OUTLINED_FUNCTION_7_37();
      v172(v171);
      outlined destroy of WorkflowDataModels.WatchModel(&v217);
      break;
    case 7u:
      v135 = *v0;
      v134 = v0[1];
      v136 = v0[2];
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();
      v137 = v203;
      OUTLINED_FUNCTION_59_11();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v217 = v135;
      *(&v217 + 1) = v134;
      *&v218 = v136;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel();
      v138 = v204;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v139 = v187;
      goto LABEL_18;
    case 8u:
      v182 = *v0;
      v181 = v0[1];
      v183 = v0[2];
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();
      v137 = v205;
      OUTLINED_FUNCTION_59_11();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v217 = v182;
      *(&v217 + 1) = v181;
      *&v218 = v183;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel();
      v138 = v206;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v139 = v188;
LABEL_18:
      (*(v139 + 8))(v137, v138);
      v184 = *(v215 + 8);
      v185 = OUTLINED_FUNCTION_0_13();
      v186(v185);

LABEL_19:

      break;
    case 9u:
      v118 = OUTLINED_FUNCTION_98_0();
      memcpy(v118, v119, 0x58uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      v120 = OUTLINED_FUNCTION_99_2();
      memcpy(v120, v121, 0x58uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel();
      OUTLINED_FUNCTION_62_10();
      v122 = OUTLINED_FUNCTION_17_33();
      v123(v122);
      v124 = OUTLINED_FUNCTION_7_37();
      v125(v124);
      outlined destroy of WorkflowDataModels.LinkMultiChoiceModel(&v217);
      break;
    case 0xAu:
      v173 = OUTLINED_FUNCTION_98_0();
      memcpy(v173, v174, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      v175 = OUTLINED_FUNCTION_99_2();
      memcpy(v175, v176, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
      OUTLINED_FUNCTION_62_10();
      v177 = OUTLINED_FUNCTION_17_33();
      v178(v177);
      v179 = OUTLINED_FUNCTION_7_37();
      v180(v179);
      outlined destroy of WorkflowDataModels.LinkActionModel(&v217);
      break;
    case 0xBu:
      v97 = OUTLINED_FUNCTION_98_0();
      memcpy(v97, v98, 0x71uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      v99 = OUTLINED_FUNCTION_99_2();
      memcpy(v99, v100, 0x71uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel();
      OUTLINED_FUNCTION_62_10();
      v101 = OUTLINED_FUNCTION_17_33();
      v102(v101);
      v103 = OUTLINED_FUNCTION_7_37();
      v104(v103);
      outlined destroy of WorkflowDataModels.LinkConfirmationModel(&v217);
      break;
    case 0xCu:
      v110 = OUTLINED_FUNCTION_98_0();
      memcpy(v110, v111, 0x58uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      v112 = OUTLINED_FUNCTION_99_2();
      memcpy(v112, v113, 0x58uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel();
      OUTLINED_FUNCTION_62_10();
      v114 = OUTLINED_FUNCTION_17_33();
      v115(v114);
      v116 = OUTLINED_FUNCTION_7_37();
      v117(v116);
      outlined destroy of WorkflowDataModels.LinkPromptForValueModel(&v217);
      break;
    case 0xDu:
      v157 = OUTLINED_FUNCTION_98_0();
      memcpy(v157, v158, 0x50uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      v159 = OUTLINED_FUNCTION_99_2();
      memcpy(v159, v160, 0x50uLL);
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_62_10();
      v161 = OUTLINED_FUNCTION_17_33();
      v162(v161);
      v163 = OUTLINED_FUNCTION_7_37();
      v164(v163);
      outlined destroy of AutoShortcutAppPhrasesViewModel(&v217);
      break;
    case 0xEu:
      v89 = OUTLINED_FUNCTION_98_0();
      memcpy(v89, v90, 0x70uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();
      OUTLINED_FUNCTION_14_29();
      v91 = OUTLINED_FUNCTION_99_2();
      memcpy(v91, v92, 0x70uLL);
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel();
      OUTLINED_FUNCTION_62_10();
      v93 = OUTLINED_FUNCTION_17_33();
      v94(v93);
      v95 = OUTLINED_FUNCTION_7_37();
      v96(v95);
      outlined destroy of WorkflowDataModels.AutoShortcutFirstRunModel(&v217);
      break;
    default:
      v85 = *(v0 + 1);
      v217 = *v0;
      v218 = v85;
      v86 = *(v0 + 3);
      v219 = *(v0 + 2);
      v220 = v86;
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();
      OUTLINED_FUNCTION_46_14();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v189 + 8))(v1, v190);
      v87 = OUTLINED_FUNCTION_7_37();
      v88(v87);
      outlined destroy of WorkflowDataModels.ShowAlertModel(&v217);
      break;
  }

  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74_6();
  a19 = v21;
  a20 = v22;
  v314 = v20;
  v24 = v23;
  v305 = v25;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v308);
  v307 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v30);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v296);
  v294 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v35);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v295);
  v292 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v40);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v293);
  v290 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v45);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v291);
  v288 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v50);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v289);
  v286 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v55);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v287);
  v285 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v60);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v284);
  v283 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v64);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v65);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v282);
  v280 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v69);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v70);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v281);
  v277 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v74);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v75);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v279);
  v278 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v79);
  OUTLINED_FUNCTION_16_9();
  v311 = v80;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v275);
  v276 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v84);
  OUTLINED_FUNCTION_16_9();
  v310[1] = v85;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v274);
  v273 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v89);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v90);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v272);
  v271 = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v94);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v95);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v270);
  v306 = v96;
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v99);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v100);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v312);
  v310[0] = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v104);
  OUTLINED_FUNCTION_16_9();
  a10 = v105;
  v106 = OUTLINED_FUNCTION_22_10();
  v309 = type metadata accessor for WorkflowDataModels(v106);
  v107 = OUTLINED_FUNCTION_7(v309);
  v109 = *(v108 + 64);
  __chkstk_darwin(v107);
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v110);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v111);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v112);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v113);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v114);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v115);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v116);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v117);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v118);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  v120 = __chkstk_darwin(v119);
  v122 = &v261 - v121;
  v123 = __chkstk_darwin(v120);
  v125 = &v261 - v124;
  v126 = __chkstk_darwin(v123);
  v128 = &v261 - v127;
  v129 = __chkstk_darwin(v126);
  v131 = &v261 - v130;
  v132 = __chkstk_darwin(v129);
  v134 = &v261 - v133;
  __chkstk_darwin(v132);
  v136 = &v261 - v135;
  v137 = v24[3];
  v138 = v24[4];
  v313 = v24;
  v139 = OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_53_9(v139, v140);
  lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();
  v141 = v314;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v141)
  {
    goto LABEL_8;
  }

  v263 = v134;
  v314 = v131;
  v264 = v128;
  v265 = v125;
  v266 = v122;
  v267 = v136;
  v142 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO_Tt1g5(v142, 0);
  if (v144 == v143 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_126();
  v262 = 0;
  if (v148 >= (v147 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1E42B0);
  }

  v261 = *(v146 + v145);
  specialized ArraySlice.subscript.getter(v145 + 1);
  v150 = v149;
  v152 = v151;
  swift_unknownObjectRelease();
  v153 = v306;
  if (v150 != v152 >> 1)
  {
LABEL_7:
    v157 = v309;
    v158 = type metadata accessor for DecodingError();
    swift_allocError();
    v160 = v159;
    v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v160 = v157;
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_21_2(v158);
    (*(v162 + 104))(v160);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_80_5();
    v163 = OUTLINED_FUNCTION_138_1();
    v164(v163);
LABEL_8:
    v165 = v313;
    goto LABEL_9;
  }

  v154 = v262;
  v155 = v314;
  switch(v261)
  {
    case 1:
      LOBYTE(v315) = 1;
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();
      OUTLINED_FUNCTION_61_6();
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel();
      v195 = v272;
      OUTLINED_FUNCTION_132();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v237 = OUTLINED_FUNCTION_78_5();
      v238(v237, v195);
      OUTLINED_FUNCTION_80_5();
      v239(v153, v312);
      v240 = v316;
      *v155 = v315;
      v155[1] = v240;
      v155[2] = v317[0];
      OUTLINED_FUNCTION_55_5();
      goto LABEL_26;
    case 2:
      LOBYTE(v315) = 2;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&v318);
      type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
      OUTLINED_FUNCTION_71_7();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v191);
      OUTLINED_FUNCTION_69_8();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v224 = OUTLINED_FUNCTION_92_3(&v302);
      v225(v224);
      v226 = OUTLINED_FUNCTION_78_5();
      v227(v226, v153);
      OUTLINED_FUNCTION_55_5();
      goto LABEL_26;
    case 3:
      LOBYTE(v315) = 3;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();
      v192 = v312;
      OUTLINED_FUNCTION_46_14();
      v193 = a10;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v154)
      {
        OUTLINED_FUNCTION_80_5();
        v214(v193, v192);
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

      type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
      OUTLINED_FUNCTION_70_6();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v215);
      OUTLINED_FUNCTION_171();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v216 = v310[0];
      swift_unknownObjectRelease();
      v228 = OUTLINED_FUNCTION_5_6(&v303);
      v229(v228);
      (*(v216 + 8))(a10, v192);
      OUTLINED_FUNCTION_55_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_39();
LABEL_27:
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      v260 = v313;
      OUTLINED_FUNCTION_5_39();
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      v165 = v260;
      break;
    case 4:
      LOBYTE(v315) = 4;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();
      OUTLINED_FUNCTION_8_36();
      type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
      OUTLINED_FUNCTION_72_8();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v178);
      OUTLINED_FUNCTION_69_8();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v220 = OUTLINED_FUNCTION_92_3(&v305);
      v221(v220);
      v222 = OUTLINED_FUNCTION_78_5();
      v223(v222, v153);
      OUTLINED_FUNCTION_55_5();
      goto LABEL_26;
    case 5:
      LOBYTE(v315) = 5;
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&v319);
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28(&v304);
      swift_unknownObjectRelease();
      v196 = OUTLINED_FUNCTION_27_21();
      v197(v196);
      v198 = OUTLINED_FUNCTION_31_18();
      v199(v198);
      v200 = OUTLINED_FUNCTION_101_1(&v292);
      memcpy(v200, v201, 0x68uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 6:
      LOBYTE(v315) = 6;
      lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&v320);
      lazy protocol witness table accessor for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28(&v307);
      swift_unknownObjectRelease();
      v208 = OUTLINED_FUNCTION_27_21();
      v209(v208);
      v210 = OUTLINED_FUNCTION_31_18();
      v211(v210);
      v212 = OUTLINED_FUNCTION_101_1(&v294);
      memcpy(v212, v213, 0x50uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 7:
      LOBYTE(v315) = 7;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();
      OUTLINED_FUNCTION_61_6();
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel();
      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_171();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v194 = v310[0];
      swift_unknownObjectRelease();
      v230 = OUTLINED_FUNCTION_5_6(v310);
      v231(v230);
      v232 = *(v194 + 8);
      v233 = OUTLINED_FUNCTION_52_11();
      v234(v233);
      v235 = v316;
      v236 = v268;
      *v268 = v315;
      *(v236 + 2) = v235;
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 8:
      LOBYTE(v315) = 8;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();
      OUTLINED_FUNCTION_61_6();
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel();
      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_171();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v219 = v310[0];
      swift_unknownObjectRelease();
      v253 = OUTLINED_FUNCTION_5_6(&v311);
      v254(v253);
      v255 = *(v219 + 8);
      v256 = OUTLINED_FUNCTION_52_11();
      v257(v256);
      v258 = v316;
      v259 = v269;
      *v269 = v315;
      *(v259 + 2) = v258;
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 9:
      LOBYTE(v315) = 9;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&v321);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28(&v312);
      swift_unknownObjectRelease();
      v185 = OUTLINED_FUNCTION_27_21();
      v186(v185);
      v187 = OUTLINED_FUNCTION_31_18();
      v188(v187);
      v189 = OUTLINED_FUNCTION_101_1(&v296);
      memcpy(v189, v190, 0x58uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 10:
      LOBYTE(v315) = 10;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&a9);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28(&v314);
      swift_unknownObjectRelease();
      v247 = OUTLINED_FUNCTION_27_21();
      v248(v247);
      v249 = OUTLINED_FUNCTION_31_18();
      v250(v249);
      v251 = OUTLINED_FUNCTION_101_1(&v297);
      memcpy(v251, v252, 0x50uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 11:
      LOBYTE(v315) = 11;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&a10);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28(&v315 + 8);
      swift_unknownObjectRelease();
      v172 = OUTLINED_FUNCTION_27_21();
      v173(v172);
      v174 = OUTLINED_FUNCTION_31_18();
      v175(v174);
      v176 = OUTLINED_FUNCTION_101_1(&v298);
      memcpy(v176, v177, 0x71uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 12:
      LOBYTE(v315) = 12;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&a11);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28(&v316 + 8);
      swift_unknownObjectRelease();
      v179 = OUTLINED_FUNCTION_27_21();
      v180(v179);
      v181 = OUTLINED_FUNCTION_31_18();
      v182(v181);
      v183 = OUTLINED_FUNCTION_101_1(&v299);
      memcpy(v183, v184, 0x58uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 13:
      LOBYTE(v315) = 13;
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&a12);
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28(v317 + 8);
      swift_unknownObjectRelease();
      v202 = OUTLINED_FUNCTION_27_21();
      v203(v202);
      v204 = OUTLINED_FUNCTION_31_18();
      v205(v204);
      v206 = OUTLINED_FUNCTION_101_1(&v300);
      memcpy(v206, v207, 0x50uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 14:
      LOBYTE(v315) = 14;
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();
      OUTLINED_FUNCTION_8_36();
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v166 = OUTLINED_FUNCTION_27_21();
      v167(v166);
      v168 = OUTLINED_FUNCTION_31_18();
      v169(v168);
      v170 = OUTLINED_FUNCTION_101_1(&v301);
      memcpy(v170, v171, 0x70uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    default:
      LOBYTE(v315) = 0;
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();
      v156 = v297;
      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_171();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel();
      v217 = v270;
      OUTLINED_FUNCTION_69_8();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v218 = (v310[0] + 8);
      swift_unknownObjectRelease();
      (*(v153 + 8))(v156, v217);
      v241 = *v218;
      v242 = OUTLINED_FUNCTION_65_10();
      v243(v242);
      v244 = v316;
      v245 = v263;
      *v263 = v315;
      v245[1] = v244;
      v246 = v317[1];
      v245[2] = v317[0];
      v245[3] = v246;
      OUTLINED_FUNCTION_22_27();
LABEL_26:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_39();
      goto LABEL_27;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v165);
  OUTLINED_FUNCTION_75_6();
}

uint64_t WatchViewType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C646E6168 && a2 == 0xE700000000000000)
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

uint64_t WatchViewType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x64656C646E6168;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

uint64_t WatchViewType.ConfirmationCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
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

uint64_t WatchViewType.ConfirmationCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WatchViewType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.ConfirmationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WatchViewType.ConfirmationCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.ConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.ConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.HandledCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WatchViewType.HandledCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.HandledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.HandledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WatchViewType.encode(to:)()
{
  OUTLINED_FUNCTION_74_6();
  v30 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO17HandledCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO17HandledCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v28 = v8;
  v29 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_31_14();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO22ConfirmationCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO22ConfirmationCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_2_40();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_56_7();
  v22 = *(v5 + 24);
  v23 = *(v5 + 32);
  v24 = OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_53_9(v24, v25);
  lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v30)
  {
    lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();
    OUTLINED_FUNCTION_46_14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v0)
    {
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    v26 = OUTLINED_FUNCTION_78_5();
    v27(v26, v12);
    (*(v18 + 8))(v1, v16);
  }

  else
  {
    lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();
    OUTLINED_FUNCTION_46_14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v2, v29);
    (*(v18 + 8))(v1, v16);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void WatchViewType.init(from:)()
{
  OUTLINED_FUNCTION_74_6();
  v5 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO17HandledCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO17HandledCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v45);
  v43 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_31_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO22ConfirmationCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO22ConfirmationCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v10);
  v44 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_29();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1(v15);
  v46 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_2_40();
  v20 = v5[4];
  OUTLINED_FUNCTION_53_9(v5, v5[3]);
  lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v47 = v5;
  v21 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin0jK9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLO_Tt1g5Tm(v21, 0);
  v42 = v15;
  if (v23 == v22 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_126();
  if (v27 < (v26 >> 1))
  {
    v28 = *(v25 + v24);
    specialized ArraySlice.subscript.getter(v24 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      if (v28)
      {
        lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();
        OUTLINED_FUNCTION_132();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v43 + 8))(v3, v45);
        v33 = OUTLINED_FUNCTION_57_7();
        v34(v33);
      }

      else
      {
        lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();
        OUTLINED_FUNCTION_132();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v44 + 8))(v1, v10);
        (*(v46 + 8))(v2, v42);
      }

      goto LABEL_9;
    }

LABEL_7:
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v37 = &type metadata for WatchViewType;
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_21_2(v35);
    (*(v39 + 104))(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = OUTLINED_FUNCTION_78_5();
    v41(v40, v42);
    v5 = v47;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_75_6();
    return;
  }

  __break(1u);
}

void protocol witness for Decodable.init(from:) in conformance WatchViewType(void *a1@<X8>)
{
  WatchViewType.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void protocol witness for Encodable.encode(to:) in conformance WatchViewType()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  WatchViewType.encode(to:)();
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

uint64_t outlined copy of WatchViewType(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType()
{
  result = lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType;
  if (!lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType;
  if (!lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType);
  }

  return result;
}

uint64_t outlined consume of WatchViewType(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(uint64_t a1)
{
  result = OUTLINED_FUNCTION_135_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentErrorModel()
{
  OUTLINED_FUNCTION_23();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of WorkflowDataModels.CustomIntentModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_135_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_40_11();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v2);
    OUTLINED_FUNCTION_51_4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

uint64_t outlined copy of WorkflowDataModels.InvocationCommand(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  result = a2;
  if (a4 < 2u)
  {
  }

  if (a4 == 2)
  {
  }

  return result;
}

uint64_t outlined consume of WorkflowDataModels.InvocationCommand(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  result = a2;
  if (a4 < 2u)
  {
  }

  if (a4 == 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel);
  }

  return result;
}

uint64_t sub_1E5BBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 64), v4);
  }

  OUTLINED_FUNCTION_116_0();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  OUTLINED_FUNCTION_8_0();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter(v0 + 16);
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_135_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of CodableAceObject<SAStartLocalRequest>?()
{
  OUTLINED_FUNCTION_23();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel);
  }

  return result;
}

uint64_t outlined init with take of WorkflowDataModels.CustomIntentModel()
{
  OUTLINED_FUNCTION_23();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys()
{
  result = lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys);
  }

  return result;
}

uint64_t sub_1E6E9C@<X0>(uint64_t *a1@<X8>)
{
  result = WorkflowDataModels.LinkMultiChoiceModel.options.getter();
  *a1 = result;
  return result;
}

void *sub_1E6ECC@<X0>(void *a1@<X8>)
{
  result = WorkflowDataModels.LinkActionModel.snippetAction.getter();
  *a1 = result;
  return result;
}

void *sub_1E6EFC@<X0>(void *a1@<X8>)
{
  result = WorkflowDataModels.LinkActionModel.environment.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for WorkflowDataModels()
{
  result = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin13WatchViewTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.WatchModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.WatchModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E7144(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  v7 = OUTLINED_FUNCTION_60_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for CodableINInteraction();
    v12 = OUTLINED_FUNCTION_60_7(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
      v16 = OUTLINED_FUNCTION_60_7(v15);
      if (*(v17 + 84) != a2)
      {
        return OUTLINED_FUNCTION_47_8(*(a1 + a3[7] + 8));
      }

      v9 = v16;
      v14 = a3[6];
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_1E7294()
{
  OUTLINED_FUNCTION_32_17();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_60_7(v2);
  if (*(v3 + 84) != v1)
  {
    v4 = type metadata accessor for CodableINInteraction();
    OUTLINED_FUNCTION_60_7(v4);
    if (*(v5 + 84) == v1)
    {
      v6 = v0[5];
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
      OUTLINED_FUNCTION_60_7(v7);
      if (*(v8 + 84) != v1)
      {
        OUTLINED_FUNCTION_125_0(v0[7]);
        return;
      }

      v9 = v0[6];
    }
  }

  OUTLINED_FUNCTION_155_0();

  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void type metadata completion function for WorkflowDataModels.CustomIntentModel()
{
  type metadata accessor for CodableAceObject<SAIntentGroupLaunchAppWithIntent>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableINInteraction();
    if (v1 <= 0x3F)
    {
      type metadata accessor for VisualProperty?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CodableAceObject<SAIntentGroupLaunchAppWithIntent>()
{
  if (!lazy cache variable for type metadata for CodableAceObject<SAIntentGroupLaunchAppWithIntent>)
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v0 = type metadata accessor for CodableAceObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupLaunchAppWithIntent>);
    }
  }
}

void type metadata accessor for VisualProperty?()
{
  if (!lazy cache variable for type metadata for VisualProperty?)
  {
    type metadata accessor for VisualProperty();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VisualProperty?);
    }
  }
}

uint64_t sub_1E7538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v7 = OUTLINED_FUNCTION_60_7(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_47_8(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

void sub_1E75EC()
{
  OUTLINED_FUNCTION_32_17();
  v2 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_60_7(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_155_0();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_125_0(*(v0 + 20));
  }
}

uint64_t type metadata completion function for WorkflowDataModels.CustomIntentConfirmationModel()
{
  result = type metadata accessor for WorkflowDataModels.CustomIntentModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v7 = OUTLINED_FUNCTION_60_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_47_8(*(a1 + *(a3 + 20) + 8));
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
    v10 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_1E77F0()
{
  OUTLINED_FUNCTION_32_17();
  v3 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_60_7(v3);
  if (*(v4 + 84) != v2)
  {
    if (v2 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_125_0(*(v1 + 20));
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
    v5 = v0 + *(v1 + 24);
  }

  OUTLINED_FUNCTION_155_0();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void type metadata completion function for WorkflowDataModels.CustomIntentHandledModel()
{
  type metadata accessor for WorkflowDataModels.CustomIntentModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAStartLocalRequest>?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CodableAceObject<SAStartLocalRequest>?()
{
  if (!lazy cache variable for type metadata for CodableAceObject<SAStartLocalRequest>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableAceObject<SAStartLocalRequest>?);
    }
  }
}

uint64_t sub_1E79BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_47_8(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1E7A58(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
    v5 = *(a4 + 20);
    OUTLINED_FUNCTION_155_0();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  return result;
}

void type metadata completion function for WorkflowDataModels.CustomIntentErrorModel()
{
  type metadata accessor for CodableAceObject<SAIntentGroupLaunchAppWithIntent>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.DisambiguateItemsModel(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.DisambiguateItemsModel(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.InvocationCommand(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.InvocationCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void type metadata completion function for WorkflowDataModels.DisambiguationItemModel()
{
  type metadata accessor for VisualProperty?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.LinkActionModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.LinkActionModel(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for WorkflowDataModels.LinkConfirmationModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.LinkConfirmationModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.LinkMultiChoiceModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.LinkMultiChoiceModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.AutoShortcutFirstRunModel(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.AutoShortcutFirstRunModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchViewType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WatchViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WatchViewType(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1E8230);
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

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.LinkActionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1E845CLL);
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

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.ShowAlertViewCodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1E8584);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.ConfirmActionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1E86A8);
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

_BYTE *storeEnumTagSinglePayload for WatchViewType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1E879CLL);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1E88D0);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.LinkConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1E89C4);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_62@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 232);
  v5 = *(v1 - 72);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_8_36()
{
  v2 = *(v0 - 232);
  v3 = *(v0 - 72);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_14_29()
{
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_22_27()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_27()
{
  v2 = *(v0 - 256);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_29_23()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_47_8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_61_6()
{
  v2 = *(v0 - 232);
  v3 = *(v0 - 72);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_62_10()
{
  v2 = *(v0 - 72);

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_86_2()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return memcpy((v0 + 104), (v2 - 168), 0x50uLL);
}

void OUTLINED_FUNCTION_96_1()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 280);
  v3 = *(v0 - 288);
  v4 = *(v0 - 272);
}

void OUTLINED_FUNCTION_103_0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v6 = v0[4];
  v9 = v0[12];
}

uint64_t OUTLINED_FUNCTION_111_0()
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void *OUTLINED_FUNCTION_118_0(void *a1)
{

  return memcpy(a1, (v1 - 168), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_124()
{
  v1 = *(v0 - 112);
  v2 = *(*(v0 - 120) + 8);
  return *(v0 - 96);
}

uint64_t OUTLINED_FUNCTION_127_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_139()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_141_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_142_0()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return static ImageElement.appIcon(_:imageStyle:idioms:)(a10, a11, v11, a1);
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_149_0@<X0>(void *__src@<X0>, void *a2@<X8>)
{

  return memcpy(a2, __src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_150_0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_151_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_153@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_158(uint64_t result)
{
  v4 = (v3 + *(result + 20));
  *v4 = v2;
  v4[1] = v1;
  v5 = *(result + 24);
  return result;
}

void *OUTLINED_FUNCTION_176(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

void *OUTLINED_FUNCTION_177(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

__n128 OUTLINED_FUNCTION_179(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, __n128 a9, unint64_t a10, unint64_t a11)
{
  result = a9;
  v11[6].n128_u64[0] = a10;
  v11[6].n128_u64[1] = a11;
  v11[5] = a9;
  v11[4].n128_u64[0] = a7;
  v11[4].n128_u64[1] = a8;
  v11[3].n128_u64[0] = a5;
  v11[3].n128_u64[1] = a6;
  v11[2].n128_u64[0] = a3;
  v11[2].n128_u64[1] = a4;
  v11[1].n128_u64[0] = a1;
  v11[1].n128_u64[1] = a2;
  return result;
}

uint64_t ContinueInAppCATWrapperSimple.__allocating_init(deviceState:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  outlined init with copy of AppDisplayInfo?(a1, v7, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  SiriKitFlowCATWrapperSimple.init(deviceState:)(v7);
  OUTLINED_FUNCTION_19_23();
  return v5;
}

void CustomIntentContinueInAppResponseGenerator.processAutomaticPunchOut(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30[-1] - v7;
  v9 = type metadata accessor for ActivityType();
  OUTLINED_FUNCTION_13_1();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  type metadata accessor for SAIntentGroupLaunchAppWithIntent();
  v18 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  [v18 setDoNotDismissSiri:1];
  (*(v11 + 104))(v17, enum case for ActivityType.completed(_:), v9);
  v19 = (*(*v0 + 152))(v17, v2);
  (*(v11 + 8))(v17, v9);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.voiceCommands);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "Directly launching the app without a dialog", v23, 2u);
  }

  v24 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_216010;
  *(v25 + 32) = v18;
  if (v19)
  {
    v26 = type metadata accessor for DefaultFlowActivity();
    v27 = lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity();
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v30[1] = 0;
    v30[2] = 0;
  }

  v30[0] = v19;
  v30[3] = v26;
  v30[4] = v27;
  v28 = v18;

  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v30, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[11] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[12] = v6;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[16] = v10;
  v12 = *(v11 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[19] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[20] = v17;
  v19 = *(v18 + 64);
  v1[21] = OUTLINED_FUNCTION_28();
  v20 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v20, v21, v22);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[18];
    v6 = v0[10];
    v7 = v0[8];
    v8 = v6[12];
    v9 = v6[5];
    v10 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
    v11 = DeviceState.asSiriKitDeviceState()(v9, v10);
    v0[22] = v11;
    v0[5] = &type metadata for AppInfoResolver;
    v0[6] = &protocol witness table for AppInfoResolver;
    App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)((v6 + 2), v0 + 2, 2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v21 = (*v8 + class metadata base offset for ContinueInAppCATWrapperSimple);
    v22 = (*v21 + **v21);
    v12 = (*v21)[1];
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:);
    v14 = v0[18];

    return v22(v11, v14);
  }

  else
  {
    v16 = v0[7];
    v16[3] = type metadata accessor for AceOutput();
    v16[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v16);
    v17 = swift_task_alloc();
    v0[28] = v17;
    *v17 = v0;
    v17[1] = CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:);
    v18 = v0[9];
    v19 = v0[10];
    v20 = v0[8];

    return CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse_preRFv2(app:intent:)();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = v4[23];
  *v6 = *v1;
  v5[24] = v0;

  v8 = v4[22];
  v9 = v4[18];
  if (!v0)
  {
    v5[25] = v3;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 168);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);

  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[29] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[21];
    v14 = v3[17];
    v13 = v3[18];
    v17 = v3 + 13;
    v15 = v3[13];
    v16 = v17[1];

    OUTLINED_FUNCTION_6_0();

    return v18();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 56));
  v1 = *(v0 + 232);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[25];
  v14 = v12[17];
  v15 = v12[13];
  v16 = v12[14];
  v18 = v12[11];
  v17 = v12[12];
  v19 = v12[10];
  v33 = v12[9];
  v34 = v13;
  static DialogPhase.completion.getter();
  v20 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v17 + 16))(v15, v16, v18);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v17 + 8))(v16, v18);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(*v19 + 160))(v33);
  OutputGenerationManifest.canUseServerTTS.setter();
  v21 = v19[16];
  v22 = v19[17];
  __swift_project_boxed_opaque_existential_1(v19 + 13, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  v12[26] = v23;
  *(v23 + 16) = xmmword_216010;
  *(v23 + 32) = v34;
  v24 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v25 = v34;
  v29 = swift_task_alloc();
  v12[27] = v29;
  *v29 = v12;
  v29[1] = CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:);
  v30 = v12[17];
  v31 = v12[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v31, v23, v30, v21, v22, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse_preRFv2(app:intent:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v1[26] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for ActivityType();
  v1[27] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[28] = v9;
  v11 = *(v10 + 64);
  v1[29] = OUTLINED_FUNCTION_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v12);
  v14 = *(v13 + 64);
  v1[30] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for TemplatingResult();
  v1[31] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[32] = v16;
  v18 = *(v17 + 64);
  v1[33] = OUTLINED_FUNCTION_28();
  v19 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[23];
  v0[5] = &type metadata for AppInfoResolver;
  v0[6] = &protocol witness table for AppInfoResolver;
  App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(v2 + 16, v0 + 2, 2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined init with copy of DeviceState(v2 + 16, (v0 + 7));
  v4 = async function pointer to static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)[1];
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse_preRFv2(app:intent:);
  v6 = v0[33];
  v7 = v0[30];

  return static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)(v6, v7, v0 + 7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *(v5 + 240);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 280) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v3 + 56, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  (*(v1 + 104))(v2, enum case for ActivityType.failed(_:), v4);
  v7 = (*(*v5 + 152))(v2, v6);
  (*(v1 + 8))(v2, v4);
  outlined init with copy of DeviceState((v5 + 2), (v0 + 12));
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(*v5 + 160))(v6);
  v9 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  if (v7)
  {
    v10 = type metadata accessor for DefaultFlowActivity();
    v11 = lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity();
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v0[18] = 0;
    v0[19] = 0;
  }

  v12 = v0[32];
  v13 = v0[33];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[22];
  v0[17] = v7;
  v0[20] = v10;
  v0[21] = v11;

  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  (*(v12 + 8))(v13, v14);
  outlined destroy of Siri_Nlu_External_UserDialogAct?((v0 + 17), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);

  OUTLINED_FUNCTION_6_0();

  return v19();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[26];

  OUTLINED_FUNCTION_6_0();
  v6 = v0[35];

  return v5();
}

uint64_t ContinueInAppCATWrapperSimple.continueInApp(device:appDisplayInfo:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_218630;
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

  v4 = v0[6];
  v5 = v0[3];
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x5074737269467369;
  *(v2 + 88) = 0xEF70704179747261;
  outlined init with copy of AppDisplayInfo?(v5, v4, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v6 = type metadata accessor for AppDisplayInfo();
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v4, 1, v6);

  v7 = v0[6];
  if (v4 == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[6], &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v8 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
    *(v2 + 96) = 0;
  }

  else
  {
    v9 = AppDisplayInfo.isFirstParty.getter();
    OUTLINED_FUNCTION_21_2(v6);
    (*(v10 + 8))(v7, v6);
    *(v2 + 96) = v9 & 1;
    v8 = &type metadata for Bool;
  }

  v11 = v0[5];
  v12 = v0[3];
  *(v2 + 120) = v8;
  *(v2 + 128) = 0x656D614E707061;
  *(v2 + 136) = 0xE700000000000000;
  outlined init with copy of AppDisplayInfo?(v12, v11, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v6);
  v14 = v0[5];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[5], &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *(v2 + 160) = 0;
  }

  else
  {
    v18 = v0[5];
    v15 = AppDisplayInfo.displayName.getter();
    v16 = v19;
    OUTLINED_FUNCTION_21_2(v6);
    (*(v20 + 8))(v14, v6);
    v17 = &type metadata for String;
  }

  *(v2 + 144) = v15;
  *(v2 + 152) = v16;
  *(v2 + 168) = v17;
  v21 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v25 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v22 = swift_task_alloc();
  v0[8] = v22;
  *v22 = v0;
  v22[1] = ContinueInAppCATWrapperSimple.continueInApp(device:appDisplayInfo:);
  v23 = v0[4];

  return v25(0xD00000000000001DLL, 0x8000000000235350, v2);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v5[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = v5[6];
    v14 = v5[7];
    v16 = v5[5];

    v17 = *(v9 + 8);

    return v17(v3);
  }
}

uint64_t ContinueInAppCATWrapperSimple.init(deviceState:)(uint64_t a1)
{
  outlined init with copy of AppDisplayInfo?(a1, v3, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  SiriKitFlowCATWrapperSimple.init(deviceState:)(v3);
  OUTLINED_FUNCTION_19_23();
  return v1;
}

void specialized CustomIntentContinueInAppResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_40_0();
  v49 = v25;
  v50 = v26;
  v47 = v27;
  v48 = v28;
  v30 = v29;
  v46 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_13_1();
  v37 = v36;
  v39 = *(v38 + 64);
  v41 = __chkstk_darwin(v40);
  v43 = &v46 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v46 - v44;
  (*(v37 + 32))(&v46 - v44);
  outlined init with copy of DeviceState(v30, v51);
  (*(v37 + 16))(v43, v45, a24);
  specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v35, v33, v46, v51, v47, v48, v49, v50, a21, v43, a23, a24, a25);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  (*(v37 + 8))(v45, a24);
  OUTLINED_FUNCTION_42();
}

unint64_t lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity()
{
  result = lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity;
  if (!lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity)
  {
    type metadata accessor for DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity);
  }

  return result;
}

uint64_t type metadata accessor for ContinueInAppCATWrapperSimple()
{
  result = type metadata singleton initialization cache for ContinueInAppCATWrapperSimple;
  if (!type metadata singleton initialization cache for ContinueInAppCATWrapperSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OUTLINED_FUNCTION_10_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
{
  v31 = *(v29 - 112);
  v32 = *(v29 - 104);
  v33 = *(v29 - 96);
  v34 = *(v29 - 88);

  specialized CustomIntentContinueInAppResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v28, v27, v26, v25, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t OUTLINED_FUNCTION_19_23()
{

  return outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, v1, v2);
}

uint64_t AppNameResolver.resolveAppName(app:)()
{
  v1 = static SAAppInfoFactory.createAppInfo(app:)();
  v2 = (*(*v0 + 88))();

  return v2;
}

uint64_t AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(void *a1)
{
  if (!a1 || (result = outlined bridged method (pb) of @objc SAAppInfo.displayAppName.getter(a1), !v2))
  {

    return 0;
  }

  return result;
}

void CustomIntentNeedsConfirmationFlowStrategy.__allocating_init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_40_0();
  v43 = v22;
  v44 = v23;
  v42 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_5_40();
  v27 = *(v21 + 48);
  v28 = *(v21 + 52);
  v29 = swift_allocObject();
  v30 = a21[3];
  v31 = a21[4];
  __swift_mutable_project_boxed_opaque_existential_1(a21, v30);
  OUTLINED_FUNCTION_13_1();
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_3();
  v36 = OUTLINED_FUNCTION_24_25(v35);
  v37(v36);
  v38 = OUTLINED_FUNCTION_4_55();
  specialized CustomIntentNeedsConfirmationFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(v38, v39, v40, v41, v26, v42, v43, v44, v21, v29, v30, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsConfirmationFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_40_0();
  v41 = v23;
  v42 = v24;
  v40 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_5_40();
  v28 = a21[3];
  v29 = a21[4];
  __swift_mutable_project_boxed_opaque_existential_1(a21, v28);
  OUTLINED_FUNCTION_13_1();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_3();
  v34 = OUTLINED_FUNCTION_25_19(v33);
  v35(v34);
  v36 = OUTLINED_FUNCTION_4_55();
  specialized CustomIntentNeedsConfirmationFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(v36, v37, v38, v39, v27, v40, v41, v42, v22, v21, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsConfirmIntentResponseGenerator.__allocating_init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_40_0();
  v42 = v23;
  v43 = v24;
  v40 = v25;
  v41 = v26;
  OUTLINED_FUNCTION_5_40();
  v27 = swift_allocObject();
  v28 = a22[3];
  v29 = a22[4];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v28);
  OUTLINED_FUNCTION_13_1();
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_3();
  v34 = OUTLINED_FUNCTION_24_25(v33);
  v35(v34);
  v36 = OUTLINED_FUNCTION_4_55();
  specialized CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v36, v37, v38, v39, v40, v41, v42, v43, a21, v22, v27, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsConfirmationFlowStrategy.actionForInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v26[1] = v2;
  v26[2] = v3;
  v4 = type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_13_1();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_13_1();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v18);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v26 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  (*(v6 + 8))(v12, v4);
  CustomIntentNeedsConfirmationFlowStrategy.makeConfirmationStateFromInput(input:parameterName:)();

  v24 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  swift_beginAccess();
  (*(v15 + 40))(v1 + v24, v23, v13);
  swift_endAccess();
  (*(v15 + 16))(v21, v1 + v24, v13);
  v25 = (*(v15 + 88))(v21, v13);
  if (v25 == enum case for SiriKitConfirmationState.unset(_:))
  {
    static ActionForInput.ignore()();
  }

  else if (v25 == enum case for SiriKitConfirmationState.cancelled(_:))
  {
    static ActionForInput.cancel()();
  }

  else
  {
    static ActionForInput.handle()();
    (*(v15 + 8))(v21, v13);
  }

  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64);
  v1[20] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for SiriKitConfirmationState();
  v1[21] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[22] = v6;
  v8 = *(v7 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  v1[25] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[26] = v10;
  v12 = *(v11 + 64);
  v1[27] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32_5();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 208);
  v28 = *(v24 + 216);
  v29 = *(v24 + 200);
  v30 = *(v24 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v31 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v109 = ParameterIdentifier.name.getter();
  v33 = v32;
  (*(v27 + 8))(v28, v29);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.voiceCommands);
  v35 = v31;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v110 = v35;
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    a11 = v39;
    *v38 = 136315138;
    v40 = INIntent.debugDescriptionLite.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &a11);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v36, v37, "Intent prior to confirmation: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v43 = *(v24 + 192);
  v45 = *(v24 + 168);
  v44 = *(v24 + 176);
  v46 = *(v24 + 152);
  v47 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  swift_beginAccess();
  v48 = *(v44 + 16);
  v48(v43, v46 + v47, v45);
  v49 = (*(v44 + 88))(v43, v45);
  if (v49 == enum case for SiriKitConfirmationState.unset(_:) || v49 == enum case for SiriKitConfirmationState.cancelled(_:))
  {
    v51 = *(v24 + 176);
    v52 = *(v24 + 184);
    v53 = *(v24 + 168);

    OUTLINED_FUNCTION_36_17();
    v54 = a12;
    *(v24 + 120) = a11;
    *(v24 + 128) = v54;
    v55._countAndFlagsBits = OUTLINED_FUNCTION_16_34();
    String.append(_:)(v55);
    v56 = OUTLINED_FUNCTION_31_19();
    (v48)(v56);
    OUTLINED_FUNCTION_31_19();
    _print_unlocked<A, B>(_:_:)();
    (*(v51 + 8))(v52, v53);
    v57._object = 0x8000000000235430;
    v57._countAndFlagsBits = 0xD00000000000003CLL;
    String.append(_:)(v57);
    v58 = *(v24 + 120);
    v59 = *(v24 + 128);
    v60 = type metadata accessor for CommandFailure();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    v63 = OUTLINED_FUNCTION_19_24();
    OUTLINED_FUNCTION_9_32();
    lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(v64, v65);
    swift_allocError();
    *v66 = v63;
    swift_willThrow();

    goto LABEL_11;
  }

  if (v49 != enum case for SiriKitConfirmationState.confirmed(_:))
  {
    if (v49 == enum case for SiriKitConfirmationState.rejected(_:))
    {
      v71 = v24 + 48;
      *(v24 + 48) = 0u;
      *(v24 + 64) = 0u;
      v75 = &enum case for ConfirmationResponse.rejected(_:);
      goto LABEL_16;
    }

    v92 = *(v24 + 184);
    v109 = *(v24 + 192);
    v94 = *(v24 + 168);
    v93 = *(v24 + 176);

    OUTLINED_FUNCTION_36_17();
    v95 = a12;
    *(v24 + 104) = a11;
    *(v24 + 112) = v95;
    v96._countAndFlagsBits = OUTLINED_FUNCTION_16_34();
    String.append(_:)(v96);
    v97 = OUTLINED_FUNCTION_31_19();
    (v48)(v97);
    OUTLINED_FUNCTION_31_19();
    _print_unlocked<A, B>(_:_:)();
    v98 = *(v93 + 8);
    v98(v92, v94);
    v99._object = 0x8000000000235430;
    v99._countAndFlagsBits = 0xD00000000000003CLL;
    String.append(_:)(v99);
    v100 = *(v24 + 104);
    v101 = *(v24 + 112);
    v102 = type metadata accessor for CommandFailure();
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    swift_allocObject();
    v105 = OUTLINED_FUNCTION_19_24();
    OUTLINED_FUNCTION_9_32();
    lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(v106, v107);
    swift_allocError();
    *v108 = v105;
    swift_willThrow();

    v98(v109, v94);
LABEL_11:
    v67 = *(v24 + 216);
    v69 = *(v24 + 184);
    v68 = *(v24 + 192);
    v70 = *(v24 + 160);

    OUTLINED_FUNCTION_6_0();
    goto LABEL_17;
  }

  v71 = v24 + 16;
  v72 = *(v24 + 144);
  v73 = ParameterResolutionRecord.result.getter();
  v74 = [v73 itemToConfirm];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v75 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_16:
  v109 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v110, v109, v33, v71, 0, 1);

  outlined destroy of SpeakableString?(v71, &_sypSgMd, &_sypSgMR);
  v76 = *(v24 + 216);
  v78 = *(v24 + 184);
  v77 = *(v24 + 192);
  v79 = *(v24 + 160);
  v80 = *(v24 + 136);
  v81 = *v75;
  v82 = type metadata accessor for ConfirmationResponse();
  (*(*(v82 - 8) + 104))(v79, v81, v82);
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v82);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();

  OUTLINED_FUNCTION_6_0();
LABEL_17:
  OUTLINED_FUNCTION_58();

  return v84(v83, v84, v85, v86, v87, v88, v89, v90, v109, v110, a11, a12, a13, a14, a15, a16);
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  v1 = *(**(v0[4] + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator) + 192);
  v8 = (v1 + *v1);
  v2 = v1[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock();
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6);
}

void CustomIntentNeedsConfirmationFlowStrategy.makeConfirmationStateFromInput(input:parameterName:)()
{
  OUTLINED_FUNCTION_40_0();
  v71 = v0;
  v72 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_13_1();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v20);
  v65 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v63 - v24;
  __chkstk_darwin(v23);
  v27 = &v63 - v26;
  v67 = v3;
  static FlowStrategyUtils.makeConfirmationStateFromInput(input:)(v3, &v63 - v26);
  v29 = v17 + 104;
  v28 = *(v17 + 104);
  v68 = enum case for SiriKitConfirmationState.unset(_:);
  v66 = v28;
  (v28)(v25);
  lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(&lazy protocol witness table cache variable for type SiriKitConfirmationState and conformance SiriKitConfirmationState, &type metadata accessor for SiriKitConfirmationState);
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v69 = *(v17 + 8);
  v70 = v17 + 8;
  v69(v25, v15);
  if (v3)
  {
    v64 = v27;
    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v30 = type metadata accessor for Logger();
      v63 = __swift_project_value_buffer(v30, static Logger.voiceCommands);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_81(&dword_0, v33, v34, "Waiting for a confirmation response but there is no confirmation state in the input. Checking for server side resolution.");
        OUTLINED_FUNCTION_15_0();
      }

      Input.parse.getter();
      if ((*(v8 + 88))(v14, v6) != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        OUTLINED_FUNCTION_30_18();
        v45();
        (*(v8 + 8))(v14, v6);
        v66(v5, v68, v15);
        goto LABEL_36;
      }

      (*(v8 + 96))(v14, v6);
      v35 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));
      v36 = type metadata accessor for NLIntent();
      OUTLINED_FUNCTION_23_0(v36);
      (*(v37 + 8))(v14);
      v38 = v65;
      Parse.ServerConversion.confirmationState.getter();
      v39 = (*(v17 + 88))(v38, v15);
      v40 = v69;
      v69(v38, v15);
      if (v39 != v68)
      {
        break;
      }

      v17 = v29;
      v67 = v5;
      v65 = v35;
      v29 = Parse.ServerConversion.parameterMetadata.getter();
      v14 = specialized Array.count.getter(v29);
      v6 = 0;
      v8 = v29 & 0xC000000000000001;
      v5 = v29 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v14 == v6)
        {

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = OUTLINED_FUNCTION_52();
            *v48 = 0;
            _os_log_impl(&dword_0, v46, v47, "Could not find the current parameter in the parameter metadata sent from the server. Treating input as not understood.", v48, 2u);
            OUTLINED_FUNCTION_15_0();
          }

          OUTLINED_FUNCTION_30_18();
          v49();
          v50 = v67;
          v51 = v68;
          goto LABEL_35;
        }

        if (v8)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_38;
          }

          v41 = *(v29 + 8 * v6 + 32);
        }

        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (SiriKitParameterMetadata.parameterName.getter() == v71 && v42 == v72)
        {

LABEL_27:

          v52 = SiriKitParameterMetadata.shouldResolve.getter();
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.debug.getter();
          v55 = os_log_type_enabled(v53, v54);
          if (v52)
          {
            if (v55)
            {
              *OUTLINED_FUNCTION_52() = 0;
              OUTLINED_FUNCTION_81(&dword_0, v56, v57, "Received parameter metadata for the expected parameter from the server and it is marked shouldResolve. Treating as rejected");
              OUTLINED_FUNCTION_15_0();
            }

            OUTLINED_FUNCTION_30_18();
            v58();
            v59 = &enum case for SiriKitConfirmationState.rejected(_:);
          }

          else
          {
            if (v55)
            {
              *OUTLINED_FUNCTION_52() = 0;
              OUTLINED_FUNCTION_81(&dword_0, v60, v61, "Received parameter metadata for the expected parameter from the server and shouldResolve is false. Treating as confirmed");
              OUTLINED_FUNCTION_15_0();
            }

            OUTLINED_FUNCTION_30_18();
            v62();
            v59 = &enum case for SiriKitConfirmationState.confirmed(_:);
          }

          v51 = *v59;
          v50 = v67;
LABEL_35:
          v66(v50, v51, v15);
          goto LABEL_36;
        }

        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v44)
        {
          goto LABEL_27;
        }

        ++v6;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      OUTLINED_FUNCTION_0();
    }

    Parse.ServerConversion.confirmationState.getter();

    v40(v64, v15);
  }

  else
  {
    (*(v17 + 32))(v5, v27, v15);
  }

LABEL_36:
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  v2 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_23_0(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_deviceState));
  v4 = *(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_voiceCommandName + 8);

  v5 = *(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator);

  return v0;
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.__deallocating_deinit()
{
  CustomIntentNeedsConfirmationFlowStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  *v13 = v6;
  v13[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  *v13 = v6;
  v13[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  *v15 = v7;
  v15[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v1[17] = *v0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for DialogPhase();
  v1[19] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[20] = v6;
  v8 = *(v7 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[23] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[24] = v10;
  v12 = *(v11 + 64);
  v1[25] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for NLContextUpdate();
  v1[26] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[27] = v14;
  v16 = *(v15 + 64);
  v1[28] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for ParameterIdentifier();
  v1[29] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[30] = v18;
  v20 = *(v19 + 64);
  v1[31] = OUTLINED_FUNCTION_28();
  v21 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *(v4 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v10 + 312) = v9;
  *(v10 + 320) = v0;

  if (v0)
  {
    v11 = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  }

  else
  {
    v11 = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  OUTLINED_FUNCTION_32_5();
  v1 = *(v0 + 312);
  v30 = *(v0 + 344);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v28 = *(v0 + 208);
  v29 = *(v0 + 224);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v27 = *(v0 + 152);
  v7 = *(v0 + 144);
  v31 = *(v0 + 128);
  static DialogPhase.confirmation.getter();
  v8 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v5, v4, v27);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v4, v27);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(v2 + 16))(v7, v29, v28);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v28);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 328) = v9;
  *v9 = v10;
  v9[1] = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  v11 = *(v0 + 312);
  v12 = *(v0 + 296);
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 200);
  v16 = *(v0 + 112);
  OUTLINED_FUNCTION_58();

  return static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:)(v17, v18, v19, v20, v21, v22, v23, v24);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 336) = v0;

  if (v0)
  {
    v9 = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  }

  else
  {
    v9 = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[32];
  v4 = v0[33];

  v5 = v0[40];
  v6 = OUTLINED_FUNCTION_17_34();
  v7(v6);

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 336);
  v9 = OUTLINED_FUNCTION_17_34();
  v10(v9);

  OUTLINED_FUNCTION_6_0();

  return v11();
}
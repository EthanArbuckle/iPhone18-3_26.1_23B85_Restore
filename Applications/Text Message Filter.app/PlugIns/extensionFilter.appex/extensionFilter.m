id getActiveSimRegions()
{
  v0 = [[CoreTelephonyClient alloc] initWithQueue:0];
  v16 = 0;
  v1 = [v0 getActiveContexts:&v16];
  v2 = v16;
  v3 = objc_alloc_init(NSMutableArray);
  for (i = 1; i != 3; ++i)
  {
    v5 = [v1 findForSlot:i];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 context];
      if (v7)
      {
        v15 = v2;
        v8 = [v0 copyMobileSubscriberCountryCode:v7 error:&v15];
        v9 = v15;

        if (v8 && !v9)
        {
          v14 = 0;
          v10 = [v0 copyMobileSubscriberIsoCountryCode:v8 error:&v14];
          v11 = v14;
          v9 = v11;
          if (v10 && !v11 && [v10 length])
          {
            v12 = [v10 lowercaseString];

            [v3 addObject:v12];
            v10 = v12;
          }
        }

        v2 = v9;
      }
    }
  }

  return v3;
}

id trialLogHandle()
{
  if (trialLogHandle_onceToken != -1)
  {
    trialLogHandle_cold_1();
  }

  v1 = trialLogHandle_sLogHandle;

  return v1;
}

void sub_1000035B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __trialLogHandle_block_invoke(id a1)
{
  trialLogHandle_sLogHandle = os_log_create("com.apple.smsFilter", "trialmanager");

  _objc_release_x1();
}

double _s15extensionFilter6RegionVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double variable initialization expression of SmsFilter._modelPipeline@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 variable initialization expression of SmsFilter._region@<Q0>(uint64_t a1@<X8>)
{
  _s15extensionFilter6RegionVSgWOi0_(v6);
  v2 = v7[0];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 121) = *(v7 + 9);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t variable initialization expression of RegexPipeline.subclassificationRegexFilter()
{
  type metadata accessor for RegexFilter();
  v0 = swift_allocObject();
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptyArrayStorage;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  swift_arrayDestroy();
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  swift_arrayDestroy();
  *(v4 + 24) = v5;
  return v0;
}

uint64_t variable initialization expression of RegexPipeline.allowRegexFilter()
{
  type metadata accessor for RegexFilter();
  v0 = swift_allocObject();
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  *(v0 + 24) = v1;
  return v0;
}

unint64_t variable initialization expression of RegexFilter.regexDict()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of variable initialization expression of RegexFilter.regexDict);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  return v0;
}

uint64_t variable initialization expression of SmsFilterModelPipeline._dateCheckpoint@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NLLanguage@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *_sSo24ILMessageFilterSubActionVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ILMessageFilterSubAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ILMessageFilterSubAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So21ILMessageFilterActionVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _NSRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _NSRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for ILMessageFilterAction(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ILMessageFilterSubAction and conformance ILMessageFilterSubAction()
{
  result = lazy protocol witness table cache variable for type ILMessageFilterSubAction and conformance ILMessageFilterSubAction;
  if (!lazy protocol witness table cache variable for type ILMessageFilterSubAction and conformance ILMessageFilterSubAction)
  {
    type metadata accessor for ILMessageFilterSubAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ILMessageFilterSubAction and conformance ILMessageFilterSubAction);
  }

  return result;
}

Swift::Bool __swiftcall String.isNumber()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

  v16 = v3;
  v17 = v2;
  static CharacterSet.decimalDigits.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v11 & 1) == 0)
  {
    v16 = v3;
    v17 = v2;
    static CharacterSet.letters.getter();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v13 = v14;
    v12(v8, v4);
  }

  else
  {
LABEL_5:
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

Swift::Bool __swiftcall String.isAlphanumeric()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v17 - v10;
  v12 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v12 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    CharacterSet.init(charactersIn:)();
    v17[0] = v3;
    v17[1] = v2;
    CharacterSet.inverted.getter();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v14 = v13;
    v15 = *(v5 + 8);
    v15(v9, v4);
    v15(v11, v4);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

Swift::Bool __swiftcall String.matches(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v14 - v9;
  v14[2] = v4;
  v14[3] = v3;
  v14[0] = countAndFlagsBits;
  v14[1] = object;
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  LOBYTE(v3) = v12;
  outlined destroy of Locale?(v10);
  return (v3 & 1) == 0;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t += infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Array();
  return Array.append(_:)();
}

id static ILMessageFilterQueryResponse.response(withAction:subAction:error:modelVersion:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, NSString a5)
{
  v9 = a3;
  v10 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
  [v10 setAction:a1];
  [v10 setSubAction:a2];
  if (v9 == 8)
  {
    v11 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type SFEError and conformance SFEError();
    swift_allocError();
    *v12 = a3;
    v11 = _convertErrorToNSError(_:)();
  }

  [v10 setError:v11];

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [v10 setVersion:a5];

  return v10;
}

id static ILMessageFilterQueryResponse.unknownSenders(withError:modelVersion:)(unsigned __int8 a1, uint64_t a2, NSString a3)
{
  v5 = a1;
  v6 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
  [v6 setAction:1];
  [v6 setSubAction:0];
  v7 = 0;
  if (v5 != 8)
  {
    lazy protocol witness table accessor for type SFEError and conformance SFEError();
    swift_allocError();
    *v8 = a1;
    v7 = _convertErrorToNSError(_:)();
  }

  [v6 setError:v7];

  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v6 setVersion:a3];

  return v6;
}

id static ILMessageFilterQueryResponse.junk()()
{
  v0 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
  [v0 setAction:2];
  [v0 setSubAction:0];
  return v0;
}

uint64_t specialized String.init(filterAction:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 0x776F6C6C61;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 1802401130;
      case 3:
        return 0x6F69746F6D6F7270;
      case 4:
        return 0x746361736E617274;
    }
  }

  _StringGuts.grow(_:)(20);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD000000000000011;
}

uint64_t specialized String.init(filterSubAction:)(uint64_t a1)
{
  if (a1 > 10001)
  {
    if (a1 != 10002)
    {
      if (a1 == 10003)
      {
        return 0xD000000000000016;
      }

      goto LABEL_8;
    }

    return 0xD000000000000013;
  }

  else
  {
    if (a1)
    {
      if (a1 == 10001)
      {
        return 0xD000000000000014;
      }

LABEL_8:
      _StringGuts.grow(_:)(20);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 62;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 0xD000000000000011;
    }

    return 1701736302;
  }
}

unint64_t lazy protocol witness table accessor for type SFEError and conformance SFEError()
{
  result = lazy protocol witness table cache variable for type SFEError and conformance SFEError;
  if (!lazy protocol witness table cache variable for type SFEError and conformance SFEError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SFEError and conformance SFEError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SFEError and conformance SFEError;
  if (!lazy protocol witness table cache variable for type SFEError and conformance SFEError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SFEError and conformance SFEError);
  }

  return result;
}

__n128 RegionUtils._region.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[8];
  v18 = v1[7];
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 137);
  v4 = v1[4];
  v14 = v1[3];
  v15 = v4;
  v5 = v1[6];
  v16 = v1[5];
  v17 = v5;
  v6 = *(v1 + 2);
  v12 = v1[1];
  v13 = v6;
  outlined init with copy of Region?(&v12, v11);
  v7 = v19[0];
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 121) = *(v19 + 9);
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t outlined init with copy of Region?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RegionUtils._region.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[7];
  v13[0] = v1[8];
  *(v13 + 9) = *(v1 + 137);
  v4 = v1[4];
  v12[2] = v1[3];
  v12[3] = v4;
  v5 = v1[5];
  v12[5] = v1[6];
  v12[6] = v3;
  v12[4] = v5;
  v6 = v1[2];
  v12[0] = v1[1];
  v12[1] = v6;
  v7 = a1[5];
  v1[5] = a1[4];
  v1[6] = v7;
  v8 = a1[3];
  v1[3] = a1[2];
  v1[4] = v8;
  v9 = a1[1];
  v1[1] = *a1;
  v1[2] = v9;
  *(v1 + 137) = *(a1 + 121);
  v10 = a1[7];
  v1[7] = a1[6];
  v1[8] = v10;
  return outlined destroy of Region?(v12, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
}

uint64_t one-time initialization function for indianShortCodePattern()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SsSgAD6prefixSs6senderA2D6suffixtGMd, &_s17_StringProcessing5RegexVySs_SsSgAD6prefixSs6senderA2D6suffixtGMR);
  __swift_allocate_value_buffer(v0, static RegionUtils.indianShortCodePattern);
  __swift_project_value_buffer(v0, static RegionUtils.indianShortCodePattern);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SsSgAA6prefixSs6senderA2A6suffixtMd, &_sSs_SsSgAA6prefixSs6senderA2A6suffixtMR);
  return Regex.init(_regexString:version:)();
}

uint64_t RegionUtils.indianShortCodePattern.unsafeMutableAddressor()
{
  if (one-time initialization token for indianShortCodePattern != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SsSgAD6prefixSs6senderA2D6suffixtGMd, &_s17_StringProcessing5RegexVySs_SsSgAD6prefixSs6senderA2D6suffixtGMR);

  return __swift_project_value_buffer(v0, static RegionUtils.indianShortCodePattern);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static RegionUtils.indianShortCodePattern.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for indianShortCodePattern != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SsSgAD6prefixSs6senderA2D6suffixtGMd, &_s17_StringProcessing5RegexVySs_SsSgAD6prefixSs6senderA2D6suffixtGMR);
  v3 = __swift_project_value_buffer(v2, static RegionUtils.indianShortCodePattern);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_OWORD *RegionUtils.__allocating_init(for:)(__int128 *a1)
{
  v2 = swift_allocObject();
  _s15extensionFilter6RegionVSgWOi0_(v24);
  v3 = v25[0];
  v2[7] = v24[6];
  v2[8] = v3;
  *(v2 + 137) = *(v25 + 9);
  v4 = v24[3];
  v2[3] = v24[2];
  v2[4] = v4;
  v5 = v24[5];
  v2[5] = v24[4];
  v2[6] = v5;
  v6 = v24[1];
  v2[1] = v24[0];
  v2[2] = v6;
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[4];
  v31 = a1[5];
  v32 = v7;
  v33[0] = v8;
  *(v33 + 9) = *(a1 + 121);
  v10 = a1[3];
  v28 = a1[2];
  v29 = v10;
  v30 = v9;
  v11 = a1[1];
  v26 = *a1;
  v27 = v11;
  Regex.SubclassificationMap.init(financeList:ordersList:remindersList:)(&v26, v12, v13);
  swift_beginAccess();
  v14 = v2[7];
  v15 = v2[8];
  v16 = v2[5];
  v34[5] = v2[6];
  v34[6] = v14;
  v35[0] = v15;
  *(v35 + 9) = *(v2 + 137);
  v17 = v2[4];
  v34[2] = v2[3];
  v34[3] = v17;
  v34[4] = v16;
  v18 = v2[2];
  v34[0] = v2[1];
  v34[1] = v18;
  v19 = v31;
  v2[5] = v30;
  v2[6] = v19;
  v20 = v29;
  v2[3] = v28;
  v2[4] = v20;
  v21 = v27;
  v2[1] = v26;
  v2[2] = v21;
  *(v2 + 137) = *(v33 + 9);
  v22 = v33[0];
  v2[7] = v32;
  v2[8] = v22;
  outlined destroy of Region?(v34, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  return v2;
}

_OWORD *RegionUtils.init(for:)(__int128 *a1)
{
  _s15extensionFilter6RegionVSgWOi0_(v24);
  v3 = v25[0];
  v1[7] = v24[6];
  v1[8] = v3;
  *(v1 + 137) = *(v25 + 9);
  v4 = v24[3];
  v1[3] = v24[2];
  v1[4] = v4;
  v5 = v24[5];
  v1[5] = v24[4];
  v1[6] = v5;
  v6 = v24[1];
  v1[1] = v24[0];
  v1[2] = v6;
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[4];
  v31 = a1[5];
  v32 = v7;
  v33[0] = v8;
  *(v33 + 9) = *(a1 + 121);
  v10 = a1[3];
  v28 = a1[2];
  v29 = v10;
  v30 = v9;
  v11 = a1[1];
  v26 = *a1;
  v27 = v11;
  Regex.SubclassificationMap.init(financeList:ordersList:remindersList:)(&v26, v12, v13);
  swift_beginAccess();
  v14 = v1[7];
  v15 = v1[8];
  v16 = v1[5];
  v34[5] = v1[6];
  v34[6] = v14;
  v35[0] = v15;
  *(v35 + 9) = *(v1 + 137);
  v17 = v1[4];
  v34[2] = v1[3];
  v34[3] = v17;
  v34[4] = v16;
  v18 = v1[2];
  v34[0] = v1[1];
  v34[1] = v18;
  v19 = v31;
  v1[5] = v30;
  v1[6] = v19;
  v20 = v29;
  v1[3] = v28;
  v1[4] = v20;
  v21 = v27;
  v1[1] = v26;
  v1[2] = v21;
  *(v1 + 137) = *(v33 + 9);
  v22 = v33[0];
  v1[7] = v32;
  v1[8] = v22;
  outlined destroy of Region?(v34, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  return v1;
}

Swift::Bool __swiftcall RegionUtils.shouldApplyFilter(sender:)(Swift::String sender)
{
  v2 = v1;
  object = sender._object;
  countAndFlagsBits = sender._countAndFlagsBits;
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v124 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v123 - v11;
  __chkstk_darwin(v10);
  v14 = &v123 - v13;
  swift_beginAccess();
  v15 = *(v1 + 112);
  v16 = *(v1 + 128);
  v17 = *(v1 + 80);
  v152[5] = *(v1 + 96);
  v152[6] = v15;
  v153[0] = v16;
  *(v153 + 9) = *(v1 + 137);
  v18 = *(v1 + 64);
  v152[2] = *(v1 + 48);
  v152[3] = v18;
  v152[4] = v17;
  v19 = *(v1 + 32);
  v152[0] = *(v1 + 16);
  v152[1] = v19;
  LODWORD(v20) = _s15extensionFilter6RegionVSgWOg(v152);
  if (v20 == 1)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v21 = *(v1 + 48);
  v126 = *(v1 + 40);
  v127 = v14;
  v131 = v21;
  v22 = *(v1 + 112);
  v23 = *(v1 + 128);
  v24 = *(v1 + 80);
  v150[5] = *(v1 + 96);
  v150[6] = v22;
  v151[0] = v23;
  *(v151 + 9) = *(v1 + 137);
  v25 = *(v1 + 64);
  v150[2] = *(v1 + 48);
  v150[3] = v25;
  v150[4] = v24;
  v26 = *(v1 + 32);
  v150[0] = *(v1 + 16);
  v150[1] = v26;
  LODWORD(v20) = _s15extensionFilter6RegionVSgWOg(v150);
  if (v20 == 1)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v125 = *(v1 + 56);
  v27 = *(v1 + 112);
  v148[5] = *(v1 + 96);
  v148[6] = v27;
  v149[0] = *(v1 + 128);
  *(v149 + 9) = *(v1 + 137);
  v28 = *(v1 + 64);
  v29 = *(v1 + 80);
  v148[2] = *(v1 + 48);
  v148[3] = v28;
  v148[4] = v29;
  v30 = *(v1 + 32);
  v148[0] = *(v1 + 16);
  v148[1] = v30;
  LODWORD(v20) = _s15extensionFilter6RegionVSgWOg(v148);
  if (v20 == 1)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v129 = v12;
  v130 = v6;
  v31 = *(v1 + 80);
  v32 = one-time initialization token for logger;
  v33 = v131;

  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = __swift_project_value_buffer(v34, logger);

  v123 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v128 = v31;
    v40 = v5;
    v41 = countAndFlagsBits;
    v42 = v39;
    *&v140 = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, object, &v140);
    _os_log_impl(&_mh_execute_header, v36, v37, "smsfilter: senderID: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    countAndFlagsBits = v41;
    v5 = v40;
    v31 = v128;

    v33 = v131;
  }

  *(&v141 + 1) = &type metadata for IMFeatureFlags;
  *&v142 = lazy protocol witness table accessor for type IMFeatureFlags and conformance IMFeatureFlags();
  v43 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v140);
  if (v43)
  {
    v44 = *(v2 + 112);
    v45 = *(v2 + 128);
    v46 = *(v2 + 80);
    v145 = *(v2 + 96);
    v146 = v44;
    v147[0] = v45;
    *(v147 + 9) = *(v2 + 137);
    v47 = *(v2 + 64);
    v142 = *(v2 + 48);
    v143 = v47;
    v144 = v46;
    v48 = *(v2 + 32);
    v140 = *(v2 + 16);
    v141 = v48;
    LODWORD(v20) = _s15extensionFilter6RegionVSgWOg(&v140);
    if (v20 == 1)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (*(v2 + 16) == 29557 && *(v2 + 24) == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v49 = HIBYTE(object) & 0xF;
      if ((object & 0x2000000000000000) == 0)
      {
        v49 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {
        v50 = v127;
        CharacterSet.init(charactersIn:)();
        *&v132 = countAndFlagsBits;
        *(&v132 + 1) = object;
        v51 = v129;
        CharacterSet.inverted.getter();
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v53 = v52;
        v54 = *(v130 + 8);
        v54(v51, v5);
        v54(v50, v5);
LABEL_70:
        LOBYTE(v20) = v53 & 1;
        return v20;
      }

      goto LABEL_69;
    }
  }

  v55 = *(v2 + 128);
  v146 = *(v2 + 112);
  v147[0] = v55;
  *(v147 + 9) = *(v2 + 137);
  v56 = *(v2 + 64);
  v142 = *(v2 + 48);
  v143 = v56;
  v57 = *(v2 + 96);
  v144 = *(v2 + 80);
  v145 = v57;
  v58 = *(v2 + 32);
  v140 = *(v2 + 16);
  v141 = v58;
  LODWORD(v20) = _s15extensionFilter6RegionVSgWOg(&v140);
  if (v20 == 1)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (*(v2 + 16) == 28259 && *(v2 + 24) == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v59 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v59 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      *&v132 = countAndFlagsBits;
      *(&v132 + 1) = object;
      v60 = v129;
      static CharacterSet.decimalDigits.getter();
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v62 = v61;
      v63 = *(v130 + 8);
      v63(v60, v5);
      if ((v62 & 1) == 0)
      {
        *&v132 = countAndFlagsBits;
        *(&v132 + 1) = object;
        static CharacterSet.letters.getter();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v65 = v64;
        v63(v60, v5);
        if (v65)
        {
          *&v132 = countAndFlagsBits;
          *(&v132 + 1) = object;

          String.init<A>(_:)();
          specialized Collection.prefix(_:)(3);

          v66 = static String._fromSubstring(_:)();
          v68 = v67;

          *&v132 = v66;
          *(&v132 + 1) = v68;
          __chkstk_darwin(v69);
          *(&v123 - 2) = &v132;
          v53 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v123 - 4), &outlined read-only object #0 of RegionUtils.shouldApplyFilter(sender:));
          outlined destroy of String(&unk_10002CCB8);

          goto LABEL_70;
        }
      }
    }

LABEL_69:
    v53 = 0;
    goto LABEL_70;
  }

  v70._countAndFlagsBits = v126;
  v70._object = v33;
  if (String.hasPrefix(_:)(v70))
  {
    v128 = v31;
    v131 = v5;

    v127 = countAndFlagsBits;
    specialized Collection.dropFirst(_:)(v125, countAndFlagsBits, object);

    v71 = static String._fromSubstring(_:)();
    v73 = v72;

    v74 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v74 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v74)
    {
      *&v132 = v71;
      *(&v132 + 1) = v73;
      v75 = v129;
      static CharacterSet.decimalDigits.getter();
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v77 = v76;
      v78 = *(v130 + 8);
      v130 += 8;
      v78(v75, v131);
      if ((v77 & 1) == 0)
      {
        *&v132 = v71;
        *(&v132 + 1) = v73;
        v79 = v129;
        static CharacterSet.letters.getter();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v81 = v80;
        LOBYTE(v20) = (v78)(v79, v131);
        if (v81)
        {
          v82 = 0;
          v83 = *(v128 + 16);
          while (v83 != v82)
          {
            if (v82 >= *(v128 + 16))
            {
              __break(1u);
              goto LABEL_74;
            }

            v84 = v82 + 1;
            v85 = *(v128 + 8 * v82 + 32);
            v20 = String.count.getter();
            v82 = v84;
            if (v20 == v85)
            {

              v86 = *(v2 + 128);
              v138 = *(v2 + 112);
              v139[0] = v86;
              *(v139 + 9) = *(v2 + 137);
              v87 = *(v2 + 64);
              v134 = *(v2 + 48);
              v135 = v87;
              v88 = *(v2 + 96);
              v136 = *(v2 + 80);
              v137 = v88;
              v89 = *(v2 + 32);
              v132 = *(v2 + 16);
              v133 = v89;
              LODWORD(v20) = _s15extensionFilter6RegionVSgWOg(&v132);
              v90 = v127;
              if (v20 == 1)
              {
                goto LABEL_80;
              }

              v91 = *(v2 + 88);
              v92 = (v91 + 40);
              v93 = *(v91 + 16) + 1;
              do
              {
                v53 = --v93 != 0;
                if (!v93)
                {
                  break;
                }

                if (*(v92 - 1) == v90 && *v92 == object)
                {
                  break;
                }

                v92 += 2;
              }

              while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
              goto LABEL_70;
            }
          }
        }
      }
    }

    goto LABEL_57;
  }

  v95._countAndFlagsBits = 43;
  v95._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v95))
  {

    specialized Collection.dropFirst(_:)(1uLL, countAndFlagsBits, object);

    v96 = static String._fromSubstring(_:)();
    v98 = v97;

    v99 = HIBYTE(v98) & 0xF;
    if ((v98 & 0x2000000000000000) == 0)
    {
      v99 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (v99)
    {
      *&v132 = v96;
      *(&v132 + 1) = v98;
      v100 = v129;
      static CharacterSet.decimalDigits.getter();
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v102 = v101;
      v103 = *(v130 + 8);
      v103(v100, v5);
      if ((v102 & 1) == 0)
      {
        *&v132 = v96;
        *(&v132 + 1) = v98;
        static CharacterSet.letters.getter();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v105 = v104;
        v103(v100, v5);
        if (v105)
        {
          v106 = String.count.getter();

          if (v106 > 10)
          {
            v107 = Logger.logObject.getter();
            v108 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              *v109 = 0;
              _os_log_impl(&_mh_execute_header, v107, v108, "this is an international valid sms. so, do not classify", v109, 2u);
            }
          }

          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

  v110 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v110 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v110)
  {
    goto LABEL_67;
  }

  v128 = v31;
  CharacterSet.init(charactersIn:)();
  *&v132 = countAndFlagsBits;
  *(&v132 + 1) = object;
  v111 = v129;
  CharacterSet.inverted.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v113 = v112;
  v114 = *(v130 + 8);
  v114(v111, v5);
  v114(v124, v5);
  if ((v113 & 1) == 0)
  {
LABEL_67:

LABEL_68:

    goto LABEL_69;
  }

  v115 = *(v2 + 128);
  v138 = *(v2 + 112);
  v139[0] = v115;
  *(v139 + 9) = *(v2 + 137);
  v116 = *(v2 + 64);
  v134 = *(v2 + 48);
  v135 = v116;
  v117 = *(v2 + 96);
  v136 = *(v2 + 80);
  v137 = v117;
  v118 = *(v2 + 32);
  v132 = *(v2 + 16);
  v133 = v118;
  LODWORD(v20) = _s15extensionFilter6RegionVSgWOg(&v132);
  if (v20 != 1)
  {
    v120 = *(v2 + 16);
    v119 = *(v2 + 24);

    if (v120 == 29557 && v119 == 0xE200000000000000)
    {
    }

    else
    {
      v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v121 & 1) == 0)
      {
LABEL_57:
        v53 = 1;
        goto LABEL_70;
      }
    }

    v53 = String.count.getter() != 10;
    goto LABEL_70;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return v20;
}

Swift::Bool __swiftcall RegionUtils.allowExceptions(sender:)(Swift::String sender)
{
  object = sender._object;
  countAndFlagsBits = sender._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 112);
  v15[0] = *(v1 + 128);
  *(v15 + 9) = *(v1 + 137);
  v5 = *(v1 + 64);
  v14[2] = *(v1 + 48);
  v14[3] = v5;
  v6 = *(v1 + 80);
  v14[5] = *(v1 + 96);
  v14[6] = v4;
  v14[4] = v6;
  v7 = *(v1 + 32);
  v14[0] = *(v1 + 16);
  v14[1] = v7;
  v8 = _s15extensionFilter6RegionVSgWOg(v14);
  if (v8 == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v1 + 88);
    v10 = (v9 + 40);
    v11 = *(v9 + 16) + 1;
    do
    {
      if (!--v11)
      {
        break;
      }

      if (*(v10 - 1) == countAndFlagsBits && *v10 == object)
      {
        break;
      }

      v10 += 2;
    }

    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
    LOBYTE(v8) = v11 != 0;
  }

  return v8;
}

uint64_t _s15extensionFilter6RegionVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Bool __swiftcall RegionUtils.supportedLongCodeSenderID(sender:)(Swift::String sender)
{
  object = sender._object;
  countAndFlagsBits = sender._countAndFlagsBits;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 128);
  v53[6] = *(v1 + 112);
  v54[0] = v9;
  *(v54 + 9) = *(v1 + 137);
  v10 = *(v1 + 64);
  v53[2] = *(v1 + 48);
  v53[3] = v10;
  v11 = *(v1 + 96);
  v53[4] = *(v1 + 80);
  v53[5] = v11;
  v12 = *(v1 + 32);
  v53[0] = *(v1 + 16);
  v53[1] = v12;
  LODWORD(v13) = _s15extensionFilter6RegionVSgWOg(v53);
  if (v13 == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (*(v1 + 16) == 28265 && *(v1 + 24) == 0xE200000000000000 || (v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), LOBYTE(v13) = 0, (v14 & 1) != 0))
  {
    v15 = *(v1 + 128);
    v51[6] = *(v1 + 112);
    v52[0] = v15;
    *(v52 + 9) = *(v1 + 137);
    v16 = *(v1 + 64);
    v51[2] = *(v1 + 48);
    v51[3] = v16;
    v17 = *(v1 + 96);
    v51[4] = *(v1 + 80);
    v51[5] = v17;
    v18 = *(v1 + 32);
    v51[0] = *(v1 + 16);
    v51[1] = v18;
    LODWORD(v13) = _s15extensionFilter6RegionVSgWOg(v51);
    if (v13 == 1)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v19 = *(v1 + 40);
    v20 = *(v1 + 48);

    v21._countAndFlagsBits = v19;
    v21._object = v20;
    LOBYTE(v19) = String.hasPrefix(_:)(v21);

    if (v19)
    {
      v22 = *(v1 + 128);
      v49[6] = *(v1 + 112);
      v50[0] = v22;
      *(v50 + 9) = *(v1 + 137);
      v23 = *(v1 + 64);
      v49[2] = *(v1 + 48);
      v49[3] = v23;
      v24 = *(v1 + 96);
      v49[4] = *(v1 + 80);
      v49[5] = v24;
      v25 = *(v1 + 32);
      v49[0] = *(v1 + 16);
      v49[1] = v25;
      LODWORD(v13) = _s15extensionFilter6RegionVSgWOg(v49);
      if (v13 == 1)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v26 = *(v1 + 56);

      specialized Collection.dropFirst(_:)(v26, countAndFlagsBits, object);

      v27 = static String._fromSubstring(_:)();
      v29 = v28;

      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v31 = v1;
        *&v47[0] = v27;
        *(&v47[0] + 1) = v29;
        static CharacterSet.decimalDigits.getter();
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v33 = v32;
        v34 = *(v5 + 8);
        v34(v8, v4);
        if ((v33 & 1) == 0)
        {
          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;
          static CharacterSet.letters.getter();
          StringProtocol.rangeOfCharacter(from:options:range:)();
          v36 = v35;
          v34(v8, v4);
          if (v36)
          {
            v37 = v31[8];
            v47[6] = v31[7];
            v48[0] = v37;
            *(v48 + 9) = *(v31 + 137);
            v38 = v31[4];
            v47[2] = v31[3];
            v47[3] = v38;
            v39 = v31[6];
            v47[4] = v31[5];
            v47[5] = v39;
            v40 = v31[2];
            v47[0] = v31[1];
            v47[1] = v40;
            LODWORD(v13) = _s15extensionFilter6RegionVSgWOg(v47);
            if (v13 == 1)
            {
LABEL_27:
              __break(1u);
              return v13;
            }

            v41 = *(v31 + 10);
            v42 = *(v41 + 16);

            v43 = 0;
            while (1)
            {
              if (v42 == v43)
              {

                goto LABEL_19;
              }

              if (v43 >= *(v41 + 16))
              {
                break;
              }

              v44 = v43 + 1;
              v45 = *(v41 + 8 * v43 + 32);
              v13 = String.count.getter();
              v43 = v44;
              if (v13 == v45)
              {

                LOBYTE(v13) = 1;
                return v13;
              }
            }

            __break(1u);
            goto LABEL_24;
          }
        }
      }

LABEL_19:
    }

    LOBYTE(v13) = 0;
  }

  return v13;
}

Swift::Bool __swiftcall RegionUtils.isGovernmentSenderID(sender:)(Swift::String sender)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_SsSgAF6prefixSs6senderA2F6suffixt_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_SsSgAF6prefixSs6senderA2F6suffixt_GSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_SsSgAF6prefixSs6senderA2F6suffixt_GMd, &_s17_StringProcessing5RegexV5MatchVySs_SsSgAF6prefixSs6senderA2F6suffixt_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  swift_beginAccess();
  v11 = *(v1 + 128);
  v22[6] = *(v1 + 112);
  v23[0] = v11;
  *(v23 + 9) = *(v1 + 137);
  v12 = *(v1 + 64);
  v22[2] = *(v1 + 48);
  v22[3] = v12;
  v13 = *(v1 + 96);
  v22[4] = *(v1 + 80);
  v22[5] = v13;
  v14 = *(v1 + 32);
  v22[0] = *(v1 + 16);
  v22[1] = v14;
  v15 = _s15extensionFilter6RegionVSgWOg(v22);
  if (v15 == 1)
  {
    __break(1u);
    return v15;
  }

  if (*(v1 + 16) == 28265 && *(v1 + 24) == 0xE200000000000000 || (v16 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (one-time initialization token for indianShortCodePattern != -1)
    {
      swift_once();
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SsSgAD6prefixSs6senderA2D6suffixtGMd, &_s17_StringProcessing5RegexVySs_SsSgAD6prefixSs6senderA2D6suffixtGMR);
    __swift_project_value_buffer(v17, static RegionUtils.indianShortCodePattern);
    Regex.wholeMatch(in:)();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      outlined destroy of Region?(v5, &_s17_StringProcessing5RegexV5MatchVySs_SsSgAF6prefixSs6senderA2F6suffixt_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_SsSgAF6prefixSs6senderA2F6suffixt_GSgMR);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      swift_getKeyPath();
      Regex.Match.subscript.getter();

      if (v21)
      {
        v18 = Substring.uppercased()();

        if (v18._countAndFlagsBits == 71 && v18._object == 0xE100000000000000)
        {

          v16 = 1;
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        (*(v7 + 8))(v10, v6);
        goto LABEL_10;
      }

      (*(v7 + 8))(v10, v6);
    }

    v16 = 0;
  }

LABEL_10:
  LOBYTE(v15) = v16 & 1;
  return v15;
}

Swift::Bool __swiftcall RegionUtils.dominantLanguageOfMessage(message:regionLanguage:)(Swift::String message, NLLanguage regionLanguage)
{
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 dominantLanguageForString:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::Bool __swiftcall RegionUtils.dominantLanguageMatch(message:)(Swift::String message)
{
  swift_beginAccess();
  v2 = *(v1 + 128);
  v41[6] = *(v1 + 112);
  v42[0] = v2;
  *(v42 + 9) = *(v1 + 137);
  v3 = *(v1 + 64);
  v41[2] = *(v1 + 48);
  v41[3] = v3;
  v4 = *(v1 + 96);
  v41[4] = *(v1 + 80);
  v41[5] = v4;
  v5 = *(v1 + 32);
  v41[0] = *(v1 + 16);
  v41[1] = v5;
  v6 = _s15extensionFilter6RegionVSgWOg(v41);
  if (v6 == 1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  if (v7 == 29282 && v8 == 0xE200000000000000)
  {
    goto LABEL_9;
  }

  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_9;
  }

  v11 = *(v1 + 128);
  v39 = *(v1 + 112);
  v40[0] = v11;
  *(v40 + 9) = *(v1 + 137);
  v12 = *(v1 + 64);
  v35 = *(v1 + 48);
  v36 = v12;
  v13 = *(v1 + 96);
  v37 = *(v1 + 80);
  v38 = v13;
  v14 = *(v1 + 32);
  v33 = *(v1 + 16);
  v34 = v14;
  v6 = _s15extensionFilter6RegionVSgWOg(&v33);
  if (v6 == 1)
  {
LABEL_21:
    __break(1u);
    return v6;
  }

  if (v7 == 29557 && v8 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_9:
    v15 = *(v1 + 128);
    v39 = *(v1 + 112);
    v40[0] = v15;
    *(v40 + 9) = *(v1 + 137);
    v16 = *(v1 + 64);
    v35 = *(v1 + 48);
    v36 = v16;
    v17 = *(v1 + 96);
    v37 = *(v1 + 80);
    v38 = v17;
    v18 = *(v1 + 32);
    v33 = *(v1 + 16);
    v34 = v18;
    v6 = _s15extensionFilter6RegionVSgWOg(&v33);
    if (v6 != 1)
    {
      v19 = *(v1 + 64);
      v20 = *(v1 + 72);

      v21 = String._bridgeToObjectiveC()();

      v22 = objc_opt_self();
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 dominantLanguageForString:v23];

      if (v24)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (v25 == v28 && v27 == v30)
        {
          v31 = 1;
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {

        v31 = 0;
      }

      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v31 = 1;
LABEL_17:
  LOBYTE(v6) = v31 & 1;
  return v6;
}

uint64_t RegionUtils.fallbackCategoryForUnsupportedLanguage()()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v16[6] = *(v0 + 112);
  v17[0] = v1;
  *(v17 + 9) = *(v0 + 137);
  v2 = *(v0 + 64);
  v16[2] = *(v0 + 48);
  v16[3] = v2;
  v3 = *(v0 + 96);
  v16[4] = *(v0 + 80);
  v16[5] = v3;
  v4 = *(v0 + 32);
  v16[0] = *(v0 + 16);
  v16[1] = v4;
  result = _s15extensionFilter6RegionVSgWOg(v16);
  if (result == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (v6 == 28265 && v7 == 0xE200000000000000)
  {
    return 4;
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 4;
  }

  v10 = *(v0 + 128);
  v14[6] = *(v0 + 112);
  v15[0] = v10;
  *(v15 + 9) = *(v0 + 137);
  v11 = *(v0 + 64);
  v14[2] = *(v0 + 48);
  v14[3] = v11;
  v12 = *(v0 + 96);
  v14[4] = *(v0 + 80);
  v14[5] = v12;
  v13 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v13;
  result = _s15extensionFilter6RegionVSgWOg(v14);
  if (result == 1)
  {
    goto LABEL_13;
  }

  if (v6 == 29282 && v7 == 0xE200000000000000)
  {
    return 4;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

_OWORD *RegionUtils.deinit()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v7[0] = v1;
  *(v7 + 9) = *(v0 + 137);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  outlined destroy of Region?(v6, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  return v0;
}

uint64_t RegionUtils.__deallocating_deinit()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v7[0] = v1;
  *(v7 + 9) = *(v0 + 137);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  outlined destroy of Region?(v6, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  return swift_deallocClassInstance();
}

Swift::OpaquePointer_optional __swiftcall getMyRegions()()
{
  v0 = getActiveSimRegions();
  if (!v0)
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v1 = v0;
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (!v3)
  {

    v5 = &_swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v4 = 0;
  v5 = &_swiftEmptyArrayStorage;
  while (v4 < *(v2 + 16))
  {
    v6 = (v2 + 32 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = one-time initialization token for sharedRegionProperties;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = *(*static RegionPropertiesReader.sharedRegionProperties + 136);

    v10(v24, v8, v7);

    v26[6] = v24[6];
    v27[0] = v25[0];
    *(v27 + 9) = *(v25 + 9);
    v26[2] = v24[2];
    v26[3] = v24[3];
    v26[4] = v24[4];
    v26[5] = v24[5];
    v26[0] = v24[0];
    v26[1] = v24[1];
    if (_s15extensionFilter6RegionVSgWOg(v26) != 1)
    {
      outlined destroy of Region?(v24, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
      v11 = *(v5 + 2);
      if (!v11)
      {
LABEL_18:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, v5);
        }

        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
        }

        *(v5 + 2) = v16 + 1;
        v17 = &v5[16 * v16];
        *(v17 + 4) = v8;
        *(v17 + 5) = v7;
        goto LABEL_5;
      }

      v12 = v5 + 40;
      v13 = *(v5 + 2);
      while (1)
      {
        v14 = *(v12 - 1) == v8 && *v12 == v7;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v12 += 2;
        if (!--v13)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_5:
    if (++v4 == v3)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_25:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "smsfilter: no supported active sim-region", v22, 2u);
  }

  v5 = 0;
LABEL_29:
  v23 = v5;
  result.value._rawValue = v23;
  result.is_nil = v18;
  return result;
}

Swift::Bool __swiftcall validRegion(currentRegion:)(Swift::String currentRegion)
{
  object = currentRegion._object;
  countAndFlagsBits = currentRegion._countAndFlagsBits;
  My = getMyRegions()();
  if (My)
  {
    v4 = My;
    v8[0] = countAndFlagsBits;
    v8[1] = object;
    __chkstk_darwin(My);
    v7[2] = v8;
    v5 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v7, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

Swift::Bool __swiftcall regionSupported(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for sharedRegionProperties != -1)
  {
    swift_once();
  }

  v3 = *(*static RegionPropertiesReader.sharedRegionProperties + 136);

  v3(v6, countAndFlagsBits, object);

  v8[6] = v6[6];
  v9[0] = v7[0];
  *(v9 + 9) = *(v7 + 9);
  v8[2] = v6[2];
  v8[3] = v6[3];
  v8[4] = v6[4];
  v8[5] = v6[5];
  v8[0] = v6[0];
  v8[1] = v6[1];
  v4 = _s15extensionFilter6RegionVSgWOg(v8);
  if (v4 != 1)
  {
    outlined destroy of Region?(v6, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  }

  return v4 != 1;
}

unint64_t lazy protocol witness table accessor for type IMFeatureFlags and conformance IMFeatureFlags()
{
  result = lazy protocol witness table cache variable for type IMFeatureFlags and conformance IMFeatureFlags;
  if (!lazy protocol witness table cache variable for type IMFeatureFlags and conformance IMFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IMFeatureFlags and conformance IMFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IMFeatureFlags and conformance IMFeatureFlags;
  if (!lazy protocol witness table cache variable for type IMFeatureFlags and conformance IMFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IMFeatureFlags and conformance IMFeatureFlags);
  }

  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24ILMessageFilterSubActionVGMd, &_ss23_ContiguousArrayStorageCySo24ILMessageFilterSubActionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMd, "tE");
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined destroy of Region?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t SmsFilter._modelPipeline.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of Pipeline?(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t outlined assign with take of Pipeline?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SmsFilter._regexPipeline.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t SmsFilter._regexPipeline.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t SmsFilter._regionUtils.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t SmsFilter._regionUtils.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

__n128 SmsFilterModelPipeline._region.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  v4 = *(v1 + 184);
  v18 = *(v1 + 168);
  v19[0] = v4;
  *(v19 + 9) = *(v1 + 193);
  v5 = *(v1 + 88);
  v6 = *(v1 + 120);
  v14 = *(v1 + 104);
  v15 = v6;
  v16 = *(v1 + 136);
  v17 = v3;
  v12 = *(v1 + 72);
  v13 = v5;
  outlined init with copy of Pipeline?(&v12, v11, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  v7 = v19[0];
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 121) = *(v19 + 9);
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t outlined init with copy of Pipeline?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t SmsFilterModelPipeline._region.setter(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  v11[5] = *(v1 + 152);
  v11[6] = v3;
  v12[0] = *(v1 + 184);
  *(v12 + 9) = *(v1 + 193);
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v11[2] = *(v1 + 104);
  v11[3] = v5;
  v11[4] = *(v1 + 136);
  v11[0] = *(v1 + 72);
  v11[1] = v4;
  v6 = a1[5];
  *(v1 + 136) = a1[4];
  *(v1 + 152) = v6;
  v7 = a1[7];
  *(v1 + 168) = a1[6];
  v8 = *a1;
  *(v1 + 88) = a1[1];
  v9 = a1[3];
  *(v1 + 104) = a1[2];
  *(v1 + 120) = v9;
  *(v1 + 72) = v8;
  *(v1 + 193) = *(a1 + 121);
  *(v1 + 184) = v7;
  return outlined destroy of Region?(v11, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
}

uint64_t SmsFilter.__allocating_init(for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SmsFilter.init(for:)(a1, a2);
  return v4;
}

uint64_t SmsFilter.init(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 64) = 0;
  v6 = (v3 + 64);
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  _s15extensionFilter6RegionVSgWOi0_(&v69);
  v7 = v73;
  *(v3 + 152) = v74;
  v8 = v76[0];
  *(v3 + 168) = v75;
  *(v3 + 184) = v8;
  *(v3 + 193) = *(v76 + 9);
  v9 = v69;
  *(v3 + 88) = v70;
  v10 = v72;
  *(v3 + 104) = v71;
  *(v3 + 120) = v10;
  *(v3 + 136) = v7;
  *(v3 + 72) = v9;
  if (one-time initialization token for sharedRegionProperties != -1)
  {
    swift_once();
  }

  v11 = *(*static RegionPropertiesReader.sharedRegionProperties + 136);

  v11(&v59, a1, a2);

  v67[6] = v65;
  v68[0] = v66[0];
  *(v68 + 9) = *(v66 + 9);
  v67[2] = v61;
  v67[3] = v62;
  v67[4] = v63;
  v67[5] = v64;
  v67[0] = v59;
  v67[1] = v60;
  if (_s15extensionFilter6RegionVSgWOg(v67) == 1)
  {

    return v3;
  }

  swift_beginAccess();
  v12 = *(v3 + 152);
  v13 = *(v3 + 184);
  v47[6] = *(v3 + 168);
  v48[0] = v13;
  *(v48 + 9) = *(v3 + 193);
  v14 = *(v3 + 88);
  v15 = *(v3 + 120);
  v47[2] = *(v3 + 104);
  v47[3] = v15;
  v47[4] = *(v3 + 136);
  v47[5] = v12;
  v47[0] = *(v3 + 72);
  v47[1] = v14;
  v16 = v64;
  *(v3 + 136) = v63;
  *(v3 + 152) = v16;
  v17 = v66[0];
  *(v3 + 168) = v65;
  v18 = v59;
  *(v3 + 88) = v60;
  v19 = v62;
  *(v3 + 104) = v61;
  *(v3 + 120) = v19;
  *(v3 + 72) = v18;
  *(v3 + 193) = *(v66 + 9);
  *(v3 + 184) = v17;
  outlined destroy of Region?(v47, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  v20 = *(v3 + 152);
  v21 = *(v3 + 184);
  v55 = *(v3 + 168);
  v56[0] = v21;
  *(v56 + 9) = *(v3 + 193);
  v22 = *(v3 + 88);
  v23 = *(v3 + 120);
  v51 = *(v3 + 104);
  v52 = v23;
  v53 = *(v3 + 136);
  v54 = v20;
  v49 = *(v3 + 72);
  v50 = v22;
  v24 = *(v3 + 152);
  v25 = *(v3 + 184);
  v57[6] = *(v3 + 168);
  v58[0] = v25;
  *(v58 + 9) = *(v3 + 193);
  v26 = *(v3 + 88);
  v27 = *(v3 + 120);
  v57[2] = *(v3 + 104);
  v57[3] = v27;
  v57[4] = *(v3 + 136);
  v57[5] = v24;
  v57[0] = *(v3 + 72);
  v57[1] = v26;
  result = _s15extensionFilter6RegionVSgWOg(v57);
  if (result != 1)
  {
    v43[6] = v55;
    v44[0] = v56[0];
    *(v44 + 9) = *(v56 + 9);
    v43[2] = v51;
    v43[3] = v52;
    v43[4] = v53;
    v43[5] = v54;
    v43[0] = v49;
    v43[1] = v50;
    outlined init with copy of Region(v43, v45);

    type metadata accessor for RegionUtils();
    v29 = swift_allocObject();
    v30 = v76[0];
    v29[7] = v75;
    v29[8] = v30;
    *(v29 + 137) = *(v76 + 9);
    v31 = v72;
    v29[3] = v71;
    v29[4] = v31;
    v32 = v74;
    v29[5] = v73;
    v29[6] = v32;
    v33 = v70;
    v29[1] = v69;
    v29[2] = v33;
    swift_beginAccess();
    v34 = v29[8];
    v45[6] = v29[7];
    v46[0] = v34;
    *(v46 + 9) = *(v29 + 137);
    v35 = v29[4];
    v45[2] = v29[3];
    v45[3] = v35;
    v36 = v29[6];
    v45[4] = v29[5];
    v45[5] = v36;
    v37 = v29[2];
    v45[0] = v29[1];
    v45[1] = v37;
    v38 = v54;
    v29[5] = v53;
    v29[6] = v38;
    v39 = v52;
    v29[3] = v51;
    v29[4] = v39;
    v40 = v50;
    v29[1] = v49;
    v29[2] = v40;
    *(v29 + 137) = *(v56 + 9);
    v41 = v56[0];
    v29[7] = v55;
    v29[8] = v41;
    outlined destroy of Region?(v45, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
    swift_beginAccess();
    v42 = *v6;
    *v6 = v29;

    return v3;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SmsFilter.load()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 152);
  v3 = *(v0 + 184);
  v81[6] = *(v0 + 168);
  v82[0] = v3;
  *(v82 + 9) = *(v0 + 193);
  v4 = *(v0 + 88);
  v5 = *(v0 + 120);
  v81[2] = *(v0 + 104);
  v81[3] = v5;
  v81[4] = *(v0 + 136);
  v81[5] = v2;
  v81[0] = *(v0 + 72);
  v81[1] = v4;
  if (_s15extensionFilter6RegionVSgWOg(v81) == 1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(v0 + 208) == 2)
  {
    v6 = [objc_allocWithZone(SmsFilterTrialModelManager) init];
    v7 = *(v1 + 152);
    v8 = *(v1 + 184);
    v79 = *(v1 + 168);
    v80[0] = v8;
    *(v80 + 9) = *(v1 + 193);
    v9 = *(v1 + 88);
    v10 = *(v1 + 120);
    v75 = *(v1 + 104);
    v76 = v10;
    v77 = *(v1 + 136);
    v78 = v7;
    v73 = *(v1 + 72);
    v74 = v9;
    if (_s15extensionFilter6RegionVSgWOg(&v73) == 1)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v11 = *(v1 + 168);
    v12 = *(v1 + 176);

    v13 = String._bridgeToObjectiveC()();

    [v6 initializeWithNamespace:v13];

    v14 = type metadata accessor for CategorizationModelPipeline();
    v15 = swift_allocObject();
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    v16 = v6;
    v17 = swift_beginAccess();
    *(v15 + 56) = v6;
    (*(*v15 + 312))(v17);
    *(&v66 + 1) = v14;
    *&v67 = &protocol witness table for CategorizationModelPipeline;

    *&v65 = v15;
    swift_beginAccess();
    outlined assign with take of Pipeline?(&v65, v1 + 16);
    goto LABEL_7;
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 184);
  v63 = *(v0 + 168);
  v64[0] = v19;
  *(v64 + 9) = *(v0 + 193);
  v20 = *(v0 + 88);
  v21 = *(v0 + 120);
  v59 = *(v0 + 104);
  v60 = v21;
  v61 = *(v0 + 136);
  v62 = v18;
  v57 = *(v0 + 72);
  v58 = v20;
  v22 = *(v0 + 152);
  v23 = *(v0 + 184);
  v71 = *(v0 + 168);
  v72[0] = v23;
  *(v72 + 9) = *(v0 + 193);
  v24 = *(v0 + 88);
  v25 = *(v0 + 120);
  v67 = *(v0 + 104);
  v68 = v25;
  v69 = *(v0 + 136);
  v70 = v22;
  v65 = *(v0 + 72);
  v66 = v24;
  if (_s15extensionFilter6RegionVSgWOg(&v65) != 1)
  {
    v79 = v71;
    v80[0] = v72[0];
    *(v80 + 9) = *(v72 + 9);
    v75 = v67;
    v76 = v68;
    v77 = v69;
    v78 = v70;
    v73 = v65;
    v74 = v66;
    v26 = type metadata accessor for SmsFilterModelPipeline();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v55 = v63;
    v56[0] = v64[0];
    *(v56 + 9) = *(v64 + 9);
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v49 = v57;
    v50 = v58;
    outlined init with copy of Region(&v49, &v41);
    v29 = SmsFilterModelPipeline.init(region:)(&v73);
    *(&v42 + 1) = v26;
    *&v43 = &protocol witness table for SmsFilterModelPipeline;
    *&v41 = v29;
    swift_beginAccess();
    outlined assign with take of Pipeline?(&v41, v0 + 16);
LABEL_7:
    swift_endAccess();
    v30 = *(v1 + 152);
    v31 = *(v1 + 184);
    v55 = *(v1 + 168);
    v56[0] = v31;
    *(v56 + 9) = *(v1 + 193);
    v32 = *(v1 + 88);
    v33 = *(v1 + 120);
    v51 = *(v1 + 104);
    v52 = v33;
    v53 = *(v1 + 136);
    v54 = v30;
    v49 = *(v1 + 72);
    v50 = v32;
    v34 = *(v1 + 152);
    v35 = *(v1 + 184);
    v63 = *(v1 + 168);
    v64[0] = v35;
    *(v64 + 9) = *(v1 + 193);
    v36 = *(v1 + 88);
    v37 = *(v1 + 120);
    v59 = *(v1 + 104);
    v60 = v37;
    v61 = *(v1 + 136);
    v62 = v34;
    v57 = *(v1 + 72);
    v58 = v36;
    if (_s15extensionFilter6RegionVSgWOg(&v57) != 1)
    {
      v71 = v63;
      v72[0] = v64[0];
      *(v72 + 9) = *(v64 + 9);
      v67 = v59;
      v68 = v60;
      v69 = v61;
      v70 = v62;
      v65 = v57;
      v66 = v58;
      type metadata accessor for RegexPipeline();
      swift_allocObject();
      v47 = v55;
      v48[0] = v56[0];
      *(v48 + 9) = *(v56 + 9);
      v43 = v51;
      v44 = v52;
      v45 = v53;
      v46 = v54;
      v41 = v49;
      v42 = v50;
      outlined init with copy of Region(&v41, &v40);
      v38 = RegexPipeline.init(region:)(&v65);
      swift_beginAccess();
      v39 = *(v1 + 56);
      *(v1 + 56) = v38;

      return;
    }

    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
}

Swift::Bool __swiftcall SmsFilter.isLoaded()()
{
  swift_beginAccess();
  outlined init with copy of Pipeline?(v0 + 16, v3, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  v1 = v3[3] != 0;
  outlined destroy of Region?(v3, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  return v1;
}

Swift::Void __swiftcall SmsFilter.update()()
{
  swift_beginAccess();
  outlined init with copy of Pipeline?(v0 + 16, v7, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  v1 = v8;
  outlined destroy of Region?(v7, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  if (v1)
  {
    outlined init with copy of Pipeline?(v0 + 16, v7, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
    v2 = v8;
    if (v8)
    {
      v3 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v3 + 8))(v2, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      swift_beginAccess();
      v4 = *(v0 + 56);
      if (v4)
      {
        v5 = *(*v4 + 312);

        v5(v6);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall SmsFilter.cleanup()()
{
  v1 = v0;
  swift_beginAccess();
  outlined init with copy of Pipeline?(v0 + 16, &v10, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  v2 = *(&v11 + 1);
  outlined destroy of Region?(&v10, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  if (!v2)
  {
    goto LABEL_5;
  }

  outlined init with copy of Pipeline?(v0 + 16, &v10, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  v3 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v10);
    swift_beginAccess();
    v5 = *(v0 + 56);
    if (v5)
    {
      v6 = *(*v5 + 320);
      v7 = *(v1 + 56);

      v6(v8);

LABEL_5:
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      swift_beginAccess();
      outlined assign with take of Pipeline?(&v10, v1 + 16);
      swift_endAccess();
      swift_beginAccess();
      v9 = *(v1 + 56);
      *(v1 + 56) = 0;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

ILMessageFilterQueryResponse __swiftcall SmsFilter.classifyAction(sender:messageBody:)(Swift::String sender, Swift::String messageBody)
{
  v3 = v2;
  object = messageBody._object;
  countAndFlagsBits = messageBody._countAndFlagsBits;
  v6 = sender._object;
  v7 = sender._countAndFlagsBits;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "smsfilter: classifyAction", v11, 2u);
  }

  swift_beginAccess();
  outlined init with copy of Pipeline?(v3 + 16, __dst, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  v12 = v73;
  outlined destroy of Region?(__dst, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  if (!v12)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "smsfilter: model pipeline not loaded", v27, 2u);
    }

    v24 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
    [v24 setAction:1];
    [v24 setSubAction:0];
    lazy protocol witness table accessor for type SFEError and conformance SFEError();
    swift_allocError();
    v29 = 7;
    goto LABEL_29;
  }

  result.super.isa = swift_beginAccess();
  if (!*(v3 + 64))
  {
    __break(1u);
    goto LABEL_57;
  }

  v14 = *(v3 + 64);

  v15._countAndFlagsBits = v7;
  v15._object = v6;
  v16 = RegionUtils.shouldApplyFilter(sender:)(v15);

  if (!v16)
  {
    if (!*(v3 + 64))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v17 = *(v3 + 64);

    v18._countAndFlagsBits = v7;
    v18._object = v6;
    v19 = RegionUtils.supportedLongCodeSenderID(sender:)(v18);

    if (!v19)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "smsfilter: do not apply the smsfilter", v45, 2u);
      }

      v24 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
      [v24 setAction:1];
      [v24 setSubAction:0];
      lazy protocol witness table accessor for type SFEError and conformance SFEError();
      swift_allocError();
      v29 = 2;
LABEL_29:
      *v28 = v29;
      v46 = _convertErrorToNSError(_:)();

      [v24 setError:v46];

      [v24 setVersion:0];
      return v24;
    }
  }

  result.super.isa = swift_beginAccess();
  v20 = *(v3 + 56);
  if (!v20)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v21 = *(*v20 + 336);
  v22 = *(v3 + 56);

  v23 = v21(countAndFlagsBits, object);

  result.super.isa = [v23 action];
  if (result.super.isa)
  {
    return v23;
  }

  if (!*(v3 + 64))
  {
    goto LABEL_59;
  }

  v30 = *(v3 + 64);

  v31._countAndFlagsBits = countAndFlagsBits;
  v31._object = object;
  v32 = RegionUtils.dominantLanguageMatch(message:)(v31);

  if (!v32)
  {
    v47 = *(v3 + 64);
    if (v47)
    {
      swift_beginAccess();
      memmove(__dst, (v47 + 16), 0x89uLL);
      result.super.isa = _s15extensionFilter6RegionVSgWOg(__dst);
      if (LODWORD(result.super.isa) != 1)
      {
        v48 = *(v47 + 16);
        v49 = *(v47 + 24);
        if (v48 == 28265 && v49 == 0xE200000000000000)
        {
          goto LABEL_39;
        }

        v50 = *(v47 + 16);
        v51 = *(v47 + 24);
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          goto LABEL_39;
        }

        memmove(v71, (v47 + 16), 0x89uLL);
        result.super.isa = _s15extensionFilter6RegionVSgWOg(v71);
        if (LODWORD(result.super.isa) == 1)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v48 == 29282 && v49 == 0xE200000000000000)
        {
LABEL_39:
          v52 = 4;
        }

        else if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v52 = 4;
        }

        else
        {
          v52 = 1;
        }

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v71[0] = v56;
          *v55 = 136315138;
          v57 = specialized String.init(filterAction:)(v52);
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v71);

          *(v55 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v53, v54, "smsfilter: message  doesn't have a dominant language, so label: %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
        }

        v24 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
        [v24 setAction:v52];
        [v24 setSubAction:0];
        lazy protocol witness table accessor for type SFEError and conformance SFEError();
        swift_allocError();
        *v60 = 3;
        v61 = _convertErrorToNSError(_:)();

        [v24 setError:v61];

        [v24 setVersion:0];
        return v24;
      }

LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v70 = v23;
  result.super.isa = outlined init with copy of Pipeline?(v3 + 16, __dst, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  v33 = v73;
  if (!v73)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v34 = v74;
  __swift_project_boxed_opaque_existential_1(__dst, v73);
  v24 = (*(v34 + 24))(countAndFlagsBits, object, v33, v34);
  result.super.isa = __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  if (!*(v3 + 64))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v35 = *(v3 + 64);

  v36._countAndFlagsBits = v7;
  v36._object = v6;
  v37 = RegionUtils.supportedLongCodeSenderID(sender:)(v36);

  result.super.isa = [v24 action];
  v38 = v70;
  if (v37)
  {
    if (result.super.isa == 4 && [v24 subAction] == 10001)
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "smsfilter: message is a junk message, so label: Junk", v41, 2u);
      }

      v42 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
      [v42 setAction:2];
      [v42 setSubAction:{0, v70}];
      goto LABEL_51;
    }

    v42 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
    [v42 setAction:1];
    [v42 setSubAction:0];
    lazy protocol witness table accessor for type SFEError and conformance SFEError();
    swift_allocError();
    *v68 = 2;
    v69 = _convertErrorToNSError(_:)();

    [v42 setError:v69];

LABEL_50:
    [v42 setVersion:{0, v70}];
LABEL_51:

    return v42;
  }

  if (result.super.isa == 4)
  {
LABEL_52:

    return v24;
  }

  if (*(v3 + 64))
  {
    v62 = *(v3 + 64);

    v63._countAndFlagsBits = v7;
    v63._object = v6;
    v64 = RegionUtils.isGovernmentSenderID(sender:)(v63);

    if (v64)
    {
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "smsfilter: message from government sender id, so label: Transactional", v67, 2u);
      }

      v42 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
      [v42 setAction:4];
      [v42 setSubAction:0];
      [v42 setError:0];
      goto LABEL_50;
    }

    goto LABEL_52;
  }

LABEL_65:
  __break(1u);
  return result;
}

ILMessageFilterCapabilitiesQueryResponse __swiftcall SmsFilter.subClassificationCapabilities()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(ILMessageFilterCapabilitiesQueryResponse) init];
  swift_beginAccess();
  v3 = *(v0 + 152);
  v4 = *(v0 + 184);
  v85[6] = *(v0 + 168);
  v86[0] = v4;
  *(v86 + 9) = *(v0 + 193);
  v5 = *(v0 + 88);
  v6 = *(v0 + 120);
  v85[2] = *(v0 + 104);
  v85[3] = v6;
  v85[4] = *(v0 + 136);
  v85[5] = v3;
  v85[0] = *(v0 + 72);
  v85[1] = v5;
  result.super.isa = _s15extensionFilter6RegionVSgWOg(v85);
  if (LODWORD(result.super.isa) == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v0 + 184))
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 184);
    v65 = *(v0 + 168);
    v66[0] = v9;
    *(v66 + 9) = *(v0 + 193);
    v10 = *(v0 + 88);
    v11 = *(v0 + 120);
    v61 = *(v0 + 104);
    v62 = v11;
    v63 = *(v0 + 136);
    v64 = v8;
    v59 = *(v0 + 72);
    v60 = v10;
    v12 = *(v0 + 152);
    v13 = *(v0 + 184);
    v73 = *(v0 + 168);
    v74[0] = v13;
    *(v74 + 9) = *(v0 + 193);
    v14 = *(v0 + 88);
    v15 = *(v0 + 120);
    v69 = *(v0 + 104);
    v70 = v15;
    v71 = *(v0 + 136);
    v72 = v12;
    v67 = *(v0 + 72);
    v68 = v14;
    result.super.isa = _s15extensionFilter6RegionVSgWOg(&v67);
    if (LODWORD(result.super.isa) != 1)
    {
      v83 = v73;
      v84[0] = v74[0];
      *(v84 + 9) = *(v74 + 9);
      v79 = v69;
      v80 = v70;
      v82 = v72;
      v81 = v71;
      v78 = v68;
      v77 = v67;
      v41[6] = v65;
      v42[0] = v66[0];
      *(v42 + 9) = *(v66 + 9);
      v41[2] = v61;
      v41[3] = v62;
      v41[4] = v63;
      v41[5] = v64;
      v41[0] = v59;
      v41[1] = v60;
      outlined init with copy of Region(v41, v75);
      Region.getTransactionalCapabilities()();
      outlined destroy of Region?(&v59, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
      ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.setter();
      v16 = *(v0 + 152);
      v17 = *(v0 + 184);
      v49 = *(v0 + 168);
      v50[0] = v17;
      *(v50 + 9) = *(v0 + 193);
      v18 = *(v0 + 88);
      v19 = *(v0 + 120);
      v45 = *(v0 + 104);
      v46 = v19;
      v47 = *(v0 + 136);
      v48 = v16;
      v43 = *(v0 + 72);
      v44 = v18;
      v20 = *(v0 + 152);
      v21 = *(v0 + 184);
      v57 = *(v0 + 168);
      v58[0] = v21;
      *(v58 + 9) = *(v0 + 193);
      v22 = *(v0 + 88);
      v23 = *(v0 + 120);
      v53 = *(v0 + 104);
      v54 = v23;
      v55 = *(v0 + 136);
      v56 = v20;
      v51 = *(v0 + 72);
      v52 = v22;
      result.super.isa = _s15extensionFilter6RegionVSgWOg(&v51);
      if (LODWORD(result.super.isa) != 1)
      {
        v75[6] = v57;
        v76[0] = v58[0];
        *(v76 + 9) = *(v58 + 9);
        v75[2] = v53;
        v75[3] = v54;
        v75[5] = v56;
        v75[4] = v55;
        v75[1] = v52;
        v75[0] = v51;
        v39[6] = v49;
        v40[0] = v50[0];
        *(v40 + 9) = *(v50 + 9);
        v39[2] = v45;
        v39[3] = v46;
        v39[4] = v47;
        v39[5] = v48;
        v39[0] = v43;
        v39[1] = v44;
        outlined init with copy of Region(v39, &v38);
        Region.getPromotionalCapabilities()();
        outlined destroy of Region?(&v43, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
        ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.setter();
        return v2;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, logger);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v25, v26))
  {
LABEL_11:

    return v2;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  *&v75[0] = v28;
  *v27 = 136315138;
  v29 = *(v1 + 152);
  v30 = *(v1 + 184);
  v83 = *(v1 + 168);
  v84[0] = v30;
  *(v84 + 9) = *(v1 + 193);
  v31 = *(v1 + 88);
  v32 = *(v1 + 120);
  v79 = *(v1 + 104);
  v80 = v32;
  v33 = *(v1 + 136);
  v82 = v29;
  v81 = v33;
  v34 = *(v1 + 72);
  v78 = v31;
  v77 = v34;
  result.super.isa = _s15extensionFilter6RegionVSgWOg(&v77);
  if (LODWORD(result.super.isa) != 1)
  {
    v36 = *(v1 + 72);
    v35 = *(v1 + 80);

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v75);

    *(v27 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v25, v26, "smsfilter: sub-classification-model is not available for %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);

    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall SmsFilter.subClassificationModelAvailable()()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
  v6[5] = *(v0 + 152);
  v6[6] = v1;
  v7[0] = *(v0 + 184);
  *(v7 + 9) = *(v0 + 193);
  v2 = *(v0 + 88);
  v3 = *(v0 + 120);
  v6[2] = *(v0 + 104);
  v6[3] = v3;
  v6[4] = *(v0 + 136);
  v6[0] = *(v0 + 72);
  v6[1] = v2;
  v4 = _s15extensionFilter6RegionVSgWOg(v6);
  if (v4 == 1)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v4) = *(v0 + 184);
  }

  return v4;
}

Swift::String __swiftcall SmsFilter.getRegion()()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
  v9[5] = *(v0 + 152);
  v9[6] = v1;
  v10[0] = *(v0 + 184);
  *(v10 + 9) = *(v0 + 193);
  v2 = *(v0 + 88);
  v3 = *(v0 + 120);
  v9[2] = *(v0 + 104);
  v9[3] = v3;
  v9[4] = *(v0 + 136);
  v9[0] = *(v0 + 72);
  v9[1] = v2;
  v4 = _s15extensionFilter6RegionVSgWOg(v9);
  if (v4 == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);

    v4 = v6;
    v5 = v7;
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

char *SmsFilter.getTransactionalCapabilities()()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = *(v0 + 184);
  v26 = *(v0 + 168);
  v27[0] = v2;
  *(v27 + 9) = *(v0 + 193);
  v3 = *(v0 + 88);
  v4 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = v4;
  v24 = *(v0 + 136);
  v25 = v1;
  v20 = *(v0 + 72);
  v21 = v3;
  v5 = *(v0 + 152);
  v6 = *(v0 + 184);
  v28[6] = *(v0 + 168);
  v29[0] = v6;
  *(v29 + 9) = *(v0 + 193);
  v7 = *(v0 + 88);
  v8 = *(v0 + 120);
  v28[2] = *(v0 + 104);
  v28[3] = v8;
  v28[4] = *(v0 + 136);
  v28[5] = v5;
  v28[0] = *(v0 + 72);
  v28[1] = v7;
  result = _s15extensionFilter6RegionVSgWOg(v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = *(*(&v29[0] + 1) + 16);
    if (!v10)
    {
      return &_swiftEmptyArrayStorage;
    }

    v11 = (*(&v29[0] + 1) + 32);
    v18[6] = v26;
    v19[0] = v27[0];
    *(v19 + 9) = *(v27 + 9);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v18[5] = v25;
    v18[0] = v20;
    v18[1] = v21;
    outlined init with copy of Region(v18, &v17);
    v12 = &_swiftEmptyArrayStorage;
    do
    {
      v14 = *v11++;
      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      *&v12[8 * v16 + 32] = v13;
      --v10;
    }

    while (v10);
    outlined destroy of Region?(&v20, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
    return v12;
  }

  return result;
}

char *SmsFilter.getPromotionalCapabilities()()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = *(v0 + 184);
  v26 = *(v0 + 168);
  v27[0] = v2;
  *(v27 + 9) = *(v0 + 193);
  v3 = *(v0 + 88);
  v4 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = v4;
  v24 = *(v0 + 136);
  v25 = v1;
  v20 = *(v0 + 72);
  v21 = v3;
  v5 = *(v0 + 152);
  v6 = *(v0 + 184);
  v28[6] = *(v0 + 168);
  *v29 = v6;
  *&v29[9] = *(v0 + 193);
  v7 = *(v0 + 88);
  v8 = *(v0 + 120);
  v28[2] = *(v0 + 104);
  v28[3] = v8;
  v28[4] = *(v0 + 136);
  v28[5] = v5;
  v28[0] = *(v0 + 72);
  v28[1] = v7;
  result = _s15extensionFilter6RegionVSgWOg(v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = *(*&v29[16] + 16);
    if (!v10)
    {
      return &_swiftEmptyArrayStorage;
    }

    v11 = (*&v29[16] + 32);
    v18[6] = v26;
    v19[0] = v27[0];
    *(v19 + 9) = *(v27 + 9);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v18[5] = v25;
    v18[0] = v20;
    v18[1] = v21;
    outlined init with copy of Region(v18, &v17);
    v12 = &_swiftEmptyArrayStorage;
    do
    {
      v14 = *v11++;
      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      *&v12[8 * v16 + 32] = v13;
      --v10;
    }

    while (v10);
    outlined destroy of Region?(&v20, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
    return v12;
  }

  return result;
}

uint64_t SmsFilter.deinit()
{
  outlined destroy of Region?(v0 + 16, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 152);
  v4 = *(v0 + 184);
  v8[6] = *(v0 + 168);
  v9[0] = v4;
  *(v9 + 9) = *(v0 + 193);
  v5 = *(v0 + 88);
  v6 = *(v0 + 120);
  v8[2] = *(v0 + 104);
  v8[3] = v6;
  v8[4] = *(v0 + 136);
  v8[5] = v3;
  v8[0] = *(v0 + 72);
  v8[1] = v5;
  outlined destroy of Region?(v8, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  return v0;
}

uint64_t SmsFilter.__deallocating_deinit()
{
  outlined destroy of Region?(v0 + 16, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 152);
  v4 = *(v0 + 184);
  v8[6] = *(v0 + 168);
  v9[0] = v4;
  *(v9 + 9) = *(v0 + 193);
  v5 = *(v0 + 88);
  v6 = *(v0 + 120);
  v8[2] = *(v0 + 104);
  v8[3] = v6;
  v8[4] = *(v0 + 136);
  v8[5] = v3;
  v8[0] = *(v0 + 72);
  v8[1] = v5;
  outlined destroy of Region?(v8, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  return swift_deallocClassInstance();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for signposter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v5, signposter);
  __swift_project_value_buffer(v5, signposter);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, logger);
  (*(v1 + 16))(v4, v6, v0);
  return OSSignposter.init(logger:)();
}

uint64_t logger.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t CategorizationModelPipeline.__allocating_init(modelManager:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized CategorizationModelPipeline.__allocating_init(modelManager:)(a1);
}

void *CategorizationModelPipeline.contextualEmbeddings.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void CategorizationModelPipeline.contextualEmbeddings.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *CategorizationModelPipeline.categoryHead.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void CategorizationModelPipeline.categoryHead.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void *CategorizationModelPipeline.subCategoryHead.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void CategorizationModelPipeline.subCategoryHead.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t CategorizationModelPipeline.categoryThresholds.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t CategorizationModelPipeline.categoryThresholds.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t CategorizationModelPipeline.subCategoryThresholds.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t CategorizationModelPipeline.subCategoryThresholds.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t CategorizationModelPipeline.modelManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  return swift_unknownObjectRetain();
}

uint64_t CategorizationModelPipeline.modelManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
  return swift_unknownObjectRelease();
}

uint64_t CategorizationModelPipeline.modelVersion.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t CategorizationModelPipeline.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t one-time initialization function for categoriesMap()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So21ILMessageFilterActionVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for categoriesMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So21ILMessageFilterActionVtMd, &_sSS_So21ILMessageFilterActionVtMR);
  result = swift_arrayDestroy();
  static CategorizationModelPipeline.categoriesMap = v0;
  return result;
}

uint64_t *CategorizationModelPipeline.categoriesMap.unsafeMutableAddressor()
{
  if (one-time initialization token for categoriesMap != -1)
  {
    swift_once();
  }

  return &static CategorizationModelPipeline.categoriesMap;
}

uint64_t one-time initialization function for subCategoriesMap()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So24ILMessageFilterSubActionVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for subCategoriesMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So24ILMessageFilterSubActionVtMd, &_sSS_So24ILMessageFilterSubActionVtMR);
  result = swift_arrayDestroy();
  static CategorizationModelPipeline.subCategoriesMap = v0;
  return result;
}

uint64_t *CategorizationModelPipeline.subCategoriesMap.unsafeMutableAddressor()
{
  if (one-time initialization token for subCategoriesMap != -1)
  {
    swift_once();
  }

  return &static CategorizationModelPipeline.subCategoriesMap;
}

uint64_t static CategorizationModelPipeline.categoriesMap.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t CategorizationModelPipeline.init(modelManager:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized CategorizationModelPipeline.init(modelManager:)(a1, v1);
}

Swift::Void __swiftcall CategorizationModelPipeline.initModels()()
{
  v1 = v0;
  v2 = (*v0 + 256);
  v3 = *v2;
  v4 = (*v2)();
  if (!v4)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = [v4 getMainModel];
  swift_unknownObjectRelease();
  v6 = (*(*v0 + 168))(v5);
  v7 = (v3)(v6);
  if (!v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = [v7 getSubClassificationModel];
  swift_unknownObjectRelease();
  (*(*v0 + 192))(v8);
  v9 = [objc_opt_self() contextualEmbeddingWithLanguage:NLLanguageEnglish];
  if (v9)
  {
    v10 = v9;
    if (([v9 hasAvailableAssets] & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "categorization pipeline: embedding assets not available, requesting download", v14, 2u);
      }

      aBlock[4] = closure #1 in CategorizationModelPipeline.initModels();
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned NLContextualEmbeddingAssetsResult, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor;
      v15 = _Block_copy(aBlock);
      [v10 requestEmbeddingAssetsWithCompletionHandler:v15];
      _Block_release(v15);
    }

    v16 = *(*v1 + 144);
    v17 = v10;
    v18 = v16(v10);
    v19 = (v3)(v18);
    if (v19)
    {
      v20 = [v19 getModelVersion];
      swift_unknownObjectRelease();
      if (v20)
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v27 = (*(*v1 + 288))(v21, v23);
      (*(*v1 + 320))(v27);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, logger);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "categorization pipeline: loaded embeddings and models", v31, 2u);
      }

      return;
    }

LABEL_28:
    __break(1u);
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, logger);
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v25, "categorization pipeline: failed to init embeddings", v26, 2u);
  }
}

void closure #1 in CategorizationModelPipeline.initModels()(uint64_t a1, uint64_t a2)
{
  if (a2 | a1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "categorization pipeline: embedding assets request failed", v5, 2u);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned NLContextualEmbeddingAssetsResult, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

Swift::Void __swiftcall CategorizationModelPipeline.initThresholds()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*v0 + 256))(v5);
  if (!v8)
  {
    goto LABEL_64;
  }

  v9 = [v8 getThresholdMapFilePath];
  swift_unknownObjectRelease();
  if (!v9)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, logger);
    v94 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v94, v22, "categorization pipeline: no threshold map available", v23, 2u);
    }

    v24 = v94;

    return;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 fileExistsAtPath:v9];

  if (!v14)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v96[0] = v19;
      *v18 = 136315138;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v96);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "categorization pipeline: failed to load threshold map at path %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
    }

    return;
  }

  URL.init(fileURLWithPath:)();
  v25 = Data.init(contentsOf:options:)();
  v27 = v26;
  (*(v3 + 8))(v7, v2);

  v28 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v96[0] = 0;
  v30 = [v28 propertyListWithData:isa options:0 format:0 error:v96];

  if (!v30)
  {
    v60 = v96[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_40;
  }

  v31 = v96[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, logger);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "categorization pipeline: failed to decode threshold map", v64, 2u);
    }

    outlined consume of Data._Representation(v25, v27);

    return;
  }

  v32 = v95;
  if (!*(v95 + 16))
  {
    goto LABEL_39;
  }

  v33 = specialized __RawDictionaryStorage.find<A>(_:)(0x69726F6765746163, 0xEA00000000007365);
  if ((v34 & 1) == 0)
  {
    goto LABEL_39;
  }

  outlined init with copy of Any(*(v32 + 56) + 32 * v33, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGMd, &_sSDySSSo8NSNumberCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v35 = v95;
  if (!*(v32 + 16) || (v36 = specialized __RawDictionaryStorage.find<A>(_:)(0x6765746163627573, 0xED0000736569726FLL), (v37 & 1) == 0))
  {

    goto LABEL_39;
  }

  outlined init with copy of Any(*(v32 + 56) + 32 * v36, v96);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    goto LABEL_40;
  }

  v90 = v95;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSfGMd, &_ss18_DictionaryStorageCySSSfGMR);
  v38 = static _DictionaryStorage.copy(original:)();
  v39 = 0;
  v40 = v35 + 64;
  v41 = 1 << *(v35 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v35 + 64);
  v44 = (v41 + 63) >> 6;
  v94 = v38;
  v89 = v38 + 8;
  if (v43)
  {
    goto LABEL_29;
  }

LABEL_30:
  v46 = v39;
  while (1)
  {
    v39 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v39 >= v44)
    {
      break;
    }

    v47 = *(v40 + 8 * v39);
    ++v46;
    if (v47)
    {
      v45 = __clz(__rbit64(v47));
      v91 = (v47 - 1) & v47;
      while (2)
      {
        v48 = v45 | (v39 << 6);
        v92 = 16 * v48;
        v49 = *(v35 + 56);
        v50 = v35;
        v51 = (*(v35 + 48) + 16 * v48);
        v52 = v51[1];
        v93 = *v51;
        v53 = *(v49 + 8 * v48);

        [v53 floatValue];
        *(&v89->isa + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v89->isa + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v48));
        v54 = v94;
        v55 = (v94[6].isa + v92);
        *v55 = v93;
        v55[1] = v52;
        *(v54[7].isa + v48) = v56;
        v57 = v54[2].isa;
        v58 = __OFADD__(v57, 1);
        v59 = (v57 + 1);
        if (!v58)
        {
          v94[2].isa = v59;
          v35 = v50;
          v43 = v91;
          if (!v91)
          {
            goto LABEL_30;
          }

LABEL_29:
          v45 = __clz(__rbit64(v43));
          v91 = (v43 - 1) & v43;
          continue;
        }

        break;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }
  }

  (*(*v1 + 216))(v94);
  v65 = v90;
  v66 = static _DictionaryStorage.copy(original:)();
  v67 = 0;
  v70 = *(v65 + 64);
  v69 = v65 + 64;
  v68 = v70;
  v71 = 1 << *(v69 - 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & v68;
  v74 = (v71 + 63) >> 6;
  v94 = v66;
  v91 = &v66[8];
  if (v73)
  {
    goto LABEL_50;
  }

LABEL_51:
  v76 = v67;
  while (1)
  {
    v67 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      goto LABEL_61;
    }

    if (v67 >= v74)
    {
      break;
    }

    v77 = *(v69 + 8 * v67);
    ++v76;
    if (v77)
    {
      v75 = __clz(__rbit64(v77));
      v92 = (v77 - 1) & v77;
      while (2)
      {
        v78 = v75 | (v67 << 6);
        v79 = *(v90 + 56);
        v80 = (*(v90 + 48) + 16 * v78);
        v81 = v80[1];
        v93 = *v80;
        v82 = *(v79 + 8 * v78);

        [v82 floatValue];
        *(v91 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
        v83 = v94;
        v84 = (v94[6].isa + 16 * v78);
        *v84 = v93;
        v84[1] = v81;
        *(v83[7].isa + v78) = v85;
        v86 = v83[2].isa;
        v58 = __OFADD__(v86, 1);
        v87 = (v86 + 1);
        if (!v58)
        {
          v94[2].isa = v87;
          v73 = v92;
          if (!v92)
          {
            goto LABEL_51;
          }

LABEL_50:
          v75 = __clz(__rbit64(v73));
          v92 = (v73 - 1) & v73;
          continue;
        }

        break;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }
  }

  (*(*v1 + 240))(v94);
  outlined consume of Data._Representation(v25, v27);
}

Swift::Void __swiftcall CategorizationModelPipeline.update()()
{
  v1 = (*(*v0 + 384))();
  v2 = *v0;
  if (v1)
  {
    v3 = *(v2 + 256);
    v4 = v3();
    if (v4)
    {
      v5 = [v4 updateAvailable];
      v6 = swift_unknownObjectRelease();
      if (!v5)
      {
        return;
      }

      v7 = (*(*v0 + 336))(v6);
      v8 = (v3)(v7);
      if (v8)
      {
        [v8 cleanupModels];
        swift_unknownObjectRelease();
        v2 = *v0;
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:
  v9 = *(v2 + 312);

  v9();
}

Swift::Void __swiftcall CategorizationModelPipeline.cleanup()()
{
  (*(*v0 + 144))(0);
  (*(*v0 + 168))(0);
  v1 = *(*v0 + 192);

  v1(0);
}

ILMessageFilterQueryResponse __swiftcall CategorizationModelPipeline.classify(messageBody:)(Swift::String messageBody)
{
  v2 = v1;
  v3 = (*(*v1 + 160))();
  v4 = &off_100031000;
  if (!v3)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "categorization pipeline: model assets missing", v11, 2u);
    }

    (*(*v2 + 280))();
    v13 = v12;
    v14 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
    [v14 setAction:1];
    [v14 setSubAction:0];
    lazy protocol witness table accessor for type SFEError and conformance SFEError();
    swift_allocError();
    *v15 = 4;
    v16 = _convertErrorToNSError(_:)();

    [v14 setError:v16];

    if (v13)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    [v14 setVersion:v17];

    return v14;
  }

  v5 = v3;
  v6 = 0;
  v7 = CategorizationModelPipeline.prepareInputFeatures(forMessageBody:)();
  specialized CategorizationModelPipeline.run(head:withClasses:forFeatures:)(v5, &outlined read-only object #0 of one-time initialization function for categories, v7);
  v20 = v19;
  v21 = (*(*v1 + 208))();
  specialized CategorizationModelPipeline.prediction(fromHypotheses:thresholds:)(v20, v21);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, logger);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v63 = v7;
    v31 = v25;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v65[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v31, v65);
    *(v32 + 12) = 2048;
    *(v32 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v29, v30, "categorization pipeline: category=%s [%f]", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);

    v25 = v31;
    v7 = v63;
  }

  if (one-time initialization token for categoriesMap != -1)
  {
    swift_once();
  }

  v34 = static CategorizationModelPipeline.categoriesMap;
  if (!*(static CategorizationModelPipeline.categoriesMap + 16))
  {
    __break(1u);
    goto LABEL_44;
  }

  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v25);
  if ((v36 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    result.super.isa = swift_once();
    goto LABEL_36;
  }

  v30 = *(*(v34 + 56) + 8 * v35);
  if ((v23 != 0x746361736E617254 || v25 != 0xED00006C616E6F69) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

LABEL_29:
    (*(*v2 + 280))(v41);
    v43 = v42;
    v14 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
    [v14 setAction:v30];
    [v14 setSubAction:0];
    [v14 setError:0];
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v14 setVersion:v44];

    goto LABEL_42;
  }

  v37 = (*(*v2 + 184))();
  if (!v37)
  {

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "categorization pipeline: subCategoryHead not available", v40, 2u);
    }

    goto LABEL_29;
  }

  v23 = v37;
  specialized CategorizationModelPipeline.run(head:withClasses:forFeatures:)(v37, &outlined read-only object #0 of one-time initialization function for subCategories, v7);
  v46 = v45;
  v47 = (*(*v2 + 232))();
  specialized CategorizationModelPipeline.prediction(fromHypotheses:thresholds:)(v46, v47);
  v4 = v48;
  v6 = v49;
  v51 = v50;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v64 = v30;
    v55 = swift_slowAlloc();
    v65[0] = v55;
    *v54 = 136315394;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, v65);
    *(v54 + 12) = 2048;
    *(v54 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v52, v53, "categorization pipeline: subCategory=%s [%f]", v54, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v30 = v64;
  }

  if (one-time initialization token for subCategoriesMap != -1)
  {
    goto LABEL_45;
  }

LABEL_36:
  v56 = static CategorizationModelPipeline.subCategoriesMap;
  if (*(static CategorizationModelPipeline.subCategoriesMap + 16))
  {
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6);
    v59 = v58;

    if (v59)
    {
      v60 = *(*(v56 + 56) + 8 * v57);
      (*(*v2 + 280))(result.super.isa);
      v62 = v61;
      v14 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
      [v14 setAction:v30];
      [v14 setSubAction:v60];
      [v14 setError:0];
      if (v62)
      {
        v44 = String._bridgeToObjectiveC()();
      }

      else
      {
        v44 = 0;
      }

      [v14 setVersion:v44];

LABEL_42:

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id CategorizationModelPipeline.prepareInputFeatures(forMessageBody:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreML13MLShapedArrayVySfGMd, &_s6CoreML13MLShapedArrayVySfGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v61 = v53 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v53 - v11;
  v13 = (*(*v0 + 136))(v10);
  if (v13)
  {
    v58 = v7;
    v59 = v3;
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    v64 = 0;
    v16 = [v14 embeddingResultForString:v15 language:NLLanguageEnglish error:&v64];

    v0 = v64;
    v60 = v16;
    if (v16)
    {
      v56 = v1;
      v57 = v2;
      v63 = 0;
      v64 = _swiftEmptyArrayStorage;
      __chkstk_darwin(v17);
      v53[-2] = &v64;
      v53[-1] = &v63;
      v18 = v0;
      NLContextualEmbeddingResult.enumerateTokenVectors(in:using:)();
      v19 = v64;
      v62 = v64;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v21 = swift_allocObject();
      v54 = xmmword_100023EE0;
      *(v21 + 16) = xmmword_100023EE0;
      v22 = v63;
      *(v21 + 32) = v63;
      v55 = v19;

      *(v21 + 40) = [v14 dimension];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      lazy protocol witness table accessor for type [Float] and conformance [A](&lazy protocol witness table cache variable for type [Float] and conformance [A], &_sSaySfGMd, &_sSaySfGMR);
      MLShapedArray.init<A>(scalars:shape:)();
      if (v22 <= 255)
      {
        v23 = v12;
        LODWORD(v62) = 0;
        v53[1] = v20;
        v24 = swift_allocObject();
        *(v24 + 16) = v54;
        if (__OFSUB__(256, v22))
        {
          __break(1u);
        }

        *(v24 + 32) = 256 - v22;
        *(v24 + 40) = [v14 dimension];
        v53[0] = lazy protocol witness table accessor for type [Float] and conformance [A](&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &_s6CoreML13MLShapedArrayVySfGMd, &_s6CoreML13MLShapedArrayVySfGMR);
        v25 = v57;
        MLShapedArrayProtocol.init(repeating:shape:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6CoreML08MLShapedB0VySfGGMd, &_ss23_ContiguousArrayStorageCy6CoreML08MLShapedB0VySfGGMR);
        v26 = v59;
        v27 = *(v59 + 72);
        v28 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = v54;
        v30 = v29 + v28;
        v31 = *(v26 + 16);
        v31(v30, v23, v25);
        v31(v30 + v27, v61, v25);
        v62 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay6CoreML13MLShapedArrayVySfGGMd, &_sSay6CoreML13MLShapedArrayVySfGGMR);
        lazy protocol witness table accessor for type [Float] and conformance [A](&lazy protocol witness table cache variable for type [MLShapedArray<Float>] and conformance [A], &_sSay6CoreML13MLShapedArrayVySfGGMd, &_sSay6CoreML13MLShapedArrayVySfGGMR);
        v32 = v58;
        MLShapedArray.init<A>(concatenating:alongAxis:)();
        v33 = *(v26 + 8);
        v33(v61, v25);
        v33(v23, v25);
        v34 = v26;
        v12 = v23;
        (*(v34 + 32))(v23, v32, v25);
      }

      v35 = v57;
      v36 = v58;
      MLShapedArray.transposed()();
      v37 = v35;
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_100023EF0;
      *(v38 + 32) = 1;
      *&v54 = v14;
      *(v38 + 40) = [v14 dimension];
      *(v38 + 48) = xmmword_100023F00;
      v39 = v61;
      MLShapedArray.reshaped(to:)();

      v40 = v59;
      v41 = *(v59 + 8);
      v41(v36, v37);
      v41(v12, v37);
      (*(v40 + 32))(v12, v39, v37);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, logger);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "categorization pipeline: prepared input features", v45, 2u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100023F10;
      *(inited + 32) = 7368297;
      *(inited + 40) = 0xE300000000000000;
      v47 = type metadata accessor for MLFeatureValue();
      (*(v40 + 16))(v61, v12, v37);
      v48 = MLFeatureValue.init<A>(shapedArray:)();
      *(inited + 72) = v47;
      *(inited + 48) = v48;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of Region?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v49 = objc_allocWithZone(MLDictionaryFeatureProvider);
      v0 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)();
      v41(v12, v37);
    }

    else
    {
      v51 = v64;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type SFEError and conformance SFEError();
    swift_allocError();
    *v50 = 5;
    swift_willThrow();
  }

  return v0;
}

uint64_t closure #1 in CategorizationModelPipeline.prepareInputFeatures(forMessageBody:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = &_swiftEmptyArrayStorage;
    v9 = (a1 + 32);
    v10 = *(&_swiftEmptyArrayStorage + 2);
    do
    {
      v11 = *v9;
      v16 = v8;
      v12 = v8[3];
      if (v10 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1);
        v8 = v16;
      }

      v13 = v11;
      v8[2] = v10 + 1;
      *(v8 + v10 + 8) = v13;
      ++v9;
      ++v10;
      --v7;
    }

    while (v7);
  }

  result = specialized Array.append<A>(contentsOf:)(v8);
  v15 = *a5 + 1;
  if (__OFADD__(*a5, 1))
  {
    __break(1u);
  }

  else
  {
    *a5 = v15;
    return v15 < 256;
  }

  return result;
}

unint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

Swift::Bool __swiftcall CategorizationModelPipeline.isReady()()
{
  v1 = (*(*v0 + 136))();
  if (v1)
  {

    v1 = (*(*v0 + 160))();
    if (v1)
    {

      v1 = (*(*v0 + 184))();
      if (v1)
      {

        LOBYTE(v1) = 1;
      }
    }
  }

  return v1;
}

uint64_t CategorizationModelPipeline.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = *(v0 + 72);

  return v0;
}

uint64_t CategorizationModelPipeline.__deallocating_deinit()
{
  CategorizationModelPipeline.deinit();

  return swift_deallocClassInstance();
}

id @nonobjc MLDictionaryFeatureProvider.init(dictionary:)()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SftGMd, &_ss23_ContiguousArrayStorageCySS_SftGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SftMd, &_sSS_SftMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v12[2] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SftMd, &_sSS_SftMR);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 4);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (*(v31 + 16) >= v32)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 6;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 6 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v6 - 2) < *(v13 - 2))
      {
        v21 = v6 - 6;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 6;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 6;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 6 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 4);
  }

  return 1;
}

uint64_t specialized CategorizationModelPipeline.__allocating_init(modelManager:)(uint64_t a1)
{
  type metadata accessor for CategorizationModelPipeline();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  v3 = swift_beginAccess();
  *(v2 + 56) = a1;
  (*(*v2 + 312))(v3);
  return v2;
}

uint64_t specialized CategorizationModelPipeline.init(modelManager:)(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v4 = swift_beginAccess();
  *(a2 + 56) = a1;
  (*(*a2 + 312))(v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v40 = a1[2];
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SftGMd, &_ss23_ContiguousArrayStorageCySS_SftGMR);
    v7 = swift_allocObject();
    v8 = (_swift_stdlib_malloc_size(v7) - 32) / 24;
    v7[2] = v6;
    v7[3] = 2 * v8;
    v9 = a1[5];
    v10 = *(a2 + 32);
    v11 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v7[4] = a1[4];
    v7[5] = v9;
    *(v7 + 12) = v10;
    v12 = v7 + 7;
    v13 = v6 - 1;
    if (v6 != 1)
    {
      v14 = (a2 + 36);
      v15 = a1 + 7;
      do
      {

        --v11;
        v16 = *v15;
        v17 = *v14++;
        *v12 = *(v15 - 1);
        v12[1] = v16;
        *(v12 + 4) = v17;
        v12 += 3;
        v15 += 2;
        --v13;
      }

      while (v13);
    }

    v4 = v40;
    if (v40 <= v5)
    {
      goto LABEL_35;
    }

LABEL_11:
    v41 = a2 + 32;
    v20 = &a1[2 * v6 + 5];
    while (v6 < v4)
    {
      v21 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_40;
      }

      if (v5 == v6)
      {
        goto LABEL_35;
      }

      if (v6 >= v5)
      {
        goto LABEL_41;
      }

      v23 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v41 + 4 * v6);
      if (v11)
      {
        v25 = *v20;

        v26 = __OFSUB__(v11--, 1);
        if (v26)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = v7[3];
        if (((v27 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SftGMd, &_ss23_ContiguousArrayStorageCySS_SftGMR);
        v30 = swift_allocObject();
        v31 = (_swift_stdlib_malloc_size(v30) - 32) / 24;
        v30[2] = v29;
        v30[3] = 2 * v31;
        v32 = v30 + 4;
        v33 = v7[3] >> 1;
        v34 = 3 * v33;
        v35 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;
        v12 = &v30[3 * v33 + 4];
        if (v7[2])
        {
          if (v30 != v7 || v32 >= &v7[v34 + 4])
          {
            memmove(v32, v7 + 4, v34 * 8);
          }

          v7[2] = 0;
        }

        else
        {
        }

        v7 = v30;
        v4 = v40;
        v26 = __OFSUB__(v35, 1);
        v11 = v35 - 1;
        if (v26)
        {
          goto LABEL_42;
        }
      }

      *v12 = v23;
      v12[1] = v22;
      *(v12 + 4) = v24;
      v12 += 3;
      ++v6;
      v20 += 2;
      if (v21 == v4)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage[3];

  v12 = &_swiftEmptyArrayStorage[4];
  v11 = v19 >> 1;
  if (v4 > v5)
  {
    goto LABEL_11;
  }

LABEL_35:
  v37 = v7[3];
  if (v37 < 2)
  {
    return v7;
  }

  v38 = v37 >> 1;
  v26 = __OFSUB__(v38, v11);
  v39 = v38 - v11;
  if (!v26)
  {
    v7[2] = v39;
    return v7;
  }

LABEL_44:
  __break(1u);
  return result;
}

void *specialized CategorizationModelPipeline.softmax(logits:)(uint64_t a1)
{
  v2 = specialized Sequence<>.max()(a1);
  if ((v2 & &_mh_execute_header) != 0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *&v2;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = (a1 + 32);
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = expf(*v5 - v3);
      v8 = _swiftEmptyArrayStorage[3];
      v9 = v6 + 1;
      if (v6 >= v8 >> 1)
      {
        v10 = v7;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v6 + 1, 1);
        v7 = v10;
      }

      _swiftEmptyArrayStorage[2] = v9;
      *(&_swiftEmptyArrayStorage[4] + v6) = v7;
      ++v5;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage[2];
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9 <= 7)
  {
    v11 = 0;
    v12 = 0.0;
LABEL_16:
    v15 = v9 - v11;
    v16 = &_swiftEmptyArrayStorage[4] + v11;
    do
    {
      v17 = *v16++;
      v12 = v12 + v17;
      --v15;
    }

    while (v15);
    goto LABEL_18;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFF8;
  v13 = &_swiftEmptyArrayStorage[6];
  v12 = 0.0;
  v14 = v9 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v12 = (((((((v12 + COERCE_FLOAT(*(v13 - 1))) + COERCE_FLOAT(HIDWORD(*(v13 - 2)))) + COERCE_FLOAT(*(v13 - 1))) + COERCE_FLOAT(HIDWORD(*(v13 - 1)))) + COERCE_FLOAT(*v13)) + COERCE_FLOAT(HIDWORD(*v13))) + COERCE_FLOAT(v13[1])) + COERCE_FLOAT(HIDWORD(*v13));
    v13 += 4;
    v14 -= 8;
  }

  while (v14);
  if (v9 != v11)
  {
    goto LABEL_16;
  }

LABEL_18:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v18 = _swiftEmptyArrayStorage[2];
  v19 = 32;
  do
  {
    v20 = *(_swiftEmptyArrayStorage + v19);
    v21 = _swiftEmptyArrayStorage[3];
    if (v18 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v18 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v18 + 1;
    *(&_swiftEmptyArrayStorage[4] + v18) = v20 / v12;
    v19 += 4;
    ++v18;
    --v9;
  }

  while (v9);
LABEL_22:

  return _swiftEmptyArrayStorage;
}

void specialized CategorizationModelPipeline.run(head:withClasses:forFeatures:)(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v5 = [a1 predictionFromFeatures:a3 error:&v23];
  if (v5)
  {
    v6 = v5;
    v7 = v23;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 featureValueForName:v8];

    swift_unknownObjectRelease();
    if (v9 && (v10 = [v9 multiArrayValue], v9, v10))
    {
      v11 = [v10 dataPointer];
      v12 = [v10 count];
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      v13 = v12;
      if (v12)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
        v15 = *(v14 + 2);
        do
        {
          v16 = *v11;
          v17 = *(v14 + 3);
          if (v15 >= v17 >> 1)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1, v14);
          }

          *(v14 + 2) = v15 + 1;
          *&v14[4 * v15 + 32] = v16;
          ++v11;
          ++v15;
          --v13;
        }

        while (v13);
      }

      else
      {
        v14 = _swiftEmptyArrayStorage;
      }

      v20 = specialized CategorizationModelPipeline.softmax(logits:)(v14);
      if (v20[2] == *(a2 + 16))
      {

        v23 = specialized _copySequenceToContiguousArray<A>(_:)(v21, v20);
        specialized MutableCollection<>.sort(by:)(&v23);
        if (v3)
        {

          __break(1u);
        }

        else
        {
        }
      }

      else
      {

        lazy protocol witness table accessor for type SFEError and conformance SFEError();
        swift_allocError();
        *v22 = 6;
        swift_willThrow();
      }
    }

    else
    {
      lazy protocol witness table accessor for type SFEError and conformance SFEError();
      swift_allocError();
      *v18 = 6;
      swift_willThrow();
    }
  }

  else
  {
    v19 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void specialized CategorizationModelPipeline.prediction(fromHypotheses:thresholds:)(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  if (!v7)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (!a2 || !*(a2 + 16))
  {
    goto LABEL_13;
  }

  v4 = a1;
  v9 = *(a1 + 40);

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
  if ((v11 & 1) == 0 || (v6 = *(*(a2 + 56) + 4 * v10), v6 <= v5))
  {

LABEL_13:

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_15;
  }

LABEL_7:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315650;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v21);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v5;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v13, v14, "categorization pipeline: discarding top hypothesis due to low confidence [%s: %f < %f]", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
  }

  if (v7 != 1)
  {
    v19 = *(v4 + 56);
    v18 = *(v4 + 64);
    v20 = *(v4 + 72);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_10001031C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_100010368(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1000103C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_10001040C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100010464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1000104B0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100010508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_100010554(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);

  return v3(v4);
}

uint64_t sub_1000105A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1000105F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 240);

  return v3(v4);
}

uint64_t sub_100010648@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

uint64_t sub_10001069C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 264);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_1000106F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001074C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 288);

  return v4(v2, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t type metadata accessor for MLFeatureValue()
{
  result = lazy cache variable for type metadata for MLFeatureValue;
  if (!lazy cache variable for type metadata for MLFeatureValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MLFeatureValue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RegexPipeline.__allocating_init(region:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RegexPipeline.init(region:)(a1);
  return v2;
}

__n128 RegexPipeline.region.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[8];
  v18 = v1[7];
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 137);
  v4 = v1[4];
  v14 = v1[3];
  v15 = v4;
  v5 = v1[6];
  v16 = v1[5];
  v17 = v5;
  v6 = *(v1 + 2);
  v12 = v1[1];
  v13 = v6;
  outlined init with copy of Region(&v12, v11);
  v7 = v19[0];
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 121) = *(v19 + 9);
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t RegexPipeline.region.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[7];
  v13[0] = v1[8];
  *(v13 + 9) = *(v1 + 137);
  v4 = v1[4];
  v12[2] = v1[3];
  v12[3] = v4;
  v5 = v1[5];
  v12[5] = v1[6];
  v12[6] = v3;
  v12[4] = v5;
  v6 = v1[2];
  v12[0] = v1[1];
  v12[1] = v6;
  v7 = a1[5];
  v1[5] = a1[4];
  v1[6] = v7;
  v8 = a1[3];
  v1[3] = a1[2];
  v1[4] = v8;
  v9 = a1[1];
  v1[1] = *a1;
  v1[2] = v9;
  *(v1 + 137) = *(a1 + 121);
  v10 = a1[7];
  v1[7] = a1[6];
  v1[8] = v10;
  return outlined destroy of Region(v12);
}

void *RegexPipeline.trialManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

void RegexPipeline.trialManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t RegexPipeline.modelVersion.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t RegexPipeline.modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 176);
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

uint64_t RegexPipeline.allowRegexFilter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
}

uint64_t RegexPipeline.allowRegexFilter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t RegexPipeline.transactionalRegexFilter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 192);
}

uint64_t RegexPipeline.transactionalRegexFilter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  *(v1 + 192) = a1;
}

uint64_t RegexPipeline.promotionalRegexFilter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
}

uint64_t RegexPipeline.promotionalRegexFilter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);
  *(v1 + 200) = a1;
}

uint64_t key path setter for RegexPipeline.subclassificationRegexFilter : RegexPipeline(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(**a2 + 288);

  return v5(v2, v3, v4);
}

uint64_t RegexPipeline.subclassificationRegexFilter.getter()
{
  swift_beginAccess();
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[28];

  return v1;
}

uint64_t RegexPipeline.subclassificationRegexFilter.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = v3[26];
  v8 = v3[27];
  v9 = v3[28];
  v3[26] = a1;
  v3[27] = a2;
  v3[28] = a3;
}

uint64_t RegexPipeline.SubclassificationRegexFilter.financeRegexFilter.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RegexPipeline.SubclassificationRegexFilter.ordersRegexFilter.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t RegexPipeline.SubclassificationRegexFilter.remindersRegexFilter.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t RegexPipeline.init(region:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for RegexFilter();
  *(v1 + 160) = 0;
  v4 = v1 + 160;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyArrayStorage;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  *(v5 + 24) = v6;
  *(v4 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = _swiftEmptyArrayStorage;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  swift_arrayDestroy();
  *(v7 + 24) = v8;
  *(v4 + 32) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = _swiftEmptyArrayStorage;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  swift_arrayDestroy();
  *(v9 + 24) = v10;
  *(v4 + 40) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  swift_arrayDestroy();
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  swift_arrayDestroy();
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  swift_arrayDestroy();
  *(v15 + 24) = v16;
  *(v4 + 48) = v11;
  *(v4 + 56) = v13;
  *(v4 + 64) = v15;
  v17 = *(a1 + 112);
  *(v4 - 48) = *(a1 + 96);
  *(v4 - 32) = v17;
  *(v4 - 23) = *(a1 + 121);
  v18 = *(a1 + 48);
  *(v4 - 112) = *(a1 + 32);
  *(v4 - 96) = v18;
  v19 = *(a1 + 80);
  *(v4 - 80) = *(a1 + 64);
  *(v4 - 64) = v19;
  v20 = *(a1 + 16);
  *(v4 - 144) = *a1;
  *(v4 - 128) = v20;
  v21 = objc_allocWithZone(SmsFilterTrialModelManager);
  outlined init with copy of Region(a1, &v31);
  v22 = [v21 init];
  swift_beginAccess();
  v23 = *v4;
  *v4 = v22;
  v24 = v22;

  if (v24)
  {
    if ((*(*v2 + 352))())
    {
      v31 = *(a1 + 88);
      v32 = *(a1 + 104);

      v25 = String._bridgeToObjectiveC()();
      outlined destroy of Region(a1);
      outlined destroy of Region.TrialParams(&v31);
      [v24 initializeWithNamespace:v25];

      RegexPipeline.loadRegexFromTrial()();
    }

    else
    {

      outlined destroy of Region(a1);
    }
  }

  else
  {
    outlined destroy of Region(a1);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "regex pipeline: trialManager failed to init", v29, 2u);
    }
  }

  return v2;
}

Swift::Void __swiftcall RegexPipeline.update()()
{
  if ((*(*v0 + 352))())
  {
    v1 = (*(*v0 + 160))();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 updateAvailable];

      if (v3)
      {

        RegexPipeline.loadRegexFromTrial()();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall RegexPipeline.cleanup()()
{
  v1 = (*(*v0 + 208))();
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = _swiftEmptyArrayStorage;

  v4 = (*(*v0 + 232))(v3);
  swift_beginAccess();
  v5 = *(v4 + 16);
  *(v4 + 16) = _swiftEmptyArrayStorage;

  v7 = (*(*v0 + 256))(v6);
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = _swiftEmptyArrayStorage;

  v10 = *(*v0 + 280);
  v11 = v10(v9);

  swift_beginAccess();
  v12 = *(v11 + 16);
  *(v11 + 16) = _swiftEmptyArrayStorage;

  v10(v13);
  v15 = v14;

  swift_beginAccess();
  v16 = *(v15 + 16);
  *(v15 + 16) = _swiftEmptyArrayStorage;

  v10(v17);
  v19 = v18;

  swift_beginAccess();
  v20 = *(v19 + 16);
  *(v19 + 16) = _swiftEmptyArrayStorage;

  (*(*v0 + 192))(0, 0);
}

void RegexPipeline.loadRegexFromTrial()()
{
  v1 = v0;
  if (((*(*v0 + 352))() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    oslog = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v32))
    {
      goto LABEL_22;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "regex pipeline: oops trial is not supported";
    goto LABEL_21;
  }

  v2 = (*(*v0 + 160))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 getRegexFilePath];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v46);
      _os_log_impl(&_mh_execute_header, v9, v10, "regex pipeline: loading regex from %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    specialized static RegexMessageReader.processRegexMessages(filePath:)(&v40);

    v14._rawValue = v41;
    if (v41)
    {
      v16 = v43;
      v15 = v44;
      v17 = v45;
      v18._rawValue = v42;
      v19 = v40;
      (*(*v1 + 208))(v13);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = _swiftEmptyArrayStorage;
      }

      RegexFilter.initRegexTemplates(initTemplateList:)(v20);

      (*(*v1 + 232))(v21);
      RegexFilter.initRegexTemplates(initTemplateList:)(v18);

      (*(*v1 + 256))(v22);
      RegexFilter.initRegexTemplates(initTemplateList:)(v14);

      if ((*(*v1 + 360))(v23))
      {
        v24 = (*v1 + 280);
        v25 = *v24;
        (*v24)();

        RegexFilter.initRegexTemplates(initTemplateList:)(v26);

        (v25)(v27);

        RegexFilter.initRegexTemplates(initTemplateList:)(v28);

        (v25)(v29);

        RegexFilter.initRegexTemplates(initTemplateList:)(v30);

        v13 = swift_bridgeObjectRelease_n();
      }

      else
      {

        v49 = v16;
        outlined destroy of [String](&v49);
        v48 = v15;
        outlined destroy of [String](&v48);
        v47 = v17;
        v13 = outlined destroy of [String](&v47);
      }
    }

    (*(*v1 + 136))(v46, v13);
    v37 = v46[12];
    v36 = v46[13];

    outlined destroy of Region(v46);
    v38._countAndFlagsBits = 0x78656765722DLL;
    v38._object = 0xE600000000000000;
    String.append(_:)(v38);
    (*(*v1 + 192))(v37, v36);

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, logger);
  oslog = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "regex pipeline: trial manager not available";
LABEL_21:
    _os_log_impl(&_mh_execute_header, oslog, v32, v34, v33, 2u);
  }

LABEL_22:
}

ILMessageFilterQueryResponse __swiftcall RegexPipeline.classify(messageBody:)(Swift::String messageBody)
{
  v2 = v1;
  object = messageBody._object;
  countAndFlagsBits = messageBody._countAndFlagsBits;
  (*(*v1 + 208))();
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  v6 = RegexFilter.isMessageInRegexList(message:)(v5);

  if (v6)
  {
    v8 = 0;
    v9 = 1;
  }

  else
  {
    (*(*v1 + 232))(v7);
    v24._countAndFlagsBits = countAndFlagsBits;
    v24._object = object;
    v25 = RegexFilter.isMessageInRegexList(message:)(v24);

    v27 = *v1;
    if (v25)
    {
      if ((*(v27 + 360))(v26))
      {
        v8 = RegexPipeline.subclassify(messageBody:)(countAndFlagsBits, object);
      }

      else
      {
        v8 = 0;
      }

      v9 = 4;
    }

    else
    {
      (*(v27 + 256))(v26);
      v29._countAndFlagsBits = countAndFlagsBits;
      v29._object = object;
      v30 = RegexFilter.isMessageInRegexList(message:)(v29);

      v8 = 0;
      if (!v30)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v9 = 3;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = specialized String.init(filterAction:)(v9);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v31);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = specialized String.init(filterSubAction:)(v8);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v31);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "regex pipeline: regexAction=%s, regexSubAction=%s", v13, 0x16u);
    swift_arrayDestroy();
  }

LABEL_8:
  (*(*v2 + 184))();
  v21 = v20;
  v22 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
  [v22 setAction:v9];
  [v22 setSubAction:v8];
  [v22 setError:0];
  if (v21)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v22 setVersion:v23];

  return v22;
}

uint64_t RegexPipeline.subclassify(messageBody:)(uint64_t a1, void *a2)
{
  v5 = (*v2 + 280);
  v6 = *v5;
  (*v5)();

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v8 = RegexFilter.isMessageInRegexList(message:)(v7);

  if (v8)
  {
    return 10001;
  }

  (v6)(v9);

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  v12 = RegexFilter.isMessageInRegexList(message:)(v11);

  if (v12)
  {
    return 10002;
  }

  (v6)(v13);

  v14._countAndFlagsBits = a1;
  v14._object = a2;
  v15 = RegexFilter.isMessageInRegexList(message:)(v14);

  if (v15)
  {
    return 10003;
  }

  else
  {
    return 0;
  }
}

Swift::Bool __swiftcall RegexPipeline.trialSupportEnabled()()
{
  (*(*v0 + 136))(v2);
  outlined destroy of Region(v2);
  return v3 & 1;
}

Swift::Bool __swiftcall RegexPipeline.subClassificationModelAvailable()()
{
  (*(*v0 + 136))(v2);
  outlined destroy of Region(v2);
  return v3;
}

uint64_t RegexPipeline.deinit()
{
  v1 = *(v0 + 128);
  v13[6] = *(v0 + 112);
  v14[0] = v1;
  *(v14 + 9) = *(v0 + 137);
  v2 = *(v0 + 64);
  v13[2] = *(v0 + 48);
  v13[3] = v2;
  v3 = *(v0 + 96);
  v13[4] = *(v0 + 80);
  v13[5] = v3;
  v4 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v4;
  outlined destroy of Region(v13);

  v5 = *(v0 + 176);

  v6 = *(v0 + 184);

  v7 = *(v0 + 192);

  v8 = *(v0 + 200);

  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);

  return v0;
}

uint64_t RegexPipeline.__deallocating_deinit()
{
  RegexPipeline.deinit();

  return swift_deallocClassInstance();
}

__n128 sub_1000126E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 136))(v7);
  v3 = v8[0];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 121) = *(v8 + 9);
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10001275C(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  *(v10 + 9) = *(a1 + 121);
  v3 = a1[7];
  v9[6] = a1[6];
  v10[0] = v3;
  v4 = a1[5];
  v9[4] = a1[4];
  v9[5] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = *(**a2 + 144);
  outlined init with copy of Region(v9, &v8);
  return v6(v9);
}

uint64_t sub_1000127EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_100012838(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100012890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000128DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t sub_100012944@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_100012990(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);

  return v3(v4);
}

uint64_t sub_1000129E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_100012A30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 240);

  return v3(v4);
}

uint64_t sub_100012A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

uint64_t sub_100012AD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 264);

  return v3(v4);
}

uint64_t sub_100012B34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RegexPipeline.SubclassificationRegexFilter(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RegexPipeline.SubclassificationRegexFilter(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t outlined destroy of [String](uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, "0D");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RegexFilter.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  *(v0 + 24) = v1;
  return v0;
}

Swift::Void __swiftcall RegexFilter.cleanup()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall RegexFilter.initRegexTemplates(initTemplateList:)(Swift::OpaquePointer initTemplateList)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = _swiftEmptyArrayStorage;

  v4 = *(initTemplateList._rawValue + 2);
  if (v4)
  {
    v5 = (initTemplateList._rawValue + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      RegexFilter.replaceText(pattern:input:options:)(0x2D417A2D615B245CLL, 0xED0000245C2A5D5ALL, v6, v7, 16);
      v9 = v8;
      v11 = v10;

      swift_beginAccess();
      v12 = *(v1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        *(v1 + 16) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      v16 = &v12[16 * v15];
      *(v16 + 4) = v9;
      *(v16 + 5) = v11;
      *(v1 + 16) = v12;
      swift_endAccess();
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

Swift::Bool __swiftcall RegexFilter.isMessageInRegexList(message:)(Swift::String message)
{
  v21[0] = message._object;
  countAndFlagsBits = message._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v21 - v5;
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v7 + 16);

  v10 = v7 + 40;
  v11 = -v8;
  v12 = -1;
  while (1)
  {
    v13 = v11 + v12;
    if (v11 + v12 == -1)
    {
LABEL_5:

      return v13 != -1;
    }

    if (++v12 >= *(v7 + 16))
    {
      break;
    }

    v14 = v10 + 16;
    v17 = v10 - 8;
    v15 = *(v10 - 8);
    v16 = *(v17 + 8);
    v21[3] = countAndFlagsBits;
    v21[4] = v21[0];
    v21[1] = v15;
    v21[2] = v16;
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol.range<A>(of:options:range:locale:)();
    v20 = v19;
    outlined destroy of Locale?(v6);

    v10 = v14;
    if ((v20 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t RegexFilter.templateRegexList.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t RegexFilter.templateRegexList.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t RegexFilter.init()()
{
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of RegexFilter.init());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  *(v0 + 24) = v1;
  return v0;
}

void RegexFilter.replaceText(pattern:input:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v63 = _swiftEmptyArrayStorage;
  objc_allocWithZone(NSRegularExpression);

  v10 = @nonobjc NSRegularExpression.init(pattern:options:)(a1, a2, a5);
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3;
  }

  v12 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  aBlock = 15;
  v56 = v12 | (v11 << 16);
  v61 = a3;
  v62 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v13 = _NSRange.init<A, B>(_:in:)();
  v51 = v10;
  if (v10)
  {
    v15 = v13;
    v16 = v14;
    v17 = v10;
    v18 = String._bridgeToObjectiveC()();
    v19 = swift_allocObject();
    *(v19 + 16) = &v63;
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #1 in RegexFilter.replaceText(pattern:input:options:);
    *(v20 + 24) = v19;
    v59 = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextCheckingResult?, @unowned NSMatchingFlags, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v60 = v20;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextCheckingResult?, @unowned NSMatchingFlags, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v58 = &block_descriptor_0;
    v21 = _Block_copy(&aBlock);

    [v17 enumerateMatchesInString:v18 options:0 range:v15 usingBlock:{v16, v21}];

    _Block_release(v21);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v22 = partial apply for closure #1 in RegexFilter.replaceText(pattern:input:options:);
    v23 = v63;
    v24 = v63[2];
    if (v24)
    {
LABEL_8:
      v50 = v22;
      v52 = v24 - 1;

      v25 = 0;
      v26 = 0;
      v27 = 0;
      while (1)
      {
        v28 = v23[v25 + 4];
        v29 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        v54 = v27;
        v30 = v23[v25 + 5];
        Range<>.init(_:in:)();
        if (v31)
        {
          goto LABEL_30;
        }

        String.subscript.getter();
        v32 = static String._fromSubstring(_:)();
        v34 = v33;

        v35 = *(v53 + 24);
        if (*(v35 + 16))
        {
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v34);
          v38 = v37;

          if (v38)
          {
            v39 = (*(v35 + 56) + 16 * v36);
            v40 = *v39;
            v41 = v39[1];
          }
        }

        else
        {
        }

        v42 = String.count.getter();
        v43 = String._bridgeToObjectiveC()();

        v44 = String._bridgeToObjectiveC()();

        v45 = [v43 stringByReplacingCharactersInRange:v29 withString:{v30, v44}];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v63;
        v46 = v63[2];
        if (v26 >= v46)
        {
          goto LABEL_26;
        }

        v47 = v63[v25 + 5];
        v48 = __OFSUB__(v42, v47);
        v49 = v42 - v47;
        if (v48)
        {
          goto LABEL_27;
        }

        v27 = v54 + v49;
        if (__OFADD__(v54, v49))
        {
          goto LABEL_28;
        }

        if (v52 == v26)
        {
          goto LABEL_21;
        }

        ++v26;
        v25 += 2;
        if (v26 >= v46)
        {
          __break(1u);
LABEL_21:

          v22 = v50;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage[2];
    if (v24)
    {
      goto LABEL_8;
    }
  }

LABEL_24:

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSTextCheckingResult?, @unowned NSMatchingFlags, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v22);
}

void closure #1 in RegexFilter.replaceText(pattern:input:options:)(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 range];
    v8 = v7;
    v9 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      *a4 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      *a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    }

    v13 = *a4;
    *(v13 + 2) = v12 + 1;
    v14 = &v13[16 * v12];
    *(v14 + 4) = v6;
    *(v14 + 5) = v8;
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSTextCheckingResult?, @unowned NSMatchingFlags, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

uint64_t RegexFilter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RegexFilter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed NSTextCheckingResult?, @unowned NSMatchingFlags, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed NSTextCheckingResult?, @unowned NSMatchingFlags, @unowned UnsafeMutablePointer<ObjCBool>) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *Region.getTransactionalCapabilities()()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = (v1 + 32);
  v4 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *v3++;
    v5 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    *&v4[8 * v8 + 32] = v5;
    --v2;
  }

  while (v2);
  return v4;
}

char *Region.getPromotionalCapabilities()()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = (v1 + 32);
  v4 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *v3++;
    v5 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    *&v4[8 * v8 + 32] = v5;
    --v2;
  }

  while (v2);
  return v4;
}

unint64_t Region.CodingKeys.rawValue.getter(char a1)
{
  result = 0x614E6E6F69676552;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0x6C61697254;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 12:
      result = 0xD00000000000002DLL;
      break;
    case 13:
      result = 0xD00000000000002BLL;
      break;
    case 14:
      result = 0x6950206C65646F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Region.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Region.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == Region.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Region.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Region.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Region.CodingKeys()
{
  Region.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Region.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Region.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Region.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Region.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Region.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = Region.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Region.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Region.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Region.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Region.CodingKeys and conformance Region.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Region.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Region.CodingKeys and conformance Region.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

extensionFilter::Region::TrialParams::CodingKeys_optional __swiftcall Region.TrialParams.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Region.TrialParams.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = extensionFilter_Region_TrialParams_CodingKeys_namespaceName;
  }

  else
  {
    v4.value = extensionFilter_Region_TrialParams_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Region.TrialParams.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x63617073656D614ELL;
  }

  else
  {
    return 0x7553206C61697254;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Region.TrialParams.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x63617073656D614ELL;
  }

  else
  {
    v4 = 0x7553206C61697254;
  }

  if (v3)
  {
    v5 = 0xEF646574726F7070;
  }

  else
  {
    v5 = 0xEE00656D614E2065;
  }

  if (*a2)
  {
    v6 = 0x63617073656D614ELL;
  }

  else
  {
    v6 = 0x7553206C61697254;
  }

  if (*a2)
  {
    v7 = 0xEE00656D614E2065;
  }

  else
  {
    v7 = 0xEF646574726F7070;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Region.TrialParams.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Region.TrialParams.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Region.TrialParams.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Region.TrialParams.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Region.TrialParams.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Region.TrialParams.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x7553206C61697254;
  if (*v1)
  {
    v2 = 0x63617073656D614ELL;
  }

  v3 = 0xEF646574726F7070;
  if (*v1)
  {
    v3 = 0xEE00656D614E2065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Region.TrialParams.CodingKeys()
{
  if (*v0)
  {
    result = 0x63617073656D614ELL;
  }

  else
  {
    result = 0x7553206C61697254;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Region.TrialParams.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Region.TrialParams.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Region.TrialParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Region.TrialParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Region.TrialParams.namespaceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Region.TrialParams@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized Region.TrialParams.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

extensionFilter::Region::ModelPipeline_optional __swiftcall Region.ModelPipeline.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Region.ModelPipeline()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Region.ModelPipeline()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance Region.ModelPipeline@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t Region.regionName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Region.regionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Region.countryCodePrefix.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Region.countryCodePrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Region.dominantLanguage.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Region.dominantLanguage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Region.phoneNumberLength.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Region.testPhoneNumbers.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Region.trial.getter()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t Region.trial.setter(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 104);

  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return result;
}

uint64_t Region.transactionalCapabilities.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t Region.promotionalCapabilities.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

__n128 Region.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Region.init(from:)(a1, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 121) = *(v9 + 9);
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

void *one-time initialization function for sharedRegionProperties()
{
  type metadata accessor for RegionPropertiesReader();
  v0 = swift_allocObject();
  result = RegionPropertiesReader.init()();
  static RegionPropertiesReader.sharedRegionProperties = v0;
  return result;
}

uint64_t RegionPropertiesReader.__allocating_init()()
{
  v0 = swift_allocObject();
  RegionPropertiesReader.init()();
  return v0;
}

uint64_t static RegionPropertiesReader.instance()()
{
  if (one-time initialization token for sharedRegionProperties != -1)
  {
    swift_once();
  }
}

void *RegionPropertiesReader.init()()
{
  v1 = v0;
  v0[2] = 0;
  v2 = (*(*v0 + 128))();
  v3 = v1[2];
  v1[2] = v2;

  if (v2)
  {

    (*(*v1 + 152))(v4);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "smsfiltter: no valid region found", v8, 2u);
    }
  }

  return v1;
}

Swift::OpaquePointer_optional __swiftcall RegionPropertiesReader.getRegionProperties()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v20 - v6;
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v7, v5, v0);
    v13 = Data.init(contentsOf:options:)();
    v15 = v14;
    v16 = type metadata accessor for PropertyListDecoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15extensionFilter6RegionVGMd, &_sSay15extensionFilter6RegionVGMR);
    lazy protocol witness table accessor for type [Region] and conformance <A> [A]();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v1 + 8))(v7, v0);

    outlined consume of Data._Representation(v13, v15);
    v19 = v20[0];
  }

  else
  {
    v19 = 0;
  }

  result.value._rawValue = v19;
  result.is_nil = v12;
  return result;
}

void __swiftcall RegionPropertiesReader.getRegionPropertiesFor(regionName:)(extensionFilter::Region_optional *__return_ptr retstr, Swift::String regionName)
{
  object = regionName._object;
  countAndFlagsBits = regionName._countAndFlagsBits;
  v6 = v2[2];
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v2[2];

      v9 = 0;
      v10 = v7 - 1;
      v11 = 32;
      while (1)
      {
        v50[0] = *(v6 + v11);
        v12 = *(v6 + v11 + 16);
        v13 = *(v6 + v11 + 32);
        v14 = *(v6 + v11 + 64);
        v50[3] = *(v6 + v11 + 48);
        v50[4] = v14;
        v50[1] = v12;
        v50[2] = v13;
        v15 = *(v6 + v11 + 80);
        v16 = *(v6 + v11 + 96);
        v17 = *(v6 + v11 + 112);
        *(v51 + 9) = *(v6 + v11 + 121);
        v50[6] = v16;
        v51[0] = v17;
        v50[5] = v15;
        v18 = *(v6 + v11 + 112);
        v48 = *(v6 + v11 + 96);
        v49[0] = v18;
        *(v49 + 9) = *(v6 + v11 + 121);
        v19 = *(v6 + v11 + 48);
        v44 = *(v6 + v11 + 32);
        v45 = v19;
        v20 = *(v6 + v11 + 80);
        v46 = *(v6 + v11 + 64);
        v47 = v20;
        v21 = *(v6 + v11 + 16);
        v42 = *(v6 + v11);
        v43 = v21;
        if (v50[0] == __PAIR128__(object, countAndFlagsBits) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v22 = *(*v2 + 144);
          outlined init with copy of Region(v50, &v52);
          if (v22(v50))
          {

            v40 = v48;
            v41[0] = v49[0];
            *(v41 + 9) = *(v49 + 9);
            v36 = v44;
            v37 = v45;
            v38 = v46;
            v39 = v47;
            v34 = v42;
            v35 = v43;
            Regex.SubclassificationMap.init(financeList:ordersList:remindersList:)(&v34, v32, v33);
            v58 = v40;
            v59[0] = v41[0];
            *(v59 + 9) = *(v41 + 9);
            v54 = v36;
            v55 = v37;
            v56 = v38;
            v57 = v39;
            v52 = v34;
            v53 = v35;
            goto LABEL_17;
          }

          outlined destroy of Region(v50);
        }

        if (v10 == v9)
        {
          goto LABEL_11;
        }

        ++v9;
        v11 += 144;
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
LABEL_11:

          break;
        }
      }
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, logger);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v52._countAndFlagsBits = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v52._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v24, v25, "smsfilter: %s region is not supported", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  _s15extensionFilter6RegionVSgWOi0_(&v52);
LABEL_17:
  v28 = v59[0];
  retstr->value.trial.namespaceName = v58;
  *&retstr->value.subClassificationSupported = v28;
  *(&retstr->value.transactionalCapabilities._rawValue + 1) = *(v59 + 9);
  v29 = v55;
  *&retstr->value.countryCodePrefix._object = v54;
  retstr->value.dominantLanguage = v29;
  v30 = v57;
  *&retstr->value.phoneNumberLength._rawValue = v56;
  *&retstr->value.retryTimerInMinutes = v30;
  v31 = v53;
  retstr->value.regionName = v52;
  *&retstr->value.smsFilterSupported = v31;
}
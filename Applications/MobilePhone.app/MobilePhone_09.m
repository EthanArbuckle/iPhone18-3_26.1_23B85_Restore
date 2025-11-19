void *VoicemailAccountManagerData.transcriptionProgress.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress);
  v2 = v1;
  return v1;
}

id static VoicemailAccountManagerData.empty()()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed] = 1;
  v1[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online] = 1;
  v1[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_storageUsage] = 0;
  v1[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionEnabled] = 1;
  *&v1[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts] = _swiftEmptyArrayStorage;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

id VoicemailAccountManagerData.__allocating_init(anyAccountSubscribed:online:isMessageWaiting:storageUsage:transcriptionEnabled:transcriptionProgress:accounts:)(char a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v15[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed] = a1;
  v15[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online] = a2;
  v15[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting] = a3;
  *&v15[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_storageUsage] = a4;
  v15[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionEnabled] = a5;
  *&v15[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress] = a6;
  *&v15[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts] = a7;
  v17.receiver = v15;
  v17.super_class = v7;
  return objc_msgSendSuper2(&v17, "init");
}

id VoicemailAccountManagerData.init(anyAccountSubscribed:online:isMessageWaiting:storageUsage:transcriptionEnabled:transcriptionProgress:accounts:)(char a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v7[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed] = a1;
  v7[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online] = a2;
  v7[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting] = a3;
  *&v7[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_storageUsage] = a4;
  v7[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionEnabled] = a5;
  *&v7[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress] = a6;
  *&v7[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts] = a7;
  v17.receiver = v7;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t VoicemailAccountManagerData.description.getter()
{
  _StringGuts.grow(_:)(126);
  v1._countAndFlagsBits = 0xD000000000000035;
  v1._object = 0x8000000100246990;
  String.append(_:)(v1);
  if (*(v0 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0x656E696C6E6F2029;
  v5._object = 0xEB0000000028203ALL;
  String.append(_:)(v5);
  if (*(v0 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x80000001002469D0;
  String.append(_:)(v9);
  if (*(v0 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._object = 0x80000001002469F0;
  v13._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x6E756F6363612029;
  v15._object = 0xED000028203A7374;
  String.append(_:)(v15);
  type metadata accessor for VoicemailAccount();
  v16._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

unint64_t VoicemailAccountManagerData.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x656E696C6E6FLL;
  v2 = 0x55656761726F7473;
  v3 = 0xD000000000000014;
  if (a1 != 4)
  {
    v3 = 0x73746E756F636361;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (!a1)
  {
    v1 = 0xD000000000000014;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoicemailAccountManagerData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized VoicemailAccountManagerData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoicemailAccountManagerData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoicemailAccountManagerData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t VoicemailAccountManagerData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11MobilePhone27VoicemailAccountManagerDataC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts);
    v10[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MobilePhone16VoicemailAccountCGMd);
    lazy protocol witness table accessor for type [VoicemailAccount] and conformance <A> [A](&lazy protocol witness table cache variable for type [VoicemailAccount] and conformance <A> [A], &lazy protocol witness table cache variable for type VoicemailAccount and conformance VoicemailAccount);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *protocol witness for Decodable.init(from:) in conformance VoicemailAccountManagerData@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized VoicemailAccountManagerData.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static VoicemailAccountManagerData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed) != *(a2 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed) || *(a1 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting) != *(a2 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting) || *(a1 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_storageUsage) != *(a2 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_storageUsage) || *(a1 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online) != *(a2 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online) || *(a1 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionEnabled) != *(a2 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionEnabled))
  {
    return 0;
  }

  v3 = *(a1 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress);
  v4 = *(a2 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress);
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a1;
  v6 = a2;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSProgress);
  v7 = v4;
  v8 = v3;
  v9 = static NSObject.== infix(_:_:)();

  a1 = v5;
  a2 = v6;
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v10 = *(a1 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts);
  v11 = *(a2 + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ11MobilePhone16VoicemailAccountC_Tt1g5(v10, v11);
}

uint64_t VoicemailAccountManagerData.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v4);
  if (!v5)
  {
    outlined destroy of Any?(v4);
    goto LABEL_5;
  }

  type metadata accessor for VoicemailAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSObject);
  v1 = static NSObject.== infix(_:_:)();

  return v1 & 1;
}

uint64_t specialized VoicemailAccountManagerData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001002417A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100240F90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55656761726F7473 && a2 == 0xEC00000065676173 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002417E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *specialized VoicemailAccountManagerData.__allocating_init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11MobilePhone27VoicemailAccountManagerDataC10CodingKeysOGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v19) = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 2;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 3;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 4;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MobilePhone16VoicemailAccountCGMd);
    v18 = 5;
    lazy protocol witness table accessor for type [VoicemailAccount] and conformance <A> [A](&lazy protocol witness table cache variable for type [VoicemailAccount] and conformance <A> [A], &lazy protocol witness table cache variable for type VoicemailAccount and conformance VoicemailAccount);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v19;
    v12 = type metadata accessor for VoicemailAccountManagerData();
    v13 = objc_allocWithZone(v12);
    v13[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed] = v8 & 1;
    v13[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online] = v9 & 1;
    v13[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting] = v10 & 1;
    *&v13[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_storageUsage] = v16;
    v13[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionEnabled] = v15 & 1;
    *&v13[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress] = 0;
    *&v13[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts] = v14;
    v17.receiver = v13;
    v17.super_class = v12;
    v7 = objc_msgSendSuper2(&v17, "init");
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccountManagerData.CodingKeys and conformance VoicemailAccountManagerData.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [VoicemailAccount] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11MobilePhone16VoicemailAccountCGMd);
    lazy protocol witness table accessor for type VoicemailAccount and conformance VoicemailAccount(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VoicemailAccount and conformance VoicemailAccount(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccount();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PHCFNotificationCenterObserver.__allocating_init(notificationName:onNotify:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PHCFNotificationCenterObserver.init(notificationName:onNotify:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PHCFNotificationCenterObserver.ObserverKey.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t PHCFNotificationCenterObserver.key.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone30PHCFNotificationCenterObserverC0E3Key33_76B35319649FD0F00210BBE6B1B3C026LLCy_ACGMd);
    v1 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    *(v0 + 16) = v1;
  }

  return v1;
}

void *PHCFNotificationCenterObserver.init(notificationName:onNotify:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = 0;
  v4[3] = a3;
  v4[4] = a4;

  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = String._bridgeToObjectiveC()();

  v8 = PHCFNotificationCenterObserver.key.getter();
  CFNotificationCenterAddObserver(v5, &v8, @objc closure #1 in PHCFNotificationCenterObserver.init(notificationName:onNotify:), v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v4;
}

uint64_t PHCFNotificationCenterObserver.deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = PHCFNotificationCenterObserver.key.getter();
  CFNotificationCenterRemoveEveryObserver(v1, &v3);

  return v0;
}

uint64_t PHCFNotificationCenterObserver.__deallocating_deinit()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = PHCFNotificationCenterObserver.key.getter();
  CFNotificationCenterRemoveEveryObserver(v0, &v2);

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in PHCFNotificationCenterObserver.init(notificationName:onNotify:)(uint64_t result)
{
  if (result)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v1 = *(result + 24);

      v1(v2);
    }
  }

  return result;
}

NSString one-time initialization function for identifierRemoveAllRecents()
{
  result = String._bridgeToObjectiveC()();
  static UIMenuIdentifier.identifierRemoveAllRecents = result;
  return result;
}

NSString one-time initialization function for identifierAudio()
{
  result = String._bridgeToObjectiveC()();
  static UIMenuIdentifier.identifierAudio = result;
  return result;
}

uint64_t one-time initialization function for identifierAudioOutput()
{
  if (one-time initialization token for identifierAudio != -1)
  {
    swift_once();
  }

  v0 = static UIMenuIdentifier.identifierAudio;
  type metadata accessor for UIMenuIdentifier(0);
  v1 = v0;
  _print_unlocked<A, B>(_:_:)();

  v2._countAndFlagsBits = 0x756F6F696475612ELL;
  v2._object = 0xEC00000074757074;
  String.append(_:)(v2);
  v3 = String._bridgeToObjectiveC()();

  static UIMenuIdentifier.identifierAudioOutput = v3;
  return result;
}

NSString one-time initialization function for deleteAllRecents()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.deleteAllRecents = result;
  return result;
}

uint64_t *NSNotificationName.deleteAllRecents.unsafeMutableAddressor()
{
  if (one-time initialization token for deleteAllRecents != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.deleteAllRecents;
}

NSString one-time initialization function for newFaceTimeMenuAction()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.newFaceTimeMenuAction = result;
  return result;
}

uint64_t *NSNotificationName.newFaceTimeMenuAction.unsafeMutableAddressor()
{
  if (one-time initialization token for newFaceTimeMenuAction != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.newFaceTimeMenuAction;
}

void PhoneApplication.buildMenu(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _UIEnhancedMainMenuEnabled())
  {
    if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.iPadMenuBarForPhoneFaceTime);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device is iPad with _UIEnhancedMainMenuEnabled, now building menu bar for PhoneFaceTime", v9, 2u);
    }

    v20.receiver = v2;
    v20.super_class = PhoneApplication;
    objc_msgSendSuper2(&v20, "buildMenuWithBuilder:", a1);
    v10 = [v2 currentAppIsPhoneApp];
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    if (v10)
    {
      if (v13)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Current app is Phone, temporarily building same menu bar as FaceTime until rdar://141003425";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v11, v12, v15, v14, 2u);
      }
    }

    else if (v13)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Current app is FaceTime, building menu bar accordingly";
      goto LABEL_19;
    }

    [v2 buildFaceTimeMenuBarMenus:a1];
    return;
  }

  if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.iPadMenuBarForPhoneFaceTime);
  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v17, "Device is not iPad with _UIEnhancedMainMenuEnabled, so we're not building menu bar for PhoneFaceTime", v18, 2u);
  }
}

void PhoneApplication.buildFaceTimeMenuBarMenus(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSObject);
  v4 = [a1 system];
  v5 = [objc_opt_self() mainSystem];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    return;
  }

  v7 = [a1 menuForIdentifier:UIMenuClose];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 children];

    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenuElement);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;
      goto LABEL_13;
    }

    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:
  [v2 removeUnnecessaryTopLevelMenus:a1];
  [v2 removeUnnecessarySubMenusEdit:a1];
  [v2 removeUnnecessarySubMenusWindow:a1];
  [v2 modifyTopLevelMenuApplication:a1];
  [v2 modifyTopLevelMenuEdit:a1];
  [v2 modifyTopLevelMenuWindow:a1 :v12];
  [v2 addTopLevelMenuAudio:a1];
}

void *closure #1 in PhoneApplication.modifyTopLevelMenuEdit(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v5;
      }

      v9 = [v7 action];

      if (v9 && (static Selector.== infix(_:_:)() & 1) != 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

Class thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement])(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenuElement);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

void *closure #2 in PhoneApplication.modifyTopLevelMenuEdit(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v5;
      }

      v9 = [v7 action];

      if (v9 && (static Selector.== infix(_:_:)() & 1) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t closure #1 in PhoneApplication.modifyTopLevelMenuWindow(_:_:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100209A80;
  *(v3 + 32) = a2;
  v7 = v3;
  v4 = a2;

  specialized Array.append<A>(contentsOf:)(v5);
  return v7;
}

void PhoneApplication.addTopLevelMenuAudio(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100209A80;
  *(v6 + 32) = [v2 menuAudioOutput];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  if (one-time initialization token for identifierAudio != -1)
  {
    swift_once();
  }

  v10 = static UIMenuIdentifier.identifierAudio;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenu);
  v11 = v10;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v15.value.super.isa = 0;
  v15.is_nil = v10;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v15, 0, 0xFFFFFFFFFFFFFFFFLL, v6, v14).super.super.isa;
  [a1 insertSiblingMenu:isa afterMenuForIdentifier:UIMenuEdit];
}

void @objc PhoneApplication.buildMenu(with:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

UIMenu PhoneApplication.menuItemRemoveAllRecents.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = [v0 callCenter];
  [v3 hasCurrentCalls];

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UICommand);
  v4 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenu);
  if (one-time initialization token for identifierRemoveAllRecents != -1)
  {
    swift_once();
  }

  v5 = static UIMenuIdentifier.identifierRemoveAllRecents;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100209A80;
  *(preferredElementSize + 32) = v4;
  v7 = v5;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11.value.super.isa = 0;
  v11.is_nil = v5;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v8, 0, v11, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v10);
}

UIMenu PhoneApplication.menuAudioOutput.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenu);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v3 = String.init(localized:table:bundle:locale:comment:)();
  v5 = v4;
  if (one-time initialization token for identifierAudioOutput != -1)
  {
    swift_once();
  }

  v6 = static UIMenuIdentifier.identifierAudioOutput;
  v7 = v6;
  v8 = [v0 makeAudioOutputItems];
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenuElement);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10._countAndFlagsBits = v3;
  v10._object = v5;
  v13.value.super.isa = 0;
  v13.is_nil = v7;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v13, 33, 0xFFFFFFFFFFFFFFFFLL, v9, v12);
}

uint64_t PhoneApplication.makeAudioOutputItems()()
{
  v1 = v0;
  v2 = [v0 callCenter];
  v3 = [v2 routeController];

  v4 = [v3 routes];
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TURoute);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

    v12 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  v21 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v11 = [v1 makeAudioOutputItemWithRoute:v9];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v6 != v8);

  v12 = v21;
LABEL_12:
  if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.iPadMenuBarForPhoneFaceTime);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenuElement);
    v18 = Array.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Made items for audio output menu: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  return v12;
}

void *PhoneApplication.makeAudioOutputItem(route:)(void *a1)
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIAction);
  v3 = [a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = a1;
  v6 = v1;
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v7 setState:{objc_msgSend(v5, "isCurrentlyPicked", 0, 0, 0, partial apply for closure #1 in PhoneApplication.makeAudioOutputItem(route:), v4)}];
  return v7;
}

void closure #1 in PhoneApplication.makeAudioOutputItem(route:)(uint64_t a1, void *a2, void *a3)
{
  if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.iPadMenuBarForPhoneFaceTime);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = [v6 name];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "User has selected audio output: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v16 = [a3 callCenter];
  v17 = [v16 routeController];

  [v17 pickRoute:v6];
}

void closure #1 in PhoneApplication.removeAllRecents(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong callHistoryController], v1, v2))
  {
    [v2 deleteAllRecentCalls];
    if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.iPadMenuBarForPhoneFaceTime);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Completed removeAllRecents from Phone app", v6, 2u);
    }
  }

  else
  {
    if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.iPadMenuBarForPhoneFaceTime);
    v2 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, v8, "removeAllRecents failed for Phone because we couldn't get callHistoryController", v9, 2u);
    }
  }
}

uint64_t specialized PhoneApplication.currentAppIsPhoneApp.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x8000000100246CB0), (v4 & 1) == 0))
  {

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v3, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v5 = 0;
    return v5 & 1;
  }

  if (v7 == 0xD000000000000015 && 0x8000000100243260 == v8)
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t specialized PhoneApplication.modifyTopLevelMenuEdit(_:)(void *a1)
{
  v9 = specialized thunk for @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
  v10 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
  v8 = &block_descriptor_15;
  v2 = _Block_copy(&v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v2];
  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = specialized thunk for @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
  v10 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
  v8 = &block_descriptor_18;
  v4 = _Block_copy(&v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuFind fromChildrenBlock:v4];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id specialized PhoneApplication.modifyTopLevelMenuWindow(_:_:)(void *a1, void *a2)
{
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v5 = swift_allocObject();
    *(v5 + 16) = partial apply for closure #1 in PhoneApplication.modifyTopLevelMenuWindow(_:_:);
    *(v5 + 24) = v4;
    v10[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned [UIMenuElement]);
    v10[3] = &block_descriptor_12;
    v6 = _Block_copy(v10);
    v7 = a2;

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuMinimizeAndZoom fromChildrenBlock:v6];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {

    return [a1 removeMenuForIdentifier:UIMenuBringAllToFront];
  }

  return result;
}

void specialized PhoneApplication.newFaceTimeMenuAction(_:)()
{
  if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.iPadMenuBarForPhoneFaceTime);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "New FaceTime menu action triggered from iPad", v3, 2u);
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (one-time initialization token for newFaceTimeMenuAction != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:static NSNotificationName.newFaceTimeMenuAction object:0];
}

void specialized PhoneApplication.removeAllRecents(_:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 currentAppIsPhoneApp])
  {
    if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.iPadMenuBarForPhoneFaceTime);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Started removeAllRecents from Phone app", v12, 2u);
    }

    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in PhoneApplication.removeAllRecents(_:);
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_21;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (one-time initialization token for iPadMenuBarForPhoneFaceTime != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.iPadMenuBarForPhoneFaceTime);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Started removeAllRecents from FT app", v19, 2u);
    }

    v20 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for deleteAllRecents != -1)
    {
      swift_once();
    }

    [v20 postNotificationName:static NSNotificationName.deleteAllRecents object:0];

    v25 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v25, v21, "Finished removeAllRecents from FT app", v22, 2u);
    }

    v23 = v25;
  }
}

uint64_t sub_10019C950()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return outlined init with copy of Any(a2 + 32, a1 + 32);
}

uint64_t sub_10019C9A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10019C9F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

id VoicemailTabViewController.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore0cD5QueryOSgMd);
  __chkstk_darwin(v0 - 8);
  v27 = &v26 - v1;
  v2 = type metadata accessor for RecentsDataSourceConfiguration.CoalescingStrategy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for RecentsDataSourceConfiguration();
  v6 = *(v26 - 8);
  v7 = __chkstk_darwin(v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for LegacyMailboxService();
  type metadata accessor for ApplicationServices();
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  v14 = (*((swift_isaMask & *v13) + 0xB8))();

  swift_getObjectType();
  v15 = specialized LegacyMailboxService.__allocating_init(voicemailManager:)(v14, v12);
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 conversationManager];

  (*(v3 + 104))(v5, enum case for RecentsDataSourceConfiguration.CoalescingStrategy.recents(_:), v2);
  RecentsDataSourceConfiguration.init(conversationManager:conversations:callHistory:callHistoryUsingRecentsController:linksAndSuggestions:messages:coalescingStrategy:showsThirdParty:)();
  v18 = v26;
  (*(v6 + 16))(v9, v11, v26);
  v19 = type metadata accessor for MessageStoreQuery();
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  v20 = objc_allocWithZone(type metadata accessor for RecentsItemDataSource());
  RecentsItemDataSource.init(configuration:messageQuery:)();
  v31 = v12;
  v32 = lazy protocol witness table accessor for type LegacyMailboxService and conformance LegacyMailboxService();
  v30 = v15;
  v21 = objc_allocWithZone(type metadata accessor for VoicemailListViewController());
  v22 = VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)();
  (*(v6 + 8))(v11, v18);
  v23 = v28;
  *&v28[OBJC_IVAR___VoicemailTabViewController_listViewController] = v22;
  v24 = type metadata accessor for VoicemailTabViewController();
  v29.receiver = v23;
  v29.super_class = v24;
  return objc_msgSendSuper2(&v29, "init");
}

uint64_t VoicemailTabViewController.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for MainActor();
  v11 = v1;
  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = v11;
  (*(v4 + 32))(&v14[v13], v6, v3);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:), v14);
}

uint64_t closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return (_swift_task_switch)(closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:), v7, v6);
}

uint64_t closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:)()
{
  v4 = (&async function pointer to dispatch thunk of VoicemailListViewController.presentVoicemailDetails(uuid:) + async function pointer to dispatch thunk of VoicemailListViewController.presentVoicemailDetails(uuid:));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:);
  v2 = *(v0 + 24);

  return v4(v2);
}

{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return (_swift_task_switch)(closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id VoicemailTabViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailTabViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t lazy protocol witness table accessor for type LegacyMailboxService and conformance LegacyMailboxService()
{
  result = lazy protocol witness table cache variable for type LegacyMailboxService and conformance LegacyMailboxService;
  if (!lazy protocol witness table cache variable for type LegacyMailboxService and conformance LegacyMailboxService)
  {
    type metadata accessor for LegacyMailboxService();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LegacyMailboxService and conformance LegacyMailboxService);
  }

  return result;
}

uint64_t partial apply for closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in VoicemailTabViewController.presentVoicemailDetails(uuid:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t PHRecentsController.queryCommTrustBlocked(for:completion:)(unint64_t a1, void (*a2)(void), void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = [objc_allocWithZone(TUFeatureFlags) init];
  v10 = [v9 betterBlockingEnabled];

  if (v10)
  {
    v28 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = _swiftEmptyArrayStorage;
      if (!i)
      {
        break;
      }

      v24 = v8;
      v25 = a2;
      v13 = 0;
      a2 = (a1 & 0xC000000000000001);
      v8 = (a1 & 0xFFFFFFFFFFFFFF8);
      v26 = a3;
      v27 = _swiftEmptyArrayStorage >> 62;
      while (1)
      {
        if (a2)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v16 = *(a1 + 8 * v13 + 32);
        }

        a3 = v16;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v18 = [v16 remoteParticipantHandles];
        if (v18)
        {
          v14 = v18;
          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
          lazy protocol witness table accessor for type CHHandle and conformance NSObject();
          v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          a3 = v14;
        }

        else if (v27 && _CocoaArrayWrapper.endIndex.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8CHHandleC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
          v15 = v19;
        }

        else
        {
          v15 = &_swiftEmptySetSingleton;
        }

        specialized Array.append<A>(contentsOf:)(v15);
        ++v13;
        if (v17 == i)
        {
          v12 = v28;
          a2 = v25;
          a3 = v26;
          v8 = v24;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_19:
    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_21;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v12;
      v21[5] = a2;
      v21[6] = a3;

      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:), v21);

      return outlined destroy of (NSAttributedStringKey, Any)(v8, &_sScPSgMd);
    }
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8CHHandleC_So8NSNumberCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  a2();
}

uint64_t closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleV3key_Sb5valuetMd);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for Handle.Kind();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();

  return (_swift_task_switch)(closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:), 0, 0);
}

uint64_t closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)()
{

  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8CHHandleC_SayAEGTt0g5Tf4g_n(v1);

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20LiveCommunicationKit6HandleV_SaySo8CHHandleCGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v4 = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v5 = v0[3];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);

    v6 = 0;
  }

  v12 = v0[17];
  v36 = v7;
  v13 = (v7 + 64) >> 6;
  v38 = enum case for Handle.Kind.phoneNumber(_:);
  v43 = (v12 + 104);
  v42 = enum case for Handle.Kind.generic(_:);
  v37 = enum case for Handle.Kind.emailAddress(_:);
  v40 = (v12 + 8);
  v41 = (v12 + 16);
  v39 = (v0[21] + 8);
  v45 = v2;
  v46 = v5;
  v44 = v13;
  v0[23] = v3;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v6;
    v15 = v8;
    v16 = v6;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_28:
      outlined consume of Set<CHHandle>.Iterator._Variant();

      type metadata accessor for BlockList();
      v0[24] = static BlockList.shared.getter();

      v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC20LiveCommunicationKit6HandleV_SD4KeysVyAFSaySo8CHHandleCG_GTt0g5(v32);
      v0[25] = v33;
      v34 = swift_task_alloc();
      v0[26] = v34;
      *v34 = v0;
      v34[1] = closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:);
      v4 = v33;

      return BlockList.areHandlesBlocked(_:)(v4);
    }

    while (1)
    {
      v47 = v3;
      v20 = [v18 type];
      v21 = v42;
      if (v20 >= 2)
      {
        v21 = v38;
        if (v20 != 2)
        {
          v21 = v37;
          if (v20 != 3)
          {
            v21 = v38;
          }
        }
      }

      v22 = v0[18];
      v23 = v0[19];
      v24 = v0[16];
      (*v43)(v23, v21, v24);
      (*v41)(v22, v23, v24);
      v25 = [v18 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      Handle.init(type:value:displayName:)();
      (*v40)(v23, v24);
      if (*(v47 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v0[22]), (v27 & 1) != 0))
      {
        v48 = *(*(v47 + 56) + 8 * v26);
      }

      else
      {
        v48 = _swiftEmptyArrayStorage;
      }

      v13 = v44;
      v28 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v29 = v0[22];
      v30 = v0[20];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v29, isUniquelyReferenced_nonNull_native);

      v3 = v47;
      v4 = (*v39)(v29, v30);
      v6 = v16;
      v5 = v46;
      v8 = v17;
      v2 = v45;
      v0[23] = v47;
      if ((v45 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = __CocoaSet.Iterator.next()();
      if (v19)
      {
        v0[9] = v19;
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
        swift_dynamicCast();
        v18 = v0[8];
        v16 = v6;
        v17 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_28;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return BlockList.areHandlesBlocked(_:)(v4);
}

{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[21];
  v26 = v0[13];
  v0[7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8CHHandleC_So8NSNumberCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v27 = v3;

  v10 = 0;
  v23 = v1;
  while (v7)
  {
LABEL_11:
    v13 = v0[14];
    v12 = v0[15];
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    (*(v27 + 16))(v12, *(v1 + 48) + *(v27 + 72) * v14, v0[20]);
    *(v12 + *(v26 + 48)) = *(*(v1 + 56) + v14);
    outlined init with copy of Binding<EditMode>?(v12, v13, &_s20LiveCommunicationKit6HandleV3key_Sb5valuetMd);
    if (*(v2 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v0[14]), (v16 & 1) != 0))
    {
      v17 = v0[14];
      v24 = v0[20];
      v25 = v0[15];
      v18 = *(*(v2 + 56) + 8 * v15);
      v19 = *(v0[21] + 8);

      v19(v17, v24);
      v20 = swift_task_alloc();
      *(v20 + 16) = v0 + 7;
      *(v20 + 24) = v25;
      specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #2 in closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:), v20, v18);
      v1 = v23;
    }

    else
    {
      (*(v0[21] + 8))(v0[14], v0[20]);
    }

    v7 &= v7 - 1;
    result = outlined destroy of (NSAttributedStringKey, Any)(v0[15], &_s20LiveCommunicationKit6HandleV3key_Sb5valuetMd);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  v21 = v0[11];

  v21(v0[7]);

  v22 = v0[1];

  return v22();
}

{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch blocked status: %@", v4, 0xCu);
    outlined destroy of (NSAttributedStringKey, Any)(v5, &_sSo8NSObjectCSgMd);
  }

  v7 = *(v0 + 88);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8CHHandleC_So8NSNumberCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v7();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {

    v4 = closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:);
  }

  else
  {
    v4 = closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:);
  }

  return (_swift_task_switch)(v4, 0, 0);
}

void closure #1 in closure #2 in closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)(void **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(NSNumber) initWithBool:*(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleV3key_Sb5valuetMd) + 48))];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    if ((*a2 & 0xC000000000000001) == 0)
    {
LABEL_8:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v4, isUniquelyReferenced_nonNull_native);
      *a2 = v11;
      return;
    }

    if (v7 < 0)
    {
      v8 = *a2;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v9, 1))
    {
      *a2 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8CHHandleC_So8NSNumberCTt1g5(v8, v9 + 1);
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of Binding<EditMode>?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  type metadata accessor for NSMutableArray(0, lazy cache variable for type metadata for NSNumber);
  lazy protocol witness table accessor for type CHHandle and conformance NSObject();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8CHHandleC_So8NSNumberCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8CHHandleCSo8NSNumberCGMd);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for NSMutableArray(0, lazy cache variable for type metadata for NSNumber);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t partial apply for closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)(a1, v4, v5, v6, v7, v8);
}

void specialized PHRecentsController.queryCommTrustBlocked(for:completion:)(unint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = objc_allocWithZone(TUFeatureFlags);
  _Block_copy(a2);
  v9 = [v8 init];
  v10 = [v9 betterBlockingEnabled];

  if (v10)
  {
    v28 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = _swiftEmptyArrayStorage;
      if (!i)
      {
        break;
      }

      v24 = v6;
      v25 = a2;
      v26 = v7;
      v13 = 0;
      a2 = (a1 & 0xC000000000000001);
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      isa = _swiftEmptyArrayStorage >> 62;
      while (1)
      {
        if (a2)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v16 = *(a1 + 8 * v13 + 32);
        }

        v15 = v16;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v18 = [v16 remoteParticipantHandles];
        if (v18)
        {
          v14 = v18;
          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
          lazy protocol witness table accessor for type CHHandle and conformance NSObject();
          v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v15 = v14;
        }

        else if (isa && _CocoaArrayWrapper.endIndex.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8CHHandleC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
          v6 = v19;
        }

        else
        {
          v6 = &_swiftEmptySetSingleton;
        }

        specialized Array.append<A>(contentsOf:)(v6);
        ++v13;
        if (v17 == i)
        {
          v12 = v28;
          a2 = v25;
          v7 = v26;
          v6 = v24;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_19:
    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_21;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v12;
      v21[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary) -> ();
      v21[6] = v7;

      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)partial apply, v21);

      outlined destroy of (NSAttributedStringKey, Any)(v6, &_sScPSgMd);

      return;
    }
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8CHHandleC_So8NSNumberCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  type metadata accessor for NSMutableArray(0, lazy cache variable for type metadata for NSNumber);
  lazy protocol witness table accessor for type CHHandle and conformance NSObject();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2[2](a2, isa);

  v22 = isa;
}

uint64_t sub_10019F61C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #2 in PHRecentsController.queryCommTrustBlocked(for:completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10019F76C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_17(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5(a1, v4);
}

uint64_t RecentCallIconView.init(iconType:)(uint64_t a1)
{
  v2 = [objc_opt_self() tertiaryLabelColor];
  Color.init(_:)();
  return a1;
}

uint64_t RecentCallIconView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  result = RecentCallIconView.IconType.symbolDescription.getter(a1, v6);
  if (*(&v6[0] + 1))
  {
    v8 = v6[0];
    v9 = v6[1];
    v10 = v7;
    specialized Image.init(symbolDescription:)(&v8);
    v11 = v8;
    outlined destroy of String(&v11);
    v12 = *(&v9 + 1);
    outlined destroy of UIFontTextStyle(&v12);
    v13 = v10;
    outlined destroy of (NSAttributedStringKey, Any)(&v13, &_sSo21UIContentSizeCategoryaSgMd);
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
LABEL_4:
    v4 = AnyView.init<A>(_:)();
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewV11MobilePhone014RecentCallIconF0V29HorizontallyCenteredAndPadded33_115F9B07AC9F57324AE75E61908DD9A3LLVGMd) + 36);
    *(a2 + v5) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
    result = swift_storeEnumTagMultiPayload();
    *a2 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t RecentCallIconView.IconType.symbolDescription.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result > 1u)
  {
    if (result == 2)
    {
      v10 = &type metadata for SymbolDescribers.Recents;
      v11 = &protocol witness table for SymbolDescribers.Recents;
      v3 = 1;
    }

    else
    {
      v10 = &type metadata for SymbolDescribers.Recents;
      v11 = &protocol witness table for SymbolDescribers.Recents;
      if (result == 3)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    LOBYTE(v9[0]) = v3;
    goto LABEL_11;
  }

  if (result)
  {
    v10 = &type metadata for SymbolDescribers.Recents;
    v11 = &protocol witness table for SymbolDescribers.Recents;
    LOBYTE(v9[0]) = 0;
LABEL_11:
    __swift_project_boxed_opaque_existential_0(v9, &type metadata for SymbolDescribers.Recents);
    protocol witness for SymbolDescriber.description.getter in conformance SymbolDescribers.Recents(v12);
    v4 = v12[0];
    v5 = v12[1];
    v6 = v12[2];
    v7 = v12[3];
    v8 = v12[4];
    result = __swift_destroy_boxed_opaque_existential_0(v9);
    goto LABEL_12;
  }

  v4 = result;
  v5 = result;
  v6 = result;
  v7 = result;
  v8 = result;
LABEL_12:
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return result;
}

uint64_t closure #1 in RecentCallIconView.HorizontallyCenteredAndPadded.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy11MobilePhone014RecentCallIconC0V29HorizontallyCenteredAndPadded33_115F9B07AC9F57324AE75E61908DD9A3LLVGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *(v5 + 16);
  v8(&v12 - v6, a1, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA21_ViewModifier_ContentVy11MobilePhone014RecentCallIconD0V29HorizontallyCenteredAndPadded33_115F9B07AC9F57324AE75E61908DD9A3LLVGACtMd);
  v8((a2 + *(v9 + 48)), v7, v4);
  v10 = a2 + *(v9 + 64);
  *v10 = 0;
  *(v10 + 8) = 1;
  return (*(v5 + 8))(v7, v4);
}

double protocol witness for ViewModifier.body(content:) in conformance RecentCallIconView.HorizontallyCenteredAndPadded@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContentSizeCategory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA01_D16Modifier_ContentVy11MobilePhone014RecentCallIconD0V29HorizontallyCenteredAndPadded33_115F9B07AC9F57324AE75E61908DD9A3LLVGAKtGGMd);
  closure #1 in RecentCallIconView.HorizontallyCenteredAndPadded.body(content:)(a1, a2 + *(v8 + 44));
  specialized Environment.wrappedValue.getter(v7);
  specialized static RecentCallIconView.WidthCalculator.idealWidth(for:)(v7);
  (*(v5 + 8))(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA01_g9Modifier_D0Vy11MobilePhone014RecentCallIconG0V29HorizontallyCenteredAndPadded33_115F9B07AC9F57324AE75E61908DD9A3LLVGAItGGAA12_FrameLayoutVGMd) + 36));
  v10 = v12[1];
  *v9 = v12[0];
  v9[1] = v10;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t one-time initialization function for lastMeasuredContentSizeCategory()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19ContentSizeCategoryOSgMd);
  __swift_allocate_value_buffer(v0, static RecentCallIconView.WidthCalculator.lastMeasuredContentSizeCategory);
  v1 = __swift_project_value_buffer(v0, static RecentCallIconView.WidthCalculator.lastMeasuredContentSizeCategory);
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

unint64_t lazy protocol witness table accessor for type RecentCallIconView.IconType and conformance RecentCallIconView.IconType()
{
  result = lazy protocol witness table cache variable for type RecentCallIconView.IconType and conformance RecentCallIconView.IconType;
  if (!lazy protocol witness table cache variable for type RecentCallIconView.IconType and conformance RecentCallIconView.IconType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentCallIconView.IconType and conformance RecentCallIconView.IconType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecentCallIconView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RecentCallIconView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, RecentCallIconView.HorizontallyCenteredAndPadded> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, RecentCallIconView.HorizontallyCenteredAndPadded> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, RecentCallIconView.HorizontallyCenteredAndPadded> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewV11MobilePhone014RecentCallIconF0V29HorizontallyCenteredAndPadded33_115F9B07AC9F57324AE75E61908DD9A3LLVGMd);
    lazy protocol witness table accessor for type RecentCallIconView.HorizontallyCenteredAndPadded and conformance RecentCallIconView.HorizontallyCenteredAndPadded(&lazy protocol witness table cache variable for type RecentCallIconView.HorizontallyCenteredAndPadded and conformance RecentCallIconView.HorizontallyCenteredAndPadded, type metadata accessor for RecentCallIconView.HorizontallyCenteredAndPadded);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, RecentCallIconView.HorizontallyCenteredAndPadded> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for RecentCallIconView.HorizontallyCenteredAndPadded()
{
  result = type metadata singleton initialization cache for RecentCallIconView.HorizontallyCenteredAndPadded;
  if (!type metadata singleton initialization cache for RecentCallIconView.HorizontallyCenteredAndPadded)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A0164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001A01F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for RecentCallIconView.HorizontallyCenteredAndPadded()
{
  type metadata accessor for Environment<ContentSizeCategory>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double specialized static RecentCallIconView.WidthCalculator.idealWidth(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19ContentSizeCategoryOSg_ADtMd);
  __chkstk_darwin(v6);
  v8 = (&v58 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19ContentSizeCategoryOSgMd);
  v10 = __chkstk_darwin(v9);
  v66 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v58 - v13;
  __chkstk_darwin(v12);
  v16 = &v58 - v15;
  v17 = *(v3 + 16);
  v67 = a1;
  v65 = v3 + 16;
  v63 = v17;
  v17(&v58 - v15, a1, v2);
  v18 = *(v3 + 56);
  v64 = v3 + 56;
  v62 = v18;
  v18(v16, 0, 1, v2);
  if (one-time initialization token for lastMeasuredContentSizeCategory != -1)
  {
LABEL_59:
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, static RecentCallIconView.WidthCalculator.lastMeasuredContentSizeCategory);
  swift_beginAccess();
  v6 = *(v6 + 48);
  outlined init with copy of ContentSizeCategory?(v16, v8);
  v61 = v19;
  outlined init with copy of ContentSizeCategory?(v19, v8 + v6);
  v20 = *(v3 + 48);
  if (v20(v8, 1, v2) == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v16, &_s7SwiftUI19ContentSizeCategoryOSgMd);
    if (v20(v8 + v6, 1, v2) == 1)
    {
      outlined destroy of (NSAttributedStringKey, Any)(v8, &_s7SwiftUI19ContentSizeCategoryOSgMd);
      return *&static RecentCallIconView.WidthCalculator.lastMeasuredMaxIconWidth;
    }
  }

  else
  {
    outlined init with copy of ContentSizeCategory?(v8, v14);
    if (v20(v8 + v6, 1, v2) != 1)
    {
      (*(v3 + 32))(v5, v8 + v6, v2);
      lazy protocol witness table accessor for type RecentCallIconView.HorizontallyCenteredAndPadded and conformance RecentCallIconView.HorizontallyCenteredAndPadded(&lazy protocol witness table cache variable for type ContentSizeCategory and conformance ContentSizeCategory, &type metadata accessor for ContentSizeCategory);
      v6 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *(v3 + 8);
      v53(v5, v2);
      outlined destroy of (NSAttributedStringKey, Any)(v16, &_s7SwiftUI19ContentSizeCategoryOSgMd);
      v60 = v2;
      v53(v14, v2);
      outlined destroy of (NSAttributedStringKey, Any)(v8, &_s7SwiftUI19ContentSizeCategoryOSgMd);
      if (v6)
      {
        return *&static RecentCallIconView.WidthCalculator.lastMeasuredMaxIconWidth;
      }

      goto LABEL_8;
    }

    outlined destroy of (NSAttributedStringKey, Any)(v16, &_s7SwiftUI19ContentSizeCategoryOSgMd);
    (*(v3 + 8))(v14, v2);
  }

  v60 = v2;
  outlined destroy of (NSAttributedStringKey, Any)(v8, &_s7SwiftUI19ContentSizeCategoryOSg_ADtMd);
LABEL_8:
  v21 = 0;
  v5 = _swiftEmptyArrayStorage;
  v9 = &outlined read-only object #0 of static RecentCallIconView.WidthCalculator.idealWidth(for:);
  v16 = &protocol witness table for SymbolDescribers.Recents;
  v2 = 3;
  do
  {
    v25 = *(&outlined read-only object #0 of static RecentCallIconView.WidthCalculator.idealWidth(for:) + v21 + 32);
    if (v25 <= 1)
    {
      if (!*(&outlined read-only object #0 of static RecentCallIconView.WidthCalculator.idealWidth(for:) + v21 + 32))
      {
        goto LABEL_10;
      }

      v73 = &type metadata for SymbolDescribers.Recents;
      v74 = &protocol witness table for SymbolDescribers.Recents;
      LOBYTE(v72[0]) = 0;
    }

    else if (v25 == 2)
    {
      v73 = &type metadata for SymbolDescribers.Recents;
      v74 = &protocol witness table for SymbolDescribers.Recents;
      LOBYTE(v72[0]) = 1;
    }

    else
    {
      v73 = &type metadata for SymbolDescribers.Recents;
      v74 = &protocol witness table for SymbolDescribers.Recents;
      if (v25 == 3)
      {
        LOBYTE(v72[0]) = 2;
      }

      else
      {
        LOBYTE(v72[0]) = 3;
      }
    }

    __swift_project_boxed_opaque_existential_0(v72, &type metadata for SymbolDescribers.Recents);
    protocol witness for SymbolDescriber.description.getter in conformance SymbolDescribers.Recents(v75);
    __swift_destroy_boxed_opaque_existential_0(v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    }

    v27 = *(v5 + 2);
    v26 = *(v5 + 3);
    v6 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v5);
    }

    *(v5 + 2) = v6;
    v22 = &v5[40 * v27];
    v23 = v75[0];
    v24 = v75[1];
    *(v22 + 8) = v76;
    *(v22 + 2) = v23;
    *(v22 + 3) = v24;
LABEL_10:
    ++v21;
  }

  while (v21 != 5);
  v14 = _swiftEmptyArrayStorage;
  v72[0] = _swiftEmptyArrayStorage;
  v28 = *(v5 + 2);
  if (!v28)
  {
    goto LABEL_39;
  }

  v29 = 0;
  v30 = v5 + 64;
  v58 = (v28 - 1);
  v68 = v28;
  v59 = v5 + 64;
  while (2)
  {
    v3 = &v30[40 * v29];
    v8 = v29;
    v69 = v14;
    while (2)
    {
      if (v8 >= *(v5 + 2))
      {
        __break(1u);
        goto LABEL_57;
      }

      v31 = *(v3 - 32);
      v33 = *(v3 - 16);
      v32 = *(v3 - 8);
      v16 = *v3;
      v71 = v32;
      if (v16)
      {
        v70 = v31;
        v34 = objc_opt_self();
        v35 = v16;

        v36 = v32;
        v37 = [v34 _preferredFontForTextStyle:v36 maximumContentSizeCategory:v35];
        if (!v37)
        {
          v37 = [v34 preferredFontForTextStyle:v36];
        }

        v38 = objc_opt_self();
        [v37 pointSize];
        v40 = v39;
        v41 = UIFont.weight.getter();
        v2 = [v38 _configurationWithPointSize:UIImageSymbolWeightForFontWeight(v41) weight:v33 scale:v40];

        v28 = v68;
      }

      else
      {
        v42 = v32;
        v43 = objc_opt_self();

        v2 = [v43 configurationWithTextStyle:v42 scale:v33];
      }

      v9 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() systemImageNamed:v9];

      if (!v6)
      {

        goto LABEL_27;
      }

      v44 = [v6 imageWithSymbolConfiguration:v2];

      v9 = [v44 imageWithRenderingMode:2];

      if (!v9)
      {
LABEL_27:
        v8 = (v8 + 1);
        v3 += 40;
        v14 = v69;
        if (v28 == v8)
        {
          goto LABEL_39;
        }

        continue;
      }

      break;
    }

    v6 = v72;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v29 = (v8 + 1);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = v72[0];
    v30 = v59;
    if (v58 != v8)
    {
      continue;
    }

    break;
  }

LABEL_39:

  if (v14 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_61;
    }

LABEL_41:
    v9 = 0;
    v3 = v14 & 0xC000000000000001;
    v45 = 0.0;
    v8 = &selRef_setStartedLoadingOlderCalls_;
    while (1)
    {
      if (v3)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v46 = *(v14 + 8 * v9 + 32);
      }

      v47 = v46;
      v5 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v46 size];
      v49 = v48;
      [v47 size];
      v51 = v50;

      if (v49 > v51)
      {
        v52 = v49;
      }

      else
      {
        v52 = v51;
      }

      if (v45 <= v52)
      {
        v45 = v52;
      }

      ++v9;
      if (v5 == v6)
      {
        goto LABEL_62;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v6 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    goto LABEL_41;
  }

LABEL_61:
  v45 = 0.0;
LABEL_62:

  static RecentCallIconView.WidthCalculator.lastMeasuredMaxIconWidth = *&v45;
  v54 = v66;
  v55 = v60;
  v63(v66, v67, v60);
  v62(v54, 0, 1, v55);
  v56 = v61;
  swift_beginAccess();
  outlined assign with take of ContentSizeCategory?(v54, v56);
  swift_endAccess();
  return *&static RecentCallIconView.WidthCalculator.lastMeasuredMaxIconWidth;
}

uint64_t outlined init with copy of ContentSizeCategory?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19ContentSizeCategoryOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ContentSizeCategory?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19ContentSizeCategoryOSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RecentCallIconView.HorizontallyCenteredAndPadded and conformance RecentCallIconView.HorizontallyCenteredAndPadded(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, _ViewModifier_Content<RecentCallIconView.HorizontallyCenteredAndPadded>, Spacer)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, _ViewModifier_Content<RecentCallIconView.HorizontallyCenteredAndPadded>, Spacer)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, _ViewModifier_Content<RecentCallIconView.HorizontallyCenteredAndPadded>, Spacer)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA01_g9Modifier_D0Vy11MobilePhone014RecentCallIconG0V29HorizontallyCenteredAndPadded33_115F9B07AC9F57324AE75E61908DD9A3LLVGAItGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, _ViewModifier_Content<RecentCallIconView.HorizontallyCenteredAndPadded>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA01_E16Modifier_ContentVy11MobilePhone014RecentCallIconE0V29HorizontallyCenteredAndPadded33_115F9B07AC9F57324AE75E61908DD9A3LLVGAGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, _ViewModifier_Content<RecentCallIconView.HorizontallyCenteredAndPadded>, Spacer)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id PHCarPlayRecentsTableViewCell.contacts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PHCarPlayRecentsTableViewCell_contacts;
  swift_beginAccess();
  *&v1[v3] = a1;

  return [v1 setNeedsUpdateConfiguration];
}

id PHCarPlayRecentsTableViewCell.recentCall.getter()
{
  v1 = OBJC_IVAR___PHCarPlayRecentsTableViewCell_recentCall;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id PHCarPlayRecentsTableViewCell.recentsItem.getter()
{
  v1 = OBJC_IVAR___PHCarPlayRecentsTableViewCell_recentsItem;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void @objc PHCarPlayRecentsTableViewCell.recentCall.setter(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *&a1[v6];
  *&a1[v6] = a3;
  v8 = a3;
  v9 = a1;

  [v9 setNeedsUpdateConfiguration];
}

void PHCarPlayRecentsTableViewCell.recentCall.setter(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = a1;

  [v2 setNeedsUpdateConfiguration];
}

uint64_t PHCarPlayRecentsTableViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  __chkstk_darwin(v5 - 8);
  v21 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarG13RepresentableVAA12_FrameLayoutVGSg_AA6VStackVyAGyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentW0VGSg_AEyAGyAIyAIyAIyAA5ImageVAVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeG0VSgAIyAIyAYA16_GA_GSgtGGtGGAA6SpacerVA25_tGGAA05EmptyG0VGMd);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
  {
    v11 = 1;
  }

  else
  {
    v11 = UICellConfigurationState.isHighlighted.getter();
  }

  v12 = __chkstk_darwin(v11);
  *(&v20 - 4) = v1;
  *(&v20 - 24) = v12 & 1;
  *(&v20 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarE13RepresentableVAA12_FrameLayoutVGSg_AA6VStackVyAEyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentU0VGSg_ACyAEyAGyAGyAGyAA5ImageVATyAA4FontVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyAWA14_GAYGSgtGGtGGAA6SpacerVA23_tGGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<CarPlayAvatarViewRepresentable, _FrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, AccessibilityAttachmentModifier>?, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect>?, BadgeView?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect>, AccessibilityAttachmentModifier>?)>>)>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarE13RepresentableVAA12_FrameLayoutVGSg_AA6VStackVyAEyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentU0VGSg_ACyAEyAGyAGyAGyAA5ImageVATyAA4FontVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyAWA14_GAYGSgtGGtGGAA6SpacerVA23_tGGMd);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v25[3] = v7;
  v25[4] = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type UIHostingConfiguration<HStack<TupleView<(ModifiedContent<CarPlayAvatarViewRepresentable, _FrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, AccessibilityAttachmentModifier>?, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect>?, BadgeView?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect>, AccessibilityAttachmentModifier>?)>>)>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect>, AccessibilityAttachmentModifier>?)>>, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarG13RepresentableVAA12_FrameLayoutVGSg_AA6VStackVyAGyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentW0VGSg_AEyAGyAIyAIyAIyAA5ImageVAVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeG0VSgAIyAIyAYA16_GA_GSgtGGtGGAA6SpacerVA25_tGGAA05EmptyG0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v25);
  UIHostingConfiguration.margins(_:_:)();
  (*(v8 + 8))(v10, v7);
  UITableViewCell.contentConfiguration.setter();
  v13 = v22;
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v14 = &selRef_dynamicCarFocusedColor;
  }

  else
  {
    v14 = &selRef_clearColor;
  }

  v15 = [objc_opt_self() *v14];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  v17 = v23;
  v16 = v24;
  v18 = v21;
  (*(v23 + 32))(v21, v13, v24);
  (*(v17 + 56))(v18, 0, 1, v16);
  return UITableViewCell.backgroundConfiguration.setter();
}

uint64_t closure #1 in PHCarPlayRecentsTableViewCell.updateConfiguration(using:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4020000000000000;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVy11MobilePhone013CarPlayAvatarD13RepresentableVAA06_FrameG0VGSg_AA6VStackVyAIyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentW0VGSg_AA0F0VyAIyAKyAKyAKyAA5ImageVAXyAA4FontVSgGGAA016_ForegroundStyleW0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeD0VSgAKyAKyA_A20_GA1_GSgtGGtGGAA6SpacerVA29_tGGMd);
  return closure #1 in closure #1 in PHCarPlayRecentsTableViewCell.updateConfiguration(using:)(a1, a2, a3, (a4 + *(v8 + 44)));
}

uint64_t closure #1 in closure #1 in PHCarPlayRecentsTableViewCell.updateConfiguration(using:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v97 = a3;
  v84 = a4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGMd);
  __chkstk_darwin(v83);
  v7 = v76 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v82 = v76 - v10;
  v11 = type metadata accessor for Date();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = __chkstk_darwin(v11);
  v81 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VGSg_AA6HStackVyAEyAGyAGyAGyAA5ImageVAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyANA7_GAPGSgtGGtGGMd);
  v22 = __chkstk_darwin(v21 - 8);
  v93 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v76 - v24;
  v26 = [a1 contacts];
  if (v26)
  {
    v27 = v26;
    v92 = a1;
    v28 = a2;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v29;
    if (v29 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      v30 = v29;
    }

    else
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v97;
    a2 = v28;
    if (v31)
    {
      v91 = v30;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v89 = v101;
      v90 = v100;
      v87 = v103;
      v88 = v102;
      v86 = v104;
      v85 = v105;
    }

    else
    {

      v90 = 0;
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      v86 = 0;
      v85 = 0;
    }

    a1 = v92;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    v86 = 0;
    v85 = 0;
    v32 = v97;
  }

  *v25 = static HorizontalAlignment.leading.getter();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentO0VGSg_AA6HStackVyAIyAKyAKyAKyAA5ImageVAOyAA4FontVSgGGAA016_ForegroundStyleO0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeD0VSgAKyAKyARA11_GATGSgtGGtGGMd) + 44);
  v92 = v25;
  closure #1 in closure #1 in closure #1 in PHCarPlayRecentsTableViewCell.updateConfiguration(using:)(a1, a2 & 1, v32, &v25[v33]);
  v34 = [a1 recentsItem];
  v35 = [v34 date];

  if (v35)
  {
    v77 = v20;
    v78 = v9;
    v79 = v8;
    v80 = v18;
    v36 = v81;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v95 + 32))(v94, v36, v96);
    v98 = specialized static CarPlayUtilities.localizedDateString(for:)();
    v99 = v37;
    lazy protocol witness table accessor for type String and conformance String();
    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    static Font.caption.getter();
    v43 = Text.font(_:)();
    v81 = v44;
    v46 = v45;
    v76[1] = v47;

    outlined consume of Text.Storage(v38, v40, v42 & 1);

    v48 = UICellConfigurationState.isFocused.getter();
    v76[0] = v7;
    if (v48 & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
    {
      v49 = [objc_opt_self() dynamicCarFocusedPrimaryLabelColor];
      v50 = Color.init(uiColor:)();
    }

    else
    {
      v50 = static Color.secondary.getter();
    }

    v51 = v92;
    v98 = v50;
    v52 = v43;
    v53 = v81;
    v54 = Text.foregroundStyle<A>(_:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    outlined consume of Text.Storage(v52, v53, v46 & 1);

    KeyPath = swift_getKeyPath();
    v62 = v76[0];
    UICellConfigurationState.secondaryBlendMode.getter(v76[0] + *(v83 + 36));
    *v62 = v54;
    *(v62 + 8) = v56;
    *(v62 + 16) = v58 & 1;
    *(v62 + 24) = v60;
    *(v62 + 32) = KeyPath;
    *(v62 + 40) = 1;
    *(v62 + 48) = 0;
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    v63 = v82;
    View.accessibilityIdentifier(_:)();
    outlined destroy of (NSAttributedStringKey, Any)(v62, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGMd);
    (*(v95 + 8))(v94, v96);
    v20 = v77;
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v63, v77, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
    v64 = 0;
    v18 = v80;
    v8 = v79;
    v9 = v78;
  }

  else
  {
    v64 = 1;
    v51 = v92;
  }

  (*(v9 + 56))(v20, v64, 1, v8);
  v65 = v93;
  outlined init with copy of Binding<EditMode>?(v51, v93, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VGSg_AA6HStackVyAEyAGyAGyAGyAA5ImageVAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyANA7_GAPGSgtGGtGGMd);
  outlined init with copy of Binding<EditMode>?(v20, v18, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  v66 = v20;
  v67 = v84;
  v69 = v89;
  v68 = v90;
  *v84 = v91;
  v67[1] = v68;
  v71 = v87;
  v70 = v88;
  v67[2] = v69;
  v67[3] = v70;
  v72 = v86;
  v67[4] = v71;
  v67[5] = v72;
  v67[6] = v85;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy11MobilePhone30CarPlayAvatarViewRepresentableVAA12_FrameLayoutVGSg_AA6VStackVyAA05TupleJ0VyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentT0VGSg_AA6HStackVyANyACyACyACyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeJ0VSgACyACyAUA14_GAWGSgtGGtGGAA6SpacerVA23_tMd);
  outlined init with copy of Binding<EditMode>?(v65, v67 + v73[12], &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VGSg_AA6HStackVyAEyAGyAGyAGyAA5ImageVAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyANA7_GAPGSgtGGtGGMd);
  v74 = v67 + v73[16];
  *v74 = 0x4028000000000000;
  v74[8] = 0;
  outlined init with copy of Binding<EditMode>?(v18, v67 + v73[20], &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);

  outlined destroy of (NSAttributedStringKey, Any)(v66, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v51, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VGSg_AA6HStackVyAEyAGyAGyAGyAA5ImageVAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyANA7_GAPGSgtGGtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v18, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v65, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentL0VGSg_AA6HStackVyAEyAGyAGyAGyAA5ImageVAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyANA7_GAPGSgtGGtGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in PHCarPlayRecentsTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyAGyAA4TextVAKySiSgGGAXGAA023AccessibilityAttachmentL0VGSgtGGMd);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v68 - v11;
  v13 = type metadata accessor for AccessibilityTraits();
  v80 = *(v13 - 8);
  v81 = v13;
  __chkstk_darwin(v13);
  v79 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = __chkstk_darwin(v15);
  v76 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v78 = v68 - v19;
  __chkstk_darwin(v18);
  v77 = v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v68 - v25;
  v27 = [a1 recentsItem];
  v28 = [v27 localizedTitle];

  if (v28)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    v82 = v29;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v75 = v10;
      v74 = a4;
      v73 = v12;
      v72 = a1;
      v71 = v24;
      v70 = v26;
      if (a2)
      {
        v33 = [objc_opt_self() dynamicCarFocusedLabelColor];
      }

      else
      {
        v34 = [a1 recentCall];
        v35 = [v34 callStatus];

        if (v35 != kCHCallStatusMissed)
        {
          v37 = static Color.primary.getter();
          goto LABEL_13;
        }

        v33 = [objc_opt_self() systemRedColor];
      }

      v36 = v33;
      v37 = Color.init(uiColor:)();
LABEL_13:
      v69 = v37;
      v86 = v82;
      v87 = v31;
      v68[1] = lazy protocol witness table accessor for type String and conformance String();

      v38 = Text.init<A>(_:)();
      v40 = v39;
      v68[0] = v31;
      v42 = v41;
      static Font.callout.getter();
      v43 = Text.font(_:)();
      v45 = v44;
      v47 = v46;

      outlined consume of Text.Storage(v38, v40, v42 & 1);

      static Font.Weight.medium.getter();
      v48 = Text.fontWeight(_:)();
      v50 = v49;
      v52 = v51;
      outlined consume of Text.Storage(v43, v45, v47 & 1);

      v86 = v69;
      v53 = Text.foregroundStyle<A>(_:)();
      v55 = v54;
      LOBYTE(v45) = v56;
      v58 = v57;
      outlined consume of Text.Storage(v48, v50, v52 & 1);

      KeyPath = swift_getKeyPath();
      v86 = v53;
      v87 = v55;
      v88 = v45 & 1;
      v89 = v58;
      v90 = KeyPath;
      v91 = 2;
      v92 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
      lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
      v60 = v76;
      View.accessibilityIdentifier(_:)();
      outlined consume of Text.Storage(v53, v55, v45 & 1);

      v86 = v82;
      v87 = v68[0];
      v61 = v78;
      v62 = v84;
      ModifiedContent<>.accessibilityLabel<A>(_:)();
      outlined destroy of (NSAttributedStringKey, Any)(v60, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);

      v63 = v79;
      static AccessibilityTraits.isButton.getter();
      v64 = v77;
      ModifiedContent<>.accessibilityAddTraits(_:)();

      (*(v80 + 8))(v63, v81);
      outlined destroy of (NSAttributedStringKey, Any)(v61, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
      v26 = v70;
      outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v64, v70, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGMd);
      (*(v83 + 56))(v26, 0, 1, v62);
      v10 = v75;
      a4 = v74;
      v12 = v73;
      a1 = v72;
      v24 = v71;
      goto LABEL_14;
    }
  }

  (*(v83 + 56))(v26, 1, 1, v84);
LABEL_14:
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleO0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeD0VSgAKyAKyAKyAA4TextVAOySiSgGGA0_GAA023AccessibilityAttachmentO0VGSgtGGMd);
  closure #1 in closure #1 in closure #1 in closure #1 in PHCarPlayRecentsTableViewCell.updateConfiguration(using:)(a1, v85, &v12[*(v65 + 44)]);
  outlined init with copy of Binding<EditMode>?(v26, v24, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
  outlined init with copy of Binding<EditMode>?(v12, v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyAGyAA4TextVAKySiSgGGAXGAA023AccessibilityAttachmentL0VGSgtGGMd);
  outlined init with copy of Binding<EditMode>?(v24, a4, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSg_AA6HStackVyAA9TupleViewVyACyACyACyAA5ImageVAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeN0VSgACyACyAJA5_GALGSgtGGtMd);
  outlined init with copy of Binding<EditMode>?(v10, a4 + *(v66 + 48), &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyAGyAA4TextVAKySiSgGGAXGAA023AccessibilityAttachmentL0VGSgtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyAGyAA4TextVAKySiSgGGAXGAA023AccessibilityAttachmentL0VGSgtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v26, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB005BadgeE0VSgAGyAGyAGyAA4TextVAKySiSgGGAXGAA023AccessibilityAttachmentL0VGSgtGGMd);
  return outlined destroy of (NSAttributedStringKey, Any)(v24, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA023AccessibilityAttachmentI0VGSgMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PHCarPlayRecentsTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGMd);
  __chkstk_darwin(v100);
  v99 = &v96 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
  v6 = *(v107 - 8);
  __chkstk_darwin(v107);
  v98 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  v9 = __chkstk_darwin(v8 - 8);
  v108 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v96 - v11;
  v12 = type metadata accessor for BadgeView();
  v103 = *(v12 - 8);
  v104 = v12;
  __chkstk_darwin(v12);
  v97 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI9BadgeViewVSgMd);
  v15 = __chkstk_darwin(v14 - 8);
  v106 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v109 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = &v96 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGSgMd);
  v26 = __chkstk_darwin(v25 - 8);
  v105 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = &v96 - v28;
  v29 = kCHCallStatusConnectedOutgoing;
  v30 = a1;
  v31 = [a1 recentCall];
  v32 = [v31 callStatus];

  if (v29 == v32 || kCHCallStatusCancelled == v32)
  {
    v101 = v6;
    v102 = a3;
    v34 = Image.init(systemName:)();
    v35 = static Font.caption.getter();
    KeyPath = swift_getKeyPath();
    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
    {
      v37 = [objc_opt_self() dynamicCarFocusedPrimaryLabelColor];
      v38 = Color.init(uiColor:)();
    }

    else
    {
      v38 = static Color.secondary.getter();
    }

    v39 = v38;
    UICellConfigurationState.secondaryBlendMode.getter(v22 + *(v18 + 36));
    *v22 = v34;
    v22[1] = KeyPath;
    v22[2] = v35;
    v22[3] = v39;
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v22, v24, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
    v40 = v24;
    v41 = v112;
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v40, v112, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
    (*(v19 + 56))(v41, 0, 1, v18);
    v6 = v101;
    v33 = v102;
  }

  else
  {
    (*(v19 + 56))(v112, 1, 1, v18);
    v33 = a3;
  }

  v42 = v30;
  v43 = [v30 recentsItem];
  v44 = [v43 localizedSenderIdentityTitle];

  v45 = v109;
  v46 = v110;
  if (v44)
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      v51 = objc_opt_self();
      v52 = [v51 dynamicBackgroundColor];
      Color.init(uiColor:)();
      v53 = [v51 dynamicCarPrimaryColor];
      Color.init(uiColor:)();
      v54 = v97;
      BadgeView.init(text:foregroundColor:backgroundColor:)();
      v55 = v103;
      v56 = v54;
      v57 = v104;
      (*(v103 + 32))(v45, v56, v104);
      v58 = 0;
      goto LABEL_16;
    }
  }

  v58 = 1;
  v55 = v103;
  v57 = v104;
LABEL_16:
  v59 = 1;
  (*(v55 + 56))(v45, v58, 1, v57);
  v60 = [v42 recentsItem];
  v61 = [v60 localizedSubtitle];

  if (v61)
  {
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v65 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {
      v101 = v6;
      v102 = v33;
      v113 = v62;
      v114 = v64;
      lazy protocol witness table accessor for type String and conformance String();
      v66 = Text.init<A>(_:)();
      v68 = v67;
      v70 = v69;
      static Font.caption.getter();
      v71 = Text.font(_:)();
      v73 = v72;
      v75 = v74;

      outlined consume of Text.Storage(v66, v68, v70 & 1);

      if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
      {
        v76 = [objc_opt_self() dynamicCarFocusedPrimaryLabelColor];
        v77 = Color.init(uiColor:)();
      }

      else
      {
        v77 = static Color.secondary.getter();
      }

      v113 = v77;
      v78 = Text.foregroundStyle<A>(_:)();
      v80 = v79;
      v82 = v81;
      v84 = v83;
      outlined consume of Text.Storage(v71, v73, v75 & 1);

      v85 = swift_getKeyPath();
      v86 = v99;
      UICellConfigurationState.secondaryBlendMode.getter(&v99[*(v100 + 36)]);
      *v86 = v78;
      *(v86 + 8) = v80;
      *(v86 + 16) = v82 & 1;
      *(v86 + 24) = v84;
      *(v86 + 32) = v85;
      *(v86 + 40) = 1;
      *(v86 + 48) = 0;
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
      v87 = v98;
      View.accessibilityIdentifier(_:)();
      outlined destroy of (NSAttributedStringKey, Any)(v86, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGMd);
      v46 = v110;
      outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v87, v110, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGMd);
      v59 = 0;
      v6 = v101;
      v33 = v102;
      v45 = v109;
    }

    else
    {

      v59 = 1;
    }
  }

  (*(v6 + 56))(v46, v59, 1, v107);
  v88 = v112;
  v89 = v105;
  outlined init with copy of Binding<EditMode>?(v112, v105, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGSgMd);
  v90 = v106;
  outlined init with copy of Binding<EditMode>?(v45, v106, &_s16CommunicationsUI9BadgeViewVSgMd);
  v91 = v46;
  v92 = v46;
  v93 = v108;
  outlined init with copy of Binding<EditMode>?(v91, v108, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined init with copy of Binding<EditMode>?(v89, v33, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGSgMd);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGSg_014CommunicationsB09BadgeViewVSgACyACyACyAA4TextVAGySiSgGGATGAA023AccessibilityAttachmentI0VGSgtMd);
  outlined init with copy of Binding<EditMode>?(v90, v33 + *(v94 + 48), &_s16CommunicationsUI9BadgeViewVSgMd);
  outlined init with copy of Binding<EditMode>?(v93, v33 + *(v94 + 64), &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v92, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v45, &_s16CommunicationsUI9BadgeViewVSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v88, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v93, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_BlendModeEffectVGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v90, &_s16CommunicationsUI9BadgeViewVSgMd);
  return outlined destroy of (NSAttributedStringKey, Any)(v89, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGSgMd);
}

double PHRingLayer.percentage.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage;
  swift_beginAccess();
  return *(v0 + v1);
}

double PHRingLayer.lineWidth.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_lineWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

id PHRingLayer.percentage.setter(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  return [v2 setNeedsDisplay];
}

uint64_t (*PHRingLayer.lineWidth.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PHRingLayer.lineWidth.modify;
}

id PHRingLayer.fillColor.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_fillColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t (*PHRingLayer.fillColor.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PHRingLayer.lineWidth.modify;
}

id PHRingLayer.strokeColor.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_strokeColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PHRingLayer.fillColor.setter(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = a1;

  [v2 setNeedsDisplay];
}

uint64_t (*PHRingLayer.strokeColor.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PHRingLayer.strokeColor.modify;
}

id PHRingLayer.lineWidth.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsDisplay];
  }

  return result;
}

id PHRingLayer.init()()
{
  *&v0[OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone11PHRingLayer_lineWidth] = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_fillColor;
  v2 = objc_opt_self();
  v3 = [v2 systemDarkGreenColor];
  v4 = [v3 CGColor];

  *&v0[v1] = v4;
  v5 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_strokeColor;
  v6 = [v2 systemGreenColor];
  v7 = [v6 CGColor];

  *&v0[v5] = v7;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PHRingLayer();
  return objc_msgSendSuper2(&v9, "init");
}

char *PHRingLayer.init(layer:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone11PHRingLayer_lineWidth] = 0x4020000000000000;
  v3 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_fillColor;
  v4 = objc_opt_self();
  v5 = [v4 systemDarkGreenColor];
  v6 = [v5 CGColor];

  *&v1[v3] = v6;
  v7 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_strokeColor;
  v8 = [v4 systemGreenColor];
  v9 = [v8 CGColor];

  *&v1[v7] = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  v29.receiver = v1;
  v29.super_class = type metadata accessor for PHRingLayer();
  v11 = objc_msgSendSuper2(&v29, "initWithLayer:", v10);
  swift_unknownObjectRelease();
  outlined init with copy of Any(a1, v28);
  v12 = v11;
  if (swift_dynamicCast())
  {
    [v27 percentage];
    v14 = v13;
    v15 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage;
    v16 = swift_beginAccess();
    *&v12[v15] = v14;
    v17 = (*((swift_isaMask & *v27) + 0x70))(v16);
    v18 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_lineWidth;
    v19 = swift_beginAccess();
    *&v12[v18] = v17;
    v20 = (*((swift_isaMask & *v27) + 0x88))(v19);
    v21 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_fillColor;
    swift_beginAccess();
    v22 = *&v12[v21];
    *&v12[v21] = v20;

    v23 = (*((swift_isaMask & *v27) + 0xA0))();
    __swift_destroy_boxed_opaque_existential_0(a1);
    v24 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_strokeColor;
    swift_beginAccess();
    v25 = *&v12[v24];
    *&v12[v24] = v23;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v12;
}

uint64_t static PHRingLayer.needsDisplay(forKey:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  v6.receiver = ObjCClassFromMetadata;
  v6.super_class = &OBJC_METACLASS____TtC11MobilePhone11PHRingLayer;
  v5 = objc_msgSendSuper2(&v6, "needsDisplayForKey:", v4);

  return v5;
}

id PHRingLayer.action(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() animationWithKeyPath:v4];

    v6 = [v2 presentationLayer];
    if (v6)
    {
      v7 = v6;
      [v6 percentage];
    }

    else
    {
      [v2 percentage];
    }

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v5 setFromValue:isa];
  }

  else
  {
    v9 = String._bridgeToObjectiveC()();
    v11.receiver = v2;
    v11.super_class = type metadata accessor for PHRingLayer();
    v5 = objc_msgSendSuper2(&v11, "actionForKey:", v9);
  }

  return v5;
}

Swift::Void __swiftcall PHRingLayer.draw(in:)(CGContextRef in)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PHRingLayer();
  v49.receiver = v1;
  v49.super_class = v8;
  [(CGContext *)&v49 drawInContext:in];
  v9 = [v1 presentationLayer];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    [v1 bounds];
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
  }

  v23 = [v2 presentationLayer];
  if (v23)
  {
    v24 = v23;
    v48 = (*((swift_isaMask & *v23) + 0x70))();
  }

  else
  {
    v48 = (*((swift_isaMask & *v2) + 0x70))();
  }

  v25 = [v2 presentationLayer];
  if (v25)
  {
    v26 = v25;
    [v25 percentage];
    v46 = v27;
  }

  else
  {
    [v2 percentage];
    v46 = v28;
  }

  v29 = [v2 presentationLayer];
  if (v29)
  {
    v30 = v29;
    v47 = (*((swift_isaMask & *v29) + 0xA0))();
  }

  else
  {
    v47 = (*((swift_isaMask & *v2) + 0xA0))();
  }

  v31 = [v2 presentationLayer];
  if (v31)
  {
    v32 = v31;
    v33 = (*((swift_isaMask & *v31) + 0x88))();
  }

  else
  {
    v33 = (*((swift_isaMask & *v2) + 0x88))();
  }

  v50.origin.x = v12;
  v50.origin.y = v14;
  v50.size.width = v16;
  v50.size.height = v18;
  v34 = CGRectGetMaxX(v50) * 0.5;
  v51.origin.x = v12;
  v51.origin.y = v14;
  v51.size.width = v16;
  v51.size.height = v18;
  v35 = CGRectGetMaxY(v51) * 0.5;
  v52.origin.x = v12;
  v52.origin.y = v14;
  v52.size.width = v16;
  v52.size.height = v18;
  v36 = CGRectGetWidth(v52) * 0.5 + 1.0;
  v37 = objc_opt_self();
  v38 = [v37 bezierPathWithRoundedRect:v12 cornerRadius:{v14, v16, v18, v36}];
  v39 = [v38 CGPath];
  CGContextSaveGState(in);
  CGContextAddPath(in, v39);
  CGContextSetFillColorWithColor(in, v33);
  (*(v5 + 104))(v7, enum case for CGPathFillRule.winding(_:), v4);
  CGContextRef.fillPath(using:)();
  (*(v5 + 8))(v7, v4);
  CGContextRestoreGState(in);
  v53.origin.x = v12;
  v53.origin.y = v14;
  v53.size.width = v16;
  v53.size.height = v18;
  Width = CGRectGetWidth(v53);
  v41 = v48;
  v42 = [v37 bezierPathWithArcCenter:1 radius:v34 startAngle:v35 endAngle:Width * 0.5 - v48 * 0.5 clockwise:{-1.57079633, (v46 * 360.0 + -90.0) * 0.0174532925}];
  v43 = [v42 CGPath];
  CGContextSaveGState(in);
  CGContextAddPath(in, v43);
  v44 = v47;
  CGContextSetStrokeColorWithColor(in, v47);
  CGContextSetLineCap(in, kCGLineCapRound);
  CGContextSetLineWidth(in, v41);
  CGContextStrokePath(in);
  CGContextSetShouldAntialias(in, 1);
  CGContextRestoreGState(in);
}

id PHRingLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHRingLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized PHRingLayer.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC11MobilePhone11PHRingLayer_percentage) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone11PHRingLayer_lineWidth) = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_fillColor;
  v2 = objc_opt_self();
  v3 = [v2 systemDarkGreenColor];
  v4 = [v3 CGColor];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC11MobilePhone11PHRingLayer_strokeColor;
  v6 = [v2 systemGreenColor];
  v7 = [v6 CGColor];

  *(v0 + v5) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001A4720@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 percentage];
  *a2 = v4;
  return result;
}

uint64_t sub_1001A481C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_1001A48DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t VoicemailTranscriptProcessor.__allocating_init()()
{
  v0 = swift_allocObject();
  VoicemailTranscriptProcessor.init()();
  return v0;
}

unint64_t VoicemailTranscriptProcessor.processTranscriptText(from:searchText:maxLines:font:containerWidth:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, double a6)
{
  if (!result)
  {
    return result;
  }

  v7 = v6;
  result = [result transcriptViewModel];
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [result localizedAttributedText];

  if (!v14)
  {
    return 0;
  }

  v15 = [v14 string];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  [a5 pointSize];
  v20 = v19;
  v21 = [a5 familyName];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = a5;
  v25 = v24;

  v83[0] = v16;
  v83[1] = v18;
  v83[2] = a2;
  v83[3] = a3;
  v83[4] = a4;
  v83[5] = v20;
  v83[6] = v22;
  v83[7] = v25;
  *&v83[8] = a6;
  Hasher.init(_seed:)();
  TranscriptCacheKey.hash(into:)();
  outlined destroy of TranscriptCacheKey(v83);
  v26 = [objc_allocWithZone(NSNumber) initWithInteger:Hasher._finalize()()];
  v27 = *(v7 + OBJC_IVAR____TtC11MobilePhone28VoicemailTranscriptProcessor_cache);
  v28 = [v27 objectForKey:v26];
  if (v28)
  {
    v29 = v28;

    v30 = v26;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "VoicemailTranscriptProcessor: Cache hit for key: %@", v33, 0xCu);
      outlined destroy of (NSAttributedStringKey, Any)(v34, &_sSo8NSObjectCSgMd);
    }

    else
    {
    }

    return v29;
  }

  v76 = v27;
  v77 = v26;
  v78 = v23;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "VoicemailTranscriptProcessor: Cache miss, processing transcript", v38, 2u);
  }

  result = String.count.getter();
  v39 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  if (v39 >= 1)
  {
    v74 = a2;
    v75 = a3;
    v40 = a4;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v41 = 0;
    while (!__OFADD__(v41, v39))
    {
      v42 = (v41 + v39) / 2;
      String.index(_:offsetBy:)();
      v43 = v16;
      String.subscript.getter();
      static String._fromSubstring(_:)();

      v44 = String._bridgeToObjectiveC()();

      v79[0] = NSFontAttributeName;
      v79[4] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIFont);
      v79[1] = v78;
      v45 = static _DictionaryStorage.allocate(capacity:)();
      v46 = NSFontAttributeName;
      v47 = v78;
      outlined init with copy of Binding<EditMode>?(v79, &v81, &_sSo21NSAttributedStringKeya_yptMd);
      v48 = v81;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v81);
      if (v49)
      {
        goto LABEL_32;
      }

      v45[(result >> 6) + 8] |= 1 << result;
      *(v45[6] + 8 * result) = v48;
      result = outlined init with take of Any(v82, (v45[7] + 32 * result));
      v50 = v45[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_33;
      }

      v45[2] = v52;
      outlined destroy of (NSAttributedStringKey, Any)(v79, &_sSo21NSAttributedStringKeya_yptMd);
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v44 boundingRectWithSize:3 options:isa attributes:0 context:{a6, 1.79769313e308}];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v84.origin.x = v55;
      v84.origin.y = v57;
      v84.size.width = v59;
      v84.size.height = v61;
      v62 = ceil(CGRectGetHeight(v84));
      result = [v47 lineHeight];
      if (v62 / v63 > v40)
      {
        v39 = v42 - 1;
      }

      else
      {
        v41 = v42 + 1;
      }

      v16 = v43;
      if (v41 >= v39)
      {
        a2 = v74;
        a3 = v75;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v42 = -(-v39 >> 1);
LABEL_24:
  v64._countAndFlagsBits = v16;
  v64._object = v18;
  v65._countAndFlagsBits = a2;
  v65._object = a3;
  v66 = VoicemailTranscriptProcessor.truncate(text:searchText:characterLimit:)(v64, v65, v42);

  v67 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v67 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    v68 = String._bridgeToObjectiveC()();
    v69 = String._bridgeToObjectiveC()();
    v70 = [v68 attributedStringToHighlightText:v69];
  }

  else
  {
    v70 = 0;
  }

  v71 = type metadata accessor for ProcessedTranscriptResult();
  v72 = objc_allocWithZone(v71);
  *&v72[OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_plainText] = v66;
  *&v72[OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_attributedText] = v70;
  v80.receiver = v72;
  v80.super_class = v71;
  v73 = objc_msgSendSuper2(&v80, "init");
  [v76 setObject:v73 forKey:v77];

  return v73;
}

void TranscriptCacheKey.hash(into:)()
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 32));
  v1 = *(v0 + 40);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  String.hash(into:)();
  v2 = *(v0 + 64);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TranscriptCacheKey()
{
  Hasher.init(_seed:)();
  TranscriptCacheKey.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TranscriptCacheKey()
{
  Hasher.init(_seed:)();
  TranscriptCacheKey.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TranscriptCacheKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static TranscriptCacheKey.__derived_struct_equals(_:_:)(v7, v9);
}

uint64_t VoicemailTranscriptProcessor.init()()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v6 = OBJC_IVAR____TtC11MobilePhone28VoicemailTranscriptProcessor_cache;
  v7 = [objc_allocWithZone(NSCache) init];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC11MobilePhone28VoicemailTranscriptProcessor_memoryWarningSink;
  *(v0 + OBJC_IVAR____TtC11MobilePhone28VoicemailTranscriptProcessor_memoryWarningSink) = 0;
  [v7 setCountLimit:100];
  v9 = *(v0 + OBJC_IVAR____TtC11MobilePhone28VoicemailTranscriptProcessor_cache);
  v10 = String._bridgeToObjectiveC()();
  [v9 setName:v10];

  v11 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, &type metadata accessor for NSNotificationCenter.Publisher);
  v12 = Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v5, v2);
  *(v1 + v8) = v12;

  return v1;
}

uint64_t closure #1 in VoicemailTranscriptProcessor.init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VoicemailTranscriptProcessor.clearCache()();
  }

  return result;
}

void VoicemailTranscriptProcessor.clearCache()()
{
  [*(v0 + OBJC_IVAR____TtC11MobilePhone28VoicemailTranscriptProcessor_cache) removeAllObjects];
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "VoicemailTranscriptProcessor: Cache cleared", v2, 2u);
  }
}

unint64_t VoicemailTranscriptProcessor.numberOfCharsLabelCanHold(text:maxLines:font:containerWidth:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = String.count.getter();
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v8 >= 1)
  {
    v9 = a4;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v10 = 0;
    while (!__OFADD__(v10, v8))
    {
      v11 = (v10 + v8) / 2;
      String.index(_:offsetBy:)();
      String.subscript.getter();
      static String._fromSubstring(_:)();

      v12 = String._bridgeToObjectiveC()();

      v35[0] = NSFontAttributeName;
      v35[4] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIFont);
      v35[1] = a5;
      v13 = static _DictionaryStorage.allocate(capacity:)();
      v14 = NSFontAttributeName;
      v15 = a5;
      outlined init with copy of Binding<EditMode>?(v35, &v33, &_sSo21NSAttributedStringKeya_yptMd);
      v16 = v33;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v33);
      if (v17)
      {
        goto LABEL_15;
      }

      v13[(result >> 6) + 8] |= 1 << result;
      *(v13[6] + 8 * result) = v16;
      result = outlined init with take of Any(&v34, (v13[7] + 32 * result));
      v18 = v13[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_16;
      }

      v13[2] = v20;
      outlined destroy of (NSAttributedStringKey, Any)(v35, &_sSo21NSAttributedStringKeya_yptMd);
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v12 boundingRectWithSize:3 options:isa attributes:0 context:{a1, 1.79769313e308}];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v36.origin.x = v23;
      v36.origin.y = v25;
      v36.size.width = v27;
      v36.size.height = v29;
      v30 = ceil(CGRectGetHeight(v36));
      result = [v15 lineHeight];
      if (v30 / v31 > v9)
      {
        v8 = v11 - 1;
      }

      else
      {
        v10 = v11 + 1;
      }

      if (v10 >= v8)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return -(-v8 >> 1);
}

Swift::String __swiftcall VoicemailTranscriptProcessor.truncate(text:searchText:characterLimit:)(Swift::String text, Swift::String searchText, Swift::Int characterLimit)
{
  object = searchText._object;
  countAndFlagsBits = searchText._countAndFlagsBits;
  v7 = text._object;
  v8 = text._countAndFlagsBits;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  if (String.count.getter() <= characterLimit)
  {
  }

  else
  {
    v64 = v3;
    v67 = v8;
    v68 = v7;
    lazy protocol witness table accessor for type String and conformance String();
    v12 = StringProtocol.applyingTransform(_:reverse:)(NSStringTransformStripDiacritics, 0);
    v65 = v12.value._countAndFlagsBits;
    if (v12.value._object)
    {
      v13 = v12.value._object;
    }

    else
    {

      v65 = v8;
      v13 = v7;
    }

    v67 = countAndFlagsBits;
    v68 = object;
    v14 = StringProtocol.applyingTransform(_:reverse:)(NSStringTransformStripDiacritics, 0);
    if (v14.value._object)
    {
      countAndFlagsBits = v14.value._countAndFlagsBits;
      object = v14.value._object;
    }

    else
    {
    }

    v15 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v15 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v67 = 25180;
      v68 = 0xE200000000000000;
      v16 = objc_opt_self();
      v17 = String._bridgeToObjectiveC()();

      v18 = [v16 escapedPatternForString:v17];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0x625C2A775CLL;
      v23._object = 0xE500000000000000;
      String.append(_:)(v23);
      v24 = v67;
      v25 = v68;
      v67 = v65;
      v68 = v13;
      v73 = v24;
      v74 = v25;
      v26 = type metadata accessor for Locale();
      (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
      v27 = StringProtocol.range<A>(of:options:range:locale:)();
      v29 = v28;
      LOBYTE(v18) = v30;
      outlined destroy of (NSAttributedStringKey, Any)(v11, &_s10Foundation6LocaleVSgMd);

      if ((v18 & 1) == 0)
      {
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v62 = v33;
          v63 = swift_slowAlloc();
          v73 = v63;
          *v33 = 136315138;
          v71 = v27;
          v66 = v29;
          v67 = 0;
          v68 = 0xE000000000000000;
          v64 = v29;
          _print_unlocked<A, B>(_:_:)();
          v34._countAndFlagsBits = 3943982;
          v34._object = 0xE300000000000000;
          String.append(_:)(v34);
          _print_unlocked<A, B>(_:_:)();
          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v73);

          v36 = v62;
          *(v62 + 1) = v35;
          _os_log_impl(&_mh_execute_header, v31, v32, "VoicemailTranscriptProcessor: searchTextRange: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
        }

        v38 = String.distance(from:to:)();
        v39 = String.distance(from:to:)();
        v41 = v39 - v38;
        if (__OFSUB__(v39, v38))
        {
          __break(1u);
        }

        else
        {
          v42 = characterLimit - v41;
          if (!__OFSUB__(characterLimit, v41))
          {
            v43 = v39;
            v44 = String.count.getter();

            v45 = v44 - v43;
            if (!__OFSUB__(v44, v43))
            {
              v46 = v42 / 2;
              if (v45 < v42 / 2)
              {
                v47 = __OFSUB__(v42, v45);
                v48 = v42 - v45;
                if (v47)
                {
LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

                v49 = v38 - v48;
                if (!__OFSUB__(v38, v48))
                {
                  goto LABEL_26;
                }

                __break(1u);
              }

              v49 = v38 - v46;
              if (__OFSUB__(v38, v46))
              {
LABEL_40:
                __break(1u);
                goto LABEL_41;
              }

LABEL_26:
              v73 = 0;
              v74 = 0xE000000000000000;
              v39 = String.index(_:offsetBy:)();
              v50 = HIBYTE(v7) & 0xF;
              if ((v7 & 0x2000000000000000) == 0)
              {
                v50 = v8 & 0xFFFFFFFFFFFFLL;
              }

              if (4 * v50 >= v39 >> 14)
              {
                String.subscript.getter();
                v51 = static String._fromSubstring(_:)();
                v53 = v52;

                if (v49 >= 1)
                {
                  v54._countAndFlagsBits = 10911970;
                  v54._object = 0xA300000000000000;
                  String.append(_:)(v54);
                  v67 = v51;
                  v68 = v53;
                  v71 = 32;
                  v72 = 0xE100000000000000;
                  v55 = StringProtocol.components<A>(separatedBy:)();
                  if (*(v55 + 16) >= 2uLL)
                  {
                    v56 = v55;

                    v57 = *(v56 + 16);
                    v67 = v56;
                    v68 = v56 + 32;
                    v69 = v57 != 0;
                    v70 = (2 * v57) | 1;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySSGMd);
                    lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>();
                    v51 = BidirectionalCollection<>.joined(separator:)();
                    v53 = v58;
                  }
                }

                v59._countAndFlagsBits = v51;
                v59._object = v53;
                String.append(_:)(v59);

                v8 = v73;
                v7 = v74;
                goto LABEL_34;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
    }

    String.index(_:offsetBy:)();
    String.subscript.getter();
    v8 = static String._fromSubstring(_:)();
    v7 = v37;
  }

LABEL_34:
  v39 = v8;
  v40 = v7;
LABEL_41:
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

id ProcessedTranscriptResult.__allocating_init(plainText:attributedText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_plainText];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_attributedText] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t VoicemailTranscriptProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC11MobilePhone28VoicemailTranscriptProcessor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t VoicemailTranscriptProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11MobilePhone28VoicemailTranscriptProcessor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ProcessedTranscriptResult.plainText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_plainText);

  return v1;
}

void *ProcessedTranscriptResult.attributedText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_attributedText);
  v2 = v1;
  return v1;
}

id ProcessedTranscriptResult.init(plainText:attributedText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_plainText];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC11MobilePhone25ProcessedTranscriptResult_attributedText] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for TPTipsHelper.Entry.Kind();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type TPTipsHelper.Entry.Kind and conformance TPTipsHelper.Entry.Kind, &type metadata accessor for TPTipsHelper.Entry.Kind);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2, &type metadata accessor for TPTipsHelper.Entry.Kind, &lazy protocol witness table cache variable for type TPTipsHelper.Entry.Kind and conformance TPTipsHelper.Entry.Kind, &type metadata accessor for TPTipsHelper.Entry.Kind, &protocol conformance descriptor for TPTipsHelper.Entry.Kind);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for Handle();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2, &type metadata accessor for Handle, &lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for MessageID(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    v6 = 0xE600000000000000;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x73746E65636552;
        }

        else
        {
          v8 = 0x657469726F766146;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE900000000000073;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE800000000000000;
        v8 = 0x73746361746E6F43;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x64617079654BLL;
        }

        else
        {
          v8 = 0x69616D6563696F56;
        }

        if (v7 == 3)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE90000000000006CLL;
        }
      }

      v10 = 0xE900000000000073;
      if (v5 == 3)
      {
        v11 = 0x64617079654BLL;
      }

      else
      {
        v11 = 0x69616D6563696F56;
      }

      if (v5 != 3)
      {
        v6 = 0xE90000000000006CLL;
      }

      if (v5 == 2)
      {
        v11 = 0x73746361746E6F43;
        v6 = 0xE800000000000000;
      }

      if (v5)
      {
        v12 = 0x73746E65636552;
      }

      else
      {
        v12 = 0x657469726F766146;
      }

      if (v5)
      {
        v10 = 0xE700000000000000;
      }

      v13 = v5 <= 1 ? v12 : v11;
      v14 = v5 <= 1 ? v10 : v6;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v6 = 0xE600000000000000;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

BOOL specialized static TranscriptCacheKey.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  else
  {
    return 0;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Binding<EditMode>?(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_1001A7234()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for VoicemailTranscriptProcessor()
{
  result = type metadata singleton initialization cache for VoicemailTranscriptProcessor;
  if (!type metadata singleton initialization cache for VoicemailTranscriptProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoicemailTranscriptProcessor()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptCacheKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptCacheKey(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type TranscriptCacheKey and conformance TranscriptCacheKey()
{
  result = lazy protocol witness table cache variable for type TranscriptCacheKey and conformance TranscriptCacheKey;
  if (!lazy protocol witness table cache variable for type TranscriptCacheKey and conformance TranscriptCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptCacheKey and conformance TranscriptCacheKey);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MobilePhone9MessageIDC_SayAC0E0_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11MobilePhone9MessageIDCSayAC0E0_pGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Binding<EditMode>?(v4, &v13, &_sSS_yptMd);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Binding<EditMode>?(v4, v13, &_ss11AnyHashableV_yptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSSGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8CHHandleC_So9CNContactCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v8;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      if (!--v2)
      {

        return v4;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20LiveCommunicationKit6HandleV_SaySo8CHHandleCGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleV_SaySo8CHHandleCGtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20LiveCommunicationKit6HandleVSaySo8CHHandleCGGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Binding<EditMode>?(v9, v5, &_s20LiveCommunicationKit6HandleV_SaySo8CHHandleCGtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Handle();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MobilePhone0cD12AppDeepLinksO_0E7Intents21DisplayRepresentationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone0aB12AppDeepLinksO_0C7Intents21DisplayRepresentationVtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11MobilePhone0cD12AppDeepLinksO0E7Intents21DisplayRepresentationVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Binding<EditMode>?(v9, v5, &_s11MobilePhone0aB12AppDeepLinksO_0C7Intents21DisplayRepresentationVtMd);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MobilePhone0cD12AppDeepLinksO_0E7Intents22_EnumURLRepresentationV0i6SingleJ0VyAE_GTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone0aB12AppDeepLinksO_0C7Intents22_EnumURLRepresentationV0g6SingleH0VyAC_GtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11MobilePhone0cD12AppDeepLinksO0E7Intents22_EnumURLRepresentationV0i6SingleJ0VyAE_GGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of Binding<EditMode>?(v9, v5, &_s11MobilePhone0aB12AppDeepLinksO_0C7Intents22_EnumURLRepresentationV0g6SingleH0VyAC_GtMd);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22_EnumURLRepresentationV0c6SingleD0Vy11MobilePhone0fgA9DeepLinksO_GMd);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL VMVoicemailGreeting.isEqual(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v40 - v14;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  outlined init with copy of Binding<EditMode>?(a1, v46, &_sypSgMd);
  if (!v47)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v46, &_sypSgMd);
    return 0;
  }

  type metadata accessor for VMVoicemailGreeting();
  if (swift_dynamicCast())
  {
    v41 = v5;
    v18 = v45;
    v19 = [v44 url];
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = v20;
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v43 = v3;
    v23 = *(v3 + 56);
    v24 = 1;
    v23(v17, v22, 1, v2);
    v42 = v18;
    v25 = [v18 url];
    if (v25)
    {
      v26 = v25;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = 0;
    }

    v23(v15, v24, 1, v2);
    v27 = *(v6 + 48);
    outlined init with copy of Binding<EditMode>?(v17, v8, &_s10Foundation3URLVSgMd);
    outlined init with copy of Binding<EditMode>?(v15, &v8[v27], &_s10Foundation3URLVSgMd);
    v28 = v43;
    v29 = *(v43 + 48);
    if (v29(v8, 1, v2) == 1)
    {
      outlined destroy of (NSAttributedStringKey, Any)(v15, &_s10Foundation3URLVSgMd);
      outlined destroy of (NSAttributedStringKey, Any)(v17, &_s10Foundation3URLVSgMd);
      if (v29(&v8[v27], 1, v2) == 1)
      {
        outlined destroy of (NSAttributedStringKey, Any)(v8, &_s10Foundation3URLVSgMd);
LABEL_17:
        v33 = [v44 type];
        v34 = v42;
        if (v33 == [v42 type])
        {
          [v44 duration];
          v36 = v35;
          [v34 duration];
          v38 = v37;

          return v36 == v38;
        }

        return 0;
      }
    }

    else
    {
      outlined init with copy of Binding<EditMode>?(v8, v12, &_s10Foundation3URLVSgMd);
      if (v29(&v8[v27], 1, v2) != 1)
      {
        v30 = v41;
        (*(v28 + 32))(v41, &v8[v27], v2);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *(v28 + 8);
        v32(v30, v2);
        outlined destroy of (NSAttributedStringKey, Any)(v15, &_s10Foundation3URLVSgMd);
        outlined destroy of (NSAttributedStringKey, Any)(v17, &_s10Foundation3URLVSgMd);
        v32(v12, v2);
        outlined destroy of (NSAttributedStringKey, Any)(v8, &_s10Foundation3URLVSgMd);
        if (v31)
        {
          goto LABEL_17;
        }

LABEL_15:

        return 0;
      }

      outlined destroy of (NSAttributedStringKey, Any)(v15, &_s10Foundation3URLVSgMd);
      outlined destroy of (NSAttributedStringKey, Any)(v17, &_s10Foundation3URLVSgMd);
      (*(v28 + 8))(v12, v2);
    }

    outlined destroy of (NSAttributedStringKey, Any)(v8, &_s10Foundation3URLVSg_ADtMd);
    goto LABEL_15;
  }

  return 0;
}

unint64_t type metadata accessor for VMVoicemailGreeting()
{
  result = lazy cache variable for type metadata for VMVoicemailGreeting;
  if (!lazy cache variable for type metadata for VMVoicemailGreeting)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for VMVoicemailGreeting);
  }

  return result;
}

uint64_t PHVoicemailGreetingModel.shouldShowSaveButton.getter()
{
  v1 = [v0 selectedGreeting];
  v2 = [v0 existingGreeting];
  v3 = [v1 isEqual:v2];

  return v3 ^ 1;
}

id PHVoicemailGreetingModel.greetingExists.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = [v1 selectedGreeting];
  v13 = [v12 url];

  if (v13)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v9, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  outlined init with take of URL?(v9, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.mobilePhone);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "PHVoicemailGreetingModel: currentGreeting.url?.path is nil", v17, 2u);
    }

    v18 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_s10Foundation3URLVSgMd);
    URL.path(percentEncoded:)(1);
    (*(v3 + 8))(v5, v2);
    v19 = [objc_opt_self() defaultManager];
    v15 = String._bridgeToObjectiveC()();

    v18 = [v19 fileExistsAtPath:v15];
  }

  return v18;
}

BOOL PHVoicemailGreetingModel.isCustomized.getter()
{
  v1 = [v0 selectedGreeting];
  v2 = [v1 type];

  return v2 == 2;
}

BOOL PHVoicemailGreetingModel.isDefault.getter()
{
  v1 = [v0 selectedGreeting];
  v2 = [v1 type];

  return v2 == 0;
}

id PHVoicemailGreetingModel.shouldShowPlayButtonForDefaultGreeting.getter()
{
  result = [v0 isCallScreeningEnabled];
  if (result)
  {
    return [v0 greetingExists];
  }

  return result;
}

Swift::Void __swiftcall PHVoicemailGreetingModel.saveGreeting()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = [v0 account];
  v6 = *&v5[OBJC_IVAR___MPGreetingAccount_accountType];
  v7 = v5[OBJC_IVAR___MPGreetingAccount_accountType + 8];
  v8 = v6;

  if (v7 == 2 && v6 == 0)
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.mobilePhone);
    v23 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v23, v19, "Attempt to set greeting for LiveVoicemail UUID which is not supported.", v20, 2u);
    }

    v21 = v23;
  }

  else
  {

    [v1 setGreetingState:5];
    v10 = [v1 selectedGreeting];
    v11 = VMVoicemailGreeting.copy()();

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = [v1 account];
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v13;
    v16[5] = v11;
    v16[6] = v14;
    v17 = v11;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), v16);
  }
}

uint64_t specialized closure #1 in PHVoicemailGreetingModel.saveGreeting()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = type metadata accessor for URL();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = type metadata accessor for MainActor();
  v6[29] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[30] = v8;
  v6[31] = v9;

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), v8, v9);
}

uint64_t specialized closure #1 in PHVoicemailGreetingModel.saveGreeting()()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 256) = Strong;
  if (!Strong)
  {

    v23 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  if (*(*(v0 + 192) + OBJC_IVAR___MPGreetingAccount_accountType + 8))
  {
    v2 = [Strong existingGreeting];
    v3 = [v2 type];

    if (v3 == 2)
    {
      v4 = [*(v0 + 256) existingGreeting];
      v5 = [v4 url];

      if (v5)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        if (one-time initialization token for mobilePhone != -1)
        {
          swift_once();
        }

        v6 = *(v0 + 192);
        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static Logger.mobilePhone);
        v8 = v6;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v31 = v12;
          *v11 = 136315138;
          type metadata accessor for UUID();
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
          v13 = dispatch thunk of CustomStringConvertible.description.getter();
          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v31);

          *(v11 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v9, v10, "Attempt to delete the exisiting/old greeting url through FileManager for %s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v12);
        }

        v16 = [objc_opt_self() defaultManager];
        URL._bridgeToObjectiveC()(v17);
        v19 = v18;
        *(v0 + 168) = 0;
        v20 = [v16 removeItemAtURL:v18 error:v0 + 168];

        v21 = *(v0 + 168);
        if (v20)
        {
          v22 = v21;
        }

        else
        {
          v29 = v21;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      }
    }

    return (_swift_task_switch)(specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), 0, 0);
  }

  else
  {
    v24 = *(v0 + 184);
    v25 = [Strong voicemailManager];
    v26 = OBJC_IVAR___MPGreetingAccount_uuid;
    *(v0 + 264) = v25;
    *(v0 + 272) = v26;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    *(v0 + 280) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 312;
    *(v0 + 24) = specialized closure #1 in PHVoicemailGreetingModel.saveGreeting();
    v28 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    *(v0 + 104) = &block_descriptor_12_0;
    *(v0 + 112) = v28;
    [v25 setGreeting:v24 forAccountUUID:isa completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = specialized closure #1 in PHVoicemailGreetingModel.saveGreeting();
  }

  else
  {
    v5 = specialized closure #1 in PHVoicemailGreetingModel.saveGreeting();
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v39 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 312);

  if ((v2 & 1) == 0)
  {

    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 192);
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.mobilePhone);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 256);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v30 = 136315138;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v38);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to save the greeting for account %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
    }

    v35 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v3 = [*(v0 + 256) existingGreeting];
  v4 = [v3 type];

  if (v4 == 2)
  {
    v5 = [*(v0 + 256) existingGreeting];
    v6 = [v5 url];

    if (v6)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      if (one-time initialization token for mobilePhone != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 192);
      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.mobilePhone);
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v38[0] = v13;
        *v12 = 136315138;
        type metadata accessor for UUID();
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v38);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "Attempt to delete the exisiting/old greeting url through FileManager for %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
      }

      v17 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      *(v0 + 168) = 0;
      v21 = [v17 removeItemAtURL:v19 error:v0 + 168];

      v22 = *(v0 + 168);
      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v36 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    }
  }

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), 0, 0);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  swift_willThrow();

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), 0, 0);
}

{
  *(v0 + 296) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), v2, v1);
}

{
  v1 = v0[32];
  v2 = v0[24];

  closure #1 in closure #1 in PHVoicemailGreetingModel.saveGreeting()(v1, v2);
  v3 = v0[30];
  v4 = v0[31];

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), v3, v4);
}

{
  v15 = v0;

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.mobilePhone);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save the greeting for account %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

{
  *(v0 + 304) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), v2, v1);
}

{
  v1 = v0[32];
  v2 = v0[24];

  closure #2 in closure #1 in PHVoicemailGreetingModel.saveGreeting()(v1, v2);
  v3 = v0[30];
  v4 = v0[31];

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailGreetingModel.saveGreeting(), v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id closure #1 in closure #1 in PHVoicemailGreetingModel.saveGreeting()(void *a1, void *a2)
{
  [a1 setGreetingState:2];
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.mobilePhone);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Attempt to set greeting failed with error for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v13 = [objc_opt_self() sharedInstance];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v13 deleteCustomGreetingForAccountUUID:isa];

  result = [a1 delegate];
  if (result)
  {
    v16 = result;
    v17 = _convertErrorToNSError(_:)();
    [v16 voicemailGreetingFailedWithError:v17];

    return swift_unknownObjectRelease();
  }

  return result;
}

id closure #2 in closure #1 in PHVoicemailGreetingModel.saveGreeting()(void *a1, void *a2)
{
  v51 = type metadata accessor for UUID();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setGreetingState:2];
  v52 = a1;
  v11 = [a1 selectedGreeting];
  v12 = [v11 type];

  if (v12 == 2 && (v13 = [v52 selectedGreeting], v14 = objc_msgSend(v13, "url"), v13, v14))
  {
    v48 = v8;
    v49 = v2;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.mobilePhone);
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53 = v47;
      *v19 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v20 = v51;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v53);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Will save the custom greeting for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    else
    {

      v20 = v51;
    }

    v40 = [objc_opt_self() sharedInstance];
    URL._bridgeToObjectiveC()(v41);
    v43 = v42;
    v36 = v52;
    v44 = [v52 account];
    (*(v5 + 16))(v7, v44 + OBJC_IVAR___MPGreetingAccount_uuid, v20);

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v20);
    [v40 saveCustomGreeting:v43 forAccountUUID:isa];

    (*(v50 + 8))(v10, v48);
  }

  else
  {
    v50 = v5;
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.mobilePhone);
    v25 = a2;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v2;
      v30 = v29;
      v53 = v29;
      *v28 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v31 = v51;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v53);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Will delete the exisiting custom greeting for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {

      v31 = v51;
    }

    v35 = [objc_opt_self() sharedInstance];
    v36 = v52;
    v37 = [v52 account];
    v38 = v50;
    (*(v50 + 16))(v7, v37 + OBJC_IVAR___MPGreetingAccount_uuid, v31);

    v39 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v7, v31);
    [v35 deleteCustomGreetingForAccountUUID:v39];
  }

  result = [v36 delegate];
  if (result)
  {
    [result voicemailGreetingDidSave];
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PHVoicemailGreetingModel.fetchGreeting()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  [v0 setGreetingState:1];
  v4 = [v0 account];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v7 = v4;

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = v6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in PHVoicemailGreetingModel.fetchGreeting(), v9);
}

uint64_t closure #1 in PHVoicemailGreetingModel.fetchGreeting()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = type metadata accessor for URL();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = type metadata accessor for MainActor();
  v5[32] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[33] = v8;
  v5[34] = v7;

  return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), v8, v7);
}

uint64_t closure #1 in PHVoicemailGreetingModel.fetchGreeting()()
{
  if (*(v0[25] + OBJC_IVAR___MPGreetingAccount_accountType + 8))
  {
    if (*(v0[25] + OBJC_IVAR___MPGreetingAccount_accountType + 8) == 1)
    {
      v1 = [objc_allocWithZone(VMVoicemailGreeting) init];
      v0[35] = v1;
      v2 = v1;
      v3 = closure #1 in PHVoicemailGreetingModel.fetchGreeting();
    }

    else
    {
      v8 = [objc_allocWithZone(VMVoicemailGreeting) init];
      v9 = [objc_opt_self() sharedInstance];
      v10 = [v9 defaultGreeting];

      if (v10)
      {
        v12 = v0[29];
        v11 = v0[30];
        v13 = v0[27];
        v14 = v0[28];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v14 + 32))(v11, v12, v13);
        URL._bridgeToObjectiveC()(v15);
        v17 = v16;
        [v8 setUrl:v16];

        [v8 setType:0];
        (*(v14 + 8))(v11, v13);
      }

      v0[42] = 0;
      v0[43] = v8;
      v3 = closure #1 in PHVoicemailGreetingModel.fetchGreeting();
    }

    return (_swift_task_switch)(v3, 0, 0);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[38] = Strong;
    if (!Strong)
    {

      v18 = v0[1];

      __asm { BRAA            X1, X16 }
    }

    v5 = [Strong voicemailManager];
    v0[39] = v5;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[40] = isa;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = closure #1 in PHVoicemailGreetingModel.fetchGreeting();
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo19VMVoicemailGreetingCs5Error_pGMd);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned VMVoicemailGreeting?, @unowned NSError?) -> () with result type VMVoicemailGreeting;
    v0[13] = &block_descriptor_22;
    v0[14] = v7;
    [v5 greetingForAccountUUID:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

{
  *(v0 + 288) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), v2, v1);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);

  closure #1 in closure #1 in PHVoicemailGreetingModel.fetchGreeting()(v2, v1);
  *(v0 + 296) = 0;

  v3 = *(v0 + 264);
  v4 = *(v0 + 272);

  return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), v3, v4);
}

{
  v1 = v0[35];
  v0[42] = v0[37];
  v0[43] = v1;
  return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), 0, 0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = closure #1 in PHVoicemailGreetingModel.fetchGreeting();
  }

  else
  {
    v5 = closure #1 in PHVoicemailGreetingModel.fetchGreeting();
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  v3 = *(v0 + 192);
  *(v0 + 336) = 0;
  *(v0 + 344) = v3;

  return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), 0, 0);
}

{
  *(v0 + 352) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), v2, v1);
}

{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[26];

  closure #3 in closure #1 in PHVoicemailGreetingModel.fetchGreeting()(v3, v1);
  if (v2)
  {
  }

  else
  {
    v5 = v0[33];
    v6 = v0[34];

    return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), v5, v6);
  }
}

{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  swift_willThrow();

  return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), 0, 0);
}

{
  *(v0 + 360) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PHVoicemailGreetingModel.fetchGreeting(), v2, v1);
}

{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong delegate];
    if (v3)
    {
      v4 = v3;
      v5 = _convertErrorToNSError(_:)();
      [v4 voicemailGreetingFailedWithError:v5];
      swift_unknownObjectRelease();

      v6 = *(v0 + 264);
      v7 = *(v0 + 272);
      v8 = closure #1 in PHVoicemailGreetingModel.fetchGreeting();
      goto LABEL_6;
    }
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = closure #1 in PHVoicemailGreetingModel.fetchGreeting();
LABEL_6:

  return (_swift_task_switch)(v8, v6, v7);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in closure #1 in PHVoicemailGreetingModel.fetchGreeting()(uint64_t a1, void *a2)
{
  v26 = a2;
  v2 = type metadata accessor for URL();
  v27 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = [v15 customGreetingForAccountUUID:isa];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v27;
    (*(v27 + 32))(v13, v11, v2);
    v20 = 2;
  }

  else
  {
    v18 = v27;
    v21 = [v14 sharedInstance];
    v22 = [v21 defaultGreeting];

    if (!v22)
    {
      return;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v18 + 32))(v8, v5, v2);
    v20 = 0;
    v13 = v8;
  }

  URL._bridgeToObjectiveC()(v19);
  v24 = v23;
  v25 = v26;
  [v26 setUrl:v23];

  [v25 setType:v20];
  (*(v18 + 8))(v13, v2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned VMVoicemailGreeting?, @unowned NSError?) -> () with result type VMVoicemailGreeting(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void closure #3 in closure #1 in PHVoicemailGreetingModel.fetchGreeting()(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v43 - v9;
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong setExistingGreeting:a2];
    v15 = [a2 type];
    if (v15 == 2)
    {
      v16 = &selRef_contactForRecentCall_keyDescriptors_;
      v23 = [v14 existingGreeting];
      v24 = [v23 url];

      if (v24)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = objc_allocWithZone(AVURLAsset);
        URL._bridgeToObjectiveC()(v26);
        v28 = v27;
        v29 = [v25 initWithURL:v27 options:0];

        [v14 loadGreeting:v29];
        (*(v4 + 8))(v7, v3);
      }
    }

    else if (v15)
    {
      if (one-time initialization token for mobilePhone != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.mobilePhone);
      v31 = a2;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = [v31 type];

        _os_log_impl(&_mh_execute_header, v32, v33, "PHVoicemailGreetingModel fetchGreeting is getting %lu", v34, 0xCu);
      }

      else
      {
      }

      v16 = &selRef_contactForRecentCall_keyDescriptors_;
    }

    else
    {
      v16 = &selRef_contactForRecentCall_keyDescriptors_;
      v17 = [v14 existingGreeting];
      v18 = [v14 defaultGreetingURL];
      if (v18)
      {
        v19 = v18;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v20);
        v22 = v21;
        (*(v4 + 8))(v12, v3);
      }

      else
      {
        v22 = 0;
      }

      [v17 setUrl:v22];

      v35 = [v14 existingGreeting];
      v36 = [v35 url];

      if (v36)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = objc_allocWithZone(AVURLAsset);
        URL._bridgeToObjectiveC()(v38);
        v40 = v39;
        v41 = [v37 initWithURL:v39 options:0];

        [v14 loadGreeting:v41];
        (*(v4 + 8))(v10, v3);
      }
    }

    v42 = [v14 v16[266]];
    [v14 setSelectedGreeting:v42];

    [v14 setGreetingState:2];
  }
}

Swift::Void __swiftcall PHVoicemailGreetingModel.didSelectDefaultGreeting()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - v8;
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = [v1 selectedGreeting];
  v13 = [v12 type];

  if (v13)
  {
    v14 = [v1 selectedGreeting];
    [v1 setTempCustomizedGreeting:v14];
  }

  v15 = [objc_allocWithZone(VMVoicemailGreeting) init];
  [v1 setSelectedGreeting:v15];

  v16 = [v1 selectedGreeting];
  [v16 setType:0];

  v17 = [v1 selectedGreeting];
  v18 = [v1 defaultGreetingURL];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    (*(v3 + 8))(v11, v2);
  }

  else
  {
    v22 = 0;
  }

  [v17 setUrl:v22];

  v23 = [v1 selectedGreeting];
  v24 = [v23 url];

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v9, v6, v2);
    v25 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    v29 = [v25 initWithURL:v27 options:0];

    [v1 loadGreeting:v29];
    (*(v3 + 8))(v9, v2);
  }
}

Swift::Void __swiftcall PHVoicemailGreetingModel.didSelectCustomizedGreeting()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = [v1 tempCustomizedGreeting];
  if (v9)
  {
    v19 = v9;
    v10 = [v9 url];
    if (v10)
    {
      v11 = v10;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v8, v6, v2);
      [v1 setSelectedGreeting:v19];
      v12 = objc_allocWithZone(AVURLAsset);
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      v16 = [v12 initWithURL:v14 options:0];

      [v1 loadGreeting:v16];
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      v17 = v19;
    }
  }
}

void PHVoicemailGreetingModel.maximumGreetingDuration(account:)(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR___MPGreetingAccount_accountType + 8))
  {
    v2 = [v1 voicemailManager];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v2 maximumGreetingDurationForAccountUUID:isa];
  }
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AD114()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AD14C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for specialized closure #1 in PHVoicemailGreetingModel.saveGreeting()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return specialized closure #1 in PHVoicemailGreetingModel.saveGreeting()(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AD264()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in PHVoicemailGreetingModel.fetchGreeting()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in PHVoicemailGreetingModel.fetchGreeting()(a1, v4, v5, v7, v6);
}

uint64_t block_destroy_helper_22(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0(a1 + 32);
}

{
  return __swift_destroy_boxed_opaque_existential_0(a1 + 32);
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - v11;
  outlined init with copy of TaskPriority?(a1, v22 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v12, &_sScPSgMd);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t *VMDVoicemailCountSource.__allocating_init(subscriptionSource:accountController:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = specialized VMDVoicemailCountSource.init(subscriptionSource:accountController:)(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t *VMDVoicemailCountSource.init(subscriptionSource:accountController:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = specialized VMDVoicemailCountSource.init(subscriptionSource:accountController:)(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

Swift::Void __swiftcall VMDVoicemailCountSource.subscribeToNotifications()()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100209F70;
  v4 = (v1 + v2[13]);
  v6 = v4[3];
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v17 = v2[10];
  v8[2] = v17;
  v9 = v2[11];
  v8[3] = v9;
  v8[4] = v7;
  v10 = *(v5 + 40);

  v11 = v10(partial apply for closure #1 in VMDVoicemailCountSource.subscribeToNotifications(), v8, v6, v5);

  *(v3 + 56) = swift_getObjectType();
  *(v3 + 32) = v11;
  v12 = [objc_opt_self() defaultCenter];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v17;
  v14[3] = v9;
  v14[4] = v13;
  aBlock[4] = partial apply for closure #2 in VMDVoicemailCountSource.subscribeToNotifications();
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);

  v16 = [v12 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:0 usingBlock:v15];
  _Block_release(v15);

  *(v3 + 88) = swift_getObjectType();
  *(v3 + 64) = v16;
  *(v1 + *(*v1 + 120)) = v3;
}

void closure #1 in VMDVoicemailCountSource.subscribeToNotifications()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10020EF20;
  if (one-time initialization token for subscriptionStatus != -1)
  {
    swift_once();
  }

  v1 = static VoicemailAccountManagerUpdate.subscriptionStatus;
  *(inited + 32) = static VoicemailAccountManagerUpdate.subscriptionStatus;
  v2 = one-time initialization token for accounts;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static VoicemailAccountManagerUpdate.accounts;
  *(inited + 40) = static VoicemailAccountManagerUpdate.accounts;
  v5 = one-time initialization token for voicemails;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = static VoicemailAccountManagerUpdate.voicemails;
  *(inited + 48) = static VoicemailAccountManagerUpdate.voicemails;
  v8 = v7;
  updated = _ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufC11MobilePhone29VoicemailAccountManagerUpdateC_SayAHGTt1g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = specialized SetAlgebra.isDisjoint(with:)(updated);

  if ((v10 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 208))(Strong);
    }
  }
}

uint64_t closure #2 in VMDVoicemailCountSource.subscribeToNotifications()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 208))(result);
  }

  return result;
}

Swift::Void __swiftcall VMDVoicemailCountSource.invalidateBadge()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in VMDVoicemailCountSource.invalidateBadge(), v5);
}

uint64_t closure #1 in VMDVoicemailCountSource.invalidateBadge()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 216) + **(*a4 + 216));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return v7();
}

uint64_t VMDVoicemailCountSource._invalidateBadge()()
{
  *(v1 + 16) = v0;
  return (_swift_task_switch)(VMDVoicemailCountSource._invalidateBadge(), 0, 0);
}

{
  v1 = *(v0 + 16) + *(**(v0 + 16) + 128);
  *v1 = 0;
  *(v1 + 8) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  Subject<>.send()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t VMDVoicemailCountSource.listen(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v10 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v11 = swift_allocObject();
  v11[2] = inited;
  v11[3] = v10;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in VMDVoicemailCountSource.listen(_:), v11);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

uint64_t closure #1 in VMDVoicemailCountSource.listen(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA18PassthroughSubjectCyyts5NeverOGGMd);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCyyts5NeverOG_GMd);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  v6[13] = swift_initStaticObject();
  v6[14] = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v10;
  v6[16] = v9;

  return (_swift_task_switch)(closure #1 in VMDVoicemailCountSource.listen(_:), v10, v9);
}

uint64_t closure #1 in VMDVoicemailCountSource.listen(_:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[2] = *(v0[4] + *(*v0[4] + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<(), Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCyyts5NeverOG_GMd);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = closure #1 in VMDVoicemailCountSource.listen(_:);
  v6 = v0[10];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 20, v6, v4);
}

{
  v2 = *v1;
  *(v2 + 144) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = specialized PhoneApplication.switchToTabWaitingForDataToLoad(_:callsTestingVC:to:);
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = closure #1 in VMDVoicemailCountSource.listen(_:);
  }

  return (_swift_task_switch)(v7, v4, v6);
}

{
  *(v0 + 161) = *(v0 + 160);
  return (_swift_task_switch)(closure #1 in VMDVoicemailCountSource.listen(_:), *(v0 + 120), *(v0 + 128));
}

{
  if (*(v0 + 161) == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*(v0 + 40) + **(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = closure #1 in VMDVoicemailCountSource.listen(_:);

    return v4();
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<(), Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCyyts5NeverOG_GMd);
  v4 = swift_task_alloc();
  *(v1 + 136) = v4;
  *v4 = v2;
  v4[1] = closure #1 in VMDVoicemailCountSource.listen(_:);
  v5 = *(v1 + 80);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 160, v5, v3);
}

uint64_t VMDVoicemailCountSource.unreadVoicemailsCount()()
{
  *(v1 + 16) = v0;
  return (_swift_task_switch)(VMDVoicemailCountSource.unreadVoicemailsCount(), 0, 0);
}

{
  v1 = v0[2];
  v2 = *(*v1 + 128);
  v0[3] = v2;
  v3 = (v1 + v2);
  v4 = *(v3 + 8);
  if (v4 == 255)
  {
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = VMDVoicemailCountSource.unreadVoicemailsCount();
    v9 = v0[2];

    return closure #1 in VMDVoicemailCountSource.unreadVoicemailsCount()(v9);
  }

  else
  {
    v5 = *v3;
    v6 = v0[1];

    return v6(v5, v4 & 1);
  }
}

{
  v1 = *(v0 + 16) + *(v0 + 24);
  v2 = *(v0 + 48) & 1;
  *v1 = *(v0 + 40);
  *(v1 + 8) = v2;
  return (*(v0 + 8))(*(v0 + 40), *(v0 + 48) & 1);
}

uint64_t VMDVoicemailCountSource.unreadVoicemailsCount()(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return (_swift_task_switch)(VMDVoicemailCountSource.unreadVoicemailsCount(), 0, 0);
}

char *closure #1 in VMDVoicemailCountSource.unreadVoicemailsCount()()
{
  v1 = (v0[5] + *(*v0[5] + 104));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = (v0[5] + *(*v0[5] + 104));
      v12 = v11[3];
      v13 = v11[4];
      __swift_project_boxed_opaque_existential_0(v11, v12);
      if ((*(v13 + 16))(v9 + OBJC_IVAR___MPVoicemailAccount_uuid, v12, v13))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_14:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage[2];
    if (!v14)
    {
      goto LABEL_30;
    }
  }

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
    return result;
  }

  v16 = 0;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = _swiftEmptyArrayStorage[v16 + 4];
    }

    v18 = v17;
    swift_beginAccess();
    v19 = v18;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    swift_endAccess();

    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
    }

    ++v16;
    _swiftEmptyArrayStorage[2] = v24 + 1;
    v25 = &_swiftEmptyArrayStorage[2 * v24];
    v25[4] = v20;
    v25[5] = v22;
  }

  while (v14 != v16);
LABEL_30:

  v26 = v0[5];
  v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v0[6] = v27;

  v29 = (*(*v26 + 240) + **(*v26 + 240));
  v28 = swift_task_alloc();
  v0[7] = v28;
  *v28 = v0;
  v28[1] = closure #1 in VMDVoicemailCountSource.unreadVoicemailsCount();

  return v29(v27);
}

uint64_t closure #1 in VMDVoicemailCountSource.unreadVoicemailsCount()(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    v7 = closure #1 in VMDVoicemailCountSource.unreadVoicemailsCount();
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 72) = a1;
    v7 = closure #1 in VMDVoicemailCountSource.unreadVoicemailsCount();
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t closure #1 in VMDVoicemailCountSource.unreadVoicemailsCount()()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);
  v3 = *(v0 + 80) & 1;

  return v2(v1, v3);
}

{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001002471F0, &v9);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s failed to get voicemail info with error %@", v3, 0x16u);
    outlined destroy of (NSAttributedStringKey, Any)(v4, &_sSo8NSObjectCSgMd);

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0, 1);
}

uint64_t VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *v1;
  v4 = type metadata accessor for Logger();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = *(v3 + 80);
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = *(v3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[13] = AssociatedTypeWitness;
  v2[14] = *(AssociatedTypeWitness - 8);
  v2[15] = swift_task_alloc();

  return (_swift_task_switch)(VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:), 0, 0);
}

uint64_t VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)()
{
  v13 = v0;
  *(v0 + 128) = *(**(v0 + 40) + 112);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100247140, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Fetching", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  v5 = *(v0 + 96);
  *(v0 + 136) = *(**(v0 + 40) + 96);
  v11 = (*(v5 + 24) + **(v5 + 24));
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);

  return v11(v7, v9, v8);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);
  }

  else
  {
    v2 = VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);
  }

  return (_swift_task_switch)(v2, 0, 0);
}

{
  v1 = v0[13];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = (*(AssociatedConformanceWitness + 24))(v1, AssociatedConformanceWitness);
  v0[20] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v32 = v4;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35 = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100247140, &v35);
      *(v7 + 12) = 2050;
      swift_getAssociatedTypeWitness();
      *(v7 + 14) = Array.count.getter();
      _os_log_impl(&_mh_execute_header, v5, v6, "%s: Found %{public}ld subscriptions in use", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[11];
    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[5];
    v17 = v0[6];
    v30 = v0[4];
    v31 = v0[12];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone24VoicemailBadgeCalculatorC11CountResultOSgMd);
    (*(v13 + 16))(v11, v16 + v9, v12);
    (*(v14 + 16))(v15, v16 + v10, v17);
    v18 = swift_task_alloc();
    v0[21] = v18;
    v18[2] = v12;
    v18[3] = v31;
    v18[4] = v32;
    v18[5] = v30;
    v18[6] = v11;
    v18[7] = v15;
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v33, &type metadata for VoicemailBadgeCalculator.CountResult, 0, 0, &async function pointer to partial apply for closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:), v18, v33);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100247140, &v35);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: Found no subscriptions", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    (*(v24 + 8))(v23, v25);

    v28 = v0[1];

    return v28(0, 0);
  }
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return (_swift_task_switch)(VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:), 0, 0);
}

{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v10 = type metadata accessor for Logger();
  v8[14] = v10;
  v11 = *(v10 - 8);
  v8[15] = v11;
  v8[16] = *(v11 + 64);
  v8[17] = swift_task_alloc();
  v12 = *(a7 - 8);
  v8[18] = v12;
  v8[19] = *(v12 + 64);
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v8[21] = swift_task_alloc();
  v8[22] = swift_getAssociatedTypeWitness();
  v8[23] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[24] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v8[25] = v14;
  v8[26] = *(v14 + 64);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();

  return (_swift_task_switch)(closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:), 0, 0);
}

uint64_t closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)()
{
  if (Array.endIndex.getter())
  {
    v1 = *(v0 + 200);
    v47 = *(v0 + 208);
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    v4 = *(v0 + 72);
    v5 = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 8);
    v63 = (v1 + 32);
    v64 = v1;
    v68 = v4;
    v65 = (v1 + 16);
    v66 = v4 + 56;
    v60 = (v1 + 8);
    v48 = v3;
    v49 = v2;
    v50 = v6;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v8 = *(v64 + 16);
        v8(*(v0 + 232), *(v0 + 64) + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v5, *(v0 + 192));
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v35 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v47 != 8)
        {
          __break(1u);
          return AsyncSequence.reduce<A>(into:_:)(v35, v36, v37, v38, v39, v40, v41);
        }

        v42 = *(v0 + 232);
        v43 = *(v0 + 192);
        *(v0 + 32) = v35;
        v8 = *v65;
        (*v65)(v42, v0 + 32, v43);
        swift_unknownObjectRelease();
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      v62 = v8;
      v10 = *(v0 + 192);
      v11 = *v63;
      (*v63)(*(v0 + 224), *(v0 + 232), v10);
      if (v6(v10, AssociatedConformanceWitness))
      {
        (*v60)(*(v0 + 224), *(v0 + 192));
      }

      else
      {
        v59 = v11;
        v12 = (*(AssociatedConformanceWitness + 16))(*(v0 + 192));
        if (v13)
        {
          v14 = v13;
          if (*(v68 + 16))
          {
            v15 = v12;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v16 = Hasher._finalize()();
            v17 = -1 << *(v68 + 32);
            v18 = v16 & ~v17;
            if ((*(v66 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
            {
              v19 = ~v17;
              while (1)
              {
                v20 = (*(v68 + 48) + 16 * v18);
                v21 = *v20 == v15 && v14 == v20[1];
                if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v18 = (v18 + 1) & v19;
                if (((*(v66 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
                {
                  goto LABEL_18;
                }
              }

              (*v60)(*(v0 + 224), *(v0 + 192));

              v6 = v50;
              continue;
            }
          }

LABEL_18:
        }

        v23 = *(v0 + 216);
        v22 = *(v0 + 224);
        v24 = *(v0 + 192);
        v26 = *(v0 + 160);
        v25 = *(v0 + 168);
        v55 = v26;
        v56 = v23;
        v57 = *(v0 + 152);
        v58 = *(v0 + 208);
        v27 = *(v0 + 136);
        v28 = *(v0 + 112);
        v53 = v24;
        v54 = v28;
        v51 = *(v0 + 80);
        v52 = *(v0 + 88);
        v29 = type metadata accessor for TaskPriority();
        v61 = *(v0 + 96);
        (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
        (*(v49 + 16))(v26, v51, v61);
        v62(v23, v22, v24);
        (*(v48 + 16))(v27, v52, v28);
        v30 = (*(v49 + 80) + 48) & ~*(v49 + 80);
        v31 = (v57 + *(v64 + 80) + v30) & ~*(v64 + 80);
        v32 = (v58 + *(v48 + 80) + v31) & ~*(v48 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        *(v33 + 24) = 0;
        *(v33 + 32) = v61;
        (*(v49 + 32))(v33 + v30, v55, v61);
        v59(v33 + v31, v56, v53);
        (*(v48 + 32))(v33 + v32, v27, v54);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy11MobilePhone24VoicemailBadgeCalculatorC11CountResultOSgGMd);
        _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(v25, &async function pointer to partial apply for closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:), v33, v34);
        outlined destroy of (NSAttributedStringKey, Any)(v25, &_sScPSgMd);
        (*(v64 + 8))(v22, v53);
        v6 = v50;
      }
    }

    while (v5 != Array.endIndex.getter());
  }

  *(v0 + 40) = **(v0 + 56);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v44 = swift_task_alloc();
  *(v0 + 240) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy11MobilePhone24VoicemailBadgeCalculatorC11CountResultOSgGMd);
  v41 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<VoicemailBadgeCalculator.CountResult?> and conformance TaskGroup<A>, &_sScGy11MobilePhone24VoicemailBadgeCalculatorC11CountResultOSgGMd);
  *v44 = v0;
  v44[1] = closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);
  v35 = *(v0 + 48);
  v40 = &type metadata for VoicemailBadgeCalculator.CountResult;
  v37 = &async function pointer to closure #2 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);
  v36 = v0 + 16;
  v38 = 0;
  v39 = v45;

  return AsyncSequence.reduce<A>(into:_:)(v35, v36, v37, v38, v39, v40, v41);
}

{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a6;
  v14 = (*(a8 + 32) + **(a8 + 32));
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);

  return v14(a5, a7, a8);
}

uint64_t closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(char a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 56) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = v2;

  if (v2)
  {
    v5 = closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);
  }

  else
  {

    v5 = closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:);
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)()
{
  v17 = v0;
  v1 = *(v0 + 40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100247140, &v16);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v5;
    *(v6 + 18) = 2112;
    *(v6 + 20) = v4;
    *v7 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Voicemail Info returned available: %{BOOL}d, count: %@", v6, 0x1Cu);
    outlined destroy of (NSAttributedStringKey, Any)(v7, &_sSo8NSObjectCSgMd);

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v10 = *(v0 + 40);
  if (*(v0 + 56) == 1)
  {
    v11 = Int.init(truncating:)();

    v12 = *(v0 + 16);
    if (v11 < 1)
    {
      *v12 = 0;
      v13 = 1;
    }

    else
    {
      v13 = 0;
      *v12 = v11;
    }
  }

  else
  {

    **(v0 + 16) = 0;
    v13 = -1;
  }

  *(*(v0 + 16) + 8) = v13;
  v14 = *(v0 + 8);

  return v14();
}

{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100247140, &v9);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s failed to get voicemail info with error %@", v3, 0x16u);
    outlined destroy of (NSAttributedStringKey, Any)(v4, &_sSo8NSObjectCSgMd);

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }

  **(v0 + 16) = 0;
  *(*(v0 + 16) + 8) = -1;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #2 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(a2 + 8);
  return (_swift_task_switch)(closure #2 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:), 0, 0);
}

uint64_t closure #2 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)()
{
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    return (*(v0 + 8))();
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v2 + 8) | v1;
  v5 = __CFADD__(*v2, v3);
  v6 = *v2 + v3;
  v7 = v5;
  if (v4)
  {
    if ((v7 & 1) == 0)
    {
LABEL_9:
      *v2 = v6;
      *(v2 + 8) = v4 & 1;
      return (*(v0 + 8))();
    }

    __break(1u);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t VMDVoicemailCountSource.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_0(v0 + *(*v0 + 104));
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t VMDVoicemailCountSource.__deallocating_deinit()
{
  VMDVoicemailCountSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for VoicemailBadgeCalculatorVoicemailSource.unreadVoicemailsCount() in conformance VMDVoicemailCountSource<A>()
{
  v4 = (*(**v0 + 232) + **(**v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for VoicemailBadgeCalculatorVoicemailSource.unreadVoicemailsCount() in conformance VVMVoicemailCountSource;

  return v4();
}

uint64_t protocol witness for VMDVoicemailCountSourceSubscriptionSource.subscriptionInfo() in conformance CoreTelephonyClient(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return (_swift_task_switch)(protocol witness for VMDVoicemailCountSourceSubscriptionSource.subscriptionInfo() in conformance CoreTelephonyClient, 0, 0);
}

uint64_t protocol witness for VMDVoicemailCountSourceSubscriptionSource.subscriptionInfo() in conformance CoreTelephonyClient()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = protocol witness for VMDVoicemailCountSourceSubscriptionSource.subscriptionInfo() in conformance CoreTelephonyClient;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo28CTXPCServiceSubscriptionInfoCs5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned VMVoicemailGreeting?, @unowned NSError?) -> () with result type VMVoicemailGreeting;
  v0[13] = &block_descriptor_27;
  v0[14] = v2;
  [v1 getSubscriptionInfo:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  else
  {
    **(*v0 + 152) = *(*v0 + 144);
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t protocol witness for VMDVoicemailCountSourceSubscriptionSource._voicemailInfo(_:) in conformance CoreTelephonyClient(void *a1)
{
  v3 = *v1;
  *(v2 + 176) = *a1;
  *(v2 + 184) = v3;
  return (_swift_task_switch)(protocol witness for VMDVoicemailCountSourceSubscriptionSource._voicemailInfo(_:) in conformance CoreTelephonyClient, 0, 0);
}

uint64_t protocol witness for VMDVoicemailCountSourceSubscriptionSource._voicemailInfo(_:) in conformance CoreTelephonyClient()
{
  v2 = v0[22];
  v1 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = protocol witness for VMDVoicemailCountSourceSubscriptionSource._voicemailInfo(_:) in conformance CoreTelephonyClient;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySb_So8NSNumberCSSts5Error_pGMd);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSNumber, @unowned NSString, @unowned NSError?) -> () with result type (Bool, NSNumber, String);
  v0[13] = &block_descriptor_23;
  v0[14] = v3;
  [v1 _getVoicemailInfo:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {
    v5 = *(v1 + 144);
    v6 = *(v1 + 152);
    v7 = *(v1 + 160);
    v8 = *(v1 + 168);
    v9 = *(v2 + 8);

    return v9(v5, v6, v7, v8);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSNumber, @unowned NSString, @unowned NSError?) -> () with result type (Bool, NSNumber, String)(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v9 = swift_allocError();
    *v10 = a5;
    v11 = a5;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = *(*(v8 + 64) + 40);
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    v15 = a3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t protocol witness for VMDVoicemailCountSourceSubscriptionContext.labelID.getter in conformance CTXPCServiceSubscriptionContext()
{
  v1 = [*v0 labelID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for VMDVoicemailCountSourceSubscriptionInfo.subscriptionsInUse.getter in conformance CTXPCServiceSubscriptionInfo()
{
  v1 = [*v0 subscriptionsInUse];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CTXPCServiceSubscriptionContext();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t *specialized VMDVoicemailCountSource.init(subscriptionSource:accountController:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 112);
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.mobilePhone);
  (*(*(v8 - 8) + 16))(v3 + v7, v9, v8);
  *(v3 + *(*v3 + 120)) = _swiftEmptyArrayStorage;
  v10 = v3 + *(*v3 + 128);
  *v10 = 0;
  *(v10 + 8) = -1;
  v11 = *(*v3 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *(v3 + v11) = PassthroughSubject.init()();
  (*(*(*(v6 + 80) - 8) + 16))(v3 + *(*v3 + 96), a1);
  v12 = outlined init with copy of Tip(a2, v3 + *(*v3 + 104));
  (*(*v3 + 200))(v12);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t sub_1001B1C94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001B1CCC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B1D34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in VMDVoicemailCountSource.invalidateBadge()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in VMDVoicemailCountSource.invalidateBadge()(a1, v4, v5, v6);
}

uint64_t sub_1001B1E28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in VMDVoicemailCountSource.listen(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VMDVoicemailCountSource.listen(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(a1, a2, v8, v9, v11, v10, v6, v7);
}

uint64_t type metadata completion function for VMDVoicemailCountSource()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

unint64_t type metadata accessor for CTXPCServiceSubscriptionContext()
{
  result = lazy cache variable for type metadata for CTXPCServiceSubscriptionContext;
  if (!lazy cache variable for type metadata for CTXPCServiceSubscriptionContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CTXPCServiceSubscriptionContext);
  }

  return result;
}

uint64_t sub_1001B21B4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 48) & ~v3;
  v4 = v17 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v3 | v11 | v6;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v17, v1);
  (*(v5 + 8))(v0 + v7, AssociatedTypeWitness);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v8 = v7 + *(*(v6 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for Logger() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v1[2];
  v15 = v1[3];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in closure #1 in VMDVoicemailCountSource.fetchNonVVMessages(ignoringAccountsWithIds:)(a1, v14, v15, v1 + v7, v1 + v10, v1 + v13, v6, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTA(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type OrientationMonitorLockedStatus and conformance OrientationMonitorLockedStatus()
{
  result = lazy protocol witness table cache variable for type OrientationMonitorLockedStatus and conformance OrientationMonitorLockedStatus;
  if (!lazy protocol witness table cache variable for type OrientationMonitorLockedStatus and conformance OrientationMonitorLockedStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrientationMonitorLockedStatus and conformance OrientationMonitorLockedStatus);
  }

  return result;
}

Swift::Void __swiftcall KeypadSearchViewController.updateSearchText(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  if ([v1 isViewLoaded])
  {
    v4 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
    if (object)
    {
      object = String._bridgeToObjectiveC()();
    }

    [v4 setText:object];

    v5 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController, closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter);
    v7 = *&v1[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar];
    MPSearchViewController.updateSearchResults(for:)(v7);
  }

  else
  {
    v6 = &v1[OBJC_IVAR___MPKeypadSearchViewController_pendingText];
    *v6 = countAndFlagsBits;
    v6[1] = object;
  }
}

uint64_t KeypadSearchViewController.onDismiss.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPKeypadSearchViewController_onDismiss);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1, *(v0 + OBJC_IVAR___MPKeypadSearchViewController_onDismiss + 8));
  return v1;
}

void KeypadSearchViewController.().init()()
{
  v1 = (v0 + OBJC_IVAR___MPKeypadSearchViewController_pendingText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder) = 1;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar) = 0;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___numbersRanker) = 0;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___lettersRanker) = 0;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id KeypadSearchViewController.init(onDismiss:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR___MPKeypadSearchViewController_pendingText];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder] = 1;
  *&v3[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar] = 0;
  *&v3[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___numbersRanker] = 0;
  *&v3[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___lettersRanker] = 0;
  *&v3[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController] = 0;
  v8 = &v3[OBJC_IVAR___MPKeypadSearchViewController_onDismiss];
  *v8 = a1;
  v8[1] = a2;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  v10 = [objc_allocWithZone(TUFeatureFlags) init];
  v11 = [v10 phoneLargeFormatUIEnabled];

  if (v11 && (v12 = [objc_opt_self() currentDevice], v13 = objc_msgSend(v12, "userInterfaceIdiom"), v12, v13 == 1))
  {
    v14 = v9;
    v15 = [v14 navigationItem];
    v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v14 action:"cancel"];

    [v15 setRightBarButtonItem:v16];
    outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
  }

  return v9;
}

Swift::Void __swiftcall KeypadSearchViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    KeypadSearchViewController.setupConstraints()();
  }

  else
  {
    __break(1u);
  }
}

void KeypadSearchViewController.setupConstraints()()
{
  v1 = v0;
  v2 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController, closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter);
  v3 = [v2 view];

  if (!v3)
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10020D200;
  v5 = [v3 topAnchor];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v5 constraintEqualToAnchor:v8];
  *(v4 + 32) = v9;
  v10 = [v3 bottomAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  *(v4 + 40) = v14;
  v15 = [v3 leadingAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v4 + 48) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v4 + 56) = v24;
  v25 = objc_opt_self();
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];
}

Swift::Void __swiftcall KeypadSearchViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1);
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 setNavigationBarHidden:0 animated:0];
  }

  v6 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController, closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter);
  v7 = [v2 navigationController];
  [v6 setHostingNavigationController:v7];

  v8 = &v2[OBJC_IVAR___MPKeypadSearchViewController_pendingText];
  if (*&v2[OBJC_IVAR___MPKeypadSearchViewController_pendingText + 8])
  {

    v9 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
    v10 = String._bridgeToObjectiveC()();

    [v9 setText:v10];

    *v8 = 0;
    *(v8 + 1) = 0;

    v11 = *&v2[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar];
    v12 = *&v2[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController];
    v13 = v11;
    MPSearchViewController.updateSearchResults(for:)(v13);
  }

  if (v2[OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder] == 1)
  {
    v14 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
    [v14 becomeFirstResponder];
  }
}

id KeypadSearchViewController.keypadSearchResultsController.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

Swift::Void __swiftcall KeypadSearchViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden:0 animated:0];
  }
}

id closure #1 in KeypadSearchViewController.searchBar.getter(void *a1)
{
  v2 = [objc_allocWithZone(UISearchBar) init];
  [v2 setDelegate:a1];
  [v2 _setAutoDisableCancelButton:0];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setShowsCancelButton:1];
  [v3 setSearchBarStyle:1];
  [v3 setKeyboardType:5];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0x484352414553;
  v7.value._countAndFlagsBits = 0x746E656365524850;
  v7.value._object = 0xE900000000000073;
  v6._object = 0xE600000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v14);

  v9 = String._bridgeToObjectiveC()();

  [v3 setPlaceholder:v9];

  v10 = v3;
  v11 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v11];

  v12 = [a1 navigationItem];
  [v12 setTitleView:v10];

  return v10;
}

id KeypadSearchViewController.numbersRanker.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(PHContactsSearchResultsRanker) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter(void *a1)
{
  v27 = [objc_allocWithZone(MPSearchViewController) init];
  [v27 setDelegate:a1];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(MPContactsSearchController);
  v50 = closure #5 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter;
  v51 = 0;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController);
  v49 = &block_descriptor_24;
  v4 = _Block_copy(&aBlock);
  v44 = partial apply for closure #3 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter;
  v45 = v2;
  v40 = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@guaranteed [MPContactSearchResult]) -> (@owned [MPContactSearchResult]);
  v43 = &block_descriptor_7_0;
  v5 = _Block_copy(&v40);
  v38 = closure #1 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter;
  v39 = 0;
  v34 = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController);
  v37 = &block_descriptor_10;
  v6 = _Block_copy(&v34);
  v32 = closure #7 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter;
  v33 = 0;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed () -> (@owned TUCallProviderManager);
  v31 = &block_descriptor_13;
  v7 = _Block_copy(&v28);

  v26 = [v3 initWithContactSearchType:2 contactViewControllerProvider:v4 searchResultsRanker:v5 senderIdentityProvider:v6 callProviderManagerProvider:v7];
  _Block_release(v6);
  _Block_release(v5);
  _Block_release(v4);
  _Block_release(v7);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = objc_allocWithZone(MPContactsSearchController);
  v50 = closure #5 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter;
  v51 = 0;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController);
  v49 = &block_descriptor_17;
  v10 = _Block_copy(&aBlock);
  v44 = partial apply for closure #6 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter;
  v45 = v8;
  v40 = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@guaranteed [MPContactSearchResult]) -> (@owned [MPContactSearchResult]);
  v43 = &block_descriptor_20_1;
  v11 = _Block_copy(&v40);
  v38 = closure #1 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter;
  v39 = 0;
  v34 = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController);
  v37 = &block_descriptor_23_0;
  v12 = _Block_copy(&v34);
  v32 = closure #7 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter;
  v33 = 0;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed () -> (@owned TUCallProviderManager);
  v31 = &block_descriptor_26_1;
  v13 = _Block_copy(&v28);

  v14 = [v9 initWithContactSearchType:3 contactViewControllerProvider:v10 searchResultsRanker:v11 senderIdentityProvider:v12 callProviderManagerProvider:v13];
  _Block_release(v12);
  _Block_release(v11);
  _Block_release(v10);
  _Block_release(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100209A90;
  *(v15 + 32) = v26;
  *(v15 + 40) = v14;
  v16 = v26;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18MPSearchController_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 setSearchControllers:isa];

  v19 = v27;
  v20 = [v19 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  [a1 addChildViewController:v19];
  v52.value.super.super.super.isa = [v19 tableView];
  v22 = v52.value.super.super.super.isa;
  UIViewController.setContentScrollView(_:)(v52);

  v23 = [a1 view];
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v24 = v23;
  v25 = [v19 view];

  if (v25)
  {
    [v24 addSubview:v25];

    [v19 didMoveToParentViewController:a1];
    return;
  }

LABEL_7:
  __break(1u);
}
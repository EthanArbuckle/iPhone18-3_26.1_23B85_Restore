void PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for DisplayHint();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  __chkstk_darwin(v14);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SemanticValue();
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  __chkstk_darwin(v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  if (specialized Array.count.getter(a1) == a2)
  {
    a4(a3);
    return;
  }

  v52 = a4;
  v53 = a5;
  v23 = swift_allocObject();
  v58 = v23;
  *(v23 + 16) = a3;
  v51 = v23 + 16;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, (a1 & 0xC000000000000001) == 0, a1);
  v59 = v17;
  if ((a1 & 0xC000000000000001) != 0)
  {

    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v24 = *(a1 + 8 * a2 + 32);

    v25 = v24;
  }

  v26 = v25;
  INPerson.asBase64()();
  SemanticValue.init()();
  SemanticValue.string.setter();
  SemanticValue.label.setter();
  PhoneCallNLConstants.canonicalName.getter(2);
  SemanticValue.nodeClass.setter();
  v57 = v26;
  v27 = [v26 personHandle];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 emergencyType];

    if (v29 == &dword_0 + 2)
    {
      v42 = [v57 personHandle];
      if (v42)
      {
        outlined bridged method (ob) of @objc INPersonHandle.value.getter(v42);
        if (v43)
        {
          v44 = v59;
          (*(v61 + 16))(v13, v22, v59);
          __swift_storeEnumTagSinglePayload(v13, 0, 1, v44);
          SemanticValue.init()();
          SemanticValue.string.setter();
          SemanticValue.label.setter();
          PhoneCallNLConstants.canonicalName.getter(8);
          SemanticValue.nodeClass.setter();
          v45 = v54;
          DisplayHint.init(idValue:displayValue:)();
          v46 = v51;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v47 = *(*v46 + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v47);
          v48 = *v46;
          *(v48 + 16) = v47 + 1;
          (*(v55 + 32))(v48 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v47, v45, v56);
          *v46 = v48;
        }
      }
    }

    else if (v29 == &dword_0 + 1)
    {
      v30 = v60;
      v31 = v61;
      v56 = *(v60 + 80);
      (*(v61 + 16))(v19, v22, v59);
      outlined init with copy of PhoneContactDisplayHintFactory(v30, __src);
      v32 = (*(v31 + 80) + 24) & ~*(v31 + 80);
      v33 = (v18 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = (v33 + 95) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 16) = v58;
      v36 = v35 + v32;
      v37 = v59;
      (*(v31 + 32))(v36, v19, v59);
      memcpy((v35 + v33), __src, 0x58uLL);
      v38 = v56;
      *(v35 + v60) = a1;
      *(v35 + v34) = a2;
      v39 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
      v40 = v53;
      *v39 = v52;
      v39[1] = v40;
      v41 = *(*v38 + class metadata base offset for PhoneCallDisplayTextCATs + 288);

      v41(partial apply for closure #1 in PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:), v35);

      (*(v31 + 8))(v22, v37);
      goto LABEL_14;
    }
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  v49 = *(v58 + 16);

  PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(a1, a2 + 1, v49, v52, v53);

  (*(v61 + 8))(v22, v59);
LABEL_14:
}

void *closure #1 in PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a7;
  v45 = a8;
  v46 = a6;
  v47 = a1;
  v42 = a5;
  v43 = a4;
  v40 = a3;
  v41 = type metadata accessor for SemanticValue();
  v39 = *(v41 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v41);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for DisplayHint();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  __chkstk_darwin(v14);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = type metadata accessor for TemplatingResult();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v47, v20, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = outlined destroy of SpeakableString?(v20, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v27 = v41;
    (*(v39 + 16))(v13, v40, v41);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v27);
    result = TemplatingResult.print.getter();
    if (!result[2])
    {
      goto LABEL_8;
    }

    v28 = result[4];
    v29 = result[5];

    SemanticValue.init()();
    SemanticValue.string.setter();
    SemanticValue.label.setter();
    PhoneCallNLConstants.canonicalName.getter(4);
    SemanticValue.nodeClass.setter();
    v30 = v36;
    DisplayHint.init(idValue:displayValue:)();
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v31 = *(*(a2 + 16) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v31);
    v32 = *(a2 + 16);
    *(v32 + 16) = v31 + 1;
    (*(v37 + 32))(v32 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, v30, v38);
    *(a2 + 16) = v32;
    swift_endAccess();
    result = (*(v22 + 8))(v25, v21);
  }

  v33 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
    swift_beginAccess();
    v34 = *(a2 + 16);

    PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(v42, v33, v34, v44, v45);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t DisplayHint.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v49 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - v9;
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v49 = 40;
  v50 = 0xE100000000000000;
  DisplayHint.displayValue.getter();
  v13 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_6_1(v12);
  if (v14)
  {
    outlined destroy of SpeakableString?(v12, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
LABEL_5:

    v17 = 0xE300000000000000;
    v15 = 7104878;
    goto LABEL_6;
  }

  v15 = SemanticValue.label.getter();
  v17 = v16;
  OUTLINED_FUNCTION_2_9();
  (*(v18 + 8))(v12, v13);
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  v19._countAndFlagsBits = v15;
  v19._object = v17;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  DisplayHint.displayValue.getter();
  OUTLINED_FUNCTION_6_1(v10);
  if (v14)
  {
    outlined destroy of SpeakableString?(v10, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  }

  else
  {
    SemanticValue.string.getter();
    v22 = v21;
    OUTLINED_FUNCTION_2_9();
    (*(v23 + 8))(v10, v13);
    if (v22)
    {
      v24 = String.debugDescription.getter();
      v26 = v25;

      goto LABEL_12;
    }
  }

  v26 = 0xE300000000000000;
  v24 = 7104878;
LABEL_12:
  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x203E3D2029;
  v28._object = 0xE500000000000000;
  String.append(_:)(v28);
  v30 = v49;
  v29 = v50;
  v49 = 40;
  v50 = 0xE100000000000000;
  DisplayHint.idValue.getter();
  OUTLINED_FUNCTION_6_1(v7);
  if (v14)
  {
    outlined destroy of SpeakableString?(v7, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
LABEL_16:

    v33 = 0xE300000000000000;
    v31 = 7104878;
    goto LABEL_17;
  }

  v31 = SemanticValue.label.getter();
  v33 = v32;
  OUTLINED_FUNCTION_2_9();
  (*(v34 + 8))(v7, v13);
  if (!v33)
  {
    goto LABEL_16;
  }

LABEL_17:
  v35._countAndFlagsBits = v31;
  v35._object = v33;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  DisplayHint.idValue.getter();
  OUTLINED_FUNCTION_6_1(v4);
  if (v14)
  {
    outlined destroy of SpeakableString?(v4, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
LABEL_22:
    Substring.init(_:)();
    goto LABEL_23;
  }

  SemanticValue.string.getter();
  v38 = v37;
  OUTLINED_FUNCTION_2_9();
  (*(v39 + 8))(v4, v13);
  if (!v38)
  {
    goto LABEL_22;
  }

  specialized Collection.prefix(_:)(30);
LABEL_23:
  v40 = static String._fromSubstring(_:)();
  v42 = v41;

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 41;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v45 = v49;
  v46 = v50;
  v49 = v30;
  v50 = v29;

  v47._countAndFlagsBits = v45;
  v47._object = v46;
  String.append(_:)(v47);

  return v49;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t partial apply for closure #2 in PhoneContactDisplayHintFactory.build(for:_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for OrdinalDisplayHintsBuilder() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #2 in PhoneContactDisplayHintFactory.build(for:_:)(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t specialized static PhoneContactDisplayHintFactory.build(for:deviceState:appInfoBuilder:)(uint64_t a1, void *a2)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v71 = &v62 - v5;
  v72 = type metadata accessor for DisplayHint();
  v74 = *(v72 - 8);
  v6 = *(v74 + 64);
  __chkstk_darwin(v72);
  v82 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SemanticValue();
  v73 = *(v87 - 8);
  v8 = *(v73 + 64);
  __chkstk_darwin(v87);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v62 - v11;
  __chkstk_darwin(v12);
  v88 = &v62 - v13;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v77 = type metadata accessor for Locale();
  v17 = *(v77 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v77);
  v76 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OrdinalDisplayHintsBuilder();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _swiftEmptyArrayStorage;
  v91 = _swiftEmptyArrayStorage;
  v84 = a1;
  result = specialized Array.count.getter(a1);
  v65 = v20;
  v64 = v21;
  v63 = v24;
  if (result)
  {
    v78 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v83 = v84 & 0xC000000000000001;
    v75 = (v17 + 8);
    v80 = (v73 + 16);
    v69 = v73 + 32;
    v68 = (v73 + 8);
    v67 = v74 + 32;
    v86 = _swiftEmptyArrayStorage;
    v28 = v78;
    v66 = v16;
    do
    {
      if (v83)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v84 + 8 * v27 + 32);
      }

      v30 = v29;
      if (App.isFirstParty()())
      {
        v30 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v29, 0, v85);
      }

      App.appIdentifier.getter();
      if (v31)
      {
        v89 = v25;
        v32 = v85[4];
        __swift_project_boxed_opaque_existential_1(v85, v85[3]);
        v33 = v76;
        dispatch thunk of DeviceState.siriLocale.getter();
        type metadata accessor for AppInfoBuilder();
        swift_initStackObject();
        AppInfoBuilder.getAppName(_:requestedLocale:)();
        v35 = v34;
        (*v75)(v33, v77);
        if (v35)
        {
          v79 = v30;
          if (one-time initialization token for applicationId != -1)
          {
            swift_once();
          }

          TerminalOntologyNode.name.getter();
          v36 = v66;
          SemanticValue.init(string:label:)();
          if (one-time initialization token for appName != -1)
          {
            swift_once();
          }

          TerminalOntologyNode.name.getter();
          SemanticValue.init(string:label:)();
          v37 = *v80;
          (*v80)(v81, v36, v87);
          v25 = v89;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = v25[2];
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v25 = v46;
          }

          v38 = v25[2];
          if (v38 >= v25[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v25 = v47;
          }

          v25[2] = v38 + 1;
          v39 = v87;
          (*(v73 + 32))(v25 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v38, v81, v87);
          v40 = v71;
          v37(v71, v36, v39);
          __swift_storeEnumTagSinglePayload(v40, 0, 1, v39);
          v37(v70, v88, v39);
          DisplayHint.init(idValue:displayValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = v86[2];
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v86 = v49;
          }

          v41 = v86[2];
          if (v41 >= v86[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v86 = v50;
          }

          v42 = *v68;
          v43 = v87;
          (*v68)(v88, v87);
          v42(v36, v43);
          v44 = v86;
          v86[2] = v41 + 1;
          (*(v74 + 32))(v44 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v41, v82, v72);
          v91 = v44;
        }

        else
        {

          v25 = v89;
        }

        v28 = v78;
      }

      else
      {
      }

      ++v27;
    }

    while (v28 != v27);
  }

  if (one-time initialization token for reference != -1)
  {
    swift_once();
  }

  TerminalOntologyNode.name.getter();
  v51 = v63;
  OrdinalDisplayHintsBuilder.init(referenceNode:)();
  v52 = OrdinalDisplayHintsBuilder.build(for:)();

  (*(v64 + 8))(v51, v65);
  specialized Array.append<A>(contentsOf:)(v52);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.siriPhone);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v90 = v57;
    *v56 = 136315138;
    swift_beginAccess();

    v58 = Array.description.getter();
    v60 = v59;

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v90);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_0, v54, v55, "Built display hints for app disambiguation: %s'", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  swift_beginAccess();
  return v91;
}

uint64_t getEnumTagSinglePayload for PhoneContactDisplayHintFactory(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for PhoneContactDisplayHintFactory(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *partial apply for closure #1 in PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for SemanticValue() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 95) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return closure #1 in PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(a1, v10, v1 + v4, v1 + v5, v8, v9, v12, v13);
}

uint64_t outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_40(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_40(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

void __swiftcall PhoneContactHeader.init(appBundleId:contactId:displayName:handle:isFirstPartyApp:)(PhoneCallFlowDelegatePlugin::PhoneContactHeader *__return_ptr retstr, Swift::String appBundleId, Swift::String contactId, Swift::String displayName, Swift::String handle, Swift::Bool isFirstPartyApp)
{
  retstr->appBundleId = appBundleId;
  retstr->contactId = contactId;
  retstr->displayName = displayName;
  retstr->handle = handle;
  retstr->isFirstPartyApp = isFirstPartyApp;
}

uint64_t SingleResultVoicemailModel.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SingleResultVoicemailModel.displayCallDetail.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SingleResultVoicemailModel.displayDateTime.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t PhoneContactHeader.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x5074737269467369 && a2 == 0xEF70704179747261)
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

uint64_t PhoneContactHeader.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x656C646E6168;
      break;
    case 4:
      result = 0x5074737269467369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneContactHeader.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PhoneContactHeader.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneContactHeader.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneContactHeader.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneContactHeader.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D13ContactHeaderV10CodingKeys33_E8940F9EFAFBA0BBB8D39FEFD2BBB989LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0D13ContactHeaderV10CodingKeys33_E8940F9EFAFBA0BBB8D39FEFD2BBB989LLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v24[15] = 0;
  OUTLINED_FUNCTION_2_84();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v24[14] = 1;
    OUTLINED_FUNCTION_2_84();
    v18 = v3[4];
    v19 = v3[5];
    v24[13] = 2;
    OUTLINED_FUNCTION_2_84();
    v20 = v3[6];
    v21 = v3[7];
    v24[12] = 3;
    OUTLINED_FUNCTION_2_84();
    v22 = *(v3 + 64);
    v24[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys);
  }

  return result;
}

void *PhoneContactHeader.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D13ContactHeaderV10CodingKeys33_E8940F9EFAFBA0BBB8D39FEFD2BBB989LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0D13ContactHeaderV10CodingKeys33_E8940F9EFAFBA0BBB8D39FEFD2BBB989LLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneContactHeader.CodingKeys and conformance PhoneContactHeader.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28[0]) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v11;
  OUTLINED_FUNCTION_1_89(1);
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v13;
  v22 = v12;
  OUTLINED_FUNCTION_1_89(2);
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v14;
  OUTLINED_FUNCTION_1_89(3);
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v15;
  v31 = 4;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = OUTLINED_FUNCTION_0_89();
  v18(v17);
  v30 = v16 & 1;
  __src[0] = v10;
  __src[1] = v26;
  __src[2] = v22;
  __src[3] = v25;
  __src[4] = v21;
  __src[5] = v24;
  __src[6] = v20;
  __src[7] = v23;
  LOBYTE(__src[8]) = v16 & 1;
  outlined init with copy of PhoneContactHeader(__src, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[0] = v10;
  v28[1] = v26;
  v28[2] = v22;
  v28[3] = v25;
  v28[4] = v21;
  v28[5] = v24;
  v28[6] = v20;
  v28[7] = v23;
  v29 = v30;
  outlined destroy of PhoneContactHeader(v28);
  return memcpy(a2, __src, 0x41uLL);
}

void *protocol witness for Decodable.init(from:) in conformance PhoneContactHeader@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = PhoneContactHeader.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x41uLL);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneContactHeader(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for PhoneContactHeader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneContactHeader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhoneContactResolver.__allocating_init(configCache:queryCache:resolver:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_allocObject();
  v4 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_9_1();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = OUTLINED_FUNCTION_3_5(v8, v13);
  v10(v9);
  v11 = OUTLINED_FUNCTION_3_74();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v11;
}

uint64_t PhoneContactResolver.init(configCache:queryCache:resolver:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_9_1();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = OUTLINED_FUNCTION_3_5(v8, v13);
  v10(v9);
  v11 = OUTLINED_FUNCTION_3_74();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v11;
}

uint64_t PhoneContactResolver.resolve(queries:config:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(v2 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 8))(a1, a2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

NSObject *PhoneContactResolver.resolveContacts(queries:configHash:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for ContactResolverConfigHashable();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v18 = PhoneContactResolver.get(config:queries:)(a2, a1);
  if (v18)
  {
    v19 = v18;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    outlined init with copy of ContactResolverConfigHashable(a2, v17);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v23 = 136315394;
      type metadata accessor for ContactQuery();
      v24 = Array.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v55);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = ContactResolverConfigHashable.description.getter();
      v29 = v28;
      outlined destroy of ContactResolverConfigHashable(v17);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v55);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_0, v21, v22, "#PhoneContactResolver resolveContacts: reusing cached result for contactQuery:%s and config:%s.", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      outlined destroy of ContactResolverConfigHashable(v17);
    }
  }

  else
  {
    v54 = v11;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v31 = type metadata accessor for Logger();
    v32 = __swift_project_value_buffer(v31, static Logger.siriPhone);
    outlined init with copy of ContactResolverConfigHashable(a2, v14);

    v19 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v33))
    {
      v34 = swift_slowAlloc();
      v53 = v32;
      v35 = v34;
      v52 = swift_slowAlloc();
      v55 = v52;
      *v35 = 136315394;
      type metadata accessor for ContactQuery();
      v36 = Array.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v55);
      OUTLINED_FUNCTION_6_61();
      *(v35 + 4) = v3;
      *(v35 + 12) = 2080;
      v38 = ContactResolverConfigHashable.description.getter();
      v4 = v39;
      outlined destroy of ContactResolverConfigHashable(v14);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v4, &v55);
      OUTLINED_FUNCTION_5_69();
      *(v35 + 14) = v38;
      _os_log_impl(&dword_0, v19, v33, "#PhoneContactResolver resolveContacts: no cached result for contactQuery:%s and config:%s.", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      v40 = outlined destroy of ContactResolverConfigHashable(v14);
    }

    __chkstk_darwin(v40);
    *(&v52 - 4) = v5;
    *(&v52 - 3) = a1;
    *(&v52 - 2) = a2;
    v41 = PhoneContactResolver.signpost(configHash:around:)(a2, partial apply for closure #1 in PhoneContactResolver.resolveContacts(queries:configHash:), (&v52 - 6));
    if (!v4)
    {
      v19 = v41;
      v42 = v54;
      outlined init with copy of ContactResolverConfigHashable(a2, v54);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v45 = 136315394;
        type metadata accessor for ContactQuery();
        v46 = Array.description.getter();
        LODWORD(v52) = v44;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v55);
        OUTLINED_FUNCTION_6_61();
        *(v45 + 4) = 0;
        *(v45 + 12) = 2080;
        v48 = ContactResolverConfigHashable.description.getter();
        v50 = v49;
        outlined destroy of ContactResolverConfigHashable(v42);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v55);
        OUTLINED_FUNCTION_5_69();
        *(v45 + 14) = v48;
        _os_log_impl(&dword_0, v43, v52, "#PhoneContactResolver resolveContacts: caching result from CRR for contactQuery:%s and config:%s.", v45, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        outlined destroy of ContactResolverConfigHashable(v42);
      }

      PhoneContactResolver.update(config:queries:resolvedSiriKitContacts:)(a2, a1, v19);
    }
  }

  return v19;
}

uint64_t closure #1 in PhoneContactResolver.resolveContacts(queries:configHash:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of SignalProviding(a1 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 16))(a2, a3, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t PhoneContactResolver.update(config:queries:resolvedSiriKitContacts:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v7 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 16);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v11;
  swift_endAccess();
  swift_beginAccess();

  v9 = *(v3 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 24);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a2);
  *(v3 + 24) = v12;
  return swift_endAccess();
}

uint64_t PhoneContactResolver.get(config:queries:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v8 & 1) == 0)
  {

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  V_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ13SiriInference12ContactQueryV_Tt1g5(a2, v9);

  if ((V_Tt1g5 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(v3 + 24);

  v12 = specialized Dictionary.subscript.getter(a2, v11);

  return v12;
}

uint64_t PhoneContactResolver.signpost(configHash:around:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ResolvedSiriKitContact();
  OUTLINED_FUNCTION_9_1();
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = mach_continuous_time();
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v16 = _s27PhoneCallFlowDelegatePlugin8SignpostO4wrap_6aroundxAA0aF0V_xyKXEtKlFZSay13SiriInference08ResolvedI10KitContactVG_Tt2g5("ResolveCRR", 10, 2, partial apply for closure #1 in PhoneContactResolver.signpost(configHash:around:), v30);
  if (!v3 && (ContactResolverConfigHashable.isFaceTime.getter() & 1) != 0)
  {
    v17 = *(v16 + 16);
    v18 = _swiftEmptyArrayStorage;
    if (v17)
    {
      v25[1] = 0;
      v27 = v15;
      v34 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v20 = *(v9 + 16);
      v19 = v9 + 16;
      v21 = *(v19 + 64);
      v26 = v16;
      v22 = v16 + ((v21 + 32) & ~v21);
      v28 = *(v19 + 56);
      v29 = v20;
      do
      {
        v29(v14, v22, v7);
        ResolvedSiriKitContact.person.getter();
        (*(v19 - 8))(v14, v7);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = v34[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v22 += v28;
        --v17;
      }

      while (v17);
      v18 = v34;
      v16 = v26;
      v15 = v27;
    }

    PhoneContactResolver.emitFaceTimeEvents(beginTimestamp:persons:)(v15, v18);
  }

  return v16;
}

uint64_t closure #1 in PhoneContactResolver.signpost(configHash:around:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  static SiriKitEventSender.current.getter();
  v8 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyKXEtKlFZSay0T9Inference08ResolvedtO7ContactVG_Tt4g504_s27abcd10Plugin0A15x79ResolverC8signpost33_3D9467E65F3897762758A24265D9663FLL10configHash6aroundSay13t21Inference08Resolvedq3O54F0VGAA0fG14ConfigHashableV_AKyKXEtKFAKyKXEfU_AKyKXEfU_AOs5Error_pIgozo_Tf1nnnc_n(300, v6, v7, v10, a2);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin8SignpostO4wrap_6aroundxAA0aF0V_xyKXEtKlFZSay13SiriInference08ResolvedI10KitContactVG_Tt2g5(const char *a1, uint64_t a2, char a3, void (*a4)(NSObject **__return_ptr), uint64_t a5)
{
  v32 = a4;
  v31 = a5;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, static OSSignposter.siriPhone);
  (*(v13 + 16))(v16, v17, v12);
  OSSignposter.logHandle.getter();
  result = OSSignpostID.init(log:)();
  v35 = v12;
  v36 = v8;
  v34 = v13;
  if (a3)
  {
LABEL_6:
    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v39;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_10:
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v38 = v20;
  *v19 = 136315138;
  v21 = StaticString.description.getter();
  v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v38);

  *(v19 + 4) = v23;
  v24 = OSSignposter.logHandle.getter();
  v25 = static os_signpost_type_t.begin.getter();
  v26 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_0, v24, v25, v26, a1, "%s", v19, 0xCu);
  v27 = v33;
  v32(&v37);
  if (v27)
  {

    (*(v36 + 8))(v11, v7);
  }

  else
  {
    v28 = static os_signpost_type_t.end.getter();
    v33 = v7;
    v29 = v28;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v24, v29, v30, a1, "%s", v19, 0xCu);

    v24 = v37;
    __swift_destroy_boxed_opaque_existential_1(v20);

    (*(v36 + 8))(v11, v33);
  }

  (*(v34 + 8))(v16, v35);
  return v24;
}

void PhoneContactResolver.emitFaceTimeEvents(beginTimestamp:persons:)(uint64_t a1, uint64_t a2)
{
  static Signpost.emitSyntheticInterval(_:beginTimestamp:)();
  if (specialized Array.count.getter(a2) == 1)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
LABEL_63:
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(a2 + 32);
    }

    v4 = outlined bridged method (ob) of @objc INPerson.siriMatches.getter(v3);
    if (v4)
    {
      v5 = v4;
      v6 = specialized Array.count.getter(v4);
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      while (v6 != v7)
      {
        if (v8)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_60;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        if (__OFADD__(v7, 1))
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v11 = [v9 personHandle];
        if (!v11)
        {
          goto LABEL_19;
        }

        v12 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v11);
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = v13;
        v15 = v12 & 0xFFFFFFFFFFFFLL;

        v16 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v16 = v15;
        }

        if (v16 && (v17 = [v10 personHandle]) != 0)
        {
          v18 = v17;
          v19 = [v17 faceTimeType];

          if (!v19)
          {
            break;
          }
        }

        else
        {
LABEL_19:
        }

        ++v7;
      }

      v20 = 0;
      v37 = _swiftEmptyArrayStorage;
      while (v6 != v20)
      {
        if (v8)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_58;
          }

          v21 = *(v5 + 8 * v20 + 32);
        }

        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v23 = v21;
        v24 = [v23 personHandle];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 faceTimeType];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = v37[2];
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v37 = v29;
          }

          v27 = v37[2];
          if (v27 >= v37[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v37 = v30;
          }

          v37[2] = v27 + 1;
          v37[v27 + 4] = v26;
          v20 = v22;
        }

        else
        {

          ++v20;
        }
      }

      v31 = v37[2];
      if (v31)
      {
        v32 = 0;
        v33 = 0;
LABEL_38:
        for (i = v32; ; ++i)
        {
          if (i >= v31)
          {
            goto LABEL_61;
          }

          v32 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_62;
          }

          v35 = v37[i + 4];
          if (v35 > -65 && v35 <= 64)
          {
            if (v35 < 0)
            {
              if (v35 != -64)
              {
                v36 = 0;
                goto LABEL_51;
              }
            }

            else if (v35 != 64)
            {
              v36 = 1 << v35;
LABEL_51:
              v33 |= v36;
              if (v32 != v31)
              {
                goto LABEL_38;
              }

              break;
            }
          }

          if (v32 == v31)
          {
            break;
          }
        }
      }

      static Signpost.event(_:number1:)();
      if (v6 != v7)
      {

        static Signpost.emitSyntheticInterval(_:beginTimestamp:)();
      }
    }
  }
}

uint64_t specialized PhoneContactResolver.init(configCache:queryCache:resolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  outlined init with take of SPHConversation(&v13, a4 + 32);
  return a4;
}

uint64_t outlined destroy of ContactResolverConfigHashable(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolverConfigHashable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5[3];
  v10 = a5[4];
  v11 = __swift_project_boxed_opaque_existential_1(a5, v9);

  return specialized static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(a1, a2 & 1, a3, a4, v11, v9, v10);
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContextForThirdPartyFaceTime()()
{
  v0 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v2)
    {
      v3 = v2;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v4 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v4, static Logger.siriPhone);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v6))
      {
        v7 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v7);
        OUTLINED_FUNCTION_47_1(&dword_0, v8, v9, "#PhoneDomainContextMetricsUtils add DomainContext for making FaceTime call to non-Apple users");
        OUTLINED_FUNCTION_26_0();
      }

      [v3 setIsThirdPartyFaceTime:1];
      [v1 setPhoneCallContext:v3];
      [v1 setHasPhoneCallContext:1];
      goto LABEL_14;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v10, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v11))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_33(&dword_0, v12, v13, "#PhoneDomainContextMetricsUtils returning without logging phone domain context for making FaceTime call to non-Apple users");
    OUTLINED_FUNCTION_26_0();
  }

  v1 = 0;
LABEL_14:

  return v1;
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContextForHangUpDirectInvocation(callStateProvider:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v4)
    {
      v5 = v4;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v6 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v8))
      {
        v9 = OUTLINED_FUNCTION_65_0();
        *v9 = 0;
        _os_log_impl(&dword_0, v7, v8, "#PhoneDomainContextMetricsUtils add DomainContext for HangUpIntentResponse", v9, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      v12 = OUTLINED_FUNCTION_15_41();
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 16))(v26, v10, v11);
      v14 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      v15 = *(v14 + 16);
      v16 = OUTLINED_FUNCTION_15_41();
      v18 = v17(v16);
      __swift_destroy_boxed_opaque_existential_1(v26);
      if (v18)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      [v5 setPhoneCallAppType:v19];
      [v3 setPhoneCallContext:v5];
      [v3 setHasPhoneCallContext:1];

      return v3;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v22))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_33(&dword_0, v23, v24, "#PhoneDomainContextMetricsUtils returning without logging phone domain context for HangUpIntent");
    OUTLINED_FUNCTION_26_0();
  }

  return 0;
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContextSRR()()
{
  v0 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v2)
    {
      v3 = v2;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v4 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v4, static Logger.siriPhone);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v6))
      {
        v7 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v7);
        OUTLINED_FUNCTION_47_1(&dword_0, v8, v9, "#PhoneDomainContextMetricsUtils add DomainContext resolved via SRR");
        OUTLINED_FUNCTION_26_0();
      }

      [v3 addPersonType:11];
      [v1 setPhoneCallContext:v3];
      [v1 setHasPhoneCallContext:1];
      goto LABEL_14;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v10, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v11))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_33(&dword_0, v12, v13, "#PhoneDomainContextMetricsUtils returning without logging phone domain context resolved via SRR");
    OUTLINED_FUNCTION_26_0();
  }

  v1 = 0;
LABEL_14:

  return v1;
}

void *static PhoneDomainContextMetricsUtils.populatePhoneDomainContextWithAppSelectionUserPersona(phoneCallNLIntent:contextNLType:userPersona:app:resolvedSiriKitContacts:callStateProvider:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6[3];
  v12 = a6[4];
  v13 = __swift_project_boxed_opaque_existential_1(a6, v11);
  v14 = specialized static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(a1, a2 & 1, a4, a5, v13, v11, v12);
  v15 = v14;
  if (v14)
  {
    v16 = [v14 phoneCallContext];
    if (v16)
    {
      v17 = v16;
      [v16 setUserPersona:a3];
      [v15 setPhoneCallContext:v17];
    }
  }

  return v15;
}

void static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv3(phoneCallContacts:phoneContext:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v4, static Logger.siriPhone);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v6))
  {
    v7 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_102(v7);
    OUTLINED_FUNCTION_47_1(&dword_0, v8, v9, "#PhoneDomainContextMetricsUtils addContactRecipientTypeNLv3");
    OUTLINED_FUNCTION_26_0();
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    do
    {
      v12 = outlined init with copy of SignalProviding(v11, &v64);
      OUTLINED_FUNCTION_5_70(v12, v13, v14, v15, v16, v17, v18, v19, v63, v64, v65, v66, v67);
      v20 = OUTLINED_FUNCTION_10_57();
      v22 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v20, v21);
      v23 = OUTLINED_FUNCTION_4_61(v22);
      v32 = SiriPhoneContact.getFullName(filteredAlternatives:)(v23);
      object = v32.value._object;
      countAndFlagsBits = v32.value._countAndFlagsBits;
      if (v32.value._object && (OUTLINED_FUNCTION_3_75(), OUTLINED_FUNCTION_2_85(), v33))
      {
        v34 = 4;
      }

      else
      {
        OUTLINED_FUNCTION_5_70(countAndFlagsBits, object, v26, v27, v28, v29, v30, v31, v63, v64, v65, v66, v67);
        v35 = OUTLINED_FUNCTION_10_57();
        v37 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v35, v36);
        v38 = OUTLINED_FUNCTION_4_61(v37);
        v47 = SiriPhoneContact.getFirstName(filteredAlternatives:)(v38);
        v40 = v47.value._object;
        v39 = v47.value._countAndFlagsBits;
        if (v47.value._object && (OUTLINED_FUNCTION_3_75(), OUTLINED_FUNCTION_2_85(), v48))
        {
          v34 = 2;
        }

        else
        {
          OUTLINED_FUNCTION_5_70(v39, v40, v41, v42, v43, v44, v45, v46, v63, v64, v65, v66, v67);
          v49 = OUTLINED_FUNCTION_10_57();
          v51 = default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v49, v50);
          v52 = OUTLINED_FUNCTION_4_61(v51);
          if (SiriPhoneContact.getLastName(filteredAlternatives:)(v52).value._object && (OUTLINED_FUNCTION_3_75(), OUTLINED_FUNCTION_2_85(), v53))
          {
            v34 = 3;
          }

          else
          {
            OUTLINED_FUNCTION_1_83(&v64);
            if (SiriPhoneContact.getNickName()().value._object && (OUTLINED_FUNCTION_3_75(), OUTLINED_FUNCTION_2_85(), v54))
            {
              v34 = 5;
            }

            else
            {
              v55 = v68;
              __swift_project_boxed_opaque_existential_1(&v64, v67);
              v56 = *(v55 + 416);
              v57 = OUTLINED_FUNCTION_15_41();
              v58(v57);
              if (v59 && (OUTLINED_FUNCTION_3_75(), OUTLINED_FUNCTION_2_85(), v60))
              {
                v34 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_1_83(&v64);
                if (SiriPhoneContact.getOrganzationName()().value._object && (OUTLINED_FUNCTION_3_75(), OUTLINED_FUNCTION_2_85(), v61))
                {
                  v34 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_1_83(&v64);
                  if (!SiriPhoneContact.getPhoneNumber()().value._object)
                  {
                    goto LABEL_29;
                  }

                  OUTLINED_FUNCTION_3_75();
                  OUTLINED_FUNCTION_2_85();
                  if (!v62)
                  {
                    goto LABEL_29;
                  }

                  v34 = 9;
                }
              }
            }
          }
        }
      }

      [a2 addPersonType:v34];
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v11 += 40;
      --v10;
    }

    while (v10);
  }
}

void static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv4(phoneContext:resolvedSiriKitContacts:)(void *a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for ResolvedSiriKitContact();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v11 = type metadata accessor for Logger();
  v35 = __swift_project_value_buffer(v11, static Logger.siriPhone);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v13))
  {
    v14 = OUTLINED_FUNCTION_65_0();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "#PhoneDomainContextMetricsUtils addContactRecipientTypeNLv4", v14, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v19 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v33 = *(v17 + 56);
    v34 = v18;
    *&v15 = 67109120;
    v29 = v15;
    v32 = (v17 - 8);
    v30 = v17;
    v31 = (v17 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v20 = v34;
      (v34)(v10, v19, v3);
      v21 = OUTLINED_FUNCTION_15_41();
      v20(v21);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = v8;
        v25 = swift_slowAlloc();
        *v25 = v29;
        v26 = v10;
        v27 = ResolvedSiriKitContact.personType.getter();
        v28 = *v32;
        (*v32)(v24, v3);
        *(v25 + 4) = v27;
        v10 = v26;
        _os_log_impl(&dword_0, v22, v23, "#PhoneDomainContextMetricsUtils personType : %d", v25, 8u);
        v8 = v24;
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
        v28 = *v32;
        (*v32)(v8, v3);
      }

      [v36 addPersonType:ResolvedSiriKitContact.personType.getter()];
      v28(v10, v3);
      v19 += v33;
      --v16;
    }

    while (v16);
  }
}

id static PhoneDomainContextMetricsUtils.addPhoneCallType(phoneCallNLIntent:phoneContext:)(void *a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v4, static Logger.siriPhone);
  outlined init with copy of SignalProviding(a1, v22);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    outlined init with copy of SignalProviding(v22, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v22);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v5, v6, "#PhoneDomainContextMetricsUtils addPhoneCallType with phoneIntent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v13 = a1[3];
  v14 = a1[4];
  OUTLINED_FUNCTION_1_83(a1);
  if (PhoneCallNLIntent.isAudioCall()())
  {
    return [a2 setPhoneCallType:1];
  }

  v16 = a1[3];
  v17 = a1[4];
  OUTLINED_FUNCTION_1_83(a1);
  if (PhoneCallNLIntent.isVideoCall()())
  {
    v18 = a2;
    v19 = 2;
  }

  else
  {
    v18 = a2;
    v19 = 0;
  }

  return [v18 setPhoneCallType:v19];
}

void static PhoneDomainContextMetricsUtils.addEmergencyType(phoneCallNLIntent:phoneContext:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallEmergencyContext) init];
  if (v4)
  {
    v14 = v4;
    v5 = a1[3];
    v6 = a1[4];
    OUTLINED_FUNCTION_1_83(a1);
    if (PhoneCallNLIntent.isEmergencyNumberCall()())
    {
      [v14 setEmergencyCallType:2];
    }

    v7 = a1[3];
    v8 = a1[4];
    OUTLINED_FUNCTION_1_83(a1);
    if (PhoneCallNLIntent.isEmergencyServicesCall()())
    {
      [v14 setEmergencyCallType:3];
    }

    v9 = a1[3];
    v10 = a1[4];
    OUTLINED_FUNCTION_1_83(a1);
    if (PhoneCallNLIntent.isEmergencyContactCall()())
    {
      [v14 setEmergencyCallType:1];
    }

    [a2 setEmergencyContext:v14];
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v12))
    {
      v13 = OUTLINED_FUNCTION_65_0();
      *v13 = 0;
      _os_log_impl(&dword_0, v14, v12, "#PhoneDomainContextMetricsUtils returning without logging phoneCall emergency context", v13, 2u);
      OUTLINED_FUNCTION_26_0();
    }
  }
}

void *specialized static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(a1);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, v19);
  v20 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v20)
  {
    v7 = v20;
    v21 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v21)
    {
      v22 = v21;
      v34 = a7;
      if (a2)
      {
        static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv4(phoneContext:resolvedSiriKitContacts:)(v21, a4);
      }

      else
      {
        v26 = a1[3];
        v27 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v26);
        v28 = (*(v27 + 24))(v26, v27);
        static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv3(phoneCallContacts:phoneContext:)(v28, v22);
      }

      v29 = a1[3];
      v30 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v29);
      v31 = *((*(v30 + 136))(v29, v30) + 16);

      if (v31)
      {
        [v22 addPersonType:10];
      }

      specialized static PhoneDomainContextMetricsUtils.addPhoneCallAppType(phoneCallNLIntent:app:phoneContext:callStateProvider:)(a1, a3, v22, v17, a6, v34);
      static PhoneDomainContextMetricsUtils.addPhoneCallType(phoneCallNLIntent:phoneContext:)(a1, v22);
      static PhoneDomainContextMetricsUtils.addEmergencyType(phoneCallNLIntent:phoneContext:)(a1, v22);
      [v7 setPhoneCallContext:v22];
      [v7 setHasPhoneCallContext:1];
      goto LABEL_15;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v23 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
  v22 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v24))
  {
    v25 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_102(v25);
    _os_log_impl(&dword_0, v22, v24, "#PhoneDomainContextMetricsUtils returning without logging phone domain context", v7, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v7 = 0;
LABEL_15:

  (*(v14 + 8))(v17, a6);
  return v7;
}

unint64_t lazy protocol witness table accessor for type PhoneDomainContextNLType and conformance PhoneDomainContextNLType()
{
  result = lazy protocol witness table cache variable for type PhoneDomainContextNLType and conformance PhoneDomainContextNLType;
  if (!lazy protocol witness table cache variable for type PhoneDomainContextNLType and conformance PhoneDomainContextNLType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneDomainContextNLType and conformance PhoneDomainContextNLType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneDomainContextNLType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized static PhoneDomainContextMetricsUtils.addPhoneCallAppType(phoneCallNLIntent:app:phoneContext:callStateProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v6 = a5;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v14, v15);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = a3;
    v22 = v21;
    v36 = a2;
    v37[0] = v21;
    *v20 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B0CSgMd, &_s17SiriAppResolution0B0CSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v37);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v17, v18, "#PhoneDomainContextMetricsUtils addPhoneCallAppType with app: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    a3 = v33;

    v6 = v34;
  }

  if (a2)
  {
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    if (PhoneCallNLIntent.isFaceTimeCall()() && App.isFirstParty()())
    {
      [a3 setPhoneCallAppType:2];
    }

    else if (App.isFirstParty()())
    {
      v27 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      if (PhoneCallNLIntent.isHangUpCall()() && ((*(v35 + 16))(v37, v6), v28 = v38, v29 = v39, __swift_project_boxed_opaque_existential_1(v37, v38), v30 = (*(v29 + 16))(v28, v29), __swift_destroy_boxed_opaque_existential_1(v37), (v30 & 1) != 0))
      {
        [a3 setPhoneCallAppType:4];
      }

      else
      {
        [a3 setPhoneCallAppType:1];
      }
    }

    else
    {
      [a3 setPhoneCallAppType:3];
    }
  }

  else
  {
    [a3 setPhoneCallAppType:0];
  }

  return (*(v10 + 8))(v13, v6);
}

uint64_t PhoneError.logged()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for PhoneError();
  v6 = OUTLINED_FUNCTION_23_1(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_15_6();
  v10 = __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v32 - v14;
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v18 = OUTLINED_FUNCTION_19_0();
  outlined init with copy of PhoneError(v18, v19);
  if (swift_getEnumCaseMultiPayload() == 26)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    outlined init with copy of PhoneError(v3, v15);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
      OUTLINED_FUNCTION_3_46();
      v33 = a1;
      outlined init with copy of PhoneError(v15, v25);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of PhoneError(v15);
      *(v23 + 4) = v26;
      *v24 = v26;
      a1 = v33;
      _os_log_impl(&dword_0, v21, v22, "#PhoneError Emitting signpost for %@", v23, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      outlined destroy of PhoneError(v15);
    }

    static Signpost.event(_:)();
  }

  else
  {
    outlined destroy of PhoneError(v17);
  }

  outlined init with copy of PhoneError(v3, v12);
  OUTLINED_FUNCTION_104();
  v27 = swift_getEnumCaseMultiPayload() - 17;
  if (v27 < 8 && ((0x8Du >> v27) & 1) != 0)
  {
    v28 = 0;
  }

  else
  {
    outlined destroy of PhoneError(v12);
    v28 = 1;
  }

  outlined init with copy of PhoneError(v3, v2);
  v29 = swift_getEnumCaseMultiPayload() - 17;
  if (v29 < 0xA && ((0x28Du >> v29) & 1) != 0)
  {
    v30 = 0;
  }

  else
  {
    outlined destroy of PhoneError(v2);
    v30 = 1;
  }

  return specialized LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)(v28, v30, a1);
}

uint64_t specialized LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for PhoneError();
  _print_unlocked<A, B>(_:_:)();
  if (a1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v8 = type metadata accessor for Logger();
    v9 = __swift_project_value_buffer(v8, static Logger.siriPhone);

    v58 = v9;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    v59 = a3;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v12 = 136315138;
      v13 = OUTLINED_FUNCTION_104();
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
      _os_log_impl(&dword_0, v10, v11, "#LoggableError Trying ABC for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    *(inited + 32) = (PhoneError.errorDescription.getter)();
    *(inited + 40) = v17;
    v18 = 0;
    *(inited + 48) = PhoneError.subTypeContext.getter();
    *(inited + 56) = v19;
    v20 = &_swiftEmptyArrayStorage;
LABEL_7:
    v21 = (inited + 40 + 16 * v18);
    while (++v18 != 3)
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      v21 += 2;
      v24 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v24 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v57 = v4;

        v25 = a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = v20[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v20 = v29;
        }

        v26 = v20[2];
        if (v26 >= v20[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v20 = v30;
        }

        v20[2] = v26 + 1;
        v27 = &v20[2 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        a2 = v25;
        v4 = v57;
        goto LABEL_7;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_2_13();
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    v34 = specialized LoggableError.caseName.getter();
    static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(0x4C41544146, 0xE500000000000000, v34, v35, v31, v33, v58);

    a3 = v59;
  }

  if (a2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v36 = type metadata accessor for Logger();
    v37 = __swift_project_value_buffer(v36, static Logger.siriPhone);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v40 = 136315138;
      v41 = OUTLINED_FUNCTION_104();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v43);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_0, v38, v39, "#LoggableError Trying TTR for %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

    _StringGuts.grow(_:)(28);

    OUTLINED_FUNCTION_27_2();
    v63 = v45;
    v46._countAndFlagsBits = specialized LoggableError.caseName.getter();
    String.append(_:)(v46);

    v48 = v63;
    v62 = PhoneError.errorDescription.getter(v47);
    v64 = v49;
    v50._countAndFlagsBits = OUTLINED_FUNCTION_2_13();
    String.append(_:)(v50);
    v51._countAndFlagsBits = PhoneError.subTypeContext.getter();
    String.append(_:)(v51);

    v52._countAndFlagsBits = OUTLINED_FUNCTION_2_13();
    String.append(_:)(v52);
    v53._countAndFlagsBits = PhoneError.additionalContext.getter();
    String.append(_:)(v53);

    _StringGuts.grow(_:)(31);
    v54._countAndFlagsBits = 0x45656E6F68502061;
    v54._object = 0xEE002820726F7272;
    String.append(_:)(v54);
    _print_unlocked<A, B>(_:_:)();
    v55._countAndFlagsBits = 0x6564207361772029;
    v55._object = 0xEF2E646574636574;
    String.append(_:)(v55);
    static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(0xD00000000000001ALL, v48, v62, v64, 0, 0xE000000000000000, v37);
  }

  return outlined init with copy of PhoneError(v4, a3);
}

uint64_t specialized LoggableError.caseName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for PhoneError();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  outlined init with copy of PhoneError(v1, boxed_opaque_existential_1);
  Mirror.init(reflecting:)();
  v8 = Mirror.children.getter();
  (*(v3 + 8))(v6, v2);
  specialized Collection.first.getter(v8, &v16);

  if (!v17[3])
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v16, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
LABEL_5:
    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();

    v9 = *(&v16 + 1);
    v10 = v16;
    goto LABEL_6;
  }

  v9 = *(&v16 + 1);
  v10 = v16;
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_6:
  *&v16 = _typeName(_:qualified:)();
  *(&v16 + 1) = v11;
  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v10;
  v13._object = v9;
  String.append(_:)(v13);

  return v16;
}

uint64_t PhoneError.caseName.getter()
{
  v1 = type metadata accessor for Mirror();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_2_86();
  v10[3] = type metadata accessor for PhoneError();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  outlined init with copy of PhoneError(v0, boxed_opaque_existential_1);
  Mirror.init(reflecting:)();
  v5 = Mirror.children.getter();
  (*(v2 + 8))(v0, v1);
  specialized Collection.first.getter(v5, &v11);

  if (!v12[3])
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v11, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
LABEL_5:
    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();

    v6 = *(&v11 + 1);
    v7 = v11;
    goto LABEL_6;
  }

  v6 = *(&v11 + 1);
  v7 = v11;
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  *&v11 = 0x727245656E6F6850;
  *(&v11 + 1) = 0xEB000000002E726FLL;
  v8._countAndFlagsBits = v7;
  v8._object = v6;
  String.append(_:)(v8);

  return v11;
}

uint64_t PhoneError.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriPhone);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t SlotResolutionError.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t PhoneError.additionalContext.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v3 = OUTLINED_FUNCTION_23_1(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PhoneError();
  v10 = OUTLINED_FUNCTION_23_1(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_2_86();
  outlined init with copy of PhoneError(v0, v0);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    outlined init with take of Parse?(v0, v8);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    OUTLINED_FUNCTION_27_2();
    v17 = 0xD00000000000001FLL;
    v18 = v13;
    outlined init with copy of Parse?(v8, v1);
    v14._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v14);

    v15 = v17;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

  else
  {
    outlined destroy of PhoneError(v0);
    return 0;
  }

  return v15;
}

unint64_t ParseError.errorDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    OUTLINED_FUNCTION_12_51();
    _StringGuts.grow(_:)(44);

    OUTLINED_FUNCTION_27_2();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    OUTLINED_FUNCTION_12_51();
    _StringGuts.grow(_:)(41);

    OUTLINED_FUNCTION_27_2();
LABEL_5:
    OUTLINED_FUNCTION_18_24(v3, v4, v5, v6, v7, v8, v9, v10, v13, v15);
    return v14;
  }

  v12 = 0x61746E6F63206F4ELL;
  if (a1 ^ 1 | a2)
  {
    v12 = 0xD000000000000016;
  }

  if (a1 | a2)
  {
    return v12;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t static ParseError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(a1 | a2))
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a1 ^ 1 | a2)
    {
      if (a6 != 2 || a4 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a4 != 1)
    {
      return 0;
    }

    if (!a5)
    {
      return 1;
    }
  }

  else if (!a6)
  {
LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return 0;
}

BOOL static TemplatingError.__derived_enum_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  if (a1[7])
  {
    if (a2[7])
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v6 == v9;
      }
    }

    return 0;
  }

  if (a2[7])
  {
    return 0;
  }

  v14 = a1[3];
  v13 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v18 = a2[3];
  v17 = a2[4];
  v19 = v4 == v7 && v5 == v8;
  v20 = a2[5];
  v21 = a2[6];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v6 == v9 && v14 == v18;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v13 != v17 || v15 != v20)
  {
    OUTLINED_FUNCTION_72();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  return v16 == v21;
}

uint64_t DialogResultError.description.getter()
{
  outlined init with take of DialogResultError(v0, v13);
  v1 = v13[0];
  v2 = v13[1];
  v3 = v13[2];
  v4 = v13[3];
  _StringGuts.grow(_:)(73);
  v5._object = 0x800000000045F640;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = OUTLINED_FUNCTION_7_56(0x46202E22u);
  String.append(_:)(v7);
  v8._countAndFlagsBits = v3;
  v8._object = v4;
  String.append(_:)(v8);
  v9._countAndFlagsBits = OUTLINED_FUNCTION_3_76();
  String.append(_:)(v9);
  OUTLINED_FUNCTION_19_32();
  v10._countAndFlagsBits = OUTLINED_FUNCTION_8_57();
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  return 0;
}

PhoneCallFlowDelegatePlugin::SlotResolutionError_optional __swiftcall SlotResolutionError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SlotResolutionError.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_SlotResolutionError_resolutionTypeUnsupportedForSlot;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_SlotResolutionError_unknownDefault;
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

PhoneCallFlowDelegatePlugin::SlotResolutionError_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SlotResolutionError@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SlotResolutionError_optional *a2@<X8>)
{
  result.value = SlotResolutionError.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SlotResolutionError@<X0>(unint64_t *a1@<X8>)
{
  result = SlotResolutionError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AppIntentDispatcherError.errorDescription.getter()
{
  OUTLINED_FUNCTION_12_51();
  _StringGuts.grow(_:)(20);

  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_18_24(v0, v1, v2, v3, v4, v5, v6, v7, v9, v11);
  return v10;
}

uint64_t AppIntentDispatcherError.subTypeContext.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t lazy protocol witness table accessor for type SlotResolutionError and conformance SlotResolutionError()
{
  result = lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError;
  if (!lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError;
  if (!lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SlotResolutionError and conformance SlotResolutionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TemplatingError and conformance TemplatingError()
{
  result = lazy protocol witness table cache variable for type TemplatingError and conformance TemplatingError;
  if (!lazy protocol witness table cache variable for type TemplatingError and conformance TemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemplatingError and conformance TemplatingError);
  }

  return result;
}

uint64_t outlined init with take of DialogResultError(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t outlined consume of ParseError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t outlined init with take of Parse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t type metadata completion function for PhoneError()
{
  v0 = type metadata accessor for (details: String, fileName: String, methodName: String, line: Int)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (usoEntity: String?, error: String?)();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = type metadata accessor for (methodName: String)();
      if (v4 <= 0x3F)
      {
        type metadata accessor for (flowName: String, flowState: String)();
        v0 = v5;
        if (v6 <= 0x3F)
        {
          v0 = type metadata accessor for (index: Int)();
          if (v7 <= 0x3F)
          {
            type metadata accessor for (type: @thick AnyPhoneNLIntent.Type)();
            v0 = v8;
            if (v9 <= 0x3F)
            {
              v0 = type metadata accessor for Error();
              if (v10 <= 0x3F)
              {
                type metadata accessor for Parse?();
                if (v12 > 0x3F)
                {
                  return v11;
                }

                else
                {
                  v0 = type metadata accessor for (error: String)();
                  if (v13 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t type metadata accessor for (details: String, fileName: String, methodName: String, line: Int)(uint64_t a1)
{
  v1 = lazy cache variable for type metadata for (details: String, fileName: String, methodName: String, line: Int);
  if (!lazy cache variable for type metadata for (details: String, fileName: String, methodName: String, line: Int))
  {
    __chkstk_darwin(a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (details: String, fileName: String, methodName: String, line: Int));
    }
  }

  return v1;
}

void type metadata accessor for (usoEntity: String?, error: String?)()
{
  if (!lazy cache variable for type metadata for (usoEntity: String?, error: String?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (usoEntity: String?, error: String?));
    }
  }
}

void *type metadata accessor for (methodName: String)()
{
  result = lazy cache variable for type metadata for (methodName: String);
  if (!lazy cache variable for type metadata for (methodName: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (methodName: String));
  }

  return result;
}

void type metadata accessor for (flowName: String, flowState: String)()
{
  if (!lazy cache variable for type metadata for (flowName: String, flowState: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (flowName: String, flowState: String));
    }
  }
}

void type metadata accessor for (type: @thick AnyPhoneNLIntent.Type)()
{
  if (!lazy cache variable for type metadata for (type: @thick AnyPhoneNLIntent.Type))
  {
    v0 = type metadata accessor for @thick AnyPhoneNLIntent.Type();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (type: @thick AnyPhoneNLIntent.Type));
    }
  }
}

unint64_t type metadata accessor for @thick AnyPhoneNLIntent.Type()
{
  result = lazy cache variable for type metadata for @thick AnyPhoneNLIntent.Type;
  if (!lazy cache variable for type metadata for @thick AnyPhoneNLIntent.Type)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMR);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for @thick AnyPhoneNLIntent.Type);
  }

  return result;
}

void type metadata accessor for Parse?()
{
  if (!lazy cache variable for type metadata for Parse?)
  {
    type metadata accessor for Parse();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Parse?);
    }
  }
}

void *type metadata accessor for (error: String)()
{
  result = lazy cache variable for type metadata for (error: String);
  if (!lazy cache variable for type metadata for (error: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (error: String));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin10ParseErrorO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for TemplatingError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for TemplatingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SlotResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppIntentDispatcherError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for AppIntentDispatcherError(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t *PhoneFlow.init(sharedGlobals:)(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0x6F6C46656E6F6850;
  v1[3] = 0xE900000000000077;
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 112);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_47_0();
  v9 = *(v8 + 88);
  type metadata accessor for PhoneCallFlowState();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_0();
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v1 + *(v10 + 120));
  return v1;
}

char *PhoneFlow.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 112);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v7);
  (*(v8 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v9 + 120)]);
  return v0;
}

uint64_t PhoneFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  v7 = *(v6 + 80);
  v8 = *(v3 + 88);
  v9 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v9);
  return (*(v10 + 16))(a1, &v1[v5]);
}

uint64_t PhoneFlow.state.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  v7 = *(v6 + 80);
  v8 = *(v3 + 88);
  v9 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v9);
  (*(v10 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t (*PhoneFlow.state.modify())()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_77();
  return CallingIntentNeedsValueFlowStrategy.rePromptCount.modify;
}

uint64_t PhoneFlow.sharedGlobals.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 120);
  swift_beginAccess();
  return outlined init with copy of SignalProviding(v1 + v4, a1);
}

uint64_t PhoneFlow.sharedGlobals.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 120);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t (*PhoneFlow.sharedGlobals.modify())()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_77();
  return ActionableCallControlFlow.state.modify;
}

uint64_t PhoneFlow.execute(completion:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 96);
  type metadata accessor for PhoneFlow();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  return Flow.deferToExecuteAsync(_:)();
}

void PhoneFlow.onRCHFlowComplete(exitValue:)(uint64_t a1)
{
  v4 = *v1;
  OUTLINED_FUNCTION_47_0();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_47_0();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for RCHFlowResult();
  OUTLINED_FUNCTION_9_1();
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_5_63();
  (*(v11 + 16))(v2, a1, v9);
  v15 = *(v11 + 88);
  v16 = OUTLINED_FUNCTION_20_0();
  if (v17(v16) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v18 = *(v11 + 96);
    v19 = OUTLINED_FUNCTION_20_0();
    v20(v19);
    v21 = *v2;
    v22 = v2[1];
    v23 = v2[2];

    v24 = v23;
    PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(v23);
  }

  else
  {
    v25 = *(v11 + 8);
    v26 = OUTLINED_FUNCTION_20_0();
    v27(v26);
    PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(0);
  }
}

{
  v4 = *v1;
  OUTLINED_FUNCTION_47_0();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_47_0();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for RCHFlowResult();
  v10 = type metadata accessor for ConditionalFlowResult();
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_63();
  (*(v12 + 16))(v2, a1, v10);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1 || (OUTLINED_FUNCTION_9_1(), v12 = v16, v18 = *(v17 + 88), v19 = OUTLINED_FUNCTION_20_0(), v20(v19) != enum case for RCHFlowResult.complete<A, B>(_:)))
  {
    v28 = *(v12 + 8);
    v29 = OUTLINED_FUNCTION_20_0();
    v30(v29);
    PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(0);
  }

  else
  {
    v21 = *(v12 + 96);
    v22 = OUTLINED_FUNCTION_20_0();
    v23(v22);
    v24 = *v2;
    v25 = v2[1];
    v26 = v2[2];

    v27 = v26;
    PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(v26);
  }
}

uint64_t PhoneFlow.dismissSiri()()
{
  OUTLINED_FUNCTION_2_0();
  (*(v1 + 152))(v5);
  type metadata accessor for DismissSiriFlow();
  v2 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v5, v2 + 16);
  v5[0] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in PhoneFlow.dismissSiri();
  *(v3 + 24) = v0;
  lazy protocol witness table accessor for type DismissSiriFlow and conformance DismissSiriFlow();

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t PhoneFlow.checkShouldDismissSiri(intentResponse:)()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = (*(*(v1 + 96) + 8))(v3, v8);
  if (v11)
  {
    swift_storeEnumTagMultiPayload();
    (*(*v0 + 136))(v10);
  }

  return v11 & 1;
}

void PhoneFlow.onRCHFlowCompletedWithIntentResponse(_:)(void *a1)
{
  v4 = *v1;
  OUTLINED_FUNCTION_47_0();
  v6 = v5;
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_47_0();
  v10 = *(v9 + 88);
  v11 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_5_63();
  if (!a1 || (v15 = *(v6 + 240), v16 = a1, v17 = v15(), v16, (v17 & 1) == 0))
  {
    OUTLINED_FUNCTION_20_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_0();
    (*(v18 + 136))(v2);
  }
}

char *PhoneFlow.init(state:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v2 + 2) = 0x6F6C46656E6F6850;
  *(v2 + 3) = 0xE900000000000077;
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 112);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 88);
  v12 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v12);
  (*(v13 + 32))(&v2[v7], a1);
  OUTLINED_FUNCTION_2_0();
  outlined init with take of PhoneCallFeatureFlagProviding(a2, &v2[*(v14 + 120)]);
  return v2;
}

uint64_t key path setter for PhoneFlow.state : <A, B>PhoneFlow<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = type metadata accessor for PhoneCallFlowState();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return (*(**a2 + 136))(v12);
}

uint64_t PhoneFlow.__allocating_init(sharedGlobals:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PhoneFlow.init(sharedGlobals:)(a1);
  return v5;
}

uint64_t PhoneFlow.__allocating_init(state:sharedGlobals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_20_0();
  PhoneFlow.init(state:sharedGlobals:)(v4, v5);
  return v3;
}

uint64_t PhoneFlow.on(input:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v8);
    _os_log_impl(&dword_0, v3, v4, "%s: on(input:) called. This should never happen.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return 0;
}

uint64_t PhoneFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(PhoneFlow.execute(), 0, 0);
}

uint64_t PhoneFlow.execute()()
{
  v12 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v11);
    _os_log_impl(&dword_0, v3, v4, "%s: execute() called. This should never happen.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v8 = v0[2];
  static ExecuteResponse.complete()();
  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in PhoneFlow.dismissSiri()(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = type metadata accessor for PhoneCallFlowState();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  swift_storeEnumTagMultiPayload();
  return (*(*a1 + 136))(v7);
}

uint64_t PhoneFlow.__deallocating_deinit()
{
  PhoneFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneFlow<A, B>(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneFlow<A, B>(void *a1, uint64_t a2)
{
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = type metadata accessor for PhoneFlow();

  return Flow<>.exitValue.getter(v6, a2);
}

uint64_t type metadata completion function for PhoneFlow(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for PhoneCallFlowState();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PhoneIncomingCall.__allocating_init(intentResponse:siriLocale:options:appInfoBuilder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  OUTLINED_FUNCTION_9_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16);
  v20 = specialized PhoneIncomingCall.__allocating_init(intentResponse:siriLocale:options:appInfoBuilder:)(a1, a2, a3, a4, v18, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v20;
}

uint64_t specialized PhoneIncomingCall.__allocating_init(intentResponse:siriLocale:options:appInfoBuilder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v64 = a3;
  v63 = type metadata accessor for Locale();
  v15 = *(v63 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v63);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67[3] = a7;
  v67[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  ObjectType = swift_getObjectType();
  v61 = a2;
  v62 = ObjectType;
  v21 = IncomingCallIntentResponse.latestCallRecord.getter(ObjectType, a2);
  if (v21)
  {
    v59 = v21;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v60 = a6;
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v58 = a4;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v56 = v18;
      v27 = v26;
      v28 = swift_slowAlloc();
      v57 = a8;
      v65[0] = v28;
      v29 = v15;
      v30 = v28;
      *v27 = 136315138;
      v31 = PhoneCallRecord.Options.description.getter(a4);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v65);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_0, v23, v24, "#PhoneIncomingCall PhoneCallRecord w/ options: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v15 = v29;
      a8 = v57;

      v18 = v56;
    }

    v34 = type metadata accessor for PhoneCallRecord(0);
    outlined init with copy of SignalProviding(v67, v65);
    (*(v15 + 16))(v18, v64, v63);
    v35 = v66;
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    v37 = *(*(v35 - 8) + 64);
    v38 = __chkstk_darwin(v36);
    v40 = v18;
    v41 = &v56 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v42 + 16))(v41, v38);
    v43 = specialized PhoneCallRecord.__allocating_init(callRecord:options:appInfoBuilder:locale:)(v59, v58, v41, v40, v34, a7, a8);
    v44 = v15;
    v45 = v43;
    __swift_destroy_boxed_opaque_existential_1(v65);

    a6 = v60;
  }

  else
  {
    v44 = v15;
    v45 = 0;
  }

  type metadata accessor for PhoneIncomingCall.Builder();
  swift_allocObject();
  v46 = PhoneIncomingCall.Builder.init()();
  v47 = v61;
  v48 = v62;
  IncomingCallIntentResponse.isIncomingCall.getter(v62, v61);
  v50 = (*(*v46 + 184))(v49 & 1);

  v51 = IncomingCallIntentResponse.unknownCaller.getter(v48, v47);
  v52 = (*(*v50 + 192))(v51);

  v53 = (*(*v52 + 200))(v45);

  v54 = (*(a6 + 152))(v53);

  (*(v44 + 8))(v64, v63);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return v54;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0a8IncomingB0C14intentResponse10siriLocale7options14appInfoBuilderAcA0fb6IntentH0_p_10Foundation0J0VAA0aB6RecordC7OptionsVAA03AppM8Building_ptcfCTf4nnnen_nAA0smN0C_Tt3g5Tf4ennn_n(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v60 = a2;
  v59 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = (v15 - v14);
  v62[3] = type metadata accessor for AppInfoBuilder();
  v62[4] = &protocol witness table for AppInfoBuilder;
  v62[0] = a4;
  v17 = OUTLINED_FUNCTION_0_91();
  v19 = IncomingCallIntentResponse.latestCallRecord.getter(v17, v18);
  if (v19)
  {
    v58 = v19;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v57 = a5;
      v23 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v61[0] = v56;
      *v23 = 136315138;
      v24 = PhoneCallRecord.Options.description.getter(a3);
      v26 = v10;
      v27 = a1;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v61);

      *(v23 + 4) = v28;
      a1 = v27;
      v10 = v26;
      _os_log_impl(&dword_0, v21, v22, "#PhoneIncomingCall PhoneCallRecord w/ options: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
    }

    outlined init with copy of SignalProviding(v62, v61);
    v29 = v59;
    (*(v10 + 16))(v16, v60, v59);
    __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
    v57 = &v55;
    OUTLINED_FUNCTION_9_1();
    v31 = *(v30 + 64);
    __chkstk_darwin(v32);
    OUTLINED_FUNCTION_4();
    v35 = (v34 - v33);
    (*(v36 + 16))(v34 - v33);
    v37 = v58;
    v38 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v58, a3, *v35, v16);
    v39 = type metadata accessor for PhoneCallRecord(0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = PhoneCallRecord.init(builder:)(v38);

    (*(v10 + 8))(v16, v29);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    v42 = 0;
  }

  type metadata accessor for PhoneIncomingCall.Builder();
  swift_allocObject();
  v43 = PhoneIncomingCall.Builder.init()();
  v44 = OUTLINED_FUNCTION_0_91();
  IncomingCallIntentResponse.isIncomingCall.getter(v44, v45);
  v47 = (*(*v43 + 184))(v46 & 1);

  v48 = OUTLINED_FUNCTION_0_91();
  v50 = IncomingCallIntentResponse.unknownCaller.getter(v48, v49);
  v51 = (*(*v47 + 192))(v50);

  v52 = (*(*v51 + 200))(v42);

  type metadata accessor for PhoneIncomingCall();
  swift_allocObject();
  v53 = PhoneIncomingCall.init(builder:)(v52);

  (*(v10 + 8))(v60, v59);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return v53;
}

uint64_t PhoneIncomingCall.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t PhoneIncomingCall.Builder.incomingCall.setter(char a1)
{
  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 16) = a1;
  return result;
}

uint64_t PhoneIncomingCall.Builder.unknownCaller.setter(char a1)
{
  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 17) = a1;
  return result;
}

uint64_t key path setter for PhoneIncomingCall.Builder.latestCallRecord : PhoneIncomingCall.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);

  return v3(v4);
}

uint64_t PhoneIncomingCall.Builder.latestCallRecord.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 24);
}

uint64_t PhoneIncomingCall.Builder.latestCallRecord.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t PhoneIncomingCall.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t PhoneIncomingCall.Builder.withIncomingCall(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 112))();
}

uint64_t PhoneIncomingCall.Builder.withUnknownCaller(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 136))();
}

uint64_t PhoneIncomingCall.Builder.withLatestCallRecord(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 160);

  v1(v2);
}

uint64_t PhoneIncomingCall.Builder.withLatestCallRecord(_:)(uint64_t a1)
{
  if (a1)
  {
    a1 = (*(*a1 + 1176))();
  }

  (*(*v1 + 160))(a1);
}

uint64_t PhoneIncomingCall.Builder.build()()
{
  type metadata accessor for PhoneIncomingCall();
  v0 = swift_allocObject();

  PhoneIncomingCall.init(builder:)(v1);
  return v0;
}

uint64_t PhoneIncomingCall.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_63();
  v2 = swift_allocObject();
  PhoneIncomingCall.init(builder:)(a1);
  return v2;
}

uint64_t key path setter for PhoneIncomingCall.mockGlobals : PhoneIncomingCall(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

uint64_t PhoneIncomingCall.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = (*(*a1 + 104))(a1) & 1;
  OUTLINED_FUNCTION_2_0();
  *(v1 + 25) = (*(v2 + 128))() & 1;
  OUTLINED_FUNCTION_2_0();
  v4 = (*(v3 + 152))();

  *(v1 + 32) = v4;
  return v1;
}

uint64_t PhoneIncomingCall.__allocating_init(incomingCall:unknownCaller:latestCallRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for PhoneIncomingCall.Builder();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  (*(*v8 + 184))(a1);

  OUTLINED_FUNCTION_2_0();
  v10 = (*(v9 + 192))(a2);

  v11 = (*(*v10 + 200))(a3);

  v12 = (*(v4 + 152))(v11);

  return v12;
}

uint64_t PhoneIncomingCall.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = OUTLINED_FUNCTION_8_58();
  v9 = a1 == result && a2 == v8;
  if (v9 || (result = OUTLINED_FUNCTION_8_4(), (result & 1) != 0))
  {
    v10 = *(v3 + 24);
LABEL_7:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v10;
    return result;
  }

  result = 0x436E776F6E6B6E75;
  v11 = a1 == 0x436E776F6E6B6E75 && a2 == 0xED000072656C6C61;
  if (v11 || (result = OUTLINED_FUNCTION_8_4(), (result & 1) != 0))
  {
    v10 = *(v3 + 25);
    goto LABEL_7;
  }

  v12 = a1 == 0xD000000000000010 && 0x8000000000453A50 == a2;
  if (v12 || (result = OUTLINED_FUNCTION_8_4(), (result)) && (v13 = *(v3 + 32)) != 0)
  {
    *(a3 + 24) = type metadata accessor for PhoneCallRecord(0);
    *a3 = v13;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneIncomingCall::CodingKeys_optional __swiftcall PhoneIncomingCall.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneIncomingCall.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t PhoneIncomingCall.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_8_58();
  }

  if (a1 == 1)
  {
    return 0x436E776F6E6B6E75;
  }

  return 0xD000000000000010;
}

PhoneCallFlowDelegatePlugin::PhoneIncomingCall::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneIncomingCall.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneIncomingCall::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneIncomingCall.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneIncomingCall.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneIncomingCall.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneIncomingCall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneIncomingCall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneIncomingCall.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t PhoneIncomingCall.__deallocating_deinit()
{
  PhoneIncomingCall.deinit();
  OUTLINED_FUNCTION_6_63();

  return swift_deallocClassInstance();
}

uint64_t PhoneIncomingCall.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0d8IncomingE0C10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0d8IncomingE0C10CodingKeysOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(v3 + 24);
  v22 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = *(v3 + 25);
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + 32);
    v19[15] = 2;
    type metadata accessor for PhoneCallRecord(0);
    OUTLINED_FUNCTION_2_87();
    lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord(v16, 255, v17);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys);
  }

  return result;
}

uint64_t PhoneIncomingCall.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_63();
  v2 = swift_allocObject();
  PhoneIncomingCall.init(from:)(a1);
  return v2;
}

uint64_t PhoneIncomingCall.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0d8IncomingE0C10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0d8IncomingE0C10CodingKeysOGMR);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = v16 - v10;
  *(v1 + 16) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneIncomingCall.CodingKeys and conformance PhoneIncomingCall.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneIncomingCall();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    *(v1 + 24) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v18 = 1;
    *(v1 + 25) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    type metadata accessor for PhoneCallRecord(0);
    v17 = 2;
    OUTLINED_FUNCTION_2_87();
    lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord(v13, 255, v14);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v7 + 8))(v11, v4);
    *(v1 + 32) = v16[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneIncomingCall(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 144))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneIncomingCall@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneIncomingCall.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AddCallParticipantRCHFlow.__allocating_init(phoneCallNLIntent:app:sharedGlobals:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  outlined init with copy of SignalProviding(a1, v9);
  outlined init with copy of SignalProviding(a3, v8);
  v6 = specialized PhoneIntentRCHFlow.__allocating_init(phoneCallNLIntent:app:rchFlowProvider:sharedGlobals:)(v9, a2, implicit closure #1 in AddCallParticipantRCHFlow.init(state:app:sharedGlobals:), 0, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t key path setter for PhoneIntentRCHFlow.state : <A, B>PhoneIntentRCHFlow<A, B>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for PhoneIntentRCHFlow.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8, v11);
  v14 = *a2;
  v15 = *(*v14 + 120);
  swift_beginAccess();
  (*(v9 + 40))(v14 + v15, v13, v8);
  return swift_endAccess();
}

uint64_t PhoneIntentRCHFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for PhoneIntentRCHFlow.State();
  OUTLINED_FUNCTION_0_92(v7);
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t PhoneIntentRCHFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_47_0();
  v5 = v4;
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_47_0();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_4_62();
  v10 = type metadata accessor for PhoneIntentRCHFlow.State();
  OUTLINED_FUNCTION_7(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  v16 = __chkstk_darwin(v15);
  v18 = (&v32 - v17);
  (*(v5 + 128))(v16);
  OUTLINED_FUNCTION_33_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *v18;
    *(a1 + 8) = 0;
    v23 = enum case for RCHFlowResult.error<A, B>(_:);
    OUTLINED_FUNCTION_4_62();
    v24 = type metadata accessor for RCHFlowResult();
    OUTLINED_FUNCTION_0_92(v24);
    return (*(v25 + 104))(a1, v23);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    OUTLINED_FUNCTION_4_62();
    v20 = type metadata accessor for RCHFlowResult();
    OUTLINED_FUNCTION_0_92(v20);
    return (*(v21 + 32))(a1, v18);
  }

  else
  {
    v26 = enum case for RCHFlowResult.cancelled<A, B>(_:);
    OUTLINED_FUNCTION_4_62();
    v27 = type metadata accessor for RCHFlowResult();
    OUTLINED_FUNCTION_0_92(v27);
    (*(v28 + 104))(a1, v26);
    v29 = *(v12 + 8);
    v30 = OUTLINED_FUNCTION_33_4();
    return v31(v30);
  }
}

uint64_t specialized PhoneIntentRCHFlow.__allocating_init(phoneCallNLIntent:app:rchFlowProvider:sharedGlobals:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  outlined init with copy of SignalProviding(a1, &v18[-v13 - 8]);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a5, v18);
  v15 = (*(v5 + 160))(v14, a2, a3, a4, v18);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t PhoneIntentRCHFlow.__allocating_init(phoneCallNLIntent:app:rchFlowProvider:sharedGlobals:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = *(v5 + 80);
  v12 = *(v5 + 88);
  v13 = type metadata accessor for PhoneIntentRCHFlow.State();
  OUTLINED_FUNCTION_23_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  v18 = &v22[-v17 - 8];
  outlined init with copy of SignalProviding(a1, &v22[-v17 - 8]);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a5, v22);
  v19 = (*(v5 + 160))(v18, a2, a3, a4, v22);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

uint64_t PhoneIntentRCHFlow.__allocating_init(state:app:rchFlowProvider:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_6_64();
  PhoneIntentRCHFlow.init(state:app:rchFlowProvider:sharedGlobals:)();
  return v0;
}

void *specialized PhoneIntentRCHFlow.init(state:app:rchFlowProvider:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  outlined init with take of PhoneIntentRCHFlow<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>.State(a1, v5 + *(*v5 + 120));
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  outlined init with take of SPHConversation(a5, (v5 + 5));
  return v5;
}

char *PhoneIntentRCHFlow.init(state:app:rchFlowProvider:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  v6 = *v1;
  OUTLINED_FUNCTION_47_0();
  v8 = *(v7 + 120);
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_47_0();
  v12 = *(v11 + 88);
  v13 = type metadata accessor for PhoneIntentRCHFlow.State();
  OUTLINED_FUNCTION_0_92(v13);
  (*(v14 + 32))(&v1[v8], v5);
  *(v1 + 2) = v4;
  *(v1 + 3) = v3;
  *(v1 + 4) = v2;
  outlined init with take of SPHConversation(v0, (v1 + 40));
  return v1;
}

uint64_t PhoneIntentRCHFlow.execute(completion:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 88);
  type metadata accessor for PhoneIntentRCHFlow();
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneIntentRCHFlow.execute()(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = *v1;
  v4 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = *(v3 + 80);
  v2[35] = *(v3 + 88);
  v5 = type metadata accessor for PhoneIntentRCHFlow.State();
  v2[36] = v5;
  v6 = *(v5 - 8);
  v2[37] = v6;
  v7 = *(v6 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(PhoneIntentRCHFlow.execute(), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 352) = v1;

  if (v1)
  {
    v8 = PhoneIntentRCHFlow.execute();
  }

  else
  {

    *(v4 + 360) = a1;
    v8 = PhoneIntentRCHFlow.execute();
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t PhoneIntentRCHFlow.execute()()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 128))();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v63 = **(v0 + 312);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v64 = *(v0 + 256);
      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Logger.siriPhone);

      v66 = v63;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v70 = *(v0 + 272);
        v69 = *(v0 + 280);
        v71 = *(v0 + 256);
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v106 = v74;
        *v72 = 136315394;
        *(v0 + 232) = v71;
        OUTLINED_FUNCTION_15_42();
        v75 = String.init<A>(describing:)();
        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v106);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2112;
        *(v72 + 14) = v66;
        *v73 = v66;
        v78 = v66;
        _os_log_impl(&dword_0, v67, v68, "#%s .convertedToSKIntent: %@", v72, 0x16u);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_26_0();
        __swift_destroy_boxed_opaque_existential_1(v74);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v80 = *(v0 + 248);
      v79 = *(v0 + 256);
      v81 = *(v79 + 32);
      (*(v79 + 24))(v66, *(v79 + 16), v79 + 40);
      implicit closure #5 in PhoneIntentRCHFlow.execute()();
      static ExecuteResponse.complete<A>(next:childCompletion:)();

      break;
    case 2u:
      v34 = **(v0 + 312);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v35 = *(v0 + 256);
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.siriPhone);

      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v40 = *(v0 + 272);
        v39 = *(v0 + 280);
        v41 = *(v0 + 256);
        v42 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *v42 = 136315394;
        *(v0 + 216) = v41;
        type metadata accessor for PhoneIntentRCHFlow();

        v43 = String.init<A>(describing:)();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v106);

        *(v42 + 4) = v45;
        *(v42 + 12) = 2080;
        swift_getErrorValue();
        v47 = *(v0 + 136);
        v46 = *(v0 + 144);
        v48 = *(v0 + 152);
        v49 = Error.localizedDescription.getter();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v106);

        *(v42 + 14) = v51;
        _os_log_impl(&dword_0, v37, v38, "#%s .completeWithError: %s", v42, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v53 = *(v0 + 256);
      v52 = *(v0 + 264);
      v54 = *(v0 + 248);
      type metadata accessor for StartCallCATsSimple();
      static CATOption.defaultMode.getter();
      v55 = CATWrapperSimple.__allocating_init(options:globals:)();
      v56 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v53 + 40), v55);

      v58 = (*(*v56 + 112))(v57);

      *(v0 + 208) = v58;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();

      break;
    case 3u:
      v59 = *(v0 + 312);
      v60 = *(v0 + 288);
      v61 = *(v0 + 296);
      v62 = *(v0 + 248);
      static ExecuteResponse.complete()();
      (*(v61 + 8))(v59, v60);
      break;
    default:
      v5 = *(v0 + 272);
      v6 = *(v0 + 256);
      outlined init with take of SPHConversation(*(v0 + 312), v0 + 16);
      v7 = v6[2];
      *(v0 + 320) = v7;
      v8 = v6[9];
      __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
      v9 = *(v8 + 80);

      v10 = OUTLINED_FUNCTION_33_4();
      v9(v10);
      SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v0 + 16, v7, 0, 0, v5, v11, v12, v13, v93, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v0);
      v15 = v14;
      outlined destroy of SKTransformer(v0 + 56);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v16 = *(v0 + 256);
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriPhone);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v21 = *(v0 + 272);
        v20 = *(v0 + 280);
        v22 = *(v0 + 256);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v106 = v24;
        *v23 = 136315138;
        *(v0 + 240) = v22;
        OUTLINED_FUNCTION_15_42();
        v25 = String.init<A>(describing:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v106);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_0, v18, v19, "#%s Resolving SKIntent:", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v28 = v6[9];
      __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
      v29 = *(v28 + 88);
      v30 = OUTLINED_FUNCTION_33_4();
      v31(v30);
      v32 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      if (v15)
      {
        v33 = v15;
      }

      else
      {
        v87 = *(v0 + 272);
        v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      *(v0 + 328) = v15;
      *(v0 + 336) = v33;
      v88 = *(v32 + 8);
      v89 = v15;
      v95 = v88 + *v88;
      v90 = v88[1];
      v91 = swift_task_alloc();
      *(v0 + 344) = v91;
      *v91 = v0;
      v91[1] = PhoneIntentRCHFlow.execute();
      v92 = *(v0 + 272);

      __asm { BRAA            X8, X16 }

      return result;
  }

  v83 = *(v0 + 304);
  v82 = *(v0 + 312);
  v84 = *(v0 + 264);

  OUTLINED_FUNCTION_11();

  return v85();
}

{
  v1 = v0[45];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[32];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = *(*v5 + 120);
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_14_47();
  v8(v7);
  swift_endAccess();
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[31];
  static ExecuteResponse.replan(requireInput:)();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = v0[38];
  v12 = v0[39];
  v14 = v0[33];

  OUTLINED_FUNCTION_11();

  return v15();
}

{
  v1 = *(v0 + 352);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = *(*v5 + 120);
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_14_47();
  v8(v7);
  swift_endAccess();
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 248);
  static ExecuteResponse.replan(requireInput:)();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v14 = *(v0 + 264);

  OUTLINED_FUNCTION_11();

  return v15();
}

uint64_t PhoneIntentRCHFlow.childRCHFlowComplete(_:)(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for PhoneIntentRCHFlow.State();
  OUTLINED_FUNCTION_7(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for RCHFlowResult();
  OUTLINED_FUNCTION_0_92(v16);
  (*(v17 + 16))(v15, a1);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_0();
  v19 = *(v18 + 120);
  swift_beginAccess();
  (*(v10 + 40))(&v1[v19], v15, v8);
  return swift_endAccess();
}

uint64_t *specialized PhoneIntentRCHFlow.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + *(*v0 + 120), &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  return v0;
}

void *PhoneIntentRCHFlow.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_2_0();
  v5 = *(v4 + 120);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = type metadata accessor for PhoneIntentRCHFlow.State();
  OUTLINED_FUNCTION_23_1(v8);
  (*(v9 + 8))(v0 + v5);
  return v0;
}

uint64_t PhoneIntentRCHFlow.__deallocating_deinit()
{
  PhoneIntentRCHFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneIntentRCHFlow<A, B>(uint64_t a1)
{
  v4 = *(**v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance PhoneIntentRCHFlow<A, B>;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance PhoneIntentRCHFlow<A, B>()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t AddCallParticipantRCHFlow.__allocating_init(state:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR) - 8) + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v14[-v9 - 8];
  outlined init with copy of PhoneIntentRCHFlow<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>.State(a1, &v14[-v9 - 8]);
  outlined init with copy of SignalProviding(a3, v14);
  v11 = (*(v3 + 160))(v10, a2, implicit closure #1 in AddCallParticipantRCHFlow.init(state:app:sharedGlobals:), 0, v14);
  __swift_destroy_boxed_opaque_existential_1(a3);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  return v11;
}

void *AddCallParticipantRCHFlow.__allocating_init(state:app:rchFlowProvider:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_6_64();
  return specialized PhoneIntentRCHFlow.init(state:app:rchFlowProvider:sharedGlobals:)(v3, v4, v5, v6, v7);
}

uint64_t AddCallParticipantRCHFlow.__deallocating_deinit()
{
  v0 = *specialized PhoneIntentRCHFlow.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of PhoneIntentRCHFlow<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for PhoneIntentRCHFlow(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for PhoneIntentRCHFlow.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PhoneIntentRCHFlow.State(uint64_t a1)
{
  type metadata accessor for (phoneCallNLIntent: PhoneCallNLIntent)();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v3 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = type metadata accessor for PhoneCallNLIntent(319, &lazy cache variable for type metadata for Error);
      if (v8 > 0x3F)
      {
        return v7;
      }

      else
      {
        v9 = *(a1 + 24);
        v3 = type metadata accessor for RCHFlowResult();
        if (v10 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v3;
}

void type metadata accessor for (phoneCallNLIntent: PhoneCallNLIntent)()
{
  if (!lazy cache variable for type metadata for (phoneCallNLIntent: PhoneCallNLIntent))
  {
    v0 = type metadata accessor for PhoneCallNLIntent(0, &lazy cache variable for type metadata for PhoneCallNLIntent);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (phoneCallNLIntent: PhoneCallNLIntent));
    }
  }
}

uint64_t type metadata accessor for PhoneCallNLIntent(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for AddCallParticipantRCHFlow()
{
  result = type metadata singleton initialization cache for AddCallParticipantRCHFlow;
  if (!type metadata singleton initialization cache for AddCallParticipantRCHFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of PhoneIntentRCHFlow<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMd, &_s27PhoneCallFlowDelegatePlugin0A13IntentRCHFlowC5StateOySo05INAddb11ParticipantF0CSo0ibjF8ResponseC_GMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PhoneIntentExecutionBehavior.asSiriKitIntentExecutionBehavior.getter(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for SiriKitIntentHandler();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  if (!a1)
  {
    return static SiriKitIntentExecutionBehavior.standard()();
  }

  type metadata accessor for INIntent();

  v11 = a2;
  v12 = a3;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  v13 = static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  (*(v7 + 8))(v10, v6);
  return v13;
}

BOOL static PhoneIntentExecutionBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    if (a4)
    {
      type metadata accessor for App();
      if (static App.== infix(_:_:)())
      {
        ObjectType = swift_getObjectType();
        if (ObjectType == swift_getObjectType())
        {
          v9 = [a3 typeName];
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          v13 = [a6 typeName];
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          if (v10 != v14 || v12 != v16)
          {
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            return v18 & 1;
          }

          return 1;
        }
      }
    }

    return 0;
  }

  return !a4;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin0A23IntentExecutionBehaviorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PhoneIntentExecutionBehavior(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PhoneIntentExecutionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PhoneIntentExecutionBehavior(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t PhoneIntentNoOpHandleIntentFlowStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v6[40] = 0;
  a4(v6);
  return outlined destroy of Result<Output, Error>(v6);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(a6 + 80);
  v15 = *(a6 + 88);
  v16 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy();

  return a8(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t protocol witness for IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v7, a3);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 80);
  v8 = *(a3 + 88);
  v9 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v9, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 80);
  v8 = *(a3 + 88);
  v9 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:) in conformance PhoneIntentNoOpHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 80);
  v12 = *(a5 + 88);
  v13 = type metadata accessor for PhoneIntentNoOpHandleIntentFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v13, a6);
}

uint64_t PhoneIntentRCHFlowStrategy.__allocating_init(sharedGlobals:app:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of SPHConversation(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t PhoneIntentRCHFlowStrategy.init(sharedGlobals:app:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of SPHConversation(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t PhoneIntentRCHFlowStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = (*(v7 + 72))(v6, v7);
  Input.parse.getter();
  (*(*v8 + 192))(&v24, v5);

  (*(v2 + 8))(v5, v1);
  if (!v25)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v24, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return static ActionForInput.ignore()();
  }

  outlined init with take of SPHConversation(&v24, v26);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_1_16();
  v13 = v12(v11);
  (*(*v13 + 224))(&v24);

  outlined init with copy of PhoneCallNLIntent?(&v24, v18, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  if (!v18[4])
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v18, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_8;
  }

  outlined init with copy of PhoneCallNLIntent?(&v19, &v20, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  outlined destroy of TransformationResult(v18);
  if (!*(&v21 + 1))
  {
LABEL_8:
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v20, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
LABEL_10:
    static ActionForInput.handle()();
    goto LABEL_11;
  }

  outlined init with take of SPHConversation(&v20, v23);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  outlined init with copy of SignalProviding(v23, v18);
  PhoneCallNLIntent.shouldResetRequest(previousNLIntent:)();
  v15 = v14;
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v18, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if ((v15 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    goto LABEL_10;
  }

  static ActionForInput.ignore()();
  __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_11:
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v24, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t PhoneIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  return _swift_task_switch(PhoneIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t PhoneIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v58 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v0 + 16) = v5;
    v8 = *(v6 + 80);
    v9 = *(v6 + 88);
    type metadata accessor for PhoneIntentRCHFlowStrategy();

    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v57);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045BB60, v57);
    _os_log_impl(&dword_0, v3, v4, "#%s %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v13 = *(v0 + 112);
  v14 = *(v0 + 96);
  v15 = v13[6];
  __swift_project_boxed_opaque_existential_1(v13 + 2, v13[5]);
  v16 = *(v15 + 72);
  v17 = OUTLINED_FUNCTION_1_16();
  v19 = v18(v17);
  (*(*v19 + 192))(v14);

  if (*(v0 + 80))
  {
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v22 = *(v0 + 104);
    outlined init with take of SPHConversation((v0 + 56), v0 + 16);
    v23 = v13[6];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v13[5]);
    v24 = *(v23 + 80);
    v25 = OUTLINED_FUNCTION_1_16();
    v26(v25);
    v27 = *(v21 + 56);
    v28 = *(v20 + 80);

    v29 = v22;
    SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v0 + 16, v27, v22, 0, v28, v30, v31, v32, v55, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v58);
    v34 = v33;

    outlined destroy of SKTransformer(v0 + 56);
    if (v34)
    {
      v35 = *(v0 + 112);

      v36 = v34;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 112);
        v56 = *(v0 + 120);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v57[0] = v42;
        *v40 = 136315394;
        *(v0 + 56) = v39;
        v43 = *(v56 + 88);
        type metadata accessor for PhoneIntentRCHFlowStrategy();

        v44 = String.init<A>(describing:)();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v57);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v36;
        *v41 = v34;
        v47 = v36;
        _os_log_impl(&dword_0, v37, v38, "#%s intent: %@", v40, 0x16u);
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_26_0();
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v48 = *(v0 + 8);

      return v48(v36);
    }

    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    v52 = swift_allocError();
    OUTLINED_FUNCTION_15_5(xmmword_42D060, v52, v53);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    v50 = swift_allocError();
    OUTLINED_FUNCTION_15_5(xmmword_42D060, v50, v51);
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t PhoneIntentRCHFlowStrategy.__deallocating_deinit()
{
  PhoneIntentRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels();

  return v10(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for PhoneIntentRCHFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v7, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance PhoneIntentRCHFlowStrategy<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 80);
  v14 = *(a4 + 88);
  v15 = type metadata accessor for PhoneIntentRCHFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 80);
  v14 = *(a4 + 88);
  v15 = type metadata accessor for PhoneIntentRCHFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 80);
  v14 = *(a4 + 88);
  v15 = type metadata accessor for PhoneIntentRCHFlowStrategy();
  *v12 = v5;
  v12[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  v17 = type metadata accessor for PhoneIntentRCHFlowStrategy();
  *v14 = v6;
  v14[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v17, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  v17 = type metadata accessor for PhoneIntentRCHFlowStrategy();
  *v14 = v6;
  v14[1] = protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v17, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PhoneIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for PhoneIntentRCHFlowStrategy();
  *v10 = v4;
  v10[1] = protocol witness for Flow.onAsync(input:) in conformance AnnounceVoicemailReadingFlow;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v13, a4);
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v11[0] = v8;
    v11[1] = v7;

    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v8;
    }

    v6 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v8 = result;
  v10 = *(a2 + 16);
  v11 = a2 + 32;
  if (v10)
  {
    while (1)
    {
      outlined init with copy of PhoneCallNLIntent?(v11, v14, a3, a4);
      result = v8(v14);
      if (v5)
      {
        return OUTLINED_FUNCTION_45_15(v14);
      }

      if (result)
      {
        break;
      }

      result = OUTLINED_FUNCTION_45_15(v14);
      v11 += 64;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v12 = v14[1];
    *a5 = v14[0];
    a5[1] = v12;
    v13 = v14[3];
    a5[2] = v14[2];
    a5[3] = v13;
  }

  else
  {
LABEL_5:
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo07INStartbO0C_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStarteJ0CGGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStarteJ0CGGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FF0;
  outlined init with copy of SignalProviding(a4, v17);
  v11 = [objc_allocWithZone(HKHealthStore) init];
  v12 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v11];

  v17[8] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v17[9] = &protocol witness table for HKMedicalIDStore;
  v17[5] = v12;
  specialized SKIntentResolver.toAnyIntentResolver()((v10 + 32));
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  outlined init with copy of SignalProviding(a4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo07INStartB6IntentCGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(v17, v13 + 40);
  *(v13 + 80) = 0;
  *(v13 + 88) = 1;
  v14 = a3;

  v15 = a2;
  specialized SKIntentResolver.toAnyIntentResolver()(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo07INStartB6IntentCGMR, partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:), &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:), (v10 + 96));

  _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo07INStartbL0C_Tt1g5(v10, a5);
}

uint64_t _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo012INStartAudiobO0C_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudioeJ0CGGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudioeJ0CGGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FF0;
  outlined init with copy of SignalProviding(a4, v17);
  v11 = [objc_allocWithZone(HKHealthStore) init];
  v12 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v11];

  v17[8] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v17[9] = &protocol witness table for HKMedicalIDStore;
  v17[5] = v12;
  specialized SKIntentResolver.toAnyIntentResolver()((v10 + 32));
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  outlined init with copy of SignalProviding(a4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartAudioB6IntentCGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(v17, v13 + 40);
  *(v13 + 80) = 0;
  *(v13 + 88) = 1;
  v14 = a3;

  v15 = a2;
  specialized SKIntentResolver.toAnyIntentResolver()(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartAudioB6IntentCGMR, partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:), &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:), (v10 + 96));

  _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo012INStartAudiobL0C_Tt1g5(v10, a5);
}

uint64_t _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo012INStartVideobO0C_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideoeJ0CGGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideoeJ0CGGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FF0;
  outlined init with copy of SignalProviding(a4, v17);
  v11 = [objc_allocWithZone(HKHealthStore) init];
  v12 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v11];

  v17[8] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v17[9] = &protocol witness table for HKMedicalIDStore;
  v17[5] = v12;
  specialized SKIntentResolver.toAnyIntentResolver()((v10 + 32));
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  outlined init with copy of SignalProviding(a4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartVideoB6IntentCGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(v17, v13 + 40);
  *(v13 + 80) = 0;
  *(v13 + 88) = 1;
  v14 = a3;

  v15 = a2;
  specialized SKIntentResolver.toAnyIntentResolver()(&_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin32SiriInferenceContactSlotResolverCySo012INStartVideoB6IntentCGMR, partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:), &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:), (v10 + 96));

  _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo012INStartVideobL0C_Tt1g5(v10, a5);
}

uint64_t specialized SKIntentResolver.toAnyIntentResolver()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AddCallParticipantContactSlotResolver();
  *a1 = v1;
  a1[3] = v3;
  a1[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a1[5] = v1;
  a1[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a1[7] = v1;
  return swift_retain_n();
}

void *specialized SKIntentResolver.toAnyIntentResolver()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of PhoneCallNLIntent?(v1, __src, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  v3 = swift_allocObject();
  *a1 = v3;
  outlined init with copy of PhoneCallNLIntent?(__src, v3 + 16, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  outlined init with copy of PhoneCallNLIntent?(__src, v7, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartVideoB6IntentCGMR);
  v4 = swift_allocObject();
  memcpy((v4 + 16), v7, 0x50uLL);
  a1[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a1[5] = v4;
  v5 = swift_allocObject();
  result = memcpy((v5 + 16), __src, 0x50uLL);
  a1[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a1[7] = v5;
  return result;
}

{
  outlined init with copy of PhoneCallNLIntent?(v1, __src, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  v3 = swift_allocObject();
  *a1 = v3;
  outlined init with copy of PhoneCallNLIntent?(__src, v3 + 16, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  outlined init with copy of PhoneCallNLIntent?(__src, v7, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo012INStartAudioB6IntentCGMR);
  v4 = swift_allocObject();
  memcpy((v4 + 16), v7, 0x50uLL);
  a1[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a1[5] = v4;
  v5 = swift_allocObject();
  result = memcpy((v5 + 16), __src, 0x50uLL);
  a1[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a1[7] = v5;
  return result;
}

{
  outlined init with copy of PhoneCallNLIntent?(v1, __src, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  v3 = swift_allocObject();
  *a1 = v3;
  outlined init with copy of PhoneCallNLIntent?(__src, v3 + 16, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  outlined init with copy of PhoneCallNLIntent?(__src, v7, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28EmergencyContactSlotResolverVySo07INStartB6IntentCGMR);
  v4 = swift_allocObject();
  memcpy((v4 + 16), v7, 0x50uLL);
  a1[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a1[5] = v4;
  v5 = swift_allocObject();
  result = memcpy((v5 + 16), __src, 0x50uLL);
  a1[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a1[7] = v5;
  return result;
}

uint64_t specialized SKIntentResolver.toAnyIntentResolver()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  *a5 = v5;
  a5[3] = v9;
  a5[4] = a3;
  a5[5] = v5;
  a5[6] = a4;
  a5[7] = v5;
  return swift_retain_n();
}

uint64_t _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo012INStartVideobL0C_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo012INStartVideobH0CGMd, &_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo012INStartVideobH0CGMR);
  *a2 = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a2[5] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a2[7] = v5;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo012INStartAudiobL0C_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo012INStartAudiobH0CGMd, &_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo012INStartAudiobH0CGMR);
  *a2 = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a2[5] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a2[7] = v5;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s27PhoneCallFlowDelegatePlugin21SKIntentResolverChainO8firstHityAA09AnyIntentG0VyxGAGd_tSo8INIntentCRbzlFZSo07INStartbL0C_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo07INStartbH0CGMd, &_s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVySo07INStartbH0CGMR);
  *a2 = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[4] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
  a2[5] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[6] = &async function pointer to partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  a2[7] = v5;
  return swift_bridgeObjectRetain_n();
}

uint64_t PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[44] = a6;
  v7[45] = a7;
  v7[42] = a4;
  v7[43] = a5;
  v7[40] = a2;
  v7[41] = a3;
  v7[39] = a1;
  return _swift_task_switch(PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:), 0, 0);
}

uint64_t PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:)()
{
  v67 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = *(v0 + 320);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v3, static Logger.siriPhone);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 320);
    v8 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_12_17();
    swift_slowAlloc();
    OUTLINED_FUNCTION_26_25();
    *v8 = 136315138;
    v9 = [v7 _className];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v66);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v5, v6, "#PhoneIntentResolver Resolving %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
    OUTLINED_FUNCTION_5_39();

    OUTLINED_FUNCTION_8();
  }

  v14 = *(v0 + 320);
  objc_opt_self();
  if (OUTLINED_FUNCTION_49_19())
  {
    v15 = OUTLINED_FUNCTION_32_20();
    _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo07INStartbO0C_Tt2g5(v15, v16, v17, v18, (v0 + 208));
    v19 = *(v0 + 264);
    OUTLINED_FUNCTION_0_93(*(v0 + 256));
    v65 = v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    *(v0 + 368) = v23;
    *v23 = v0;
    v24 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
LABEL_11:
    v23[1] = v24;
    v45 = *(v0 + 312);

    return v65(v6, v45);
  }

  v25 = *(v0 + 320);
  objc_opt_self();
  if (OUTLINED_FUNCTION_49_19())
  {
    v26 = OUTLINED_FUNCTION_32_20();
    _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo012INStartAudiobO0C_Tt2g5(v26, v27, v28, v29, (v0 + 144));
    v30 = *(v0 + 200);
    OUTLINED_FUNCTION_0_93(*(v0 + 192));
    v65 = v31;
    v33 = *(v32 + 4);
    v23 = swift_task_alloc();
    *(v0 + 392) = v23;
    *v23 = v0;
    v24 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
    goto LABEL_11;
  }

  v34 = *(v0 + 320);
  objc_opt_self();
  if (OUTLINED_FUNCTION_49_19())
  {
    v35 = OUTLINED_FUNCTION_32_20();
    _s27PhoneCallFlowDelegatePlugin19ContactSlotResolverO4make03rchC7Context13sharedGlobalsAA09AnyIntentH0VyxGAA13SKTransformerV07RCHFlowK0V_AA06SharedM9Providing_ptAA013NCRResolvableO0RzlFZSo012INStartVideobO0C_Tt2g5(v35, v36, v37, v38, (v0 + 80));
    v39 = *(v0 + 136);
    OUTLINED_FUNCTION_0_93(*(v0 + 128));
    v65 = v40;
    v42 = *(v41 + 4);
    v43 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_47_20(v43);
    *v23 = v44;
    v24 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
    goto LABEL_11;
  }

  v47 = *(v0 + 320);
  objc_opt_self();
  v48 = OUTLINED_FUNCTION_49_19();
  if (v48)
  {
    v6 = v48;
    v49 = *(v0 + 344);
    v50 = *(v0 + 328);
    v51 = *(v0 + 336);
    v52 = *(v0 + 312);
    outlined init with copy of SignalProviding(*(v0 + 352), v0 + 272);
    type metadata accessor for AddCallParticipantContactSlotResolver();
    v53 = swift_allocObject();
    v53[2] = v50;
    v53[3] = v51;
    v53[4] = v49;
    outlined init with take of PhoneCallFeatureFlagProviding(v0 + 272, v53 + 5);
    v54 = v49;

    v55 = v51;
    specialized SKIntentResolver.toAnyIntentResolver()((v0 + 16));

    v56 = *(v0 + 56);
    if ((*(v0 + 48))(v6, v52))
    {
      v57 = *(v0 + 72);
      OUTLINED_FUNCTION_0_93(*(v0 + 64));
      v65 = v58;
      v60 = *(v59 + 4);
      v23 = swift_task_alloc();
      *(v0 + 440) = v23;
      *v23 = v0;
      v24 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
      goto LABEL_11;
    }

    v61 = *(v0 + 360);
    v62 = *(v0 + 320);
    INIntent.typedOrThrow<A>(as:)();
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMR);
  }

  else
  {
    *(v0 + 320);
  }

  v63 = OUTLINED_FUNCTION_2_8();

  return v64(v63);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 368);
  *v3 = *v1;
  *(v2 + 376) = v6;
  *(v2 + 384) = v0;

  if (v0)
  {
    v7 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  else
  {
    v7 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = OUTLINED_FUNCTION_50_20();
  v4 = *(v0 + 376);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);

  OUTLINED_FUNCTION_17_5();
  if (!v2)
  {
    v5 = v3;
  }

  return v6(v5);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
  v1 = *(v0 + 384);
  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 392);
  *v3 = *v1;
  *(v2 + 400) = v6;
  *(v2 + 408) = v0;

  if (v0)
  {
    v7 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  else
  {
    v7 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = OUTLINED_FUNCTION_50_20();
  v4 = *(v0 + 400);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);

  OUTLINED_FUNCTION_17_5();
  if (!v2)
  {
    v5 = v3;
  }

  return v6(v5);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
  v1 = *(v0 + 408);
  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 416);
  *v3 = *v1;
  *(v2 + 424) = v6;
  *(v2 + 432) = v0;

  if (v0)
  {
    v7 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  else
  {
    v7 = PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = OUTLINED_FUNCTION_50_20();
  v4 = *(v0 + 424);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);

  OUTLINED_FUNCTION_17_5();
  if (!v2)
  {
    v5 = v3;
  }

  return v6(v5);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
  v1 = *(v0 + 432);
  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 440);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 448) = v0;

  if (!v0)
  {
    *(v5 + 456) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = OUTLINED_FUNCTION_50_20();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMR);

  OUTLINED_FUNCTION_17_5();
  if (!v2)
  {
    v4 = v3;
  }

  return v5(v4);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo05INAddb11ParticipantG0CGMR);
  v1 = *(v0 + 448);
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t protocol witness for PhoneIntentResolving.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:) in conformance PhoneIntentResolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = protocol witness for PhoneIntentResolving.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:) in conformance PhoneIntentResolver;

  return PhoneIntentResolver.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for PhoneIntentResolving.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:) in conformance PhoneIntentResolver()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(*a3 + 128))() & 1;
}

{
  return (*(*a3 + 128))() & 1;
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolve(skIntent:nlIntent:)();
}

{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolve(skIntent:nlIntent:)();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 32) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_36_21();
  INStartVideoCallIntent.overwriteContacts(newContacts:)(v1);

  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_34_16();

  return v4(v3);
}

{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolve(skIntent:nlIntent:)();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 32) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_36_21();
  INStartAudioCallIntent.overwriteContacts(newContacts:)(v1);

  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_34_16();

  return v4(v3);
}

{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolve(skIntent:nlIntent:)();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 32) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_36_21();
  INStartCallIntent.overwriteContacts(newContacts:)(v1);

  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_34_16();

  return v4(v3);
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, a3);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, a3);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, a3);
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, a2);
}

{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, a2);
}

{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, a2);
}

uint64_t specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  return _swift_task_switch(specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  return _swift_task_switch(specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

{
  v3[50] = a2;
  v3[51] = a3;
  v3[49] = a1;
  return _swift_task_switch(specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

uint64_t specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v19 = OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_31_22(v19);
  OUTLINED_FUNCTION_21_31(v20, v21, v22, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);

  outlined init with copy of PhoneCallNLIntent?(v15 + 16, v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
  if (*(v15 + 168))
  {
    OUTLINED_FUNCTION_23_25();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
    outlined init with copy of PhoneCallNLIntent?(v15 + 80, v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v25))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_40_21();
      OUTLINED_FUNCTION_26_25();
      *v14 = 136315394;
      *(v15 + 376) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
      v26 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v26, v27, v28);
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_30_29();
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_42_20();
      outlined init with copy of Any(v15 + 272, v15 + 336);
      v29 = OUTLINED_FUNCTION_27_25();
      OUTLINED_FUNCTION_51_22(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      String.init<A>(describing:)();
      v30 = OUTLINED_FUNCTION_24_31();
      v31 = OUTLINED_FUNCTION_43_22(v30);

      *(v14 + 14) = v31;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
    }

    v49 = *(v15 + 120);
    if ((*(v15 + 112))(*(v15 + 392), *(v15 + 400)))
    {
      v50 = *(v15 + 136);
      OUTLINED_FUNCTION_0_93(*(v15 + 128));
      a9 = v51;
      v53 = *(v52 + 4);
      v54 = swift_task_alloc();
      v55 = OUTLINED_FUNCTION_47_20(v54);
      *v55 = v56;
      OUTLINED_FUNCTION_14_48(v55);
      OUTLINED_FUNCTION_15_11();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
    }

    *v18;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v39))
    {
      v40 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_17();
      swift_slowAlloc();
      OUTLINED_FUNCTION_26_25();
      *v40 = 136315138;
      *(v15 + 368) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
      v41 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v41, v42, v43);
      OUTLINED_FUNCTION_113_0();
      *(v40 + 4) = v17;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
    *v18;
  }

  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_15_11();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  v19 = OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_31_22(v19);
  OUTLINED_FUNCTION_21_31(v20, v21, v22, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);

  outlined init with copy of PhoneCallNLIntent?(v15 + 16, v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
  if (*(v15 + 168))
  {
    OUTLINED_FUNCTION_23_25();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
    outlined init with copy of PhoneCallNLIntent?(v15 + 80, v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v25))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_40_21();
      OUTLINED_FUNCTION_26_25();
      *v14 = 136315394;
      *(v15 + 376) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
      v26 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v26, v27, v28);
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_30_29();
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_42_20();
      outlined init with copy of Any(v15 + 272, v15 + 336);
      v29 = OUTLINED_FUNCTION_27_25();
      OUTLINED_FUNCTION_51_22(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      String.init<A>(describing:)();
      v30 = OUTLINED_FUNCTION_24_31();
      v31 = OUTLINED_FUNCTION_43_22(v30);

      *(v14 + 14) = v31;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
    }

    v49 = *(v15 + 120);
    if ((*(v15 + 112))(*(v15 + 392), *(v15 + 400)))
    {
      v50 = *(v15 + 136);
      OUTLINED_FUNCTION_0_93(*(v15 + 128));
      a9 = v51;
      v53 = *(v52 + 4);
      v54 = swift_task_alloc();
      v55 = OUTLINED_FUNCTION_47_20(v54);
      *v55 = v56;
      OUTLINED_FUNCTION_14_48(v55);
      OUTLINED_FUNCTION_15_11();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
    }

    *v18;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v39))
    {
      v40 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_17();
      swift_slowAlloc();
      OUTLINED_FUNCTION_26_25();
      *v40 = 136315138;
      *(v15 + 368) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
      v41 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v41, v42, v43);
      OUTLINED_FUNCTION_113_0();
      *(v40 + 4) = v17;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
    *v18;
  }

  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_15_11();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  v19 = OUTLINED_FUNCTION_41_24();
  OUTLINED_FUNCTION_31_22(v19);
  OUTLINED_FUNCTION_21_31(v20, v21, v22, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);

  outlined init with copy of PhoneCallNLIntent?(v15 + 16, v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
  if (*(v15 + 168))
  {
    OUTLINED_FUNCTION_23_25();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
    outlined init with copy of PhoneCallNLIntent?(v15 + 80, v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v25))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_40_21();
      OUTLINED_FUNCTION_26_25();
      *v14 = 136315394;
      *(v15 + 376) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
      v26 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v26, v27, v28);
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_30_29();
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_42_20();
      outlined init with copy of Any(v15 + 272, v15 + 336);
      v29 = OUTLINED_FUNCTION_27_25();
      OUTLINED_FUNCTION_51_22(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      String.init<A>(describing:)();
      v30 = OUTLINED_FUNCTION_24_31();
      v31 = OUTLINED_FUNCTION_43_22(v30);

      *(v14 + 14) = v31;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 208, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
    }

    v49 = *(v15 + 120);
    if ((*(v15 + 112))(*(v15 + 392), *(v15 + 400)))
    {
      v50 = *(v15 + 136);
      OUTLINED_FUNCTION_0_93(*(v15 + 128));
      a9 = v51;
      v53 = *(v52 + 4);
      v54 = swift_task_alloc();
      v55 = OUTLINED_FUNCTION_47_20(v54);
      *v55 = v56;
      OUTLINED_FUNCTION_14_48(v55);
      OUTLINED_FUNCTION_15_11();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
    }

    *v18;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 144, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v39))
    {
      v40 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_17();
      swift_slowAlloc();
      OUTLINED_FUNCTION_26_25();
      *v40 = 136315138;
      *(v15 + 368) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
      v41 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_38_20(v41, v42, v43);
      OUTLINED_FUNCTION_113_0();
      *(v40 + 4) = v17;
      OUTLINED_FUNCTION_9_57();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v15 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
    *v18;
  }

  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_15_11();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

uint64_t specialized FirstHitIntentResolver.resolve(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 416);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 424) = v0;

  if (!v0)
  {
    *(v5 + 432) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 432);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
  v2 = OUTLINED_FUNCTION_2_8();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGSgMR);
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 424);

  return v1();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 416);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 424) = v0;

  if (!v0)
  {
    *(v5 + 432) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 432);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
  v2 = OUTLINED_FUNCTION_2_8();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGSgMR);
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 424);

  return v1();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 416);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 424) = v0;

  if (!v0)
  {
    *(v5 + 432) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 432);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
  v2 = OUTLINED_FUNCTION_2_8();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_15();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 80, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGSgMR);
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 424);

  return v1();
}

uint64_t specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *(a1 + 40);
  v9 = (*(a1 + 32))(a2, a3);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  outlined init with copy of PhoneCallNLIntent?(a1, v22, a4, a5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v13 = 136315394;
    outlined init with copy of PhoneCallNLIntent?(v22, v21, a4, a5);
    OUTLINED_FUNCTION_45_15(v22);
    outlined init with copy of Any(v21, v20);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    OUTLINED_FUNCTION_45_15(v21);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v9 & 1;
    _os_log_impl(&dword_0, v11, v12, "#%s shouldRunResolver = %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_5_39();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    OUTLINED_FUNCTION_45_15(v22);
  }

  return v9 & 1;
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)();
}

{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2, v6);
}

{
  v4 = *a3;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)();
}

{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2, v6);
}

{
  v4 = *a3;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)();
}

{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2, v6);
}

{
  v4 = *a3;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)();
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(a1, a2, (v2 + 16));
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(a1, a2, v2) & 1;
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:)(a1, a2, v2);
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_46_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_77(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(v3, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_46_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_77(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_17_5();

  return v6(v0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(v3, v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_17_5();

  return v6(v0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_46_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_77(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
  v3 = OUTLINED_FUNCTION_4_63();

  return specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(v3, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_46_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_77(v1);

  return v4(v3);
}

uint64_t partial apply for specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1)
{
  return specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo07INStartbG0CGMR) & 1;
}

{
  return specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartAudiobG0CGMR) & 1;
}

{
  return specialized closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMd, &_s27PhoneCallFlowDelegatePlugin17AnyIntentResolverVySo012INStartVideobG0CGMR) & 1;
}

__n128 OUTLINED_FUNCTION_31_22(__n128 *a1)
{
  result = *v1;
  a1[1] = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_20(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_40_21()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_15(uint64_t a1)
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_50_20()
{
  v2 = *(v0 + 360);

  return INIntent.typedOrThrow<A>(as:)();
}

uint64_t OUTLINED_FUNCTION_51_22(uint64_t a1)
{
  result = __swift_destroy_boxed_opaque_existential_1((v1 + 336));
  *(v1 + 384) = a1;
  return result;
}

uint64_t PhoneIntentsRestrictedGuardFlow.__allocating_init(selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  outlined init with copy of SignalProviding(a4, v14);
  outlined init with copy of SignalProviding(a5, v13);
  v11 = (*(v5 + 152))(2, a1, a2, a3, v14, v13);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v11;
}

uint64_t key path setter for PhoneIntentsRestrictedGuardFlow.state : PhoneIntentsRestrictedGuardFlow(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

uint64_t PhoneIntentsRestrictedGuardFlow.__allocating_init(state:selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  PhoneIntentsRestrictedGuardFlow.init(state:selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t PhoneIntentsRestrictedGuardFlow.init(state:selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  *(v6 + 120) = a1;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  outlined init with take of SPHConversation(a5, v6 + 40);
  outlined init with take of SPHConversation(a6, v6 + 80);
  return v6;
}

uint64_t PhoneIntentsRestrictedGuardFlow.execute()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(PhoneIntentsRestrictedGuardFlow.execute(), 0, 0);
}

uint64_t PhoneIntentsRestrictedGuardFlow.execute()()
{
  if ((*(*v0[8] + 120))() == 2)
  {
    v1 = v0[8];
    locked = PhoneIntentsRestrictedGuardFlow.requiresINIntentsRestrictedWhileLockedAuthentication()();
    v4 = v0[7];
    v3 = v0[8];
    if (locked)
    {
      v5 = *(v3 + 72);
      __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
      v6 = *(v5 + 104);
      v7 = OUTLINED_FUNCTION_1_16();
      v8(v7);
      v9 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v10 = OUTLINED_FUNCTION_7_33();
      SiriKitFlowFactoryProtocol.makeAuthenticationGuardFlow()(v10, v11);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      goto LABEL_7;
    }

    swift_beginAccess();
    *(v3 + 120) = 0;
  }

  else
  {
    v12 = v0[7];
  }

  static ExecuteResponse.complete()();
LABEL_7:
  v13 = v0[1];

  return v13();
}

uint64_t static PhoneIntentsRestrictedGuardFlow.State.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return static GuardFlowResult.== infix(_:_:)(a1 & 1, a2 & 1);
}

uint64_t closure #1 in PhoneIntentsRestrictedGuardFlow.execute()(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = swift_beginAccess();
  *(a2 + 120) = v3;
  return result;
}

uint64_t PhoneIntentsRestrictedGuardFlow.execute(completion:)()
{
  type metadata accessor for PhoneIntentsRestrictedGuardFlow();
  lazy protocol witness table accessor for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneIntentsRestrictedGuardFlow.requiresINIntentsRestrictedWhileLockedAuthentication()()
{
  v1 = v0;
  v2 = v0[8];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v2);
  (*(v3 + 152))(v63, v2, v3);
  v4 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v5 = v0[4];
  v6 = App.appIdentifier.getter();
  v8 = v7;
  (*(v4 + 16))(v66, v6);

  if (!v66[0])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_6_65(v33, static Logger.siriPhone);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_42();
      v37 = swift_slowAlloc();
      v63[0] = v37;
      *v36 = 136315138;
      *&v69 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMd, &_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMR);
      v38 = String.init<A>(describing:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v63);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v34, v35, "#%s Couldn't find cached AnnotatedApp, cannot determine if INIntentsRestrictedWhileLocked is set for this intent + app", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    return 0;
  }

  v9 = v66[1];
  v10 = v68;
  v69 = v67;
  __swift_destroy_boxed_opaque_existential_1(v63);
  if (specialized Set.contains(_:)(v1[2], v1[3], v10))
  {
    v11 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
    v12 = *(v11 + 8);
    v13 = OUTLINED_FUNCTION_1_16();
    v14(v13);
    v15 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    OUTLINED_FUNCTION_1_16();
    v16 = dispatch thunk of DeviceState.isHomePod.getter();
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (v16)
    {
      goto LABEL_5;
    }

    v15 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
    v17 = *(v15 + 8);
    v18 = OUTLINED_FUNCTION_1_16();
    v19(v18);
    __swift_project_boxed_opaque_existential_1(v63, v64);
    OUTLINED_FUNCTION_7_33();
    v20 = DeviceState.isAuthenticatedForPhone.getter();
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (v20)
    {
LABEL_5:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v21 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_6_65(v21, static Logger.siriPhone);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_42();
      v24 = OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_3_78(4.8149e-34);
      v62 = v25;
      v63[0] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMd, &_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMR);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v62);

      *(v15 + 4) = v29;
      v32 = "#%s Device does not require unlock";
LABEL_25:
      OUTLINED_FUNCTION_45_1(&dword_0, v30, v31, v32);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
LABEL_26:

      v70 = v9;
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v70, &_sShySSGMd, &_sShySSGMR);
      *v63 = v69;
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v63, &_sSSSgMd, &_sSSSgMR);

      return 0;
    }

    v70 = v9;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v70, &_sShySSGMd, &_sShySSGMR);
    v53 = v67;
  }

  else
  {
    if (App.isFirstParty()() || (v41 = v1[14], __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]), OUTLINED_FUNCTION_7_33(), !PhoneCallNLIntent.hasPhoneNumber()()))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v54 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_6_65(v54, static Logger.siriPhone);
      v22 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v22, v55))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_42();
      v24 = OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_3_78(4.8149e-34);
      v62 = v56;
      v63[0] = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMd, &_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMR);
      v58 = String.init<A>(describing:)();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v62);

      *(v8 + 4) = v60;
      v32 = "#%s Intent is not restricted";
      goto LABEL_25;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_6_65(v42, static Logger.siriPhone);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_42();
      v45 = OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_3_78(4.8149e-34);
      v62 = v46;
      v63[0] = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMd, &_s27PhoneCallFlowDelegatePlugin0a22IntentsRestrictedGuardC0CmMR);
      v48 = String.init<A>(describing:)();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v62);

      *(v8 + 4) = v50;
      OUTLINED_FUNCTION_45_1(&dword_0, v51, v52, "#%s calling a third party app by using phone number requires to unlock the device firstly");
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v70 = v9;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v70, &_sShySSGMd, &_sShySSGMR);
    v53 = v69;
  }

  *v63 = v53;
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v63, &_sSSSgMd, &_sSSSgMR);

  return 1;
}

unint64_t lazy protocol witness table accessor for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow()
{
  result = lazy protocol witness table cache variable for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow;
  if (!lazy protocol witness table cache variable for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow)
  {
    type metadata accessor for PhoneIntentsRestrictedGuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow);
  }

  return result;
}

void *PhoneIntentsRestrictedGuardFlow.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  return v0;
}

uint64_t PhoneIntentsRestrictedGuardFlow.__deallocating_deinit()
{
  PhoneIntentsRestrictedGuardFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneIntentsRestrictedGuardFlow(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneIntentsRestrictedGuardFlow@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 144))();
  *a1 = result & 1;
  return result;
}

unsigned __int8 *getEnumTagSinglePayload for PhoneIntentsRestrictedGuardFlow.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneIntentsRestrictedGuardFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for PhoneIntentsRestrictedGuardFlow.State(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for PhoneIntentsRestrictedGuardFlow.State(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void Logger.logAndCrash(_:)(uint64_t a1, unint64_t a2)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v8);
    _os_log_impl(&dword_0, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t LogPrefix.withFunction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a3;
}

uint64_t one-time initialization function for announceTelephony()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.announceTelephony);
  __swift_project_value_buffer(v0, static Logger.announceTelephony);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for siriPhone(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.siriPhone.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.siriPhone.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

PhoneCallFlowDelegatePlugin::LogTag_optional __swiftcall LogTag.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LogTag.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t LogTag.rawValue.getter(char a1)
{
  result = 19534;
  switch(a1)
  {
    case 1:
      result = 5916994;
      break;
    case 2:
      result = 1464814662;
      break;
    case 3:
      result = 1396786515;
      break;
    case 4:
      result = 4735827;
      break;
    case 5:
      result = 5395011;
      break;
    case 6:
      result = 5395027;
      break;
    case 7:
      result = 5263425;
      break;
    case 8:
      result = 21574;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::LogTag_optional protocol witness for RawRepresentable.init(rawValue:) in conformance LogTag@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::LogTag_optional *a2@<X8>)
{
  result.value = LogTag.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LogTag@<X0>(uint64_t *a1@<X8>)
{
  result = LogTag.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type LogTag and conformance LogTag()
{
  result = lazy protocol witness table cache variable for type LogTag and conformance LogTag;
  if (!lazy protocol witness table cache variable for type LogTag and conformance LogTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogTag and conformance LogTag);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogTag(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized == infix<A>(_:_:)(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE90000000000006CLL;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEA00000000007265;
  }

  else
  {
    v1 = 0xEB0000000072656DLL;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xED0000746E617473;
      break;
    case 3:
      v2 = 0xE700000000000000;
      break;
    case 4:
      v2 = 0xE700000000000000;
      break;
    case 5:
      v2 = 0xEA00000000006272;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42_21();
  switch(v5)
  {
    case 1:
      v4 = 0x6973734169726953;
      v1 = 0xED0000746E617473;
      break;
    case 2:
      v4 = 0x6E6F69746361;
      break;
    case 3:
      v1 = 0xE700000000000000;
      v4 = 0x646E616D6D6F63;
      break;
    case 4:
      v1 = 0xE700000000000000;
      v4 = 0x7463656A627573;
      break;
    case 5:
      v4 = 0x6556726564616572;
      v1 = 0xEA00000000006272;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_80();
  }

  return v7 & 1;
}

{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0x8000000000452800;
      break;
    case 2:
      v2 = 0x8000000000452820;
      break;
    case 3:
      v2 = 0x8000000000452840;
      break;
    case 4:
      v2 = 0xE90000000000004CLL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_26_26();
  switch(v9)
  {
    case 1:
      v1 = (v8 - 32) | 0x8000000000000000;
      v4 = v5 + 1;
      break;
    case 2:
      v1 = (v7 - 32) | 0x8000000000000000;
      v4 = v5 + 2;
      break;
    case 3:
      v1 = (v6 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000011;
      break;
    case 4:
      v4 = 0x4C41435F44414552;
      v1 = 0xE90000000000004CLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80();
  }

  return v11 & 1;
}

{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xEF6873696C626174;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEC00000073746E61;
  }

  else
  {
    v1 = 0xEA00000000006570;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB00000000707041;
  }

  else
  {
    v1 = 0xEE00707041656E6FLL;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_46_18();
      v2 = 0xE900000000000079;
      break;
    case 2:
      v2 = 0xE90000000000006CLL;
      break;
    case 4:
      v2 = 0xE800000000000000;
      OUTLINED_FUNCTION_49_20();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42_21();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_57_17();
      v1 = 0xE900000000000079;
      break;
    case 2:
      v4 = 0x69616D6563696F76;
      v1 = 0xE90000000000006CLL;
      break;
    case 3:
      v4 = 0x6C6169646572;
      break;
    case 4:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_23_26();
      v4 = v6 | 0x6B63616200000000;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE90000000000006CLL;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  if (a1)
  {
    v1 = 0xEB0000000074706DLL;
  }

  else
  {
    v1 = 0xEA00000000007470;
  }

  OUTLINED_FUNCTION_11_47();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 19534;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = 5916994;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1464814662;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v4 = 1396786515;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v4 = 4735827;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v4 = 5395011;
      break;
    case 6:
      v4 = 5395027;
      v3 = 0xE300000000000000;
      break;
    case 7:
      v3 = 0xE300000000000000;
      v4 = 5263425;
      break;
    case 8:
      v4 = 21574;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 19534;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 5916994;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v6 = 1464814662;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1396786515;
      break;
    case 4:
      v5 = 0xE300000000000000;
      v6 = 4735827;
      break;
    case 5:
      v5 = 0xE300000000000000;
      v6 = 5395011;
      break;
    case 6:
      v6 = 5395027;
      v5 = 0xE300000000000000;
      break;
    case 7:
      v5 = 0xE300000000000000;
      v6 = 5263425;
      break;
    case 8:
      v6 = 21574;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter);
}

{
  v2 = "ow";
  if (a1)
  {
    v3 = "showedForcedAppDisambiguation";
  }

  else
  {
    v3 = "ow";
  }

  if (a2)
  {
    v2 = "showedForcedAppDisambiguation";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ForcedAppDisambiguationPhase.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnnounceVoicemailCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SpecifyingContactAddress.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SlotResolutionError.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneCallCommonCATPatternsIdentifiers.rawValue.getter);
}

{
  v2 = 0xEF31676F6C616964;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xEF32676F6C616964;
    }

    else
    {
      v3 = 0xEF33676F6C616964;
    }
  }

  else
  {
    v3 = 0xEF31676F6C616964;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEF32676F6C616964;
    }

    else
    {
      v2 = 0xEF33676F6C616964;
    }
  }

  if (v3 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_27_26();
  }

  return v4 & 1;
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_78_5();
    if (v2)
    {
      v4 = 1836020326;
    }

    else
    {
      v4 = 1752459639;
    }

    if (v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v4 = 28532;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_78_5();
    if (v6)
    {
      v8 = 1836020326;
    }

    else
    {
      v8 = 1752459639;
    }

    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE200000000000000;
    v8 = 28532;
  }

  if (v4 == v8 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80();
  }

  return v11 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneAppSelectionSignalsGathererType.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PhoneAppResolutionLogger.CodePathId.rawValue.getter);
}

{
  if (a1)
  {
    v2 = 0xEE0032676F6C6169;
  }

  else
  {
    v2 = 0xEE0031676F6C6169;
  }

  if (a2)
  {
    v3 = 0xEE0032676F6C6169;
  }

  else
  {
    v3 = 0xEE0031676F6C6169;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_38_21();
    v4 = OUTLINED_FUNCTION_27_26();
  }

  return v4 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.rawValue.getter);
}

{
  v3 = 0xE200000000000000;
  v4 = 28494;
  switch(a1)
  {
    case 1:
      v3 = 0xE700000000000000;
      v4 = 0x73746E65636552;
      break;
    case 2:
      v4 = 0x69616D6563696F56;
      v3 = 0xEE00656C7469546CLL;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v4 = 7562585;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28494;
  switch(a2)
  {
    case 1:
      v5 = 0xE700000000000000;
      v6 = 0x73746E65636552;
      break;
    case 2:
      v6 = 0x69616D6563696F56;
      v5 = 0xEE00656C7469546CLL;
      break;
    case 3:
      v5 = 0xE300000000000000;
      v6 = 7562585;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.rawValue.getter);
}

{
  v2 = 0xEC00000031676F6CLL;
  v3 = 0xEC00000031676F6CLL;
  switch(a1)
  {
    case 1:
      v4 = 845639532;
      goto LABEL_5;
    case 2:
      v4 = 862416748;
      goto LABEL_5;
    case 3:
      v4 = 879193964;
LABEL_5:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v5 = 845639532;
      goto LABEL_10;
    case 2:
      v5 = 862416748;
      goto LABEL_10;
    case 3:
      v5 = 879193964;
LABEL_10:
      v2 = v5 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v3 == v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_27_26();
  }

  return v6 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.DisambiguateContactsDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, StartCallCATsSimple.ConfirmAppDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, PostCallInquiryAnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AnnounceIncomingCallCATs.Properties.rawValue.getter);
}

{
  if (a1)
  {
    v2 = 0x32676F6C616964;
  }

  else
  {
    v2 = 0x31676F6C616964;
  }

  if (a2)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0x31676F6C616964;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_29_24();
  }

  OUTLINED_FUNCTION_68_9();
  return v4 & 1;
}
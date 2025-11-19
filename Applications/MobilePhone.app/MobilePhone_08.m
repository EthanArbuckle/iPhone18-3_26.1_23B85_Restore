unint64_t lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName()
{
  result = lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName;
  if (!lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName)
  {
    type metadata accessor for UIFontDescriptorAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName);
  }

  return result;
}

uint64_t CallReportingViewModel.shouldShowReportAction(for:)(void *a1)
{
  if ([a1 isTelephony])
  {
    v2 = *(CallReportingViewModel.contactByHandles(in:)(a1) + 2);

    if (!v2)
    {
      if ([a1 isIncoming])
      {
        v3 = [objc_opt_self() sharedInstance];
        v4 = [v3 isClassificationAvailable];

        if (v4 & 1) != 0 || ([a1 carrierAllowsReportVoiceCall])
        {
          return 1;
        }
      }
    }
  }

  result = [a1 isComingFaceTimeCall];
  if (result)
  {

    return CallReportingViewModel.atLeastOneUnknownCaller(in:)(a1);
  }

  return result;
}

uint64_t CallReportingViewModel.reportingFlow(for:)(void *a1)
{
  if ([a1 isComingFaceTimeCall] && CallReportingViewModel.atLeastOneUnknownCaller(in:)(a1))
  {
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "checking facetime flow", v5, 2u);
    }

    return CallReportingViewModel.reportingFaceTimeFlow(for:)(a1);
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 isClassificationAvailable];

    if (v8)
    {
      if (one-time initialization token for spamReport != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.spamReport);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "third party flow", v12, 2u);
      }

      return 2;
    }

    else if ([a1 carrierAllowsReportVoiceCall])
    {
      if (one-time initialization token for spamReport != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.spamReport);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "carrier flow", v16, 2u);
      }

      return 1;
    }

    else
    {
      return 6;
    }
  }
}

id CallReportingViewModel.reportActionImage.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  return v1;
}

void CallReportingViewModel.report(call:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager);
  FaceTimeSpamReportManager.reportSpam(call:)(a1);
}

uint64_t CallReportingViewModel.getCarrierNameOfCall(for:)(void *a1)
{
  v5[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v5[4] = &protocol witness table for CHRecentCall;
  v5[0] = a1;

  v2 = a1;
  v3 = dispatch thunk of CarrierVoiceSpamReportHelper.reportSpamAlertControllerCarrierName(for:)();

  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t CallReportingViewModel.reportSpam(voiceCall:)(void *a1, void (*a2)(void *))
{
  v6[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v6[4] = &protocol witness table for CHRecentCall;
  v6[0] = a1;

  v4 = a1;
  a2(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CallReportingViewModel.ReportingFlow@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized CallReportingViewModel.ReportingFlow.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void CallReportingViewModel.init(featureFlags:spamReportManager:carrierVoiceSpamReportHelper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v5 = [swift_dynamicCastObjCClassUnconditional() recentsController];

  if (v5)
  {
    *&v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_recentsController] = v5;
    v6 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportAlertTitle];
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass:ObjCClassFromMetadata];
    v97._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0xD000000000000020;
    v10._object = 0x8000000100240840;
    v11.value._countAndFlagsBits = 0x746E656365524850;
    v11.value._object = 0xE900000000000073;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v97._countAndFlagsBits = 0;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v97);

    *v6 = v13;
    v14 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportAlertCancel];
    v15 = [v8 bundleForClass:ObjCClassFromMetadata];
    v98._object = 0xE000000000000000;
    v16._object = 0x8000000100240870;
    v16._countAndFlagsBits = 0xD00000000000001CLL;
    v17.value._countAndFlagsBits = 0x746E656365524850;
    v17.value._object = 0xE900000000000073;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v98._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v98);

    *v14 = v19;
    v20 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportAlertReport];
    v21 = [v8 bundleForClass:ObjCClassFromMetadata];
    v99._object = 0xE000000000000000;
    v22._object = 0x8000000100240890;
    v22._countAndFlagsBits = 0xD00000000000001CLL;
    v23.value._countAndFlagsBits = 0x746E656365524850;
    v23.value._object = 0xE900000000000073;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v99._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v99);

    *v20 = v25;
    v26 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportBlockFTAlertTitle];
    v27 = [v8 bundleForClass:ObjCClassFromMetadata];
    v100._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000026;
    v28._object = 0x80000001002408B0;
    v29.value._countAndFlagsBits = 0x746E656365524850;
    v29.value._object = 0xE900000000000073;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v100._countAndFlagsBits = 0;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v100);

    *v26 = v31;
    v32 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportBlockFTAlertCancel];
    v33 = [v8 bundleForClass:ObjCClassFromMetadata];
    v101._object = 0xE000000000000000;
    v34._object = 0x8000000100240870;
    v34._countAndFlagsBits = 0xD00000000000001CLL;
    v35.value._countAndFlagsBits = 0x746E656365524850;
    v35.value._object = 0xE900000000000073;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v101._countAndFlagsBits = 0;
    v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v101);

    *v32 = v37;
    v38 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportBlockFTAlertBlock];
    v39 = [v8 bundleForClass:ObjCClassFromMetadata];
    v102._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0xD000000000000021;
    v40._object = 0x80000001002408E0;
    v41.value._countAndFlagsBits = 0x746E656365524850;
    v41.value._object = 0xE900000000000073;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v102._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v102);

    *v38 = v43;
    v44 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportBlockFTAlertReportBlock];
    v45 = [v8 bundleForClass:ObjCClassFromMetadata];
    v103._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0xD000000000000028;
    v46._object = 0x8000000100240910;
    v47.value._countAndFlagsBits = 0x746E656365524850;
    v47.value._object = 0xE900000000000073;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v103._countAndFlagsBits = 0;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v103);

    *v44 = v49;
    v50 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_blockAllButtonTitle];
    v51 = [v8 bundleForClass:ObjCClassFromMetadata];
    v104._object = 0xE000000000000000;
    v52._countAndFlagsBits = 0xD000000000000025;
    v52._object = 0x8000000100240940;
    v53.value._countAndFlagsBits = 0x746E656365524850;
    v53.value._object = 0xE900000000000073;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    v104._countAndFlagsBits = 0;
    v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v104);

    *v50 = v55;
    v56 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_blockAllAlertTitle];
    v57 = [v8 bundleForClass:ObjCClassFromMetadata];
    v105._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0xD000000000000034;
    v58._object = 0x8000000100240970;
    v59.value._countAndFlagsBits = 0x746E656365524850;
    v59.value._object = 0xE900000000000073;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v105._countAndFlagsBits = 0;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v105);

    *v56 = v61;
    v62 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_blockUnknownButtonTitle];
    v63 = [v8 bundleForClass:ObjCClassFromMetadata];
    v106._object = 0xE000000000000000;
    v64._countAndFlagsBits = 0xD000000000000029;
    v64._object = 0x80000001002409B0;
    v65.value._countAndFlagsBits = 0x746E656365524850;
    v65.value._object = 0xE900000000000073;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    v106._countAndFlagsBits = 0;
    v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v106);

    *v62 = v67;
    v68 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportInitiatorAlertTitle];
    v69 = [v8 bundleForClass:ObjCClassFromMetadata];
    v107._object = 0xE000000000000000;
    v70._countAndFlagsBits = 0xD00000000000002CLL;
    v70._object = 0x80000001002409E0;
    v71.value._countAndFlagsBits = 0x746E656365524850;
    v71.value._object = 0xE900000000000073;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v107._countAndFlagsBits = 0;
    v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v107);

    *v68 = v73;
    v74 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportInitiatorAlert];
    v75 = [v8 bundleForClass:ObjCClassFromMetadata];
    v108._object = 0xE000000000000000;
    v76._countAndFlagsBits = 0xD000000000000025;
    v76._object = 0x8000000100240A10;
    v77.value._countAndFlagsBits = 0x746E656365524850;
    v77.value._object = 0xE900000000000073;
    v78._countAndFlagsBits = 0;
    v78._object = 0xE000000000000000;
    v108._countAndFlagsBits = 0;
    v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v108);

    *v74 = v79;
    v80 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportGroupInitiatorAlertTitle];
    v81 = [v8 bundleForClass:ObjCClassFromMetadata];
    v109._object = 0xE000000000000000;
    v82._countAndFlagsBits = 0xD000000000000022;
    v82._object = 0x8000000100240A40;
    v83.value._countAndFlagsBits = 0x746E656365524850;
    v83.value._object = 0xE900000000000073;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    v109._countAndFlagsBits = 0;
    v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v81, v84, v109);

    *v80 = v85;
    v86 = &v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportLocalizedTitle];
    v87 = [v8 bundleForClass:ObjCClassFromMetadata];
    v110._object = 0xE000000000000000;
    v88._countAndFlagsBits = 0x54524F504552;
    v88._object = 0xE600000000000000;
    v89.value._countAndFlagsBits = 0x746E656365524850;
    v89.value._object = 0xE900000000000073;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    v110._countAndFlagsBits = 0;
    v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v88, v89, v87, v90, v110);

    *v86 = v91;
    *&v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_featureFlags] = a1;
    *&v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager] = a2;
    *&v3[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_carrierVoiceSpamReportHelper] = a3;
    v96.receiver = v3;
    v96.super_class = ObjectType;
    objc_msgSendSuper2(&v96, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t CallReportingViewModel.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(TUFeatureFlags) init];
  v2 = [objc_allocWithZone(type metadata accessor for FaceTimeSpamReportManager()) init];
  type metadata accessor for VoiceSpamReportTelephonyManager();
  static VoiceSpamReportTelephonyManager.shared.getter();
  type metadata accessor for CarrierVoiceSpamReportHelper();
  swift_allocObject();
  v3 = CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
  v4 = objc_allocWithZone(ObjectType);
  CallReportingViewModel.init(featureFlags:spamReportManager:carrierVoiceSpamReportHelper:)(v1, v2, v3);
  v6 = v5;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t CallReportingViewModel.reportAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportAlertTitle);

  return v1;
}

uint64_t CallReportingViewModel.reportAlertCancel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportAlertCancel);

  return v1;
}

uint64_t CallReportingViewModel.reportAlertReport.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportAlertReport);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportBlockFTAlertTitle);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertCancel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportBlockFTAlertCancel);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportBlockFTAlertBlock);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertReportBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportBlockFTAlertReportBlock);

  return v1;
}

uint64_t CallReportingViewModel.blockAllButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_blockAllButtonTitle);

  return v1;
}

uint64_t CallReportingViewModel.blockAllAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_blockAllAlertTitle);

  return v1;
}

uint64_t CallReportingViewModel.blockUnknownButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_blockUnknownButtonTitle);

  return v1;
}

uint64_t CallReportingViewModel.reportInitiatorAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportInitiatorAlertTitle);

  return v1;
}

uint64_t CallReportingViewModel.reportInitiatorAlert.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportInitiatorAlert);

  return v1;
}

uint64_t CallReportingViewModel.reportGroupInitiatorAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_reportGroupInitiatorAlertTitle);

  return v1;
}

uint64_t @objc CallReportingViewModel.block(contacts:)(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t))
{
  type metadata accessor for NSMutableArray(0, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  a6(v8);
}

uint64_t CallReportingViewModel.reportingFaceTimeFlow(for:)(void *a1)
{
  v2 = [a1 initiator];
  if (!v2)
  {
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.spamReport);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "initiator is nil", v11, 2u);
    }

    if (([a1 isOneToOne] & 1) == 0)
    {
      v12 = *(CallReportingViewModel.contactByHandles(in:)(a1) + 2);

      if (!v12)
      {
        return 3;
      }
    }

    if (([a1 isOneToOne] & 1) == 0 && CallReportingViewModel.atLeastOneUnknownCaller(in:)(a1))
    {
      return 4;
    }

    return 0;
  }

  if (one-time initialization token for spamReport != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.spamReport);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "initiator is not nil", v6, 2u);
  }

  if ([a1 isOneToOne])
  {
    return 0;
  }

  if (CallReportingViewModel.isInitiatorUnknown(in:)(a1))
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

uint64_t CallReportingViewModel.isInitiatorUnknown(in:)(void *a1)
{
  v1 = a1;
  v2 = [a1 initiator];
  if (v2)
  {
    v3 = v2;
    if (one-time initialization token for spamReport != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.spamReport);
      v5 = v3;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v5;
        *v9 = v3;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, v7, "isInitiatorUnknownForCall call.initiator %@", v8, 0xCu);
        outlined destroy of NSObject?(v9);
      }

      v1 = CallReportingViewModel.contactByHandles(in:)(v1);
      v11 = v1[2];
      if (!v11)
      {
        break;
      }

      v12 = 0;
      v3 = CHHandle_ptr;
      while (v12 < v1[2])
      {
        v13 = v1[v12 + 4];
        if (v13)
        {
          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
          v14 = v5;
          v15 = v13;
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {
            v17 = 0;
            goto LABEL_19;
          }
        }

        if (v11 == ++v12)
        {
          v17 = 1;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

    v17 = 1;
LABEL_19:

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v21, v22, "isInitiatorUnknown: %{BOOL}d", v23, 8u);
    }
  }

  else
  {
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.spamReport);
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v5, v19, "isInitiatorUnknownForCall call.initiator nil", v20, 2u);
    }

    v17 = 0;
  }

  return v17;
}

BOOL CallReportingViewModel.allUnknownContact(in:)(void *a1)
{
  v1 = *(CallReportingViewModel.contactByHandles(in:)(a1) + 2);

  return v1 == 0;
}

BOOL CallReportingViewModel.atLeastOneUnknownCaller(in:)(void *a1)
{
  v2 = [a1 validRemoteParticipantHandles];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  lazy protocol witness table accessor for type CHHandle and conformance NSObject();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(CallReportingViewModel.contactByHandles(in:)(a1) + 2);

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v4 + 16);
  }

  return v5 != v6;
}

uint64_t CallReportingViewModel.reportActionTitle(of:)(unint64_t a1)
{
  if (a1 >= 7)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + *off_10028D468[a1]);

    return v2;
  }

  return result;
}

void *CallReportingViewModel.unknownHandles(in:)(void *a1)
{
  v3 = [a1 validRemoteParticipantHandles];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = *(v1 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_recentsController);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100209A80;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for PHContactViewController);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = v6;
    *(v7 + 32) = [ObjCClassFromMetadata descriptorForRequiredKeys];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v9 contactByHandleForRecentCall:a1 keyDescriptors:isa];

    if (v11)
    {
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = specialized Set._Variant.filter(_:)(v5, v12);

      v14 = specialized _copyCollectionToContiguousArray<A>(_:)(v13);

      v15 = specialized _arrayForceCast<A, B>(_:)(v14);

      return v15;
    }
  }

  if (one-time initialization token for spamReport != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.spamReport);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "unknownHandles is empty b/c contactByHandle is nil or no handles", v20, 2u);
  }

  return _swiftEmptyArrayStorage;
}

void *CallReportingViewModel.contactByHandles(in:)(void *a1)
{
  v3 = [a1 validRemoteParticipantHandles];
  if (!v3)
  {
LABEL_6:
    if (one-time initialization token for spamReport != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_7;
  }

  v4 = v3;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  lazy protocol witness table accessor for type CHHandle and conformance NSObject();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *(v1 + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_recentsController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100209A80;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for PHContactViewController);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v6;
  *(v7 + 32) = [ObjCClassFromMetadata descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 contactByHandleForRecentCall:a1 keyDescriptors:isa];

  if (!v11)
  {

    goto LABEL_6;
  }

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v5 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v5 = v36;
    v13 = v37;
    v14 = v38;
    v15 = v39;
    v16 = v40;
  }

  else
  {
    v15 = 0;
    v22 = -1 << *(v5 + 32);
    v13 = v5 + 56;
    v14 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v16 = v24 & *(v5 + 56);
  }

  v25 = (v14 + 64) >> 6;
  while (1)
  {
    if (v5 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v28 = v35) == 0))
      {
LABEL_33:

        outlined consume of Set<CHHandle>.Iterator._Variant();
        v34 = specialized _arrayForceCast<A, B>(_:)(&_swiftEmptyArrayStorage);

        return v34;
      }

      goto LABEL_25;
    }

    v26 = v15;
    v27 = v16;
    if (!v16)
    {
      break;
    }

LABEL_21:
    v16 = (v27 - 1) & v27;
    v28 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v28)
    {
      goto LABEL_33;
    }

LABEL_25:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v29 = v28;
      v30 = __CocoaDictionary.lookup(_:)();

      if (!v30)
      {
        goto LABEL_15;
      }

      swift_dynamicCast();
      v31 = v35;
      if (!v35)
      {
        goto LABEL_15;
      }

LABEL_32:

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      if (*(v12 + 16))
      {
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
        if (v33)
        {
          v31 = *(*(v12 + 56) + 8 * v32);
          if (v31)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_15:
    }
  }

  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v25)
    {
      goto LABEL_33;
    }

    v27 = *(v13 + 8 * v15);
    ++v26;
    if (v27)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_7:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.spamReport);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "contacts list is empty", v20, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

id @objc CallReportingViewModel.getReportInitiatorMessage(formattedHandle:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

uint64_t @objc CallReportingViewModel.reportSpam(voiceCall:)(void *a1, uint64_t a2, void *a3, void (*a4)(void *))
{
  v10[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v10[4] = &protocol witness table for CHRecentCall;
  v10[0] = a3;
  v7 = a3;
  v8 = a1;

  a4(v10);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

id CallReportingViewModel.shouldShowFaceTimeReport(for:)(void *a1)
{
  result = [a1 isComingFaceTimeCall];
  if (result)
  {

    return CallReportingViewModel.atLeastOneUnknownCaller(in:)(a1);
  }

  return result;
}

uint64_t CHRecentCall.isTelephony.getter()
{
  return CHRecentCall.isTelephony.getter();
}

{
  v1 = [v0 serviceProvider];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_11:

  return v9 & 1;
}

id CHRecentCall.isOneToOne.getter()
{
  result = [v0 remoteParticipantHandles];
  if (result)
  {
    v2 = result;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    return (v4 == 1);
  }

  return result;
}

uint64_t CHRecentCall.carrierAllowsReportVoiceCall.getter()
{
  type metadata accessor for VoiceSpamReportTelephonyManager();
  static VoiceSpamReportTelephonyManager.shared.getter();
  type metadata accessor for CarrierVoiceSpamReportHelper();
  swift_allocObject();
  CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
  v4[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v4[4] = &protocol witness table for CHRecentCall;
  v4[0] = v0;
  v1 = v0;
  v2 = dispatch thunk of CarrierVoiceSpamReportHelper.carrierAllowsReportVoiceCall(for:)();

  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

id CHRecentCall.isComingFaceTimeCall.getter()
{
  result = [v0 isIncoming];
  if (result)
  {
    return [v0 isFaceTime];
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8CHHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n062_s11MobilePhone22CallReportingViewModelC14unknownHandles2inSaypI31CSgGSo08CHRecentC0C_tFSbAGXEfU_SDyAISo9CNContactCGTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t specialized CallReportingViewModel.getCarrierSpamReportAlertTitle(carrierName:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x746E656365524850;
  v7._object = 0x80000001002460E0;
  v7._countAndFlagsBits = 0xD000000000000025;
  v6.value._object = 0xE900000000000073;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100209AA0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = String.init(format:arguments:)();

  return v10;
}

id specialized CallReportingViewModel.getFormattedInitiator(for:)(void *a1)
{
  v1 = [a1 initiator];
  if (!v1)
  {
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.spamReport);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "initiator unknown", v18, 2u);
    }

    return 0;
  }

  v2 = v1;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TUHandle);
  v3 = v2;
  v4 = TUHandle.init(_:)(v3);
  if ([v4 type] != 2)
  {
    goto LABEL_9;
  }

  result = [v4 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_34;
  }

  v6 = result;
  v7 = PNCopyBestGuessCountryCodeForNumber();

  if (!v7)
  {
LABEL_9:

    goto LABEL_18;
  }

  result = [v4 value];
  if (result)
  {
    v8 = result;
    v9 = CFPhoneNumberCreate();

    if (v9)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v11 = String;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

LABEL_19:
        if (one-time initialization token for spamReport != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.spamReport);

        v20 = v3;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v25 = v31;
          *v23 = 136315394;
          if (v14)
          {
            v26 = v12;
          }

          else
          {
            v26 = 0;
          }

          if (v14)
          {
            v27 = v14;
          }

          else
          {
            v27 = 0xE000000000000000;
          }

          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v31);

          *(v23 + 4) = v28;
          *(v23 + 12) = 2112;
          v29 = TUHandle.init(_:)(v20);
          *(v23 + 14) = v29;
          *v24 = v29;
          _os_log_impl(&_mh_execute_header, v21, v22, "formattedPhoneNumber: %s,  TUHandle(initiator): %@", v23, 0x16u);
          outlined destroy of NSObject?(v24);

          __swift_destroy_boxed_opaque_existential_0(v25);
        }

        if (v14)
        {
        }

        else
        {
          v30 = [v20 value];
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        return v12;
      }
    }

    else
    {
    }

LABEL_18:
    v12 = 0;
    v14 = 0;
    goto LABEL_19;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized CallReportingViewModel.getReportInitiatorMessage(formattedHandle:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x746E656365524850;
  v7._object = 0x80000001002460A0;
  v7._countAndFlagsBits = 0xD000000000000030;
  v6.value._object = 0xE900000000000073;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100209AA0;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = String.init(format:arguments:)();

  return v10;
}

void specialized CallReportingViewModel.block(contacts:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &OBJC_PROTOCOL___PHVoicemailMessageTableViewCellDelegate;
    v20 = v1;
    while (1)
    {
      if (v4)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v6[19].class_meths != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.spamReport);
      v11 = v8;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = i;
        v16 = v5;
        v17 = v4;
        v18 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v18 = v11;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "blocking, contact %@", v14, 0xCu);
        outlined destroy of NSObject?(v18);
        v4 = v17;
        v5 = v16;
        i = v15;
        v1 = v20;

        v6 = &OBJC_PROTOCOL___PHVoicemailMessageTableViewCellDelegate;
      }

      [v11 mp_block];
      ++v3;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void specialized CallReportingViewModel.block(unknownContacts:)(unint64_t a1)
{
  if (one-time initialization token for spamReport != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.spamReport);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "blocking", v5, 2u);
  }

  specialized CallReportingViewModel.block(contacts:)(a1);
}

void specialized CallReportingViewModel.block(handles:)(unint64_t a1)
{
  if (one-time initialization token for spamReport != -1)
  {
LABEL_30:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.spamReport);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "blocking based on handles", v5, 2u);
  }

  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = &selRef_setStartedLoadingOlderCalls_;
  v27 = v6;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(a1 + 8 * v7 + 32);
    }

    v12 = v11;
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v11 v10[493]] == 2)
    {
      break;
    }

    if ([v12 v10[493]] != 3)
    {
      goto LABEL_9;
    }

    v21 = [objc_opt_self() sharedPrivacyManager];
    if (!v21)
    {
      goto LABEL_34;
    }

    v22 = v21;
    v23 = [v12 value];
    if (!v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = String._bridgeToObjectiveC()();
      v10 = &selRef_setStartedLoadingOlderCalls_;
    }

    [v22 setBlockIncomingCommunication:1 forEmailAddress:{v23, v27}];
LABEL_8:

LABEL_9:
    ++v7;
    if (v13 == v6)
    {
      return;
    }
  }

  v14 = v8;
  v15 = a1;
  v16 = [v12 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = TUHomeCountryCode();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v24 = String._bridgeToObjectiveC()();

  if (v20)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v9 = v28;
  v10 = &selRef_setStartedLoadingOlderCalls_;
  v22 = [objc_allocWithZone(TUPhoneNumber) initWithDigits:v24 countryCode:v25];

  v26 = [objc_opt_self() sharedPrivacyManager];
  if (v26)
  {
    v23 = v26;
    [v26 setBlockIncomingCommunication:1 forPhoneNumber:v22];
    a1 = v15;
    v8 = v14;
    v6 = v27;
    goto LABEL_8;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void specialized CallReportingViewModel.blockInitiator(spamCall:)(void *a1)
{
  if (one-time initialization token for spamReport != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.spamReport);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "blockInitiator", v5, 2u);
  }

  v6 = [a1 initiator];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100209A80;
    *(inited + 32) = v7;
    v9 = v7;
    specialized CallReportingViewModel.block(handles:)(inited);

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "initiator is nil", v11, 2u);
    }
  }
}

unint64_t specialized CallReportingViewModel.ReportingFlow.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

void specialized CallReportingViewModel.unblock(contacts:)(unint64_t a1)
{
  if (one-time initialization token for spamReport != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "unblocking", v5, 2u);
    }

    if (a1 >> 62)
    {
      break;
    }

    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      CNContact.unblock()();

      if (v10 == v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (v6)
  {
    goto LABEL_6;
  }
}

BOOL specialized CallReportingViewModel.isBlocked(contacts:)(unint64_t a1)
{
  if (one-time initialization token for spamReport != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.spamReport);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "are contacts blocked", v5, 2u);
  }

  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = CNContact.isBlocked()();

    v7 = v8 + 1;
  }

  while (v11);
  return v6 == v8;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v27 = a4 & 0xC000000000000001;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    if (v27)
    {
      v17 = v16;
      if (__CocoaDictionary.lookup(_:)())
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
        swift_dynamicCast();
        v18 = v28;
        if (v28)
        {
          goto LABEL_4;
        }
      }

LABEL_19:

      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_22:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v26, a3);
        return;
      }
    }

    else
    {
      v19 = *(a4 + 16);
      v20 = v16;
      if (!v19)
      {
        goto LABEL_19;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = *(*(a4 + 56) + 8 * v21);
      if (!v18)
      {
        goto LABEL_19;
      }

LABEL_4:
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_22;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

{
  v26 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v27 = a4 & 0xC000000000000001;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    if (v27)
    {
      v17 = v16;
      if (__CocoaDictionary.lookup(_:)())
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
        swift_dynamicCast();
        v18 = v28;
        if (v28)
        {
          goto LABEL_4;
        }
      }

LABEL_19:

      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_22:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v26, a3, &_ss11_SetStorageCySo8CHHandleCGMd);
        return;
      }
    }

    else
    {
      v19 = *(a4 + 16);
      v20 = v16;
      if (!v19)
      {
        goto LABEL_19;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = *(*(a4 + 56) + 8 * v21);
      if (!v18)
      {
        goto LABEL_19;
      }

LABEL_4:
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_22;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v32 = v8;
    v33 = v3;
    v31 = &v31;
    __chkstk_darwin(v10);
    v34 = &v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v9);
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    v37 = a2 & 0xC000000000000001;
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v15 = a2;
    }

    v35 = 0;
    v36 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v19 = v16 | (v11 << 6);
      v9 = *(*(a1 + 48) + 8 * v19);
      if (v37)
      {
        v20 = v9;
        v21 = __CocoaDictionary.lookup(_:)();
        if (v21)
        {
          v38 = v21;
          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
          swift_dynamicCast();
          v22 = v39;
          if (v39)
          {
            goto LABEL_7;
          }
        }

LABEL_22:

        *&v34[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_25:
          v28 = specialized _NativeSet.extractSubset(using:count:)(v34, v32, v35, a1);

          return v28;
        }
      }

      else
      {
        v23 = *(a2 + 16);
        v24 = v9;
        if (!v23)
        {
          goto LABEL_22;
        }

        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        v22 = *(*(a2 + 56) + 8 * v25);
        if (!v22)
        {
          goto LABEL_22;
        }

LABEL_7:
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_25;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v30 = swift_slowAlloc();

  v28 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8CHHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n062_s11MobilePhone22CallReportingViewModelC14unknownHandles2inSaypI31CSgGSo08CHRecentC0C_tFSbAGXEfU_SDyAISo9CNContactCGTf1nnc_n(v30, v8, a1, a2);

  return v28;
}

{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v32 = v8;
    v33 = v3;
    v31 = &v31;
    __chkstk_darwin(v10);
    v34 = &v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v9);
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    v37 = a2 & 0xC000000000000001;
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v15 = a2;
    }

    v35 = 0;
    v36 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v19 = v16 | (v11 << 6);
      v9 = *(*(a1 + 48) + 8 * v19);
      if (v37)
      {
        v20 = v9;
        v21 = __CocoaDictionary.lookup(_:)();
        if (v21)
        {
          v38 = v21;
          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
          swift_dynamicCast();
          v22 = v39;
          if (v39)
          {
            goto LABEL_7;
          }
        }

LABEL_22:

        *&v34[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_25:
          v28 = specialized _NativeSet.extractSubset(using:count:)(v34, v32, v35, a1, &_ss11_SetStorageCySo8CHHandleCGMd);

          return v28;
        }
      }

      else
      {
        v23 = *(a2 + 16);
        v24 = v9;
        if (!v23)
        {
          goto LABEL_22;
        }

        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        v22 = *(*(a2 + 56) + 8 * v25);
        if (!v22)
        {
          goto LABEL_22;
        }

LABEL_7:
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_25;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v30 = swift_slowAlloc();

  v28 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8CHHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0176_s11MobilePhone22RecentsDetailPresenterC44multipleContactsBlockAndReportViewController33_FAD6BBFC5E0AAC96A4CD65761702D59ALL3forSo010PHContactsih5TablekL0CSo12CHRecentCallC_tFSbpI6CXEfU_SDyAISo9CNContactCGTf1nnc_n(v30, v8, a1, a2);

  return v28;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  __CocoaSet.makeIterator()();
  v3 = __CocoaSet.Iterator.next()();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    v5 = v4;
    do
    {
      v22 = v5;
      swift_dynamicCast();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = v23;
        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_15;
        }

        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
        swift_dynamicCast();
        v14 = v22;
      }

      else if (!*(a2 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v16 & 1) == 0) || (v14 = *(*(a2 + 56) + 8 * v15)) == 0)
      {
LABEL_15:
        v17 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v17)
        {
          specialized _NativeSet.resize(capacity:)(v17 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v7 = &_swiftEmptySetSingleton + 56;
        v8 = -1 << *(&_swiftEmptySetSingleton + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v10 == v19;
            if (v10 == v19)
            {
              v10 = 0;
            }

            v18 |= v20;
            v21 = *&v7[8 * v10];
          }

          while (v21 == -1);
          v11 = __clz(__rbit64(~v21)) + (v10 << 6);
        }

        *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v23;
        ++*(&_swiftEmptySetSingleton + 2);
        goto LABEL_7;
      }

LABEL_7:
      v5 = __CocoaSet.Iterator.next()();
    }

    while (v5);
  }

  return &_swiftEmptySetSingleton;
}

{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  __CocoaSet.makeIterator()();
  v3 = __CocoaSet.Iterator.next()();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    v5 = v4;
    do
    {
      v22 = v5;
      swift_dynamicCast();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = v23;
        v13 = __CocoaDictionary.lookup(_:)();

        if (!v13)
        {
          goto LABEL_15;
        }

        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
        swift_dynamicCast();
        v14 = v22;
      }

      else if (!*(a2 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v16 & 1) == 0) || (v14 = *(*(a2 + 56) + 8 * v15)) == 0)
      {
LABEL_15:
        v17 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v17)
        {
          specialized _NativeSet.resize(capacity:)(v17 + 1, &_ss11_SetStorageCySo8CHHandleCGMd);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v7 = &_swiftEmptySetSingleton + 56;
        v8 = -1 << *(&_swiftEmptySetSingleton + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v10 == v19;
            if (v10 == v19)
            {
              v10 = 0;
            }

            v18 |= v20;
            v21 = *&v7[8 * v10];
          }

          while (v21 == -1);
          v11 = __clz(__rbit64(~v21)) + (v10 << 6);
        }

        *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v23;
        ++*(&_swiftEmptySetSingleton + 2);
        goto LABEL_7;
      }

LABEL_7:
      v5 = __CocoaSet.Iterator.next()();
    }

    while (v5);
  }

  return &_swiftEmptySetSingleton;
}

unint64_t lazy protocol witness table accessor for type CallReportingViewModel.ReportingFlow and conformance CallReportingViewModel.ReportingFlow()
{
  result = lazy protocol witness table cache variable for type CallReportingViewModel.ReportingFlow and conformance CallReportingViewModel.ReportingFlow;
  if (!lazy protocol witness table cache variable for type CallReportingViewModel.ReportingFlow and conformance CallReportingViewModel.ReportingFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallReportingViewModel.ReportingFlow and conformance CallReportingViewModel.ReportingFlow);
  }

  return result;
}

id VoicemailTableViewModel.dialRequest.getter(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = VoicemailTableViewModel.destinationCallProvider.getter(a1, a2, a3);
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(TUDialRequest) initWithProvider:v10];
    v13 = specialized VoicemailTableViewModel.destinationHandle.getter();
    [v12 setHandle:v13];

    [v12 setOriginatingUIType:50];
    v14 = [a3 receiverDestinationID];
    if (!v14)
    {
LABEL_17:

      return v12;
    }

    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = [a3 receiverISOCountryCode];
      if (v20)
      {
        v21 = v20;
        v22 = [objc_allocWithZone(TUHandle) initWithDestinationID:v15];

        v23 = [v22 canonicalHandleForISOCountryCode:v21];
        v24 = [v11 senderIdentityForHandle:v23];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 accountUUID];

          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v27.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v7 + 8))(v9, v6);
        }

        else
        {
          v27.super.isa = 0;
        }

        [v12 setLocalSenderIdentityAccountUUID:v27.super.isa];

        goto LABEL_17;
      }
    }
  }

  else
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.mobilePhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not initiate dial request, the destination call provider is nil.", v31, 2u);
    }

    return 0;
  }

  return v12;
}

uint64_t Message.destinationID.getter()
{
  v1 = [v0 callbackDestinationID];
  if (!v1)
  {
    v1 = [v0 senderDestinationID];
    if (!v1)
    {
      return 0;
    }
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id VoicemailTableViewModel.destinationCallProvider.getter(void *a1, id a2, void *a3)
{
  v6 = [a2 telephonyProvider];
  v7 = [v6 identifier];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [a3 provider];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v8 == v12 && v10 == v14)
  {

    v17 = &selRef_telephonyProvider;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17 = &selRef_faceTimeProvider;
    if (v16)
    {
      v17 = &selRef_telephonyProvider;
    }
  }

  v18 = [a2 *v17];
  if ([a1 callScreeningEnabledM3])
  {
    v19 = specialized VoicemailTableViewModel.destinationHandle.getter();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 type];
      if (v21 == 1)
      {
        if (one-time initialization token for mobilePhone != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.mobilePhone);
        v32 = v20;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v68 = v36;
          *v35 = 136315394;
          v37 = [v32 value];
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;

          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v68);

          *(v35 + 4) = v41;
          *(v35 + 12) = 2048;
          v42 = [v32 type];

          *(v35 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v33, v34, "Could not start a voicemail call with destinationID: %s, destinationHandle.type: %ld", v35, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v36);
        }

        else
        {
        }

        v18 = 0;
      }

      else if (v21 != 2)
      {
        if (v21 == 3)
        {
          v22 = [a2 faceTimeProvider];

          v18 = v22;
        }

        else
        {
          if (one-time initialization token for mobilePhone != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, static Logger.mobilePhone);
          v44 = v20;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v68 = v48;
            *v47 = 136315394;
            v49 = [v44 value];
            v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v51;

            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v68);

            *(v47 + 4) = v53;
            *(v47 + 12) = 2048;
            v54 = [v44 type];

            *(v47 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v45, v46, "New unknown destinationHandle type when creating a call provider with destinationID: %s, destinationHandle.type: %ld", v47, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v48);
          }

          else
          {
          }
        }
      }

      if (one-time initialization token for mobilePhone != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.mobilePhone);
      v56 = v20;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v68 = v60;
        *v59 = 136315394;
        v61 = [v56 value];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v68);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2048;
        v66 = [v56 type];

        *(v59 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v57, v58, "Try to start a voicemail call with destinationID: %s, destinationHandle.type: %ld", v59, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v60);
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for mobilePhone != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.mobilePhone);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to create destinationCallProvider because destinationHandle is nil", v30, 2u);
      }

      return 0;
    }
  }

  else
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.mobilePhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "CallScreeningEnabledM3 is off, so we default to call back by a telephony call", v26, 2u);
    }
  }

  return v18;
}

id specialized VoicemailTableViewModel.destinationHandle.getter()
{
  swift_getObjectType();
  v0 = Message.destinationID.getter();
  if (v1)
  {
    v2 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v2 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      v3 = objc_allocWithZone(TUHandle);
      v4 = String._bridgeToObjectiveC()();

      v5 = [v3 initWithDestinationID:v4];

      return v5;
    }
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.mobilePhone);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Could not initiate dial request, callbackDestinationID is nil.", v10, 2u);
  }

  return 0;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailTableViewModel(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VoicemailTableViewModel(uint64_t result, int a2, int a3)
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

unint64_t static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_getObjectType();

  return specialized static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:)(a1, a2, a4, a5);
}

id SearchTabViewController.searchController.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_searchController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SearchTabViewController.searchController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_searchController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SearchTabViewController.pendingSearchText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchTabViewController.pendingSearchText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SearchTabViewController.pendingSearchControllerActivation.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SearchTabViewController.pendingSearchControllerActivation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SearchTabViewController.__allocating_init(searchController:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_searchController] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
}

id SearchTabViewController.init(searchController:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText];
  *v2 = 0;
  v2[1] = 0;
  v1[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_searchController] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SearchTabViewController();
  return objc_msgSendSuper2(&v4, "initWithNibName:bundle:", 0, 0);
}

void SearchTabViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone23SearchTabViewController_pendingSearchControllerActivation) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id closure #1 in static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:)(uint64_t a1)
{
  v1 = [objc_opt_self() viewControllerForContact:a1];

  return v1;
}

id closure #2 in static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:)(uint64_t a1, id a2)
{
  v3 = [a2 contactGeminiManager];
  v8 = 0;
  v4 = [v3 bestSenderIdentityForContact:a1 error:&v8];

  v5 = v8;
  if (!v4)
  {
    v6 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v4;
}

id closure #3 in static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:)(void *a1)
{
  v1 = [a1 callProviderManager];

  return v1;
}

void SearchTabViewController.viewWillAppear(_:)(char a1, SEL *a2, char a3)
{
  v6 = v3;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for SearchTabViewController();
  objc_msgSendSuper2(&v11, *a2, a1 & 1);
  v8 = [v6 navigationController];
  if (v8)
  {
    v9 = a3 & 1;
    v10 = v8;
    [v8 setNavigationBarHidden:v9 animated:a1 & 1];
  }
}

void @objc SearchTabViewController.viewWillAppear(_:)(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for SearchTabViewController();
  v8 = *a4;
  v9 = v13.receiver;
  objc_msgSendSuper2(&v13, v8, a3);
  v10 = [v9 navigationController];
  if (v10)
  {
    v11 = a5 & 1;
    v12 = v10;
    [v10 setNavigationBarHidden:v11 animated:a3];
  }
}

Swift::Void __swiftcall SearchTabViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchTabViewController();
  v19.receiver = v2;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "viewDidAppear:", a1);
  if ((*((swift_isaMask & *v2) + 0x98))(v13))
  {
    (*((swift_isaMask & *v2) + 0xA0))(0);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in SearchTabViewController.viewDidAppear(_:);
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_19;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t closure #1 in SearchTabViewController.viewDidAppear(_:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in closure #1 in SearchTabViewController.viewDidAppear(_:);
  *(v4 + 24) = v3;
  v8[4] = _sIeg_ytIegr_TRTA_0;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_14_1;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in SearchTabViewController.viewDidAppear(_:)(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x68);
  v2 = v1();
  [v2 setActive:1];

  v3 = v1();
  v4 = [v3 searchBar];

  [v4 becomeFirstResponder];
}

Swift::Void __swiftcall SearchTabViewController.searchControllerBeginDragging()()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (v2)
  {
    v3 = [v2 searchBar];

    [v3 resignFirstResponder];
  }
}

Swift::Void __swiftcall SearchTabViewController.didPresentSearchController(_:)(UISearchController a1)
{
  (*((swift_isaMask & *v1) + 0x80))();
  if (v3)
  {
    v4 = [(objc_class *)a1.super.super.super.isa searchBar];
    v5 = String._bridgeToObjectiveC()();

    [v4 setText:v5];

    (*((swift_isaMask & *v1) + 0x88))(0, 0);
  }

  v6 = [objc_opt_self() shared];
  [v6 logSearchBarTap];
}

Swift::Void __swiftcall SearchTabViewController.startSearching(for:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  if (![v1 isViewLoaded])
  {
    goto LABEL_7;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 window];

  if (v6)
  {

    v7 = *((swift_isaMask & *v1) + 0x68);
    v8 = v7();
    v9 = [v8 isActive];

    if (v9)
    {
      v10 = v7();
      v11 = [v10 searchBar];

      (*((swift_isaMask & *v1) + 0x80))();
      if (v12)
      {
        v13 = String._bridgeToObjectiveC()();
      }

      else
      {
        v13 = 0;
      }

      [v11 setText:v13];

      v25 = v7();
      v26 = [v25 searchResultsUpdater];

      if (v26)
      {
        v27 = v7();
        [v26 updateSearchResultsForSearchController:v27];

        v24 = swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = *((swift_isaMask & *v1) + 0x88);

      v22 = v21(countAndFlagsBits, object);
      v23 = (v7)(v22);
      [v23 setActive:1];
    }

    v28 = (v7)(v24);
    v29 = [v28 searchBar];

    [v29 becomeFirstResponder];
  }

  else
  {
LABEL_7:
    v14 = *((swift_isaMask & *v1) + 0x68);
    v15 = v14();
    v16 = [v15 searchBar];

    if (object)
    {
      object = String._bridgeToObjectiveC()();
    }

    [v16 setText:object];

    v17 = v14();
    v18 = [v17 searchResultsUpdater];

    if (v18)
    {
      v19 = v14();
      [v18 updateSearchResultsForSearchController:v19];

      swift_unknownObjectRelease();
    }

    v20 = *((swift_isaMask & *v1) + 0xA0);

    v20(1);
  }
}

Swift::Void __swiftcall SearchTabViewController.handleShowDetailsURL(for:)(Swift::String a1)
{
  MPSearchViewController.loadSearchControllersIfNeeded()();
  v2 = [objc_allocWithZone(CHManager) init];
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 predicateForCallsWithUniqueID:v4];

  v6 = [v2 callsWithPredicate:v5 limit:1 offset:0 batchSize:0];
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_26:

    v13 = v2;
    goto LABEL_39;
  }

LABEL_25:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_26;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_32;
      }

LABEL_38:

      v13 = v16;
      goto LABEL_39;
    }

    v8 = *(v7 + 32);
  }

  v16 = v8;

  v9 = [v1 searchControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18MPSearchController_pMd);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_29:
    v1 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_8:
  v11 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v12 = v11;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        swift_unknownObjectRetain();
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      type metadata accessor for CallsSearchController();
      if (swift_dynamicCastClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v12;
      if (v11 == v10)
      {
        goto LABEL_30;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = _swiftEmptyArrayStorage;
  }

  while (v11 != v10);
LABEL_30:

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_37;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_32:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v1 + 32);
  }

  v15 = v14;

  CallsSearchController.showRecentCall(_:)(v16);

  v13 = v15;
LABEL_39:
}

id SearchTabViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchTabViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t specialized static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v58 = _swiftEmptyArrayStorage;
  type metadata accessor for ApplicationServices();
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v9 = [objc_allocWithZone(MPSuggestionsSearchTableViewController) init];
  [v9 setSuggestionsDelegate:a2];
  v10 = v9;
  v11 = [v8 callProviderManager];
  v12 = [objc_allocWithZone(MPSuggestionsSearchController) initWithTableViewController:v10 callProviderManager:v11];
  v53 = v10;

  v13 = v12;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v52 = v13;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v14 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:objc_msgSend(a1 options:{"callHistoryControllerCoalescingStrategy"), objc_msgSend(a1, "callHistoryControllerOptions")}];
  [v14 boostQualityOfService];
  v15 = v14;
  v16 = [a1 callProviderManager];
  v17 = [a1 contactStore];
  v18 = [a1 suggestedContactStore];
  v19 = [a1 metadataCache];
  v20 = [objc_allocWithZone(PHRecentsController) initWithCallHistoryController:v15 callProviderManager:v16 contactStore:v17 suggestedContactStore:v18 metadataCache:v19];
  v51 = v15;

  v21 = type metadata accessor for CallsSearchController();
  objc_allocWithZone(v21);
  v22 = objc_allocWithZone(TUFeatureFlags);
  v23 = v20;
  v24 = [v22 init];
  v25 = objc_allocWithZone(v21);
  v50 = v23;
  v26 = CallsSearchController.init(recentsController:featureFlags:)(v23, v24);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v27 = v26;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v28 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = *((swift_isaMask & *v8) + 0x98);
  v30 = (v29)(v28);
  [a3 setVoicemailController:v30];

  v31 = v29();
  v32 = objc_allocWithZone(type metadata accessor for VoicemailsSearchController());
  v33 = v31;
  v34 = VoicemailsSearchController.init(navigationController:voicemailController:)(a3, v33);
  [*&v34[OBJC_IVAR___MPVoicemailsSearchController_voicemailsTableViewController] setHostingNavigationController:a4];

  v35 = v34;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v36 = [objc_allocWithZone(PHContactsSearchResultsRanker) init];
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = v8;
  v39 = swift_allocObject();
  *(v39 + 16) = v8;
  v40 = objc_allocWithZone(MPContactsSearchController);
  aBlock[4] = closure #1 in static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController);
  aBlock[3] = &block_descriptor_26_0;
  v41 = _Block_copy(aBlock);
  v56[4] = partial apply for implicit closure #2 in implicit closure #1 in PhoneRecentsViewController.contactsSearchManager.getter;
  v56[5] = v37;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 1107296256;
  v56[2] = thunk for @escaping @callee_guaranteed (@guaranteed [MPContactSearchResult]) -> (@owned [MPContactSearchResult]);
  v56[3] = &block_descriptor_29;
  v42 = _Block_copy(v56);
  v55[4] = partial apply for closure #2 in static SearchTabViewController.searchControllersForDifferentSectionsUsingRecentsController(_:with:and:in:hostingNavigationController:);
  v55[5] = v38;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 1107296256;
  v55[2] = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController);
  v55[3] = &block_descriptor_32_0;
  v43 = _Block_copy(v55);
  v54[4] = _s11MobilePhone23SearchTabViewControllerC049searchControllersForDifferentSectionsUsingRecentsF0_4with3and2in017hostingNavigationF0SaySo08MPSearchF0_pGSgSo09PHRecentsF0C_So011MPSuggestedC0_pSo0seF0CSo0brF0CSo012UINavigationF0CtFZSo21TUCallProviderManagerCycfU1_TA_0;
  v54[5] = v39;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 1107296256;
  v54[2] = thunk for @escaping @callee_guaranteed () -> (@owned TUCallProviderManager);
  v54[3] = &block_descriptor_35;
  v44 = _Block_copy(v54);
  v45 = v8;
  v46 = v36;
  v47 = [v40 initWithContactSearchType:0 contactViewControllerProvider:v41 searchResultsRanker:v42 senderIdentityProvider:v43 callProviderManagerProvider:v44];
  _Block_release(v43);
  _Block_release(v42);
  _Block_release(v41);
  _Block_release(v44);

  v48 = v47;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v58;
}

uint64_t sub_100189C4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100189CA4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_100189D64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100189DC0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x88);

  return v4(v2, v3);
}

uint64_t sub_100189E38@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

id _s11MobilePhone23SearchTabViewControllerC049searchControllersForDifferentSectionsUsingRecentsF0_4with3and2in017hostingNavigationF0SaySo08MPSearchF0_pGSgSo09PHRecentsF0C_So011MPSuggestedC0_pSo0seF0CSo0brF0CSo012UINavigationF0CtFZSo21TUCallProviderManagerCycfU1_TA_0()
{
  v1 = [*(v0 + 16) callProviderManager];

  return v1;
}

char *RecentCallsViewController.__allocating_init(recentsController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized RecentCallsViewController.init(recentsController:)(a1);

  return v4;
}

char *RecentCallsViewController.init(recentsController:)(void *a1)
{
  v2 = specialized RecentCallsViewController.init(recentsController:)(a1);

  return v2;
}

void RecentCallsViewController.configureTabBarItem()()
{
  v1 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:4 tag:0];
  [v0 setTabBarItem:v1];

  v2 = [v0 tabBarItem];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(UITabBarAppearance) init];
    [v3 setStandardAppearance:v4];

    v5 = [*(*&v0[OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observableRecentsController] + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController) unreadCallCount];

    RecentCallsViewController.updateTabBarItemBadge(count:)(v5);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in RecentCallsViewController.init(recentsController:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 tabBarController];
    v3 = [v2 selectedViewController];

    if (v3)
    {
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIViewController);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        [*(*&v1[OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observableRecentsController] + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController) markRecentCallsAsRead];
      }
    }

    else
    {
    }
  }
}

void RecentCallsViewController.init()()
{
  *(v0 + OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void RecentCallsViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id RecentCallsViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers;
  swift_beginAccess();
  v4 = *&v0[v3];
  v5 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  v6 = *(v4 + 16);

  for (i = 0; v6 != i; ++i)
  {
    if (i >= *(v4 + 16))
    {
      __break(1u);
LABEL_17:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    if (*(v4 + 8 * i + 32))
    {
      swift_unknownObjectRetain();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v18;
    }
  }

  v15 = v3;
  v16 = ObjectType;

  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_18:

    *&v1[v15] = _swiftEmptyArrayStorage;

    v17.receiver = v1;
    v17.super_class = v16;
    return objc_msgSendSuper2(&v17, "dealloc");
  }

LABEL_10:
  result = objc_opt_self();
  if (v9 >= 1)
  {
    v11 = result;
    v12 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v5 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      ++v12;
      v14 = [v11 defaultCenter];
      [v14 removeObserver:v13];
      swift_unknownObjectRelease();
    }

    while (v9 != v12);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void RecentCallsViewController.updateTabBarItemBadge(count:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v13 = a1;
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100209AA0;
  if (v5)
  {
    v13 = v3;
    v14 = v5;

    v7 = String.init<A>(reflecting:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:type:_:)();

  v10 = [v2 tabBarItem];
  if (v10)
  {
    v11 = v10;
    if (v5)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v11 setBadgeValue:{v12, v13, v14}];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall RecentCallsViewController.viewDidLoad()()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  type metadata accessor for ObservableRecentsController(0);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();
  v2 = EnvironmentObject.init()();
  v4 = v3;
  State.init(wrappedValue:)();
  v5 = v34;
  v6 = *(&v34 + 1);
  LOBYTE(v29) = 0;
  State.init(wrappedValue:)();
  v7 = v34;
  v8 = *(&v34 + 1);
  v9 = *&v0[OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observableRecentsController];
  v10 = static ObservableObject.environmentStore.getter();
  *&v34 = v2;
  *(&v34 + 1) = v4;
  LOBYTE(v35) = v5;
  *(&v35 + 1) = v29;
  DWORD1(v35) = *(&v29 + 3);
  *(&v35 + 1) = v6;
  LOBYTE(v36) = v7;
  *(&v36 + 1) = v28[0];
  DWORD1(v36) = *(v28 + 3);
  *(&v36 + 1) = v8;
  *&v37 = v10;
  *(&v37 + 1) = v9;
  v31 = v36;
  v32 = v37;
  v29 = v34;
  v30 = v35;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy11MobilePhone28RecentCallsListContainerViewVAA30_EnvironmentKeyWritingModifierVyAF017ObservableRecentsD0CSgGGGMd));
  v12 = v9;
  outlined init with copy of ModifiedContent<RecentCallsListContainerView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>>(&v34, v28);
  v13 = UIHostingController.init(rootView:)();
  [v1 addChildViewController:v13];
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;

  v20 = [v1 view];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;

  [v15 setFrame:{0.0, 0.0, v19, v23}];
  v24 = [v13 view];

  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v24 setAutoresizingMask:18];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v13 view];

  if (v27)
  {
    [v26 addSubview:v27];

    [v13 didMoveToParentViewController:v1];
    outlined destroy of ModifiedContent<RecentCallsListContainerView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>>(&v34);
    return;
  }

LABEL_13:
  __break(1u);
}

Swift::Void __swiftcall RecentCallsViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewWillDisappear:", a1);
  [*(*&v1[OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observableRecentsController] + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController) markRecentCallsAsRead];
}

char *specialized RecentCallsViewController.init(recentsController:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers] = _swiftEmptyArrayStorage;
  v4 = objc_allocWithZone(type metadata accessor for ObservableRecentsController(0));
  *&v1[OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observableRecentsController] = specialized ObservableRecentsController.init(recentsController:)(a1);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v6 = v5;
  v7 = static OS_dispatch_queue.main.getter();
  [a1 addDelegate:v6 queue:v7];

  RecentCallsViewController.configureTabBarItem()();
  v8 = [objc_opt_self() defaultCenter];
  v9 = [objc_opt_self() mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = partial apply for closure #1 in RecentCallsViewController.init(recentsController:);
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v15[3] = &block_descriptor_20;
  v11 = _Block_copy(v15);

  v12 = [v8 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);

  v13 = OBJC_IVAR____TtC11MobilePhone25RecentCallsViewController_observers;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*&v6[v13] + 16) >= *(*&v6[v13] + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v6;
}

uint64_t outlined init with copy of ModifiedContent<RecentCallsListContainerView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy11MobilePhone28RecentCallsListContainerViewVAA30_EnvironmentKeyWritingModifierVyAD27ObservableRecentsControllerCSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<RecentCallsListContainerView, _EnvironmentKeyWritingModifier<ObservableRecentsController?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy11MobilePhone28RecentCallsListContainerViewVAA30_EnvironmentKeyWritingModifierVyAD27ObservableRecentsControllerCSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018B104()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void ReportTableViewCell.configureContent()()
{
  v6[3] = type metadata accessor for UIListContentConfiguration();
  v6[4] = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  ReportTableViewCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  UITableViewCell.contentConfiguration.setter();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  v5 = [objc_opt_self() systemRedColor];
  [v4 setTintColor:v5];

  [v0 setAccessoryView:v4];
}

void ReportTableViewCell.init(coder:)()
{
  v1 = OBJC_IVAR___PHReportTableViewCell____lazy_storage___cellContentConfiguration;
  v2 = type metadata accessor for UIListContentConfiguration();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ReportTableViewCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___PHReportTableViewCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration?(v1 + v9, v8);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  outlined destroy of UIListContentConfiguration?(v8);
  closure #1 in ReportTableViewCell.cellContentConfiguration.getter();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of UIListContentConfiguration?(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t closure #1 in ReportTableViewCell.cellContentConfiguration.getter()
{
  UITableViewCell.defaultContentConfiguration()();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x746E656365524850;
  v3._object = 0x80000001002463E0;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v2.value._object = 0xE900000000000073;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v10);

  UIListContentConfiguration.text.setter();
  v5 = [objc_opt_self() systemRedColor];
  v6 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v6(v9, 0);
  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  return v7(v9, 0);
}

id specialized ReportTableViewCell.init(style:reuseIdentifier:)()
{
  ObjectType = swift_getObjectType();

  v2 = OBJC_IVAR___PHReportTableViewCell____lazy_storage___cellContentConfiguration;
  v3 = type metadata accessor for UIListContentConfiguration();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = String._bridgeToObjectiveC()();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", 0, v4);

  v6 = v5;
  ReportTableViewCell.configureContent()();
  [v6 setSelectionStyle:0];

  return v6;
}

uint64_t type metadata accessor for ReportTableViewCell()
{
  result = type metadata singleton initialization cache for ReportTableViewCell;
  if (!type metadata singleton initialization cache for ReportTableViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ReportTableViewCell()
{
  type metadata accessor for UIListContentConfiguration?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static VoicemailBadgeCalculator.CountResult.+ infix(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = __CFADD__(a1, a3);
  result = a1 + a3;
  v6 = v4;
  if ((a2 | a4))
  {
    if ((v6 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id VoicemailBadgeCalculator.__allocating_init(accountManager:vvmSource:legacySource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v16 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = *(a3 + 24);
  v11 = *(a3 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v12);
  v14 = specialized VoicemailBadgeCalculator.__allocating_init(accountManager:vvmSource:legacySource:)(v7, v10, v13, v17, v6, v12, v9, v16, v11, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

id VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v26 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = *(a2 + 24);
  v25 = *(a2 + 32);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v17 = *(a3 + 24);
  v16 = *(a3 + 32);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v17);
  __chkstk_darwin(v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)(v9, v14, v20, v27, v6, v17, v11, v26, v16, v25);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v22;
}

uint64_t closure #1 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:), v3, v2);
}

uint64_t closure #2 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #2 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:), v3, v2);
}

uint64_t closure #2 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((swift_isaMask & *Strong) + 0xE8))();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t VoicemailBadgeCalculator.listen(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in VoicemailBadgeCalculator.listen(_:), v9);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

uint64_t closure #1 in VoicemailBadgeCalculator.listen(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySo10PhoneBadgeas5NeverOGGMd);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySo10PhoneBadgeas5NeverOG_GMd);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();

  return (_swift_task_switch)(closure #1 in VoicemailBadgeCalculator.listen(_:), 0, 0);
}

uint64_t closure #1 in VoicemailBadgeCalculator.listen(_:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[4] = *(v0[6] + OBJC_IVAR___MPVoicemailBadgeCalculator_currentBadge);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo10PhoneBadgeas5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PhoneBadge, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySo10PhoneBadgeas5NeverOGMd);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PhoneBadge, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySo10PhoneBadgeas5NeverOG_GMd);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = closure #1 in VoicemailBadgeCalculator.listen(_:);
  v6 = v0[12];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v6, v4);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = closure #1 in VoicemailBadgeCalculator.listen(_:);
  }

  else
  {
    v2 = closure #1 in VoicemailBadgeCalculator.listen(_:);
  }

  return (_swift_task_switch)(v2, 0, 0);
}

{
  *(v0 + 136) = *(v0 + 16);
  return (_swift_task_switch)(closure #1 in VoicemailBadgeCalculator.listen(_:), 0, 0);
}

{
  v1 = *(v0 + 136);
  if (v1 == 2)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v6 = (*(v0 + 56) + **(v0 + 56));
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = closure #1 in VoicemailBadgeCalculator.listen(_:);
    v5 = *(v0 + 144);

    return v6(v1 & 1, v5);
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PhoneBadge, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySo10PhoneBadgeas5NeverOG_GMd);
  v4 = swift_task_alloc();
  *(v1 + 120) = v4;
  *v4 = v2;
  v4[1] = closure #1 in VoicemailBadgeCalculator.listen(_:);
  v5 = *(v1 + 96);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 16, v5, v3);
}

{
  *(v0 + 40) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t VoicemailBadgeCalculator.listen_objc(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *((swift_isaMask & *v2) + 0xD8);

  v7 = v6(&async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@unowned PhoneBadge) -> (), v5);

  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned PhoneBadge) -> ()(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = *(v3 + 8);

  return v4();
}

uint64_t VoicemailBadgeCalculator.updateBadge()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR___MPVoicemailBadgeCalculator_currentUpdateTask;
  v6 = *&v0[OBJC_IVAR___MPVoicemailBadgeCalculator_currentUpdateTask];
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v0;

  v8 = v0;
  v9 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSo10PhoneBadgea_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in VoicemailBadgeCalculator.updateBadge(), v7);
  *&v0[v5] = v9;

  return v9;
}

uint64_t closure #1 in VoicemailBadgeCalculator.updateBadge()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a1;
  v5[9] = a5;
  if (a4)
  {
    v7 = swift_task_alloc();
    v5[10] = v7;
    type metadata accessor for PhoneBadge(0);
    *v7 = v5;
    v7[1] = closure #1 in VoicemailBadgeCalculator.updateBadge();

    return Task<>.value.getter(v5 + 6, a4, v8);
  }

  else
  {
    v11 = (*((swift_isaMask & *a5) + 0xF0) + **((swift_isaMask & *a5) + 0xF0));
    v9 = swift_task_alloc();
    v5[11] = v9;
    *v9 = v5;
    v9[1] = closure #1 in VoicemailBadgeCalculator.updateBadge();

    return v11();
  }
}

uint64_t closure #1 in VoicemailBadgeCalculator.updateBadge()()
{

  return (_swift_task_switch)(closure #1 in VoicemailBadgeCalculator.updateBadge(), 0, 0);
}

{
  v3 = (*((swift_isaMask & **(v0 + 72)) + 0xF0) + **((swift_isaMask & **(v0 + 72)) + 0xF0));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = closure #1 in VoicemailBadgeCalculator.updateBadge();

  return v3();
}

{
  v1 = *(v0 + 104) ^ 1;
  CurrentValueSubject.value.getter();
  if ((v1 & 1) == *(v0 + 16))
  {
    v2 = *(v0 + 96);
    if (v2 == *(v0 + 24))
    {
      v3 = v1 & 1;
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(v0 + 96);
  }

  v3 = v1 & 1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  CurrentValueSubject.send(_:)();
  v2 = *(v0 + 96);
LABEL_6:
  v4 = *(v0 + 64);
  *v4 = v3;
  *(v4 + 8) = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in VoicemailBadgeCalculator.updateBadge()(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return (_swift_task_switch)(closure #1 in VoicemailBadgeCalculator.updateBadge(), 0, 0);
}

uint64_t VoicemailBadgeCalculator._updateBadge()()
{
  *(v1 + 16) = v0;
  return (_swift_task_switch)(VoicemailBadgeCalculator._updateBadge(), 0, 0);
}

{
  v1 = (*(v0 + 16) + OBJC_IVAR___MPVoicemailBadgeCalculator_accountManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_18:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = v1[3];
    v12 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v11);
    v13 = (*(v12 + 16))(v10 + OBJC_IVAR___MPVoicemailAccount_uuid, v11, v12);

    ++v8;
    if (v13)
    {
      v15 = v22[2];

      v16 = *(v15 + OBJC_IVAR___MPVoicemailBadgeCalculator_vvmSource + 24);
      v17 = *(v15 + OBJC_IVAR___MPVoicemailBadgeCalculator_vvmSource + 32);
      __swift_project_boxed_opaque_existential_0((v15 + OBJC_IVAR___MPVoicemailBadgeCalculator_vvmSource), v16);
      v21 = (*(v17 + 8) + **(v17 + 8));
      v18 = swift_task_alloc();
      v22[3] = v18;
      *v18 = v22;
      v19 = VoicemailBadgeCalculator._updateBadge();
      goto LABEL_13;
    }
  }

  v14 = v22[2];

  v16 = *(v14 + OBJC_IVAR___MPVoicemailBadgeCalculator_legacySource + 24);
  v17 = *(v14 + OBJC_IVAR___MPVoicemailBadgeCalculator_legacySource + 32);
  __swift_project_boxed_opaque_existential_0((v14 + OBJC_IVAR___MPVoicemailBadgeCalculator_legacySource), v16);
  v21 = (*(v17 + 8) + **(v17 + 8));
  v18 = swift_task_alloc();
  v22[4] = v18;
  *v18 = v22;
  v19 = VoicemailBadgeCalculator._updateBadge();
LABEL_13:
  v18[1] = v19;

  return v21(v16, v17);
}

uint64_t VoicemailBadgeCalculator._updateBadge()(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

id VoicemailBadgeCalculator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailBadgeCalculator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t VoicemailBadgeCalculator.CountResult.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    if (!a1)
    {
      return 0xD000000000000013;
    }

    _StringGuts.grow(_:)(23);

    v5 = 0xD000000000000014;
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v5 = 0xD000000000000012;
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5;
}

id specialized VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34[3] = a5;
  v34[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v33[3] = a7;
  v33[4] = a10;
  v18 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a7 - 8) + 32))(v18, a2, a7);
  v32[3] = a6;
  v32[4] = a9;
  v30 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a6 - 8) + 32))(v30, a3, a6);
  v19 = OBJC_IVAR___MPVoicemailBadgeCalculator_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.mobilePhone);
  (*(*(v20 - 8) + 16))(&a4[v19], v21, v20);
  v22 = OBJC_IVAR___MPVoicemailBadgeCalculator_currentBadge;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySo10PhoneBadgeas5NeverOGMd);
  swift_allocObject();
  *&a4[v22] = CurrentValueSubject.init(_:)();
  *&a4[OBJC_IVAR___MPVoicemailBadgeCalculator_currentUpdateTask] = 0;
  *&a4[OBJC_IVAR___MPVoicemailBadgeCalculator_cancellables] = _swiftEmptyArrayStorage;
  outlined init with copy of Tip(v34, &a4[OBJC_IVAR___MPVoicemailBadgeCalculator_accountManager]);
  outlined init with copy of Tip(v33, &a4[OBJC_IVAR___MPVoicemailBadgeCalculator_vvmSource]);
  outlined init with copy of Tip(v32, &a4[OBJC_IVAR___MPVoicemailBadgeCalculator_legacySource]);
  v31.receiver = a4;
  v31.super_class = type metadata accessor for VoicemailBadgeCalculator();
  v23 = objc_msgSendSuper2(&v31, "init");
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *(a10 + 16);
  v26 = v23;

  v25(&async function pointer to partial apply for closure #1 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:), v24, a7, a10);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v28 = *(a9 + 16);

  v28(&async function pointer to partial apply for closure #2 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:), v27, a6, a9);

  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v26;
}

id specialized VoicemailBadgeCalculator.__allocating_init(accountManager:vvmSource:legacySource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a3;
  v33 = a8;
  v30 = a2;
  v28 = a1;
  v13 = *(a6 - 8);
  v31 = a9;
  v29 = a10;
  v14 = __chkstk_darwin(a1);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v14);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v19);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = objc_allocWithZone(type metadata accessor for VoicemailBadgeCalculator());
  (*(v23 + 16))(v25, v28, a5);
  (*(v18 + 16))(v21, v30, a7);
  (*(v13 + 16))(v16, v32, a6);
  return specialized VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)(v25, v21, v16, v26, a5, a6, a7, v33, v31, v29);
}

uint64_t sub_10018DFE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in VoicemailBadgeCalculator.listen(_:)(uint64_t a1)
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

  return closure #1 in VoicemailBadgeCalculator.listen(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10018E11C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned PhoneBadge) -> ()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return thunk for @escaping @callee_guaranteed (@unowned PhoneBadge) -> ()(a1, a2, v6);
}

uint64_t sub_10018E218()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in VoicemailBadgeCalculator.updateBadge()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in VoicemailBadgeCalculator.updateBadge()(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for VoicemailBadgeCalculator()
{
  result = type metadata singleton initialization cache for VoicemailBadgeCalculator;
  if (!type metadata singleton initialization cache for VoicemailBadgeCalculator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoicemailBadgeCalculator()
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

uint64_t getEnumTagSinglePayload for VoicemailBadgeCalculator.CountResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailBadgeCalculator.CountResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_10018E4E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018E53C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #1 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)(v0);
}

uint64_t partial apply for closure #2 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #2 in VoicemailBadgeCalculator.init(accountManager:vvmSource:legacySource:)(v0);
}

id VMGreetingChangeViewController.liveVoicemailAccount()()
{
  if (![v0 liveVoicemailEnabled])
  {
    return 0;
  }

  v1 = objc_allocWithZone(type metadata accessor for GreetingAccount());
  return GreetingAccount.init(accountType:)(0, 2);
}

Swift::Void __swiftcall VMGreetingChangeViewController.startObservingPreferences()()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Defaults.isInternalInstall == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (static Defaults.isInternalInstall)
    {
      v2 = objc_allocWithZone(NSUserDefaults);

      v3 = [v2 init];
      v4 = type metadata accessor for Defaults.Observation();
      v5 = objc_allocWithZone(v4);
      v6 = &v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_key];
      *v6 = 0xD000000000000014;
      *(v6 + 1) = 0x80000001002405D0;
      *&v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault] = v3;
      v7 = &v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange];
      *v7 = partial apply for closure #1 in VMGreetingChangeViewController.startObservingPreferences();
      v7[1] = v1;
      v13.receiver = v5;
      v13.super_class = v4;
      v8 = v3;

      v9 = objc_msgSendSuper2(&v13, "init");
      v10 = String._bridgeToObjectiveC()();
      [v8 addObserver:v9 forKeyPath:v10 options:0 context:{0, v13.receiver, v13.super_class}];

      v11 = [v0 observations];
      [v11 insertObject:v9 atIndex:0];
    }

    else
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0;
      *(v12 + 72) = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_10018EA14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in VMGreetingChangeViewController.startObservingPreferences()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong updateView];
  }
}

BOOL specialized VMGreetingChangeViewController.arrayContainsUUID(_:uuid:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_19;
      }

      v10 = *(a1 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (UUID.uuidString.getter() == a2 && v12 == a3)
    {

      return v7 != v9;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v7 != v9;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);

  return v4;
}

{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    outlined consume of Set<CHHandle>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<CHHandle>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<CHHandle>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        outlined consume of Set<CHHandle>.Iterator._Variant();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 normalizedValue];
    v15 = TUHandleForIDSCanonicalAddress();

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void FaceTimeSpamReportManager.reportSpam(call:)(void *a1)
{
  v2 = v1;
  v4 = FaceTimeSpamReportManager.fetchLocalFaceTimeHandles()();
  v5 = specialized Collection.first.getter(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    type metadata accessor for NameAndPhotoUtilities();
    v9 = static NameAndPhotoUtilities.shared.getter();
    v10 = [a1 validRemoteParticipantHandles];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
      lazy protocol witness table accessor for type CHHandle and conformance NSObject();
      v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = specialized Collection.first.getter(v12);

      if (v13)
      {
        v14 = [v13 value];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    v23 = NameAndPhotoUtilities.pendingOrCurrentIMNickname(from:)();

    v24 = static NameAndPhotoUtilities.shared.getter();
    v25 = [a1 validRemoteParticipantHandles];
    v26 = v25;
    if (v25)
    {
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
      lazy protocol witness table accessor for type CHHandle and conformance NSObject();
      v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = specialized Collection.first.getter(v27);

      if (v26)
      {
        v28 = [v26 value];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v30;

        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }

    v31 = v26;
    v32 = NameAndPhotoUtilities.unknownSenderRecordInfo(for:)(*&v25);

    v33 = v23;
    specialized FaceTimeSpamReportManager.SpamDataModel.init(call:nickName:recipientHandleValue:snapRecordInfo:)(a1, v23, v7, v8, v32, v54);
    v34 = FaceTimeSpamReportManager.SpamDataModel.mapToDict.getter();
    outlined destroy of FaceTimeSpamReportManager.SpamDataModel(v54);
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.spamReport);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v38 = 136315138;
      if (v34)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
        v40 = String.init<A>(reflecting:)();
        v42 = v41;
      }

      else
      {
        v42 = 0xE300000000000000;
        v40 = 7104878;
      }

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v53);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "ReportSpamManager: report spam, model.dictionary: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    v44 = *(v2 + OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_idsService);
    if (v34)
    {
      v45.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v45.super.isa = 0;
    }

    v46 = [v44 reportSpamMessage:v45.super.isa];

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    if (v46)
    {
      if (v49)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "ReportSpamManager: report spam was sent successfully";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v47, v48, v51, v50, 2u);
      }
    }

    else if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "ReportSpamManager: report spam was rejected for some reason";
      goto LABEL_31;
    }

    return;
  }

  if (one-time initialization token for spamReport != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.spamReport);

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54[0] = v18;
    *v17 = 136315138;
    v19 = Set.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v54);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v16, "Could not report facetime call spam due to zero registered facetime service IMAccount %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
  }
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.callType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.formattedCallStatus.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.recipientHandleValue.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.senderHandleValue.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.messageId.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.messageKey.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.snapFirstName.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.snapLastName.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t FaceTimeSpamReportManager.SpamDataModel.snapRecordId.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

double FaceTimeSpamReportManager.SpamDataModel.init(call:nickName:recipientHandleValue:snapRecordInfo:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  specialized FaceTimeSpamReportManager.SpamDataModel.init(call:nickName:recipientHandleValue:snapRecordInfo:)(a1, a2, a3, a4, a5, v14);
  v7 = v22;
  a6[8] = v21;
  a6[9] = v7;
  v8 = v24;
  a6[10] = v23;
  a6[11] = v8;
  v9 = v18;
  a6[4] = v17;
  a6[5] = v9;
  v10 = v20;
  a6[6] = v19;
  a6[7] = v10;
  v11 = v14[1];
  *a6 = v14[0];
  a6[1] = v11;
  result = *&v15;
  v13 = v16;
  a6[2] = v15;
  a6[3] = v13;
  return result;
}

char *CHRecentCall.formattedRemoteHandles.getter()
{
  v1 = [v0 validRemoteParticipantHandles];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Sequence.compactMap<A>(_:)(v3);
    v5 = v4;

    if (v5 >> 62)
    {
LABEL_23:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = &_swiftEmptyArrayStorage;
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v12 = TUCopyIDSFromIDForHandle();
            if (v12)
            {
              break;
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v18 = *(v8 + 2);
          v17 = *(v8 + 3);
          if (v18 >= v17 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v8);
          }

          *(v8 + 2) = v18 + 1;
          v19 = &v8[16 * v18];
          *(v19 + 4) = v14;
          *(v19 + 5) = v16;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v8 = &_swiftEmptyArrayStorage;
LABEL_25:

    return v8;
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t CHRecentCall.faceTimeSpamCallType.getter()
{
  v1 = [v0 serviceProvider];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v5)
  {
LABEL_10:

    return 0;
  }

  if (v3 == v6 && v5 == v7)
  {

    goto LABEL_13;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v11 = [v0 remoteParticipantHandles];
  if (!v11)
  {
    return 0x656D697465636166;
  }

  v12 = v11;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  lazy protocol witness table accessor for type CHHandle and conformance NSObject();
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *(v13 + 16);
  }

  if (v14 == 1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x656D697465636166;
  }
}

uint64_t UInt32.stringValue.getter(int a1)
{
  if (kCHCallStatusUnknown == a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (kCHCallStatusConnectedIncoming == a1)
  {
    return 0xD000000000000011;
  }

  if (kCHCallStatusConnectedOutgoing == a1)
  {
    return 0xD000000000000011;
  }

  if (kCHCallStatusAnsweredElsewhere == a1)
  {
    return 0xD000000000000011;
  }

  if (kCHCallStatusMissed == a1)
  {
    return 0x64657373696DLL;
  }

  if (kCHCallStatusCancelled == a1)
  {
    return 0x656C6C65636E6163;
  }

  v12[7] = v1;
  v12[8] = v2;
  if (one-time initialization token for spamReport != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.spamReport);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unknown Callstatus, %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return 0;
}

unint64_t FaceTimeSpamReportManager.SpamDataModel.snapSpamDictionary.getter()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v22 = v2;
  *&v19 = 0x616E2D7473726966;
  *(&v19 + 1) = 0xEA0000000000656DLL;
  AnyHashable.init<A>(_:)();
  v3 = v1[18];
  if (v3)
  {
    v4 = v1[17];
    v20 = &type metadata for String;
    *&v19 = v4;
    *(&v19 + 1) = v3;
    outlined init with take of Any(&v19, v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v21, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v21);
    v22 = v2;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v21, &v19);
    outlined destroy of (NSAttributedStringKey, Any)(&v19, &_sypSgMd);
    outlined destroy of AnyHashable(v21);
  }

  *&v19 = 0x6D616E2D7473616CLL;
  *(&v19 + 1) = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  v6 = v1[20];
  if (v6)
  {
    v7 = v1[19];
    v20 = &type metadata for String;
    *&v19 = v7;
    *(&v19 + 1) = v6;
    outlined init with take of Any(&v19, v18);

    v8 = v22;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v21, v9);
    outlined destroy of AnyHashable(v21);
    v22 = v8;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v21, &v19);
    outlined destroy of (NSAttributedStringKey, Any)(&v19, &_sypSgMd);
    outlined destroy of AnyHashable(v21);
  }

  *&v19 = 0x644964726F636572;
  *(&v19 + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v10 = v1[22];
  if (v10)
  {
    v11 = v1[21];
    v20 = &type metadata for String;
    *&v19 = v11;
    *(&v19 + 1) = v10;
    outlined init with take of Any(&v19, v18);

    v12 = v22;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v21, v13);
    outlined destroy of AnyHashable(v21);
    v22 = v12;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v21, &v19);
    outlined destroy of (NSAttributedStringKey, Any)(&v19, &_sypSgMd);
    outlined destroy of AnyHashable(v21);
  }

  *&v19 = 0xD000000000000017;
  *(&v19 + 1) = 0x8000000100246590;
  AnyHashable.init<A>(_:)();
  v14 = v1[23];
  if (v14)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd);
    *&v19 = v14;
    outlined init with take of Any(&v19, v18);

    v15 = v22;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v21, v16);
    outlined destroy of AnyHashable(v21);
    return v15;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v21, &v19);
    outlined destroy of (NSAttributedStringKey, Any)(&v19, &_sypSgMd);
    outlined destroy of AnyHashable(v21);
    return v22;
  }
}

unint64_t FaceTimeSpamReportManager.SpamDataModel.mapToDict.getter()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  *&v59 = 0x2D64657469766E69;
  *(&v59 + 1) = 0xEF737265626D656DLL;
  AnyHashable.init<A>(_:)();
  v3 = *v1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  *&v59 = v3;
  outlined init with take of Any(&v59, v58);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v61);
  v62 = v2;
  if (v1[14])
  {

    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.spamReport);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "call date is nil, kIDSGeneralSpamReportTimeOfMessageKey is required to report spams";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

LABEL_25:

    return 0;
  }

  v10 = v1[12];
  if (!v10)
  {

    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.spamReport);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "message id is nil, kIDSGeneralSpamReportMessageIDKey is required to report spams";
    goto LABEL_24;
  }

  if (!v1[10])
  {

LABEL_20:
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.spamReport);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "senderHandleValue is nil, kIDSGeneralSpamReportSenderURIKey is required to report spams";
    goto LABEL_24;
  }

  v11 = v1[13];
  v12 = v1[11];

  v13 = String._bridgeToObjectiveC()();
  v14 = TUHandleForIDSCanonicalAddress();

  if (!v14)
  {

LABEL_19:

    goto LABEL_20;
  }

  v15 = TUCopyIDSFromIDForHandle();
  if (!v15)
  {

    goto LABEL_19;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v18;
  v57 = v17;

  v19 = String._bridgeToObjectiveC()();
  v20 = TUHandleForIDSCanonicalAddress();

  *&v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v59 + 1) = v21;
  AnyHashable.init<A>(_:)();
  v22 = v1[15];
  v23 = v1[16];
  v60 = &type metadata for String;
  *&v59 = v22;
  *(&v59 + 1) = v23;
  outlined init with take of Any(&v59, v58);

  v24 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v24);
  outlined destroy of AnyHashable(v61);
  *&v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v59 + 1) = v25;
  AnyHashable.init<A>(_:)();
  v60 = &type metadata for Double;
  *&v59 = v11;
  v26 = v20;
  outlined init with take of Any(&v59, v58);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v27);
  outlined destroy of AnyHashable(v61);
  v62 = v2;
  *&v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v59 + 1) = v28;
  AnyHashable.init<A>(_:)();
  v29 = TUCopyIDSFromIDForHandle();
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v60 = &type metadata for String;
    *&v59 = v31;
    *(&v59 + 1) = v33;
    outlined init with take of Any(&v59, v58);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v34);
    outlined destroy of AnyHashable(v61);
    v62 = v2;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v61, &v59);
    outlined destroy of (NSAttributedStringKey, Any)(&v59, &_sypSgMd);
    outlined destroy of AnyHashable(v61);
    v2 = v62;
  }

  *&v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v59 + 1) = v38;
  AnyHashable.init<A>(_:)();
  v60 = &type metadata for String;
  *&v59 = v12;
  *(&v59 + 1) = v10;
  outlined init with take of Any(&v59, v58);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v39);
  outlined destroy of AnyHashable(v61);
  *&v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v59 + 1) = v40;
  AnyHashable.init<A>(_:)();
  v60 = &type metadata for String;
  *&v59 = v57;
  *(&v59 + 1) = v56;
  outlined init with take of Any(&v59, v58);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v41);
  outlined destroy of AnyHashable(v61);
  v62 = v2;
  *&v59 = 0x7079742D6C6C6163;
  *(&v59 + 1) = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  v42 = v1[2];
  if (v42)
  {
    v43 = v1[1];
    v60 = &type metadata for String;
    *&v59 = v43;
    *(&v59 + 1) = v42;
    outlined init with take of Any(&v59, v58);

    v44 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v44);
    outlined destroy of AnyHashable(v61);
    v62 = v2;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v61, &v59);
    outlined destroy of (NSAttributedStringKey, Any)(&v59, &_sypSgMd);
    outlined destroy of AnyHashable(v61);
  }

  *&v59 = 0x6E656C2D6C6C6163;
  *(&v59 + 1) = 0xEB00000000687467;
  AnyHashable.init<A>(_:)();
  if (v1[4])
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v61, &v59);
    outlined destroy of (NSAttributedStringKey, Any)(&v59, &_sypSgMd);
    outlined destroy of AnyHashable(v61);
    v45 = v62;
  }

  else
  {
    v46 = v1[3];
    v60 = &type metadata for Double;
    *&v59 = v46;
    outlined init with take of Any(&v59, v58);
    v45 = v62;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v47);
    outlined destroy of AnyHashable(v61);
    v62 = v45;
  }

  *&v59 = 0x6B6E696C2D736168;
  *(&v59 + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v48 = *(v1 + 33);
  v60 = &type metadata for Bool;
  LOBYTE(v59) = v48;
  outlined init with take of Any(&v59, v58);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v49);
  outlined destroy of AnyHashable(v61);
  v62 = v45;
  *&v59 = 0x6174732D6C6C6163;
  *(&v59 + 1) = 0xEB00000000737574;
  AnyHashable.init<A>(_:)();
  v50 = v1[6];
  if (v50)
  {
    v51 = v1[5];
    v60 = &type metadata for String;
    *&v59 = v51;
    *(&v59 + 1) = v50;
    outlined init with take of Any(&v59, v58);

    v52 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v52);
    outlined destroy of AnyHashable(v61);
    v53 = v45;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v61, &v59);
    outlined destroy of (NSAttributedStringKey, Any)(&v59, &_sypSgMd);
    outlined destroy of AnyHashable(v61);
    v53 = v62;
  }

  *&v59 = 0xD00000000000001CLL;
  *(&v59 + 1) = 0x80000001002465B0;
  AnyHashable.init<A>(_:)();
  v54 = FaceTimeSpamReportManager.SpamDataModel.snapSpamDictionary.getter();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
  *&v59 = v54;
  outlined init with take of Any(&v59, v58);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, v55);

  outlined destroy of AnyHashable(v61);
  return v53;
}

id FaceTimeSpamReportManager.init()()
{
  ObjectType = swift_getObjectType();
  result = [objc_allocWithZone(IDSService) initWithService:IDSServiceNameFaceTimeMulti];
  if (result)
  {
    v2 = result;
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v3 = result;
      v4 = [objc_opt_self() sharedController];
      v5 = objc_allocWithZone(ObjectType);
      *&v5[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_idsService] = v2;
      *&v5[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imAccountController] = v3;
      *&v5[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imDaemonController] = v4;
      v7.receiver = v5;
      v7.super_class = ObjectType;
      v6 = objc_msgSendSuper2(&v7, "init");
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id FaceTimeSpamReportManager.__allocating_init(idsService:imAccountController:imDaemonController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_idsService] = a1;
  *&v7[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imAccountController] = a2;
  *&v7[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imDaemonController] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

id FaceTimeSpamReportManager.init(idsService:imAccountController:imDaemonController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_idsService] = a1;
  *&v3[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imAccountController] = a2;
  *&v3[OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imDaemonController] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id FaceTimeSpamReportManager.fetchLocalFaceTimeHandles()()
{
  [*(v0 + OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imDaemonController) blockUntilConnected];
  v1 = objc_opt_self();
  p_attr = &stru_1002B0FF8.attr;
  v3 = [v1 facetimeService];
  v4 = IMPreferredAccountForService();

  if (v4)
  {
    if ([v4 registrationStatus] == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100209AA0;
      result = [v4 strippedLogin];
      if (result)
      {
        v7 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = String.lowercased()();

        *(inited + 32) = v8;
        v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of String(inited + 32);

        return v9;
      }

      else
      {
LABEL_53:
        __break(1u);
      }

      return result;
    }
  }

  v10 = OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imAccountController;
  v11 = *(v0 + OBJC_IVAR____TtC11MobilePhone25FaceTimeSpamReportManager_imAccountController);
  v12 = [v1 facetimeService];
  v13 = &stru_1002B0FF8.attr;
  v14 = [v11 accountsForService:v12];

  if (!v14)
  {
    if (one-time initialization token for spamReport != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_22;
  }

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for IMAccount);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = &_swiftEmptyArrayStorage;
  if (v15 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v18 = 0;
      v10 = v15 & 0xC000000000000001;
      v13 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v19 = *(v15 + 8 * v18 + 32);
        }

        v20 = v19;
        p_attr = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if ([v19 registrationStatus] == 5)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v18;
        if (p_attr == i)
        {
          v1 = v42;
          v17 = &_swiftEmptyArrayStorage;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v1 = &_swiftEmptyArrayStorage;
LABEL_26:

    if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
LABEL_49:

        v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v17);

        return v41;
      }
    }

    else
    {
      v15 = *(v1 + 16);
      if (!v15)
      {
        goto LABEL_49;
      }
    }

    v42 = &_swiftEmptyArrayStorage;
    v0 = &v42;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      break;
    }

    v30 = 0;
    v17 = v42;
    v13 = v1 & 0xC000000000000001;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v13)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v1 + 16))
        {
          goto LABEL_46;
        }

        v32 = *(v1 + 8 * v30 + 32);
      }

      v33 = v32;
      result = [v32 strippedLogin];
      if (!result)
      {
        __break(1u);
        goto LABEL_53;
      }

      v34 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = String.lowercased()();
      p_attr = v35._object;

      v42 = v17;
      v10 = *(v17 + 2);
      v36 = *(v17 + 3);
      if (v10 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v10 + 1, 1);
        v17 = v42;
      }

      *(v17 + 2) = v10 + 1;
      *(v17 + v10 + 2) = v35;
      ++v30;
      if (v31 == v15)
      {
        goto LABEL_49;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  __break(1u);
LABEL_51:
  swift_once();
LABEL_22:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.spamReport);
  v22 = v0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315138;
    v27 = *(v0 + v10);
    v28 = [v1 p_attr[402]];
    v29 = [v27 *(v13 + 3224)];

    if (v29)
    {
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for IMAccount);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9IMAccountCGSgMd);
    v37 = Optional.debugDescription.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v42);

    *(v25 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v23, v24, "Could not find any facetime service IMAccount in IMAccountController %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return &_swiftEmptySetSingleton;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TPTipsHelper.Entry.Kind();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    outlined init with take of Tip((*(v9 + 56) + 40 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined destroy of AnyHashable(*(v9 + 48) + 40 * v7);
    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        specialized _NativeDictionary._delete(at:)(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8CHHandleC_So8NSNumberCTt1g5(v4, v7);

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11TelephonyUI12TPTipsHelperC5EntryV4KindO6TipKit0I0_pGMd);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        outlined init with take of Tip((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        outlined init with copy of Tip(*(v9 + 56) + 40 * v23, v43);
      }

      lazy protocol witness table accessor for type TPTipsHelper.Entry.Kind and conformance TPTipsHelper.Entry.Kind(&lazy protocol witness table cache variable for type TPTipsHelper.Entry.Kind and conformance TPTipsHelper.Entry.Kind, &type metadata accessor for TPTipsHelper.Entry.Kind);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = outlined init with take of Tip(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for Handle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20LiveCommunicationKit6HandleVSaySo8CHHandleCGGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type TPTipsHelper.Entry.Kind and conformance TPTipsHelper.Entry.Kind(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11MobilePhone9MessageIDCSayAC0E0_pGGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8CHHandleCSo8NSNumberCGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v4 = *(v42 - 8);
  result = __chkstk_darwin(v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      lazy protocol witness table accessor for type TPTipsHelper.Entry.Kind and conformance TPTipsHelper.Entry.Kind(&lazy protocol witness table cache variable for type TPTipsHelper.Entry.Kind and conformance TPTipsHelper.Entry.Kind, &type metadata accessor for TPTipsHelper.Entry.Kind);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return outlined init with take of Any(a1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Handle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Handle();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v29 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11TelephonyUI12TPTipsHelperC5EntryV4KindO6TipKit0I0_pGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        outlined init with copy of Tip(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = outlined init with take of Tip(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11MobilePhone9MessageIDCSayAC0E0_pGGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v33 = type metadata accessor for Handle();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20LiveCommunicationKit6HandleVSaySo8CHHandleCGGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8CHHandleCSo8NSNumberCGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void specialized FaceTimeSpamReportManager.SpamDataModel.init(call:nickName:recipientHandleValue:snapRecordInfo:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a4;
  v67 = a5;
  v65 = a3;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v64 = CHRecentCall.formattedRemoteHandles.getter();
  v19 = CHRecentCall.faceTimeSpamCallType.getter();
  v62 = v20;
  v63 = v19;
  [a1 duration];
  v22 = v21;
  v69 = 0;
  v23 = UInt32.stringValue.getter([a1 callStatus]);
  v60 = v24;
  v61 = v23;
  v25 = [a1 initiator];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 value];

LABEL_4:
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v29;
    v59 = v28;

    goto LABEL_5;
  }

  v27 = [a1 callerId];
  if (v27)
  {
    goto LABEL_4;
  }

  v58 = 0;
  v59 = 0;
LABEL_5:
  v30 = [a1 uniqueId];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v32;
  v57 = v31;

  v33 = [a1 date];
  if (v33)
  {
    v34 = v33;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v16, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v16, 1, 1, v9);
  }

  outlined init with take of Date?(v16, v18);
  v35 = (*(v10 + 48))(v18, 1, v9);
  if (v35)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v18, &_s10Foundation4DateVSgMd);
    v36 = 0;
  }

  else
  {
    (*(v10 + 16))(v12, v18, v9);
    outlined destroy of (NSAttributedStringKey, Any)(v18, &_s10Foundation4DateVSgMd);
    Date.timeIntervalSince1970.getter();
    v36 = v37;
    (*(v10 + 8))(v12, v9);
  }

  v68 = v35 != 0;
  if (a2)
  {
    v38 = [a2 firstName];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = [a2 lastName];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = [a2 recordID];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {

    v39 = 0;
    v41 = 0;
    v43 = 0;
    v45 = 0;
    v47 = 0;
    v49 = 0;
  }

  v50 = v69;
  v51 = v68;
  *a6 = v64;
  *(a6 + 8) = v63;
  *(a6 + 16) = v62;
  *(a6 + 24) = v22;
  *(a6 + 32) = v50;
  *(a6 + 33) = 0;
  v52 = v60;
  *(a6 + 40) = v61;
  *(a6 + 48) = v52;
  v53 = v66;
  *(a6 + 56) = v65;
  *(a6 + 64) = v53;
  v54 = v58;
  *(a6 + 72) = v59;
  *(a6 + 80) = v54;
  v55 = v56;
  *(a6 + 88) = v57;
  *(a6 + 96) = v55;
  *(a6 + 104) = v36;
  *(a6 + 112) = v51;
  *(a6 + 120) = 0xD000000000000010;
  *(a6 + 128) = 0x8000000100246660;
  *(a6 + 136) = v39;
  *(a6 + 144) = v41;
  *(a6 + 152) = v43;
  *(a6 + 160) = v45;
  *(a6 + 168) = v47;
  *(a6 + 176) = v49;
  *(a6 + 184) = v67;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for FaceTimeSpamReportManager.SpamDataModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for FaceTimeSpamReportManager.SpamDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TPTipsHelper.Entry.Kind and conformance TPTipsHelper.Entry.Kind(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VVMVoicemailCountSource.__allocating_init(voicemailManager:voicemailStatus:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = specialized VVMVoicemailCountSource.__allocating_init(voicemailManager:voicemailStatus:)(v8, v11, v2, v5, v9, v6, v7, v10);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t VVMVoicemailCountSource.init(voicemailManager:voicemailStatus:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  __chkstk_darwin(v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = specialized VVMVoicemailCountSource.init(voicemailManager:voicemailStatus:)(v11, v17, v3, v7, v13, v6, v8, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v19;
}

uint64_t closure #1 in VVMVoicemailCountSource.init(voicemailManager:voicemailStatus:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "badge should be updated becuase VVM was updated", v4, 2u);
    }

    (*(*v1 + 192))();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
    Subject<>.send()();
  }

  return result;
}

uint64_t VVMVoicemailCountSource.listen(_:)(uint64_t a1, uint64_t a2)
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

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in VVMVoicemailCountSource.listen(_:), v11);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

uint64_t closure #1 in VVMVoicemailCountSource.listen(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return (_swift_task_switch)(closure #1 in VVMVoicemailCountSource.listen(_:), v10, v9);
}

uint64_t closure #1 in VVMVoicemailCountSource.listen(_:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[2] = *(v0[4] + OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_countChangedPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<(), Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCyyts5NeverOG_GMd);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = closure #1 in VVMVoicemailCountSource.listen(_:);
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

    v7 = closure #1 in VVMVoicemailCountSource.listen(_:);
  }

  return (_swift_task_switch)(v7, v4, v6);
}

{
  *(v0 + 161) = *(v0 + 160);
  return (_swift_task_switch)(closure #1 in VVMVoicemailCountSource.listen(_:), *(v0 + 120), *(v0 + 128));
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
    v3[1] = closure #1 in VVMVoicemailCountSource.listen(_:);

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
  v4[1] = closure #1 in VVMVoicemailCountSource.listen(_:);
  v5 = *(v1 + 80);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 160, v5, v3);
}

Swift::Void __swiftcall VVMVoicemailCountSource.invalidateBadge()()
{
  v1 = v0 + OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_count;
  *v1 = 0;
  *(v1 + 8) = -1;
}

uint64_t VVMVoicemailCountSource.unreadVoicemailsCount()()
{
  *(v1 + 16) = v0;
  return (_swift_task_switch)(VVMVoicemailCountSource.unreadVoicemailsCount(), 0, 0);
}

{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_count;
  v0[3] = OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_count;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 8);
  if (v4 == 255)
  {
    v8 = v1[5];
    v9 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v8);
    v11 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = VVMVoicemailCountSource.unreadVoicemailsCount();

    return v11(v8, v9);
  }

  else
  {
    v5 = *v3;
    v6 = v0[1];

    return v6(v5, v4 & 1);
  }
}

{
  v1 = v0[2];
  v2 = v1 + v0[3];
  *v2 = v0[5];
  *(v2 + 8) = 0;
  v3 = (*(*v1 + 208))();
  v4 = v0[1];
  v6 = v5 & 1;

  return v4(v3, v6);
}

uint64_t VVMVoicemailCountSource.unreadVoicemailsCount()(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return (_swift_task_switch)(VVMVoicemailCountSource.unreadVoicemailsCount(), 0, 0);
}

uint64_t VVMVoicemailCountSource.isKnown(for:)(uint64_t a1)
{
  v3 = v1[11];
  v4 = v1[12];
  __swift_project_boxed_opaque_existential_0(v1 + 8, v3);
  if (((*(v4 + 8))(v3, v4) & 1) == 0)
  {
    v5 = v1[11];
    v6 = v1[12];
    __swift_project_boxed_opaque_existential_0(v1 + 8, v5);
    if ((*(v6 + 16))(v5, v6))
    {
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "badge is unknown because VVM is offline and there is a message waiting.", v9, 2u);
      }
    }
  }

  return a1;
}

uint64_t VVMVoicemailCountSource.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  v1 = OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t VVMVoicemailCountSource.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  v1 = OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for VoicemailBadgeCalculatorVoicemailSource.unreadVoicemailsCount() in conformance VVMVoicemailCountSource()
{
  v4 = (*(**v0 + 200) + **(**v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for VoicemailBadgeCalculatorVoicemailSource.unreadVoicemailsCount() in conformance VVMVoicemailCountSource;

  return v4();
}

uint64_t protocol witness for VoicemailBadgeCalculatorVoicemailSource.unreadVoicemailsCount() in conformance VVMVoicemailCountSource(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t specialized VVMVoicemailCountSource.init(voicemailManager:voicemailStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[3] = a4;
  v26[4] = a6;
  v26[5] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v25[3] = a5;
  v25[4] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a5 - 8) + 32))(v16, a2, a5);
  v17 = OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.mobilePhone);
  (*(*(v18 - 8) + 16))(a3 + v17, v19, v18);
  *(a3 + OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_cancellables) = _swiftEmptyArrayStorage;
  v20 = a3 + OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_count;
  *v20 = 0;
  *(v20 + 8) = -1;
  v21 = OBJC_IVAR____TtC11MobilePhone23VVMVoicemailCountSource_countChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *(a3 + v21) = PassthroughSubject.init()();
  outlined init with copy of VoicemailManager_UnreadCount & Voicemailmanager_ChangeCallback & Sendable(v26, a3 + 16);
  outlined init with copy of Tip(v25, a3 + 64);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(a7 + 8);

  v23(partial apply for closure #1 in VVMVoicemailCountSource.init(voicemailManager:voicemailStatus:), v22, a4, a7);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return a3;
}

uint64_t specialized VVMVoicemailCountSource.__allocating_init(voicemailManager:voicemailStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v13 = *(a5 - 8);
  v14 = __chkstk_darwin(a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v14);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VVMVoicemailCountSource();
  v21 = swift_allocObject();
  (*(v18 + 16))(v20, a1, a4);
  (*(v13 + 16))(v16, a2, a5);
  return specialized VVMVoicemailCountSource.init(voicemailManager:voicemailStatus:)(v20, v16, v21, a4, a5, a6, v23, v24);
}

uint64_t sub_100195E74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in VVMVoicemailCountSource.listen(_:)(uint64_t a1)
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

  return closure #1 in VVMVoicemailCountSource.listen(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for VVMVoicemailCountSource()
{
  result = type metadata singleton initialization cache for VVMVoicemailCountSource;
  if (!type metadata singleton initialization cache for VVMVoicemailCountSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VVMVoicemailCountSource()
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

uint64_t outlined init with copy of VoicemailManager_UnreadCount & Voicemailmanager_ChangeCallback & Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100196104()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id VoicemailAccount.__allocating_init(vmAccount:callVoicemailSupported:subscribed:greetingChangeSupported:)(void *a1, char a2, char a3, char a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v4);
  v14 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v10 + 32))(&v13[OBJC_IVAR___MPVoicemailAccount_uuid], v12, v9);
  v15 = [a1 accountDescription];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = &v13[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v20 = v17;
  v20[1] = v19;
  v13[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2 & 1;
  v13[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3 & 1;
  v13[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4 & 1;
  v21 = [a1 isProvisioned];
  v13[OBJC_IVAR___MPVoicemailAccount_provisioned] = v21;
  v22 = [a1 handle];
  v23 = v22;
  if (v22)
  {
  }

  v13[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v23 != 0;
  v26.receiver = v13;
  v26.super_class = v4;
  v24 = objc_msgSendSuper2(&v26, "init");

  return v24;
}

uint64_t VoicemailAccount.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___MPVoicemailAccount_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VoicemailAccount.accountDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPVoicemailAccount_accountDescription);

  return v1;
}

id VoicemailAccount.__allocating_init(uuid:callVoicemailSupported:subscribed:greetingChangeSupported:provisioned:hasHandle:accountDescription:)(uint64_t a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_allocWithZone(v8);
  v15 = OBJC_IVAR___MPVoicemailAccount_uuid;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v14[v15], a1, v16);
  v14[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2;
  v14[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3;
  v14[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4;
  v14[OBJC_IVAR___MPVoicemailAccount_provisioned] = a5;
  v14[OBJC_IVAR___MPVoicemailAccount_hasHandle] = a6;
  v18 = &v14[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v18 = a7;
  v18[1] = a8;
  v24.receiver = v14;
  v24.super_class = v8;
  v19 = objc_msgSendSuper2(&v24, "init");
  (*(v17 + 8))(a1, v16);
  return v19;
}

id VoicemailAccount.init(uuid:callVoicemailSupported:subscribed:greetingChangeSupported:provisioned:hasHandle:accountDescription:)(uint64_t a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR___MPVoicemailAccount_uuid;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v8[v15], a1, v16);
  v8[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2;
  v8[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3;
  v8[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4;
  v8[OBJC_IVAR___MPVoicemailAccount_provisioned] = a5;
  v8[OBJC_IVAR___MPVoicemailAccount_hasHandle] = a6;
  v18 = &v8[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v18 = a7;
  v18[1] = a8;
  v24.receiver = v8;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, "init");
  (*(v17 + 8))(a1, v16);
  return v19;
}

id VoicemailAccount.init(vmAccount:callVoicemailSupported:subscribed:greetingChangeSupported:)(void *a1, char a2, char a3, char a4)
{
  v5 = specialized VoicemailAccount.init(vmAccount:callVoicemailSupported:subscribed:greetingChangeSupported:)(a1, a2, a3, a4);

  return v5;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance VoicemailAccount.CodingKeys()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000016;
    if (v1 != 1)
    {
      v5 = 0x6269726373627573;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1684632949;
    }
  }

  else
  {
    v2 = 0x6C646E6148736168;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0x6F697369766F7270;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoicemailAccount.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized VoicemailAccount.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoicemailAccount.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoicemailAccount.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t VoicemailAccount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11MobilePhone16VoicemailAccountC10CodingKeys33_B21F15D3799AF94A6A8F43375989E892LLOGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void *VoicemailAccount.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11MobilePhone16VoicemailAccountC10CodingKeys33_B21F15D3799AF94A6A8F43375989E892LLOGMd);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys();
  v21 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v6;
    v18 = a1;
    v10 = v19;
    v25 = 0;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v11 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = *(v10 + 32);
    v14 = v22;
    v13(&v22[OBJC_IVAR___MPVoicemailAccount_uuid], v5, v3);
    v25 = 1;
    v14[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 2;
    v14[OBJC_IVAR___MPVoicemailAccount_subscribed] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 3;
    v14[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 4;
    v14[OBJC_IVAR___MPVoicemailAccount_provisioned] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 5;
    v14[OBJC_IVAR___MPVoicemailAccount_hasHandle] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v25 = 6;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = &v14[OBJC_IVAR___MPVoicemailAccount_accountDescription];
    *v16 = v15;
    v16[1] = v17;
    v24.receiver = v14;
    v24.super_class = ObjectType;
    a1 = objc_msgSendSuper2(&v24, "init");
    (*(v9 + 8))(v21, v11);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return a1;
}

void *protocol witness for Decodable.init(from:) in conformance VoicemailAccount@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = VoicemailAccount.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t VoicemailAccount.description.getter()
{
  _StringGuts.grow(_:)(119);
  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x8000000100246730;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x8000000100246750;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v3);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0x6972637362757320;
  v7._object = 0xED0000203A646562;
  String.append(_:)(v7);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_subscribed))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._object = 0x8000000100246770;
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v11);
  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = v13;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x8000000100246790;
  String.append(_:)(v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  return 0;
}

uint64_t VoicemailAccount.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v6);
  if (!v7)
  {
    outlined destroy of Any?(v6);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = specialized static VoicemailAccount.== infix(_:_:)(v1, v5);

  return v3 & 1;
}

id specialized VoicemailAccount.init(vmAccount:callVoicemailSupported:subscribed:greetingChangeSupported:)(void *a1, char a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v11 + 32))(&v4[OBJC_IVAR___MPVoicemailAccount_uuid], v13, v10);
  v15 = [a1 accountDescription];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = &v4[OBJC_IVAR___MPVoicemailAccount_accountDescription];
  *v20 = v17;
  v20[1] = v19;
  v4[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = a2 & 1;
  v4[OBJC_IVAR___MPVoicemailAccount_subscribed] = a3 & 1;
  v4[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = a4 & 1;
  v21 = [a1 isProvisioned];
  v4[OBJC_IVAR___MPVoicemailAccount_provisioned] = v21;
  v22 = [a1 handle];
  v23 = v22;
  if (v22)
  {
  }

  v4[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v23 != 0;
  v25.receiver = v4;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "init");
}

unint64_t lazy protocol witness table accessor for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccount.CodingKeys and conformance VoicemailAccount.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized VoicemailAccount.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100246820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100246850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F697369766F7270 && a2 == 0xEB0000000064656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C646E6148736168 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100246880 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized static VoicemailAccount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  v5 = *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *(a1 + OBJC_IVAR___MPVoicemailAccount_accountDescription) == *(a2 + OBJC_IVAR___MPVoicemailAccount_accountDescription) && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    goto LABEL_15;
  }

  if (*(a1 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) == *(a2 + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) && *(a1 + OBJC_IVAR___MPVoicemailAccount_subscribed) == *(a2 + OBJC_IVAR___MPVoicemailAccount_subscribed) && *(a1 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) == *(a2 + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) && *(a1 + OBJC_IVAR___MPVoicemailAccount_provisioned) == *(a2 + OBJC_IVAR___MPVoicemailAccount_provisioned))
  {
    v7 = *(a1 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ *(a2 + OBJC_IVAR___MPVoicemailAccount_hasHandle) ^ 1;
    return v7 & 1;
  }

LABEL_15:
  v7 = 0;
  return v7 & 1;
}

uint64_t type metadata accessor for VoicemailAccount()
{
  result = type metadata singleton initialization cache for VoicemailAccount;
  if (!type metadata singleton initialization cache for VoicemailAccount)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoicemailAccount()
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for VoicemailAccount.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailAccount.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}
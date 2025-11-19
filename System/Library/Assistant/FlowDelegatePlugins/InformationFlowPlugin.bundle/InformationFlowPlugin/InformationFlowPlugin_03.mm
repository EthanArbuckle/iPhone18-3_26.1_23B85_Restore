uint64_t outlined consume of SportsProperty?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of SportsProperty(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of SportsProperty(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

id IdentifiedUser.selectedUserAttributes.getter()
{
  v0 = type metadata accessor for IdentifiedUser.Classification();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = [objc_allocWithZone(SASelectedUserAttributes) init];
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v8 setLowScoreThreshold:isa];

  v10 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v8 setScore:v10];

  v11 = [objc_allocWithZone(NSNumber) initWithBool:IdentifiedUser.meetsUserSessionThreshold.getter() & 1];
  [v8 setMeetsUserSessionThreshold:v11];

  v12 = [objc_allocWithZone(NSNumber) initWithBool:IdentifiedUser.meetsPersonalRequestThreshold.getter() & 1];
  [v8 setMeetsPersonalRequestThreshold:v12];

  IdentifiedUser.voiceConfidenceClassification.getter();
  static IdentifiedUser.Classification.confident.getter();
  lazy protocol witness table accessor for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification();
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v1 + 8);
  v13(v5, v0);
  if (v12)
  {
    v13(v7, v0);
    v14 = &SAUserIdentityClassificationConfidentValue;
  }

  else
  {
    static IdentifiedUser.Classification.known.getter();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v5, v0);
    if (v15)
    {
      v13(v7, v0);
      v14 = &SAUserIdentityClassificationKnownValue;
    }

    else
    {
      static IdentifiedUser.Classification.unsure1.getter();
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v5, v0);
      if (v16)
      {
        v13(v7, v0);
        v14 = &SAUserIdentityClassificationUnsure1Value;
      }

      else
      {
        static IdentifiedUser.Classification.unsureN.getter();
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        v13(v5, v0);
        if (v17)
        {
          v13(v7, v0);
          v14 = &SAUserIdentityClassificationUnsureNValue;
        }

        else
        {
          static IdentifiedUser.Classification.unknown.getter();
          v18 = dispatch thunk of static Equatable.== infix(_:_:)();
          v13(v5, v0);
          v13(v7, v0);
          if ((v18 & 1) == 0)
          {
            if (one-time initialization token for information != -1)
            {
              swift_once();
            }

            v19 = type metadata accessor for Logger();
            __swift_project_value_buffer(v19, static Logger.information);
            v20 = Logger.logObject.getter();
            v21 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&dword_0, v20, v21, "Unknown voice confidence classification. Setting to unknown", v22, 2u);
            }
          }

          v14 = &SAUserIdentityClassificationUnknownValue;
        }
      }
    }
  }

  [v8 setUserIdentityClassification:*v14];
  return v8;
}

unint64_t lazy protocol witness table accessor for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification()
{
  result = lazy protocol witness table cache variable for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification;
  if (!lazy protocol witness table cache variable for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification)
  {
    type metadata accessor for IdentifiedUser.Classification();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifiedUser.Classification and conformance IdentifiedUser.Classification);
  }

  return result;
}

double static KnowledgeFallbackHelper.shared.getter@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v2 = type metadata accessor for KnowledgeFallbackHelper();
  a1[3] = v2;
  a1[4] = &protocol witness table for KnowledgeFallbackHelper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of CurrentDevice.siriLocale.getter();

  v4 = v2[5];
  v5 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v5 - 8) + 56))(boxed_opaque_existential_1 + v4, 1, 1, v5);
  result = 0.0;
  *(boxed_opaque_existential_1 + v2[6]) = xmmword_B86A0;
  *(boxed_opaque_existential_1 + v2[7]) = xmmword_B86A0;
  return result;
}

uint64_t KnowledgeFallbackHelper.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KnowledgeFallbackHelper.locale.setter(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for KnowledgeFallbackHelper()
{
  result = type metadata singleton initialization cache for KnowledgeFallbackHelper;
  if (!type metadata singleton initialization cache for KnowledgeFallbackHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KnowledgeFallbackHelper.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KnowledgeFallbackHelper();
  v5 = v4[5];
  v6 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *(a2 + v4[6]) = xmmword_B86A0;
  *(a2 + v4[7]) = xmmword_B86A0;
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 32);

  return v8(a2, a1, v7);
}

uint64_t KnowledgeFallbackHelper.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = *(type metadata accessor for KnowledgeFallbackHelper() + 20);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v1 + v7, v6, &_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  v8 = type metadata accessor for GenerativeModelsAvailability();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  outlined destroy of Any?(v6, &_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  closure #1 in KnowledgeFallbackHelper.availability.getter(v1, a1);
  outlined destroy of Any?(v1 + v7, &_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  (*(v9 + 16))(v1 + v7, a1, v8);
  return (*(v9 + 56))(v1 + v7, 0, 1, v8);
}

uint64_t closure #1 in KnowledgeFallbackHelper.availability.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v38 = a2;
  v39 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v37 = *(v39 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin(v39);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for Locale.Language();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v35 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v34 - v23;
  (*(v14 + 16))(v17, v34, v13);
  Locale.language.getter();
  (*(v14 + 8))(v17, v13);
  Locale.Language.languageCode.getter();
  (*(v9 + 8))(v12, v8);
  v25 = type metadata accessor for Locale.LanguageCode();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v7, 1, v25) == 1)
  {
    outlined destroy of Any?(v7, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.information);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Couldn't determine language code for Siri Locale. Using system language instead.", v30, 2u);
    }

    v31 = &enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:);
  }

  else
  {
    (*(v26 + 32))(v24, v7, v25);
    v31 = &enum case for GenerativeModelsAvailability.LanguageOption.languageCode(_:);
  }

  (*(v19 + 104))(v24, *v31, v18);
  (*(v19 + 16))(v35, v24, v18);
  v32 = v36;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v37 + 8))(v32, v39);
  return (*(v19 + 8))(v24, v18);
}

Swift::Bool __swiftcall KnowledgeFallbackHelper.isEnabled()()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeModelsAvailability();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AFMontaraRestricted())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.information);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_17;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Knowledge fallback is restricted on this device.";
LABEL_16:
    _os_log_impl(&dword_0, v11, v12, v14, v13, 2u);

LABEL_17:

    return 0;
  }

  KnowledgeFallbackHelper.availability.getter(v9);
  GenerativeModelsAvailability.availability.getter();
  (*(v6 + 8))(v9, v5);
  v15 = (*(v1 + 88))(v4, v0);
  v16 = enum case for GenerativeModelsAvailability.Availability.available(_:);
  (*(v1 + 8))(v4, v0);
  if (v15 != v16)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.information);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_17;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Knowledge fallback not enabled because the Generative Models use case is not available";
    goto LABEL_16;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.information);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Knowledge fallback is enabled on this device.", v20, 2u);
  }

  return 1;
}

InformationFlowPlugin::KnowledgeFallbackResponseType __swiftcall KnowledgeFallbackHelper.responseType()()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  v107 = *(v0 - 8);
  v108 = v0;
  v1 = *(v107 + 64);
  __chkstk_darwin(v0);
  v106 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = *(v110 + 64);
  __chkstk_darwin(v3);
  v109 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v93 = *(v94 - 8);
  v6 = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v96 = *(v97 - 8);
  v8 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  __chkstk_darwin(v10);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v105 = *(v13 - 8);
  v14 = *(v105 + 64);
  v15 = __chkstk_darwin(v13);
  v101 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v90 - v17;
  v19 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v103 = *(v19 - 8);
  v104 = v19;
  v20 = *(v103 + 64);
  __chkstk_darwin(v19);
  v102 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityV7PartnerVSgMd, &_s16GenerativeModels0aB12AvailabilityV7PartnerVSgMR);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v90 - v24;
  v26 = type metadata accessor for GenerativeModelsAvailability();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for GenerativeModelsAvailability.Partner();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  KnowledgeFallbackHelper.availability.getter(v30);
  GenerativeModelsAvailability.partner.getter();
  (*(v27 + 8))(v30, v26);
  v112 = v32;
  v113 = v31;
  if ((*(v32 + 48))(v25, 1, v31) == 1)
  {
    outlined destroy of Any?(v25, &_s16GenerativeModels0aB12AvailabilityV7PartnerVSgMd, &_s16GenerativeModels0aB12AvailabilityV7PartnerVSgMR);
LABEL_22:
    v66 = v106;
    v65 = v107;
    v67 = v108;
    (*(v107 + 104))(v106, enum case for GenerativeAssistantSettingsIntentHelper.RequestType.knowledgeFallback(_:), v108);
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentRequest.getter();

    CurrentRequest.sessionId.getter();

    v68 = v109;
    static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();

    (*(v65 + 8))(v66, v67);
    v70 = v110;
    v69 = v111;
    v71 = (*(v110 + 88))(v68, v111);
    if (v71 == enum case for GenerativeAssistantSettingsIntentHelper.ResponseType.siriXFallback(_:))
    {
      return 3;
    }

    if (v71 == enum case for GenerativeAssistantSettingsIntentHelper.ResponseType.confirmationPrompt(_:))
    {
      return 1;
    }

    if (v71 != enum case for GenerativeAssistantSettingsIntentHelper.ResponseType.enablementPrompt(_:))
    {
      if (v71 == enum case for GenerativeAssistantSettingsIntentHelper.ResponseType.passThrough(_:))
      {
        return 2;
      }

      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      __swift_project_value_buffer(v85, static Logger.information);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_0, v86, v87, "Unhandled responseType; skipping knowledge fallback", v88, 2u);
      }

      (*(v70 + 8))(v68, v69);
      return 3;
    }

    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    v73 = dispatch thunk of CurrentDevice.isCarPlay.getter();

    if ((v73 & 1) == 0)
    {
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v114, v114[3]);
      v74 = dispatch thunk of DeviceState.isEyesFree.getter();
      __swift_destroy_boxed_opaque_existential_0Tm(v114);
      if ((v74 & 1) == 0)
      {
        return 0;
      }
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.information);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v72 = InformationFlowPlugin_KnowledgeFallbackResponseType_proceedWithoutConfirmation;
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "Skipping enablement confirmation for car. Enablement confirmation will be handled in the intent.", v78, 2u);
    }

    else
    {

      return 2;
    }

    return v72;
  }

  (*(v112 + 32))(v35, v25, v113);
  GenerativeModelsAvailability.Partner.availability.getter();
  v36 = v105;
  v37 = *(v105 + 88);
  if (v37(v18, v13) != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v36 + 8))(v18, v13);
    goto LABEL_13;
  }

  v91 = v35;
  (*(v36 + 96))(v18, v13);
  v39 = v102;
  v38 = v103;
  (*(v103 + 32))(v102, v18, v104);
  v40 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
  v42 = v98;
  v41 = v99;
  v43 = v100;
  (*(v99 + 104))(v98, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.useCaseDoesNotAllowCurrentIPCountryCode(_:), v100);
  v44 = specialized Set.contains(_:)(v42, v40);

  (*(v41 + 8))(v42, v43);
  if ((v44 & 1) == 0)
  {
    (*(v38 + 8))(v39, v104);
    v35 = v91;
    v36 = v105;
LABEL_13:
    v52 = v101;
    GenerativeModelsAvailability.Partner.availability.getter();
    if (v37(v52, v13) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v36 + 96))(v52, v13);
      v53 = v96;
      v54 = v95;
      v55 = v97;
      (*(v96 + 32))(v95, v52, v97);
      v56 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      v57 = v93;
      v58 = v92;
      v59 = v94;
      (*(v93 + 104))(v92, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDoesNotAllowCurrentIPCountryCode(_:), v94);
      v60 = specialized Set.contains(_:)(v58, v56);

      (*(v57 + 8))(v58, v59);
      if (v60)
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        __swift_project_value_buffer(v61, static Logger.information);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_0, v62, v63, "Region is unavailable, skipping knowledge fallback.", v64, 2u);
        }

        (*(v53 + 8))(v54, v55);
        (*(v112 + 8))(v35, v113);
        return 3;
      }

      (*(v53 + 8))(v54, v55);
      (*(v112 + 8))(v35, v113);
    }

    else
    {
      (*(v112 + 8))(v35, v113);
      (*(v36 + 8))(v52, v13);
    }

    goto LABEL_22;
  }

  v45 = v104;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if (static GenerativeAssistantSettingsUserDefaults.isRegionUnavailablityDialogShown()())
  {
    v46 = v102;
    v47 = v91;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.information);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "Region is restricted and the dialog was already shown, skipping knowledge fallback.", v51, 2u);
    }

    (*(v103 + 8))(v46, v45);
    (*(v112 + 8))(v47, v113);
    return 3;
  }

  v79 = v102;
  v80 = v91;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  __swift_project_value_buffer(v81, static Logger.information);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_0, v82, v83, "Region is restricted and the dialog was not shown, showing region unavailability dialog.", v84, 2u);
  }

  (*(v103 + 8))(v79, v45);
  (*(v112 + 8))(v80, v113);
  return 4;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason and conformance GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(&lazy protocol witness table cache variable for type GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason and conformance GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

Swift::Void __swiftcall KnowledgeFallbackHelper.recordEnablementDecline()()
{
  v0 = type metadata accessor for RequestType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  (*(v1 + 104))(v4, enum case for RequestType.knowledgeFallback(_:), v0);
  static GenerativeAssistantSettingsUserDefaults.incrementDecline(for:)();
  (*(v1 + 8))(v4, v0);
}

Swift::Void __swiftcall KnowledgeFallbackHelper.recordConfirmationAccept()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  Date.init()();
  static GenerativeAssistantSettingsUserDefaults.updateConsecutiveLLMConfirmation(date:)();
  (*(v1 + 8))(v4, v0);
}

Swift::Void __swiftcall KnowledgeFallbackHelper.checkForPreviousConfirmationDismissal()()
{
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if (static GenerativeAssistantSettingsUserDefaults.confirmationPromptCancelled()() != 2)
  {
    static GenerativeAssistantSettingsUserDefaults.recordDeclineConfirmationRequest()();
  }
}

uint64_t KnowledgeFallbackHelper.contentProviderName.getter()
{
  v1 = (v0 + *(type metadata accessor for KnowledgeFallbackHelper() + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = *v1;
  if (v3 == 1)
  {
    v4 = closure #1 in KnowledgeFallbackHelper.contentProviderName.getter(v0);
    *v1 = v4;
    v1[1] = v5;
  }

  outlined copy of String??(v2, v3);
  return v4;
}

uint64_t closure #1 in KnowledgeFallbackHelper.contentProviderName.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  *(&v16 + 1) = &type metadata for Features;
  v17 = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v15) = 5;
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(&v15);
  if (v6)
  {
    dispatch thunk of GenerativePartnerServiceProvider.selectedLLM()();
    if (*(&v16 + 1))
    {
      outlined init with take of SiriSuggestionsBroker(&v15, &v12);
    }

    else
    {
      dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
      if (*(&v16 + 1))
      {
        outlined destroy of Any?(&v15, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
      }
    }
  }

  else
  {
    dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
  }

  v15 = v12;
  v16 = v13;
  v17 = v14;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(&v15, &v12, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
  if (*(&v13 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v7 = type metadata accessor for Locale();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v5, a1, v7);
    (*(v8 + 56))(v5, 0, 1, v7);
    v9 = dispatch thunk of LLMProvider.localizedDisplayName(locale:)();

    outlined destroy of Any?(v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    outlined destroy of Any?(&v15, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v12);
  }

  else
  {
    outlined destroy of Any?(&v15, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);

    outlined destroy of Any?(&v12, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
    return 0;
  }

  return v9;
}

uint64_t KnowledgeFallbackHelper.contentProviderName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KnowledgeFallbackHelper() + 24));
  result = outlined consume of String??(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*KnowledgeFallbackHelper.contentProviderName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = KnowledgeFallbackHelper.contentProviderName.getter();
  a1[1] = v3;
  return KnowledgeFallbackHelper.contentProviderName.modify;
}

uint64_t KnowledgeFallbackHelper.contentProviderName.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  v6 = (v4 + *(type metadata accessor for KnowledgeFallbackHelper() + 24));
  v7 = *v6;
  v8 = v6[1];
  if (a2)
  {

    outlined consume of String??(v7, v8);
    *v6 = v5;
    v6[1] = v3;
  }

  else
  {
    result = outlined consume of String??(v7, v6[1]);
    *v6 = v5;
    v6[1] = v3;
  }

  return result;
}

uint64_t KnowledgeFallbackHelper.contentProviderID.getter()
{
  v1 = (v0 + *(type metadata accessor for KnowledgeFallbackHelper() + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = *v1;
  if (v3 == 1)
  {
    v4 = closure #1 in KnowledgeFallbackHelper.contentProviderID.getter();
    *v1 = v4;
    v1[1] = v5;
  }

  outlined copy of String??(v2, v3);
  return v4;
}

uint64_t closure #1 in KnowledgeFallbackHelper.contentProviderID.getter()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  *(&v7 + 1) = &type metadata for Features;
  v8 = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v6) = 5;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(&v6);
  if (v0)
  {
    dispatch thunk of GenerativePartnerServiceProvider.selectedLLM()();
    if (*(&v7 + 1))
    {
      outlined init with take of SiriSuggestionsBroker(&v6, &v3);
    }

    else
    {
      dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
      if (*(&v7 + 1))
      {
        outlined destroy of Any?(&v6, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
      }
    }
  }

  else
  {
    dispatch thunk of GenerativePartnerServiceProvider.defaultLLM()();
  }

  v6 = v3;
  v7 = v4;
  v8 = v5;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(&v6, &v3, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
  if (*(&v4 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    v1 = dispatch thunk of LLMProvider.id.getter();

    outlined destroy of Any?(&v6, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v3);
  }

  else
  {
    outlined destroy of Any?(&v6, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);

    outlined destroy of Any?(&v3, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMd, &_s26GenerativePartnerServiceUI11LLMProvider_pSgMR);
    return 0;
  }

  return v1;
}

uint64_t KnowledgeFallbackHelper.contentProviderID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KnowledgeFallbackHelper() + 28));
  result = outlined consume of String??(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*KnowledgeFallbackHelper.contentProviderID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = KnowledgeFallbackHelper.contentProviderID.getter();
  a1[1] = v3;
  return KnowledgeFallbackHelper.contentProviderID.modify;
}

uint64_t KnowledgeFallbackHelper.contentProviderID.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  v6 = (v4 + *(type metadata accessor for KnowledgeFallbackHelper() + 28));
  v7 = *v6;
  v8 = v6[1];
  if (a2)
  {

    outlined consume of String??(v7, v8);
    *v6 = v5;
    v6[1] = v3;
  }

  else
  {
    result = outlined consume of String??(v7, v6[1]);
    *v6 = v5;
    v6[1] = v3;
  }

  return result;
}

uint64_t specialized KnowledgeFallbackHelperProviding.eligibleForKnowledgeFallback(response:)()
{
  v0 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v85 = *(v0 - 8);
  v86 = v0;
  v1 = *(v85 + 64);
  v2 = __chkstk_darwin(v0);
  v83[1] = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v83 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v83 - v8;
  v10 = type metadata accessor for SiriXRedirectContext();
  v87 = *(v10 - 1);
  v88 = v10;
  v11 = *(v87 + 8);
  v12 = __chkstk_darwin(v10);
  v84 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v83 - v17;
  v19 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  v90 = *(v19 - 8);
  v20 = *(v90 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v83 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v83 - v28;
  __chkstk_darwin(v27);
  v31 = v83 - v30;
  if ((PommesResponse.isLowConfidenceKnowledgeResult.getter() & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.information);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_20;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Suppressing knowledge fallback: isLowConfidenceKnowledgeResult is false";
    goto LABEL_19;
  }

  if (!KnowledgeFallbackHelper.isEnabled()())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.information);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_20;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Suppressing knowledge fallback: isEnabled is false";
    goto LABEL_19;
  }

  if ((AFDeviceSupportsSAE() & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.information);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_20;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Suppressing knowledge fallback because the device doesn't support SAE";
LABEL_19:
    _os_log_impl(&dword_0, v38, v39, v41, v40, 2u);

LABEL_20:

    return 0;
  }

  v83[0] = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.nlRoutingDecision.getter();

  dispatch thunk of NLRoutingDecisionProvider.genAIFallbackSuppressReason.getter();

  v32 = v90;
  v33 = v19;
  if ((*(v90 + 48))(v18, 1, v19) != 1)
  {
    (*(v32 + 32))(v31, v18, v19);
    v44 = *(v32 + 16);
    v44(v29, v31, v19);
    v45 = (*(v32 + 88))(v29, v19);
    if (v45 == enum case for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.genAINotAvailable(_:))
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.information);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v19;
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "Suppressing knowledge fallback because GenAI is not available";
LABEL_36:
        _os_log_impl(&dword_0, v47, v48, v51, v50, 2u);

        (*(v90 + 8))(v31, v49);
        return 0;
      }
    }

    else
    {
      if (v45 != enum case for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.userAgentCorrection(_:))
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logger.information);
        v44(v26, v31, v19);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        v62 = v31;
        if (os_log_type_enabled(v60, v61))
        {
          v63 = swift_slowAlloc();
          v87 = v63;
          v88 = swift_slowAlloc();
          v91 = v88;
          *v63 = 136315138;
          v44(v23, v26, v19);
          v64 = String.init<A>(describing:)();
          v66 = v65;
          v89 = v62;
          v67 = *(v90 + 8);
          v67(v26, v33);
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v91);

          v69 = v87;
          *(v87 + 1) = v68;
          _os_log_impl(&dword_0, v60, v61, "Unknown knowledge fallback suppress reason: %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v88);

          v67(v89, v33);
        }

        else
        {

          v67 = *(v90 + 8);
          v67(v26, v19);
          v67(v31, v19);
        }

        v67(v29, v33);
        return 0;
      }

      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logger.information);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v19;
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "Suppressing knowledge fallback because user specified an agent correction";
        goto LABEL_36;
      }
    }

    (*(v90 + 8))(v31, v19);
    return 0;
  }

  outlined destroy of Any?(v18, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  static SiriEnvironment.default.getter();
  SiriEnvironment.flowRedirectContextProvider.getter();

  FlowRedirectContextProvider.flowRedirectContext.getter();

  v34 = type metadata accessor for FlowRedirectContext();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v9, 1, v34) == 1)
  {
    outlined destroy of Any?(v9, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
    return 1;
  }

  if ((*(v35 + 88))(v9, v34) == enum case for FlowRedirectContext.intelligenceFlowToSiriX(_:))
  {
    (*(v35 + 96))(v9, v34);
    v53 = v87;
    v52 = v88;
    v54 = v89;
    (*(v87 + 4))(v89, v9, v88);
    SiriXRedirectContext.reason.getter();
    v55 = v85;
    v56 = v86;
    v57 = (*(v85 + 88))(v5, v86);
    if (v57 != enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:) && v57 != enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:))
    {
      v53[1](v54, v52);
      (*(v55 + 8))(v5, v56);
      return 1;
    }

    (*(v55 + 8))(v5, v56);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.information);
    v71 = v84;
    (v53[2])(v84, v54, v52);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v71;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v91 = v76;
      *v75 = 136315138;
      SiriXRedirectContext.reason.getter();
      v77 = String.init<A>(describing:)();
      v79 = v78;
      v80 = v53[1];
      v80(v74, v52);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v91);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_0, v72, v73, "Suppressing knowledge fallback due to %s redirect to Siri X", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);

      v80(v89, v52);
    }

    else
    {

      v82 = v53[1];
      v82(v71, v52);
      v82(v54, v52);
    }

    return 0;
  }

  (*(v35 + 8))(v9, v34);
  return 1;
}

uint64_t KnowledgeFallbackHelperProviding.eligibleForKnowledgeFallback(response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  v7 = __chkstk_darwin(v5);
  v88[1] = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v88 - v12;
  v14 = type metadata accessor for SiriXRedirectContext();
  v93 = *(v14 - 8);
  v94 = v14;
  v15 = *(v93 + 64);
  v16 = __chkstk_darwin(v14);
  v89 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v88 - v21;
  v23 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  v24 = *(v23 - 8);
  v96 = v23;
  v97 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = v88 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = v88 - v33;
  __chkstk_darwin(v32);
  v36 = v88 - v35;
  if ((PommesResponse.isLowConfidenceKnowledgeResult.getter() & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.information);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_20;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Suppressing knowledge fallback: isLowConfidenceKnowledgeResult is false";
    goto LABEL_19;
  }

  if (((*(a3 + 8))(a2, a3) & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.information);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_20;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Suppressing knowledge fallback: isEnabled is false";
    goto LABEL_19;
  }

  if (!AFDeviceSupportsSAE())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.information);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_20;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Suppressing knowledge fallback because the device doesn't support SAE";
LABEL_19:
    _os_log_impl(&dword_0, v42, v43, v45, v44, 2u);

LABEL_20:

    return 0;
  }

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.nlRoutingDecision.getter();

  dispatch thunk of NLRoutingDecisionProvider.genAIFallbackSuppressReason.getter();

  v38 = v96;
  v37 = v97;
  if ((*(v97 + 48))(v22, 1, v96) != 1)
  {
    (*(v37 + 32))(v36, v22, v38);
    v49 = *(v37 + 16);
    v49(v34, v36, v38);
    v50 = (*(v37 + 88))(v34, v38);
    if (v50 == enum case for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.genAINotAvailable(_:))
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.information);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_37;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "Suppressing knowledge fallback because GenAI is not available";
    }

    else
    {
      if (v50 != enum case for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.userAgentCorrection(_:))
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        __swift_project_value_buffer(v64, static Logger.information);
        v49(v31, v36, v38);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v95 = v36;
          v68 = v67;
          v69 = swift_slowAlloc();
          v98 = v69;
          *v68 = 136315138;
          v49(v28, v31, v96);
          v70 = String.init<A>(describing:)();
          v72 = v71;
          LODWORD(v94) = v66;
          v73 = *(v97 + 8);
          v73(v31, v96);
          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v98);

          *(v68 + 4) = v74;
          _os_log_impl(&dword_0, v65, v94, "Unknown knowledge fallback suppress reason: %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v69);
          v38 = v96;

          v73(v95, v38);
        }

        else
        {

          v73 = *(v97 + 8);
          v73(v31, v38);
          v73(v36, v38);
        }

        v73(v34, v38);
        return 0;
      }

      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static Logger.information);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_37;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "Suppressing knowledge fallback because user specified an agent correction";
    }

    _os_log_impl(&dword_0, v52, v53, v55, v54, 2u);

LABEL_37:

    (*(v97 + 8))(v36, v38);
    return 0;
  }

  outlined destroy of Any?(v22, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  static SiriEnvironment.default.getter();
  SiriEnvironment.flowRedirectContextProvider.getter();

  FlowRedirectContextProvider.flowRedirectContext.getter();

  v39 = type metadata accessor for FlowRedirectContext();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v13, 1, v39) != 1)
  {
    if ((*(v40 + 88))(v13, v39) != enum case for FlowRedirectContext.intelligenceFlowToSiriX(_:))
    {
      (*(v40 + 8))(v13, v39);
      return 1;
    }

    (*(v40 + 96))(v13, v39);
    v57 = v93;
    v56 = v94;
    v58 = v95;
    (*(v93 + 32))(v95, v13, v94);
    v59 = v90;
    SiriXRedirectContext.reason.getter();
    v60 = v91;
    v61 = v92;
    v62 = (*(v91 + 88))(v59, v92);
    if (v62 != enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:) && v62 != enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:))
    {
      (*(v57 + 8))(v58, v56);
      (*(v60 + 8))(v59, v61);
      return 1;
    }

    (*(v60 + 8))(v59, v61);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.information);
    v76 = v89;
    (*(v57 + 16))(v89, v58, v56);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = v76;
      v81 = swift_slowAlloc();
      v98 = v81;
      *v79 = 136315138;
      SiriXRedirectContext.reason.getter();
      v82 = String.init<A>(describing:)();
      v84 = v83;
      v85 = *(v57 + 8);
      v85(v80, v56);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v98);

      *(v79 + 4) = v86;
      _os_log_impl(&dword_0, v77, v78, "Suppressing knowledge fallback due to %s redirect to Siri X", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v81);

      v85(v95, v56);
    }

    else
    {

      v87 = *(v57 + 8);
      v87(v76, v56);
      v87(v58, v56);
    }

    return 0;
  }

  outlined destroy of Any?(v13, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  return 1;
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackResponseType and conformance KnowledgeFallbackResponseType()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackResponseType and conformance KnowledgeFallbackResponseType;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackResponseType and conformance KnowledgeFallbackResponseType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackResponseType and conformance KnowledgeFallbackResponseType);
  }

  return result;
}

uint64_t sub_5762C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  v16 = v15 <= 0;
  if (v15 < 0)
  {
    v15 = -1;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_57768(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels0aB12AvailabilityVSgMd, &_s16GenerativeModels0aB12AvailabilityVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 + 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for KnowledgeFallbackHelper()
{
  type metadata accessor for Locale();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GenerativeModelsAvailability?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String??();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for GenerativeModelsAvailability?()
{
  if (!lazy cache variable for type metadata for GenerativeModelsAvailability?)
  {
    type metadata accessor for GenerativeModelsAvailability();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GenerativeModelsAvailability?);
    }
  }
}

void type metadata accessor for String??()
{
  if (!lazy cache variable for type metadata for String??)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String??);
    }
  }
}

uint64_t lazy protocol witness table accessor for type GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason and conformance GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL Parse.isRejection.getter()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - v8;
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = *(v2 + 16);
  v12(&v24 - v10, v0, v1);
  if ((*(v2 + 88))(v11, v1) == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v2 + 96))(v11, v1);
    v13 = *v11;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass() != 0;
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.information);
    v12(v9, v0, v1);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v18 = 136315138;
      v12(v6, v9, v1);
      v25 = String.init<A>(describing:)();
      v20 = v19;
      v21 = *(v2 + 8);
      v21(v9, v1);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v20, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v16, v17, "Unexpected parse type: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    else
    {

      v21 = *(v2 + 8);
      v21(v9, v1);
    }

    v21(v11, v1);
    return 0;
  }

  return v14;
}

uint64_t Parse.isCancel.getter()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - v8;
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = *(v2 + 16);
  v12(&v24 - v10, v0, v1);
  if ((*(v2 + 88))(v11, v1) == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v2 + 96))(v11, v1);
    v13 = *v11;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass() != 0;
      swift_unknownObjectRelease();
      return v23;
    }
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.information);
    v12(v9, v0, v1);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v18 = 136315138;
      v12(v6, v9, v1);
      v25 = String.init<A>(describing:)();
      v20 = v19;
      v21 = *(v2 + 8);
      v21(v9, v1);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v20, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v16, v17, "Unexpected parse type: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    else
    {

      v21 = *(v2 + 8);
      v21(v9, v1);
    }

    v21(v11, v1);
    return 0;
  }
}

uint64_t Parse.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - v10;
  __chkstk_darwin(v9);
  v13 = (&v33 - v12);
  v14 = *(v4 + 16);
  v14(&v33 - v12, v1, v3);
  if ((*(v4 + 88))(v13, v3) == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v4 + 96))(v13, v3);
    v15 = *v13;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      v16 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_14:
      v29 = *v16;
      v30 = type metadata accessor for ConfirmationResponse();
      v31 = *(v30 - 8);
      (*(v31 + 104))(a1, v29, v30);
      return (*(v31 + 56))(a1, 0, 1, v30);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
LABEL_13:
      v16 = &enum case for ConfirmationResponse.rejected(_:);
      goto LABEL_14;
    }

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v28)
    {
      goto LABEL_13;
    }

    v32 = type metadata accessor for ConfirmationResponse();
    return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.information);
    v14(v11, v1, v3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = a1;
      v21 = v20;
      v34 = swift_slowAlloc();
      v36 = v34;
      *v21 = 136315138;
      v14(v8, v11, v3);
      v33 = String.init<A>(describing:)();
      v23 = v22;
      v24 = *(v4 + 8);
      v24(v11, v3);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v23, &v36);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v18, v19, "Unexpected parse type: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);

      a1 = v35;
    }

    else
    {

      v24 = *(v4 + 8);
      v24(v11, v3);
    }

    v26 = type metadata accessor for ConfirmationResponse();
    (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
    return (v24)(v13, v3);
  }
}

unint64_t static PatternHelper.makeParameters(jsonData:)()
{
  v0 = Data.base64EncodedString(options:)(0);
  v1 = specialized static PatternHelper.makeParameters(jsonBase64:)(v0._countAndFlagsBits, v0._object);

  return v1;
}

unint64_t specialized static PatternHelper.makeParameters(jsonBase64:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  static String.Encoding.utf8.getter();
  v12 = Data.init(base64Encoded:options:)();
  if (v13 >> 60 == 15)
  {
    (*(v5 + 8))(v11, v4);
LABEL_10:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.information);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v63);
      _os_log_impl(&dword_0, v28, v29, "Failed to base64 decode json %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v14 = v12;
  v15 = v13;
  (*(v5 + 16))(v9, v11, v4);
  v16 = String.init(data:encoding:)();
  v18 = v17;
  outlined consume of Data?(v14, v15);
  v19 = *(v5 + 8);
  v19(v11, v4);
  if (!v18)
  {
    goto LABEL_10;
  }

  static String.Encoding.utf8.getter();
  v20 = String.data(using:allowLossyConversion:)();
  v22 = v21;
  v19(v9, v4);
  if (v22 >> 60 == 15)
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.information);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Failed to encode JSON data using utf8", v26, 2u);
    }

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v33 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v63[0] = 0;
  v35 = [v33 JSONObjectWithData:isa options:0 error:v63];

  v36 = v63[0];
  if (v35)
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      outlined consume of Data?(v20, v22);
      return v62;
    }

    else
    {
      v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      outlined consume of Data?(v20, v22);
      return v54;
    }
  }

  else
  {
    v37 = v36;
    v38 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.information);
    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    v42 = os_log_type_enabled(v40, v41);
    v61 = v38;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v60 = v20;
      v44 = v43;
      v45 = swift_slowAlloc();
      v63[0] = v45;
      *v44 = 136315138;
      v62 = v38;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v46 = String.init<A>(describing:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v63);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v40, v41, "Failed to convert JSON to dictionary %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);

      v20 = v60;
    }

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63[0] = v52;
      *v51 = 136315138;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v63);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_0, v49, v50, "Failed to convert JSON to dictionary %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
    }

    else
    {
    }

    v55 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B8690;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    v63[0] = v55;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v57 = String.init<A>(describing:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v57;
    *(inited + 56) = v58;
    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of Any?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    outlined consume of Data?(v20, v22);

    return v59;
  }
}

id specialized static PatternHelper.bundle(from:with:)(uint64_t a1, void *a2)
{
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = Apple_Parsec_Responseframework_PatternModel.patternBundleID.getter();
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() bundleWithIdentifier:v12];

    if (v13)
    {

      return v13;
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      v21 = __swift_project_value_buffer(v20, static Logger.information);
      v22 = *(v20 - 8);
      (*(v22 + 16))(v8, v21, v20);
      (*(v22 + 56))(v8, 0, 1, v20);
      outlined init with copy of Logger?(v8, v6);
      if ((*(v22 + 48))(v6, 1, v20) == 1)
      {
        outlined destroy of Any?(v6, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      }

      else
      {
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v25 = 136315650;
          v26 = StaticString.description.getter();
          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v30);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2048;
          *(v25 + 14) = 47;
          *(v25 + 22) = 2080;
          *(v25 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000B2, 0x80000000000BF550, &v30);
          _os_log_impl(&dword_0, v23, v24, "FatalError at %s:%lu - %s", v25, 0x20u);
          swift_arrayDestroy();
        }

        (*(v22 + 8))(v6, v20);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.information);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "No bundle was specified on the PatternModel. Defaulting to the InformationPlugin Bundle.", v18, 2u);
    }

    v19 = v29;

    return v19;
  }

  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PegasusPatternFlowFactory.__allocating_init(outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  outlined init with copy of OutputPublisherAsync(a1, v8 + 16);
  outlined init with copy of OutputPublisherAsync(a3, v8 + 56);
  *(v8 + 96) = a2;
  static PatternFlowProvidingHelper.unwrap(_:with:)(a4, a1, (v8 + 104));
  outlined destroy of PatternFlowProviding?(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t PegasusPatternFlowFactory.init(outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  outlined init with copy of OutputPublisherAsync(a1, v4 + 16);
  outlined init with copy of OutputPublisherAsync(a3, v4 + 56);
  *(v4 + 96) = a2;
  static PatternFlowProvidingHelper.unwrap(_:with:)(a4, a1, v10);
  outlined destroy of PatternFlowProviding?(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  outlined init with take of SiriSuggestionsBroker(v10, v4 + 104);
  return v4;
}

uint64_t PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a4;
  v24 = a3;
  v10 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v18 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v23;
  *(v19 + 5) = a5;
  *(v19 + 6) = v6;
  (*(v11 + 32))(&v19[v18], &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v20 = &v19[(v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v24;
  *v20 = a2;
  v20[1] = v21;

  outlined copy of Data?(a2, v21);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:), v19);
}

uint64_t closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a5;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:);

  return (specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:))(a7);
}

uint64_t closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:), 0, 0);
}

uint64_t closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_598B8()
{
  v1 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5 + 8];
  if (v9 >> 60 != 15)
  {
    outlined consume of Data._Representation(*&v0[v5], v9);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:completion:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow;

  return (specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:))(a1);
}

uint64_t PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[166] = v3;
  v4[165] = a3;
  v4[164] = a2;
  v4[163] = a1;
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[167] = swift_task_alloc();
  v6 = type metadata accessor for NLContextUpdate();
  v4[168] = v6;
  v7 = *(v6 - 8);
  v4[169] = v7;
  v8 = *(v7 + 64) + 15;
  v4[170] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v4[171] = v9;
  v10 = *(v9 - 8);
  v4[172] = v10;
  v11 = *(v10 + 64) + 15;
  v4[173] = swift_task_alloc();
  v12 = type metadata accessor for PerformanceUtil.Ticket();
  v4[174] = v12;
  v13 = *(v12 - 8);
  v4[175] = v13;
  v14 = *(v13 + 64) + 15;
  v4[176] = swift_task_alloc();
  v4[177] = swift_task_alloc();
  v4[178] = swift_task_alloc();
  v4[179] = swift_task_alloc();
  v4[180] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v4[181] = v15;
  v16 = *(v15 - 8);
  v4[182] = v16;
  v17 = *(v16 + 64) + 15;
  v4[183] = swift_task_alloc();

  return _swift_task_switch(PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:), 0, 0);
}

uint64_t PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)()
{
  v1 = v0[183];
  v2 = v0[182];
  v3 = v0[181];
  v4 = v0[163];
  v0[184] = Apple_Parsec_Responseframework_PatternModel.patternID.getter();
  v0[185] = v5;
  v0[186] = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  Date.init()();
  v16 = v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  LOBYTE(v15) = 2;
  v14 = 50;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v2 + 8))(v1, v3);

  v0[187] = v0[160];
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v7 = v0[183];
  v8 = v0[180];
  v9 = specialized static PatternHelper.bundle(from:with:)(v0[163], static PegasusPatternFlowFactory.bundle);
  v0[188] = v9;
  Date.init()();
  LOBYTE(v14) = 2;
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v0[189] = v11;
  v0[2] = v0;
  v0[7] = v0 + 161;
  v0[3] = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  v12 = swift_continuation_init();
  v0[78] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17PatternLoadResultCs5Error_pGMd, &_sSccySo17PatternLoadResultCs5Error_pGMR);
  v0[75] = v12;
  v0[71] = _NSConcreteStackBlock;
  v0[72] = 1107296256;
  v0[73] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned PatternExecutionResult, @unowned NSError?) -> () with result type PatternExecutionResult;
  v0[74] = &block_descriptor_3;
  [v10 load:v9 patternId:v11 completion:{v0 + 71, 50, v14, v15, partial apply for closure #1 in PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:), v16, v17}];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1520) = v3;
  if (v3)
  {
    v4 = *(v1 + 1496);
    v5 = *(v1 + 1480);

    v6 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  else
  {
    v6 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v133 = v0;
  v1 = *(v0 + 1512);
  v2 = *(v0 + 1488);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1288);
  *(v0 + 1528) = v4;

  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v132 = v10;
    *v9 = 136315138;
    *(v0 + 1296) = [v6 patternType];
    type metadata accessor for PatternType(0);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v132);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "RenderPegasusFlow found pattern of type %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v14 = [v6 patternType];
  if (v14 == (&dword_0 + 1))
  {
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "RenderPegasusFlow making a ResultSet Flow", v77, 2u);
    }

    v78 = *(v0 + 1496);
    v79 = *(v0 + 1480);
    v80 = *(v0 + 1464);
    v81 = *(v0 + 1416);
    v82 = *(v0 + 1328);

    Date.init()();
    LOBYTE(v131) = 2;
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();

    v83 = *(v82 + 96);
    outlined init with copy of OutputPublisherAsync(v82 + 104, v0 + 992);
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 992, v82 + 16, (v0 + 1032));

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = *(v0 + 1496);
      v87 = *(v0 + 1480);
      v88 = *(v0 + 1472);
      v89 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v89 = 136315394;
      *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v87, &v132);
      *(v89 + 12) = 2080;
      v90 = Dictionary.description.getter();
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v132);

      *(v89 + 14) = v92;
      _os_log_impl(&dword_0, v84, v85, "ResultSetFlowFactory.makeRenderPatternFlow called with %s : %s", v89, 0x16u);
      swift_arrayDestroy();
    }

    v93 = *(v0 + 1504);
    v94 = *(v0 + 1496);
    v95 = *(v0 + 1480);
    v96 = *(v0 + 1472);
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 1032, v82 + 16, (v0 + 1072));
    outlined init with copy of OutputPublisherAsync(v82 + 16, v0 + 1112);
    outlined init with copy of OutputPublisherAsync(v82 + 56, v0 + 1152);
    outlined init with copy of OutputPublisherAsync(v0 + 1072, v0 + 1192);
    v97 = type metadata accessor for PatternExecutor();
    v98 = swift_allocObject();
    *(v0 + 528) = v97;
    *(v0 + 536) = &protocol witness table for PatternExecutor;
    *(v0 + 504) = v98;
    *(v0 + 552) = v96;
    *(v0 + 560) = v95;
    *(v0 + 328) = specialized GenericResultSetParamBuilder.init(parameters:)(v94);
    *(v0 + 336) = v99;
    *(v0 + 344) = v100;
    *(v0 + 352) = v101;
    *(v0 + 544) = v93;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0xF000000000000000;
    outlined init with copy of OutputPublisherAsync(v0 + 1112, v0 + 360);
    outlined init with copy of OutputPublisherAsync(v0 + 1152, v0 + 400);
    v102 = v93;
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 1192, v0 + 1112, (v0 + 456));
    outlined destroy of PatternFlowProviding?(v0 + 1192);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1152));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1112));
    *(v0 + 496) = v83;
    v103 = *(v0 + 1096);
    v104 = *(v0 + 1104);
    __swift_project_boxed_opaque_existential_1((v0 + 1072), v103);
    v105 = async function pointer to dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)[1];

    v106 = swift_task_alloc();
    *(v0 + 1560) = v106;
    v107 = lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider();
    *v106 = v0;
    v106[1] = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);

    return dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 328, &type metadata for ContinuationResultSetFlowProvider, v107, v103, v104);
  }

  else if (v14 == &dword_4)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "RenderPegasusFlow making a DetailedResult Flow", v42, 2u);
    }

    v43 = (v0 + 1264);
    v44 = *(v0 + 1496);
    v45 = *(v0 + 1480);
    v46 = *(v0 + 1464);
    v47 = *(v0 + 1408);
    v48 = *(v0 + 1328);

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v49 = *(v48 + 96);
    outlined init with copy of OutputPublisherAsync(v48 + 104, v0 + 752);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 1496);
      v53 = *(v0 + 1480);
      v54 = *(v0 + 1472);
      v55 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v55 = 136315394;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v132);
      *(v55 + 12) = 2080;
      v56 = Dictionary.description.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v132);

      *(v55 + 14) = v58;
      _os_log_impl(&dword_0, v50, v51, "DetailedResultFlowFactory.makeDetailedResultFlow called with %s : %s", v55, 0x16u);
      v43 = (v0 + 1264);
      swift_arrayDestroy();
    }

    v59 = *(v0 + 1496);
    v60 = *(v0 + 1480);
    v61 = *(v0 + 1472);
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 752, v48 + 16, (v0 + 792));
    outlined init with copy of OutputPublisherAsync(v48 + 16, v0 + 832);
    outlined init with copy of OutputPublisherAsync(v48 + 56, v0 + 872);
    outlined init with copy of OutputPublisherAsync(v0 + 792, v0 + 912);
    v62 = type metadata accessor for PatternExecutor();
    v63 = swift_allocObject();
    *(v0 + 976) = v62;
    *(v0 + 984) = &protocol witness table for PatternExecutor;
    *(v0 + 952) = v63;
    *(v0 + 312) = v61;
    *(v0 + 320) = v60;
    v132 = v59;

    specialized Dictionary._Variant.removeValue(forKey:)(0x64656C6961746564, 0xEC00000074786554, (v0 + 1232));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v64 = swift_dynamicCast();
    v65 = 0uLL;
    if (v64)
    {
      v65 = *v43;
    }

    v66 = *(v0 + 1504);
    v67 = *(v0 + 1320);
    v68 = *(v0 + 1312);
    *(v0 + 80) = v132;
    *(v0 + 88) = v65;
    strcpy((v0 + 104), "detailedText");
    *(v0 + 117) = 0;
    *(v0 + 118) = -5120;
    *(v0 + 304) = v66;
    *(v0 + 200) = v68;
    *(v0 + 208) = v67;
    outlined init with copy of OutputPublisherAsync(v0 + 832, v0 + 120);
    outlined init with copy of OutputPublisherAsync(v0 + 872, v0 + 160);
    outlined copy of Data?(v68, v67);
    v69 = v66;
    static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 912, v0 + 832, (v0 + 216));
    outlined destroy of PatternFlowProviding?(v0 + 912);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 872));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 832));
    *(v0 + 256) = v49;
    outlined init with take of SiriSuggestionsBroker((v0 + 952), v0 + 264);
    v70 = *(v0 + 816);
    v71 = *(v0 + 824);
    __swift_project_boxed_opaque_existential_1((v0 + 792), v70);
    v72 = async function pointer to dispatch thunk of PatternFlowProviding.makeDetailedResultFlow<A>(provider:)[1];

    v73 = swift_task_alloc();
    *(v0 + 1584) = v73;
    v74 = lazy protocol witness table accessor for type DetailedResultProvider and conformance DetailedResultProvider();
    *v73 = v0;
    v73[1] = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);

    return dispatch thunk of PatternFlowProviding.makeDetailedResultFlow<A>(provider:)(v0 + 80, &type metadata for DetailedResultProvider, v74, v70, v71);
  }

  else if (v14 == (&dword_0 + 3))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "RenderPegasusFlow making a SimpleResult Flow", v17, 2u);
    }

    v18 = *(v0 + 1496);
    v19 = *(v0 + 1480);
    v20 = *(v0 + 1464);
    v21 = *(v0 + 1432);
    v22 = *(v0 + 1328);

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    outlined init with copy of OutputPublisherAsync(v22 + 104, v0 + 632);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 1496);
      v26 = *(v0 + 1480);
      v27 = *(v0 + 1472);
      v28 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v132);
      *(v28 + 12) = 2080;
      v29 = Dictionary.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v132);

      *(v28 + 14) = v31;
      _os_log_impl(&dword_0, v23, v24, "ResponseFlowFactory.makeRenderPatternFlow making default pattern flow for patternId %s : %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    v32 = *(v0 + 1464);
    v33 = *(v0 + 1424);
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v34 = swift_task_alloc();
    *(v0 + 1536) = v34;
    *v34 = v0;
    v34[1] = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
    v35 = *(v0 + 1504);
    v36 = *(v0 + 1496);
    v37 = *(v0 + 1480);
    v38 = *(v0 + 1472);

    return specialized PatternExecutor.execute(pattern:in:with:deviceState:)(v38, v37, v35, v36, v22 + 56);
  }

  else
  {
    v108 = *(v0 + 1496);
    v109 = *(v0 + 1480);

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_0, v110, v111, "RenderPegasusFlow received unsupported pattern type. Only simple result is supported at the moment.", v112, 2u);
    }

    v113 = *(v0 + 1504);
    v114 = *(v0 + 1440);
    v115 = *(v0 + 1400);
    v116 = *(v0 + 1392);
    v117 = *(v0 + 1328);

    outlined init with copy of OutputPublisherAsync(v117 + 16, v0 + 712);
    v118 = *(v117 + 96);
    type metadata accessor for ErrorFlowFactory();
    v119 = swift_allocObject();
    outlined init with take of SiriSuggestionsBroker((v0 + 712), v119 + 16);
    *(v119 + 56) = v118;

    v120 = ErrorFlowFactory.makeErrorFlow(message:)(1701736302, 0xE400000000000000);

    (*(v115 + 8))(v114, v116);
    v121 = *(v0 + 1464);
    v122 = *(v0 + 1440);
    v123 = *(v0 + 1432);
    v124 = *(v0 + 1424);
    v125 = *(v0 + 1416);
    v126 = *(v0 + 1408);
    v127 = *(v0 + 1384);
    v128 = *(v0 + 1360);
    v129 = *(v0 + 1336);

    v130 = *(v0 + 8);

    return v130(v120 | 0xC000000000000000);
  }
}

{
  v25 = v0[194];
  v31 = v0[188];
  v32 = v0[191];
  v28 = v0[186];
  v33 = v0[180];
  v1 = v0[178];
  v2 = v0[175];
  v29 = v0[174];
  v30 = v0[179];
  v26 = v0[172];
  v27 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v23 = v0[173];
  v24 = v0[168];
  v5 = v0[167];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[164];
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  static PatternFlowProvidingHelper.unwrap(_:with:)((v0 + 79), v6 + 16, v0 + 84);
  v22 = v0[88];
  __swift_project_boxed_opaque_existential_1(v0 + 84, v0[87]);
  NLContextUpdate.init()();
  outlined copy of Data?(v8, v7);
  NLContextUpdate.pegasusConversationContext.setter();
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v3;
  OutputGenerationManifest.init(dialogPhase:_:)();

  (*(v4 + 8))(v3, v24);
  v9 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v26 + 8))(v23, v27);
  v10 = *(v2 + 8);
  v10(v1, v29);
  outlined destroy of PatternFlowProviding?((v0 + 79));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 84);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v10(v30, v29);
  v10(v33, v29);
  v11 = v0[183];
  v12 = v0[180];
  v13 = v0[179];
  v14 = v0[178];
  v15 = v0[177];
  v16 = v0[176];
  v17 = v0[173];
  v18 = v0[170];
  v19 = v0[167];

  v20 = v0[1];

  return v20(v9);
}

{
  v1 = v0[191];
  v2 = v0[188];
  v3 = v0[180];
  v4 = v0[179];
  v5 = v0[174];
  v6 = *(v0[175] + 8);
  v6(v0[178], v5);
  outlined destroy of PatternFlowProviding?((v0 + 79));

  v6(v4, v5);
  v6(v3, v5);
  v7 = v0[193];
  v8 = v0[183];
  v9 = v0[180];
  v10 = v0[179];
  v11 = v0[178];
  v12 = v0[177];
  v13 = v0[176];
  v14 = v0[173];
  v15 = v0[170];
  v16 = v0[167];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[197];
  v2 = v0[191];
  v3 = v0[188];
  v4 = v0[186];
  v5 = v0[180];
  v6 = v0[177];
  v7 = v0[175];
  v8 = v0[174];
  outlined destroy of PatternFlowProviding?((v0 + 129));
  outlined destroy of PatternFlowProviding?((v0 + 124));
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 41));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 134);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  v10 = v0[183];
  v11 = v0[180];
  v12 = v0[179];
  v13 = v0[178];
  v14 = v0[177];
  v15 = v0[176];
  v16 = v0[173];
  v17 = v0[170];
  v18 = v0[167];

  v19 = v0[1];

  return v19(v1 | 0x4000000000000000);
}

{
  v1 = v0[191];
  v2 = v0[188];
  v3 = v0[180];
  v4 = v0[177];
  v5 = v0[175];
  v6 = v0[174];
  outlined destroy of PatternFlowProviding?((v0 + 129));
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 41));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 134);
  outlined destroy of PatternFlowProviding?((v0 + 124));

  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  v8 = v0[196];
  v9 = v0[183];
  v10 = v0[180];
  v11 = v0[179];
  v12 = v0[178];
  v13 = v0[177];
  v14 = v0[176];
  v15 = v0[173];
  v16 = v0[170];
  v17 = v0[167];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[200];
  v2 = v0[191];
  v3 = v0[188];
  v4 = v0[187];
  v5 = v0[186];
  v6 = v0[180];
  v7 = v0[176];
  v8 = v0[175];
  v9 = v0[174];

  outlined destroy of DetailedResultProvider((v0 + 10));
  outlined destroy of PatternFlowProviding?((v0 + 94));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 99);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  v11 = v0[183];
  v12 = v0[180];
  v13 = v0[179];
  v14 = v0[178];
  v15 = v0[177];
  v16 = v0[176];
  v17 = v0[173];
  v18 = v0[170];
  v19 = v0[167];

  v20 = v0[1];

  return v20(v1 | 0x8000000000000000);
}

{
  v1 = v0[191];
  v2 = v0[188];
  v3 = v0[187];
  v4 = v0[180];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];

  outlined destroy of DetailedResultProvider((v0 + 10));
  outlined destroy of PatternFlowProviding?((v0 + 94));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 99);

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  v9 = v0[199];
  v10 = v0[183];
  v11 = v0[180];
  v12 = v0[179];
  v13 = v0[178];
  v14 = v0[177];
  v15 = v0[176];
  v16 = v0[173];
  v17 = v0[170];
  v18 = v0[167];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[190];
  v2 = v0[189];
  v3 = v0[188];
  v4 = v0[180];
  v5 = v0[175];
  v6 = v0[174];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v7 = v0[190];
  v8 = v0[183];
  v9 = v0[180];
  v10 = v0[179];
  v11 = v0[178];
  v12 = v0[177];
  v13 = v0[176];
  v14 = v0[173];
  v15 = v0[170];
  v16 = v0[167];

  v17 = v0[1];

  return v17();
}

uint64_t PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1536);
  v6 = *v2;
  v4[193] = v1;

  v7 = v4[187];
  v8 = v4[185];

  if (v1)
  {
    v9 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  else
  {
    v4[194] = a1;
    v9 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 1560);
  v6 = *v2;
  *(*v2 + 1568) = v1;

  if (v1)
  {
    v7 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  else
  {
    *(v4 + 1576) = a1;
    v7 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 1584);
  v6 = *v2;
  *(*v2 + 1592) = v1;

  if (v1)
  {
    v7 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  else
  {
    *(v4 + 1600) = a1;
    v7 = PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:);
  }

  return _swift_task_switch(v7, 0, 0);
}

Swift::Void __swiftcall PegasusPatternFlowFactory.PatternUseCase.log()()
{
  v1 = v0 >> 62;
  if ((v0 >> 62) > 1)
  {
    if (v1 == 2)
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.information);
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "PegasusPatternFlowFactory returning a Detailed Result Flow";
        goto LABEL_20;
      }
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.information);
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "PegasusPatternFlowFactory returning an Error Flow: Received Unsupported Pattern Type";
        goto LABEL_20;
      }
    }
  }

  else if (v1)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.information);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "PegasusPatternFlowFactory returning a Result Set Continuation Flow";
      goto LABEL_20;
    }
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.information);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "PegasusPatternFlowFactory returning a SimpleResult Flow";
LABEL_20:
      _os_log_impl(&dword_0, oslog, v3, v5, v4, 2u);
    }
  }
}

uint64_t PegasusPatternFlowFactory.PatternUseCase.extractFlow()(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  v3 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  if (v2)
  {
    v1 = v3;
  }

  if (v2 <= 1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

uint64_t closure #1 in PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = Apple_Parsec_Responseframework_PatternModel.patternParameters.getter();
  v4 = v3;
  v5 = Data.base64EncodedString(options:)(0);
  v6 = specialized static PatternHelper.makeParameters(jsonBase64:)(v5._countAndFlagsBits, v5._object);

  result = outlined consume of Data._Representation(v2, v4);
  *a1 = v6;
  return result;
}

uint64_t specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)(uint64_t a1)
{
  *(v2 + 88) = v1;
  v4 = swift_task_alloc();
  *(v2 + 96) = v4;
  *v4 = v2;
  v4[1] = specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:);

  return PegasusPatternFlowFactory.selectPatternFlow(for:pegasusConversationContext:)(a1, 0, 0xF000000000000000);
}

{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:);
  }

  else
  {
    v5 = specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)()
{
  v1 = *(v0 + 104);
  PegasusPatternFlowFactory.PatternUseCase.log()();
  v2 = *(v0 + 104);
  v3 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  if (v1 >> 62)
  {
    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  if ((v1 >> 62) <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

{
  v22 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "ResponseFlowFactory.makeRenderPatternFlow failed to generate pattern %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  outlined init with copy of OutputPublisherAsync(v15 + 16, v0 + 16);
  v16 = *(v15 + 96);
  type metadata accessor for ErrorFlowFactory();
  v17 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker((v0 + 16), v17 + 16);
  *(v17 + 56) = v16;

  v18 = ErrorFlowFactory.makeErrorFlow(message:)(1701736302, 0xE400000000000000);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t getEnumTagSinglePayload for PegasusPatternFlowFactory.PatternUseCase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PegasusPatternFlowFactory.PatternUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t SportsProperty.apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{

  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 == 6)
      {
        return SportsItem.athlete.setter();
      }

      else
      {
        return SportsItem.athleteQId.setter();
      }
    }

    else if (a4 == 4)
    {
      return SportsItem.sport.setter();
    }

    else
    {
      return SportsItem.sportQId.setter();
    }
  }

  else if (a4 > 1u)
  {
    if (a4 == 2)
    {
      return SportsItem.league.setter();
    }

    else
    {
      return SportsItem.leagueQId.setter();
    }
  }

  else if (a4)
  {
    return SportsItem.teamQId.setter();
  }

  else
  {
    return SportsItem.team.setter();
  }
}

uint64_t static PersonalizationLevel.from(uso:)@<X0>(unint64_t a1@<X8>)
{
  v2 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
  if (v2)
  {
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v18 = a1;
      v6 = 0;
      a1 = v3 & 0xC000000000000001;
      while (1)
      {
        if (a1)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        dispatch thunk of CodeGenListEntry.entry.getter();
        if (v19 && (v8 = dispatch thunk of UsoEntity_common_SportsItem.type.getter(), , v8) && (v9 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter(), v11 = v10, , v11))
        {
          if (v9 == 0xD000000000000015 && v11 == 0x80000000000BF8A0)
          {

            goto LABEL_24;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v12)
          {

LABEL_24:
            v19 = v6;
            return closure #2 in static PersonalizationLevel.from(uso:)(&v19, v18);
          }
        }

        else
        {
        }

        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        ++v6;
        if (v13 == i)
        {

          a1 = v18;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_29:
    v17 = type metadata accessor for PersonalizationLevel();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {
    v14 = type metadata accessor for PersonalizationLevel();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t closure #2 in static PersonalizationLevel.from(uso:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
  if (!result)
  {
LABEL_26:
    v14 = type metadata accessor for PersonalizationLevel();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(result + 8 * v3 + 32);

LABEL_6:

    dispatch thunk of CodeGenListEntry.entry.getter();

    if (v15)
    {
      v6 = dispatch thunk of UsoEntity_common_SportsItem.name.getter();
      v8 = v7;

      if (v8)
      {
        if (v6 == 0xD00000000000001ALL && 0x80000000000BF8C0 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v9 = &enum case for PersonalizationLevel.team(_:);
LABEL_12:
          v10 = *v9;
          v11 = type metadata accessor for PersonalizationLevel();
          v12 = *(v11 - 8);
          (*(v12 + 104))(a2, v10, v11);
          return (*(v12 + 56))(a2, 0, 1, v11);
        }

        if (v6 == 0xD00000000000001CLL && 0x80000000000BF8E0 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v9 = &enum case for PersonalizationLevel.league(_:);
          goto LABEL_12;
        }

        if (v6 == 0xD00000000000001DLL && 0x80000000000BF900 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v9 = &enum case for PersonalizationLevel.athlete(_:);
          goto LABEL_12;
        }

        if (v6 == 0xD00000000000001BLL && 0x80000000000BF920 == v8)
        {

LABEL_25:
          v9 = &enum case for PersonalizationLevel.sport(_:);
          goto LABEL_12;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Typespb_Domain();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  Apple_Parsec_Siri_Context_ResultEntity.domain.getter();
  (*(v12 + 104))(v16, enum case for Typespb_Domain.sports(_:), v11);
  lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(&lazy protocol witness table cache variable for type Typespb_Domain and conformance Typespb_Domain, &type metadata accessor for Typespb_Domain);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v12 + 8);
  v19(v16, v11);
  v19(v18, v11);
  result = 0;
  if (v46 == v49)
  {
    Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, &type metadata accessor for Siri_Nlu_External_UsoGraph);
    Message.init(serializedData:extensions:partial:options:)();
    v21 = v8;
    v22 = v44;
    (*(v44 + 56))(v7, 0, 1, v8);
    v23 = v43;
    (*(v22 + 32))(v43, v7, v8);
    static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v46 = v28;
      *v27 = 136315138;
      v29 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v46);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_0, v24, v25, "Got USO graph for alternative entity: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    if (static UsoConversionUtils.extractFirstEntityFromGraph(graph:)())
    {

      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (*(&v47 + 1))
      {
        type metadata accessor for UsoEntity_common_SportsItem();
        if (swift_dynamicCast())
        {
          (*(v22 + 8))(v23, v21);

          return v49;
        }
      }

      else
      {
        outlined destroy of Any?(&v46, &_sypSgMd, &_sypSgMR);
      }

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v46 = v38;
        *v37 = 136315138;
        v39 = UsoEntity.valueTypeString.getter();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v46);
        v45 = v21;
        v42 = v41;

        *(v37 + 4) = v42;
        _os_log_impl(&dword_0, v35, v36, "Entity was not a sports entity but was a %s. Will ignore item", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);

        (*(v22 + 8))(v23, v45);
        return 0;
      }
    }

    else
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_0, v32, v33, "Unable to extract sports entity from USO graph", v34, 2u);

LABEL_3:
        (*(v22 + 8))(v23, v21);
        return 0;
      }
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t specialized static SportsProperty.from(entity:)()
{
  if (dispatch thunk of UsoEntity_common_SportsItem.type.getter())
  {
    v0 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter();
    v2 = v1;

    v3 = dispatch thunk of UsoEntity_common_SportsItem.name.getter();
    if (!v2 || !v4)
    {
      goto LABEL_10;
    }

    v5 = v3;
    if (v0 == 0x74726F7073 && v2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x69715F74726F7073 && v2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x65756761656CLL && v2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x715F65756761656CLL && v2 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 1835099508 && v2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x6469715F6D616574 && v2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x6574656C687461 && v2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0 == 0x5F6574656C687461 && v2 == 0xEB00000000646971)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    return v5;
  }

  dispatch thunk of UsoEntity_common_SportsItem.name.getter();
LABEL_10:

  return 0;
}

uint64_t getEnumTagSinglePayload for SportsProperty(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CommonCATs.genericError()(uint64_t a1)
{
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v6 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return (v6)(a1, 0xD00000000000001FLL, 0x80000000000BF940, _swiftEmptyArrayStorage);
}

uint64_t CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:), 0, 0);
}

uint64_t CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:)()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x80000000000BF9A0;
  *(v4 + 72) = &type metadata for String;
  v5 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v13 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 48) = v4;
  *(v4 + 16) = xmmword_B8690;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  if (v1 == 1)
  {
    v7 = "contentProviderName";
    v6[1] = CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:);
    v8 = *(v0 + 40);
    v9 = *(v0 + 16);
    v10 = 0xD000000000000044;
  }

  else
  {
    v7 = "runInformationFlow#genericError";
    v6[1] = CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:);
    v11 = *(v0 + 40);
    v9 = *(v0 + 16);
    v10 = 0xD00000000000003ALL;
  }

  return v13(v9, v10, v7 | 0x8000000000000000, v4);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(CommonCATs.knowledgeFallbackEnablementConfirmation(contentProviderName:isFullDialog:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t CommonCATs.knowledgeFallbackConfirmation(contentProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(CommonCATs.knowledgeFallbackConfirmation(contentProviderName:), 0, 0);
}

uint64_t CommonCATs.knowledgeFallbackConfirmation(contentProviderName:)()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000000000BF9A0;
  *(v3 + 72) = &type metadata for String;
  v4 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v9 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0[6] = v3;
  *(v3 + 16) = xmmword_B8690;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = CommonCATs.knowledgeFallbackConfirmation(contentProviderName:);
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, 0xD000000000000030, 0x80000000000BFA10, v3);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(CommonCATs.knowledgeFallbackConfirmation(contentProviderName:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:), 0, 0);
}

uint64_t CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:)()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000000000BF9A0;
  *(v3 + 72) = &type metadata for String;
  v4 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v9 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0[6] = v3;
  *(v3 + 16) = xmmword_B8690;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:);
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, 0xD000000000000038, 0x80000000000BFA50, v3);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t CommonCATs.knowledgeFallbackEnablementYesLabel(contentProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(CommonCATs.knowledgeFallbackEnablementYesLabel(contentProviderName:), 0, 0);
}

uint64_t CommonCATs.knowledgeFallbackEnablementYesLabel(contentProviderName:)()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000000000BF9A0;
  *(v3 + 72) = &type metadata for String;
  v4 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v9 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0[6] = v3;
  *(v3 + 16) = xmmword_B8690;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:);
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, 0xD000000000000036, 0x80000000000BFA90, v3);
}

uint64_t CommonCATs.knowledgeFallbackConfirmationNoLabel()(uint64_t a1)
{
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v6 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return (v6)(a1, 0xD000000000000037, 0x80000000000BFAD0, _swiftEmptyArrayStorage);
}

uint64_t CommonCATs.disableConfirmRequestsConfirmationText(contentProviderName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(CommonCATs.disableConfirmRequestsConfirmationText(contentProviderName:), 0, 0);
}

uint64_t CommonCATs.disableConfirmRequestsConfirmationText(contentProviderName:)()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x80000000000BF9A0;
  *(v3 + 72) = &type metadata for String;
  v4 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v9 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0[6] = v3;
  *(v3 + 16) = xmmword_B8690;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = CommonCATs.knowledgeFallbackConfirmationYesLabel(contentProviderName:);
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, 0xD000000000000035, 0x80000000000BFB10, v3);
}

uint64_t CommonCATs.disableConfirmRequestsConfirmationYesLabel()(uint64_t a1)
{
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v6 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return (v6)(a1, 0xD00000000000003DLL, 0x80000000000BFB50, _swiftEmptyArrayStorage);
}

uint64_t CommonCATs.disableConfirmRequestsConfirmationNoLabel()(uint64_t a1)
{
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v6 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return (v6)(a1, 0xD00000000000003CLL, 0x80000000000BFB90, _swiftEmptyArrayStorage);
}

uint64_t CommonCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  outlined init with copy of URL?(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v16;
}

uint64_t CommonCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of URL?(a1);
  return v12;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CommonCATs.__deallocating_deinit()
{
  CATWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CommonCATs()
{
  result = type metadata singleton initialization cache for CommonCATs;
  if (!type metadata singleton initialization cache for CommonCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:), 0, 0);
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:)()
{
  type metadata accessor for SiriSuggestionsBrokerProvider();
  *(v0 + 112) = static SiriSuggestionsBrokerProvider.instance.getter();
  lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:), v2, v1);
}

{
  v1 = *(v0 + 112);
  dispatch thunk of SiriSuggestionsBrokerProvider.getBrokerInstance()();

  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:), 0, 0);
}

{
  if (*(v0 + 80))
  {
    outlined init with take of SiriSuggestionsBroker((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);

    return static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:)(v2, v0 + 16, v3);
  }

  else
  {
    outlined destroy of Any?(v0 + 56, &_s11SiriKitFlow0A17SuggestionsBroker_pSgMd, &_s11SiriKitFlow0A17SuggestionsBroker_pSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.information);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "SiriSuggestionBroker instance is nil. Returning nil suggestion", v8, 2u);
    }

    v9 = *(v0 + 96);

    v10 = type metadata accessor for HintsUI();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider()
{
  result = lazy protocol witness table cache variable for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider;
  if (!lazy protocol witness table cache variable for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider)
  {
    type metadata accessor for SiriSuggestionsBrokerProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider);
  }

  return result;
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:), 0, 0);
}

uint64_t static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:)()
{
  static AceService.currentAsync.getter();
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of AceServiceInvokerAsync.currentStartRequestId()();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  UUID.init(uuidString:)();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    outlined destroy of Any?(v0[10], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_4:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.information);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "SiriSuggestionProvider getSiriSuggestion snippet: unable to get requestId from runtime", v10, 2u);
    }

    v11 = v0[7];

    v12 = type metadata accessor for HintsUI();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = v0[13];
    v14 = v0[10];

    v15 = v0[1];

    return v15();
  }

  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v17, static Logger.information);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "SiriSuggestionProvider getSiriSuggestion snippet: calling provided SiriSuggestionsBroker", v20, 2u);
  }

  v21 = v0[8];

  v22 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEs8SendablepTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v0[15] = v23;
  v0[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEs8SendablepTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v24 = async function pointer to dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:suggestionContextData:sourceDomainOwner:intentProperties:verb:executionProperties:)[1];
  v25 = swift_task_alloc();
  v0[17] = v25;
  *v25 = v0;
  v25[1] = static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:);
  v26 = v0[13];
  v27 = v0[9];
  v28 = v0[7];

  return dispatch thunk of SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:suggestionContextData:sourceDomainOwner:intentProperties:verb:executionProperties:)(v28, v26, 0, 0, v27, 0, 0, v23);
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:);
  }

  else
  {
    v6 = *(v2 + 120);
    v5 = *(v2 + 128);

    v4 = static SiriSuggestionProvider.getSiriSuggestion(suggestionBroker:suggestionContextData:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "SiriSuggestionProvider getSiriSuggestion snippet: error getting suggestions: %@", v9, 0xCu);
    outlined destroy of Any?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
    v12 = v0[18];
  }

  v13 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v14 = type metadata accessor for HintsUI();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = v0[13];
  v16 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t static GenAIPartner.fromProviderID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 && (a1 == 0xD000000000000018 && 0x80000000000BDB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v4 = enum case for GenAIPartner.chatGPT(_:);
    v5 = type metadata accessor for GenAIPartner();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a3, v4, v5);
    v6 = *(v12 + 56);
    v7 = a3;
    v8 = 0;
    v9 = v5;
  }

  else
  {
    v10 = type metadata accessor for GenAIPartner();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a3;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t KnowledgeFallbackConfirmationStrategy.__allocating_init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(uint64_t a1, int a2, uint64_t *a3, __int128 *a4, uint64_t a5, uint64_t *a6)
{
  v28 = a4;
  v29 = a5;
  v27 = a2;
  v9 = swift_allocObject();
  v11 = a3[3];
  v10 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15);
  v18 = a6[3];
  v17 = a6[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a6, v18);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v26[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v23 + 16))(v22);
  v24 = specialized KnowledgeFallbackConfirmationStrategy.init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(a1, v27, v15, v28, v29, v22, v9, v18, v11, v17, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(a6);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v24;
}

uint64_t KnowledgeFallbackConfirmationStrategy.init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(uint64_t a1, char a2, uint64_t *a3, __int128 *a4, uint64_t a5, uint64_t *a6)
{
  v28 = a5;
  v27 = a4;
  v11 = a3[3];
  v10 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v18 = a6[3];
  v17 = a6[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a6, v18);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = specialized KnowledgeFallbackConfirmationStrategy.init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(a1, a2, v15, v27, v28, v22, v29, v18, v11, v17, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(a6);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v24;
}

uint64_t KnowledgeFallbackConfirmationStrategy.confirmationString(_:)(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 136) = a1;
  v3 = type metadata accessor for TemplatingResult();
  *(v2 + 56) = v3;
  v4 = *(v3 - 8);
  *(v2 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.confirmationString(_:), 0, 0);
}

uint64_t KnowledgeFallbackConfirmationStrategy.confirmationString(_:)()
{
  v1 = *(v0 + 48);
  v2 = KnowledgeFallbackConfirmationStrategy.knowledgeFallbackHelper.modify();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 104))(v4, v5);
  *(v0 + 96) = v7;
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = *(v0 + 48);
    (v2)(v0 + 16, 0);
    v11 = **(v10 + 112) + class metadata base offset for CommonCATs;
    if (*(v10 + 24) == 1)
    {
      v24 = (*(v11 + 8) + **(v11 + 8));
      v12 = *(*(v11 + 8) + 4);
      v13 = swift_task_alloc();
      *(v0 + 104) = v13;
      *v13 = v0;
      v13[1] = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
      v14 = *(v0 + 80);
      v15 = *(v0 + 136);

      return v24(v14, v8, v9, v15);
    }

    else
    {
      v25 = (*(v11 + 16) + **(v11 + 16));
      v21 = *(*(v11 + 16) + 4);
      v22 = swift_task_alloc();
      *(v0 + 120) = v22;
      *v22 = v0;
      v22[1] = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
      v23 = *(v0 + 72);

      return v25(v23, v8, v9);
    }
  }

  else
  {
    (v2)(v0 + 16);
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError();
    swift_allocError();
    swift_willThrow();
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);

    v20 = *(v0 + 8);

    return v20();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
  }

  else
  {
    v6 = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  (*(v2 + 32))(v1, v0[10], v4);
  v5 = (*(*v3 + 192))(v1);
  v7 = v6;
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8(v5, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
  }

  else
  {
    v6 = KnowledgeFallbackConfirmationStrategy.confirmationString(_:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  (*(v2 + 32))(v1, v0[9], v4);
  v5 = (*(*v3 + 192))(v1);
  v7 = v6;
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8(v5, v7);
}

{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t KnowledgeFallbackConfirmationStrategy.confirmationYesLabel()()
{
  v1[6] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.confirmationYesLabel(), 0, 0);
}

{
  v1 = v0[6];
  v2 = KnowledgeFallbackConfirmationStrategy.knowledgeFallbackHelper.modify();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 104))(v4, v5);
  v0[12] = v7;
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = v0[6];
    (v2)(v0 + 2, 0);
    v11 = **(v10 + 112) + class metadata base offset for CommonCATs;
    if (*(v10 + 24) == 1)
    {
      v25 = (*(v11 + 32) + **(v11 + 32));
      v12 = *(*(v11 + 32) + 4);
      v13 = swift_task_alloc();
      v0[13] = v13;
      *v13 = v0;
      v13[1] = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
      v14 = v0[10];
      v15 = v8;
      v16 = v9;
      v17 = v25;
    }

    else
    {
      v26 = (*(v11 + 24) + **(v11 + 24));
      v23 = *(*(v11 + 24) + 4);
      v24 = swift_task_alloc();
      v0[15] = v24;
      *v24 = v0;
      v24[1] = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
      v14 = v0[9];
      v15 = v8;
      v16 = v9;
      v17 = v26;
    }

    return v17(v14, v15, v16);
  }

  else
  {
    (v2)(v0 + 2);
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError();
    swift_allocError();
    swift_willThrow();
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    v21 = v0[1];

    return v21();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
  }

  else
  {
    v6 = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
  }

  else
  {
    v6 = KnowledgeFallbackConfirmationStrategy.confirmationYesLabel();
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t KnowledgeFallbackConfirmationStrategy.confirmationNoLabel()()
{
  v1[6] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.confirmationNoLabel(), 0, 0);
}

{
  v1 = *(**(v0[6] + 112) + class metadata base offset for CommonCATs + 40);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = KnowledgeFallbackConfirmationStrategy.confirmationNoLabel();
  v4 = v0[9];

  return v6(v4);
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = KnowledgeFallbackConfirmationStrategy.confirmationNoLabel();
  }

  else
  {
    v3 = KnowledgeFallbackConfirmationStrategy.confirmationNoLabel();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  (*(v3 + 32))(v1, v0[9], v2);
  v5 = (*(*v4 + 192))(v1);
  v7 = v6;
  (*(v3 + 8))(v1, v2);
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];

  return v10(v5, v7);
}

{
  v20 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Unable to generate dialog due to error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = v0[12];

  v16 = v0[9];
  v15 = v0[10];

  v17 = v0[1];

  return v17(0, 0xE000000000000000);
}

Swift::String __swiftcall KnowledgeFallbackConfirmationStrategy.responseViewId()()
{
  if (*(v0 + 24))
  {
    v1 = 0xD000000000000024;
  }

  else
  {
    v1 = 0xD000000000000026;
  }

  if (*(v0 + 24))
  {
    v2 = "ck_confirmation_prompt";
  }

  else
  {
    v2 = "nFlowPlugin10CommonCATs";
  }

  v3 = (v2 | 0x8000000000000000);
  result._object = v3;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KnowledgeFallbackConfirmationStrategy.stringFromTemplatingResult(_:)()
{
  v28 = type metadata accessor for TemplatingText();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v28);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TemplatingSection();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  v8 = TemplatingResult.sections.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = *(v10 + 64);
    v25[1] = v8;
    v13 = v8 + ((v12 + 32) & ~v12);
    v26 = *(v10 + 56);
    v27 = v11;
    v14 = (v0 + 8);
    v15 = (v10 - 8);
    v16 = v29;
    do
    {
      v21 = v10;
      v27(v7, v13, v16);
      v22 = v30 & 0xFFFFFFFFFFFFLL;
      if ((v31 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v31) & 0xF;
      }

      if (v22)
      {
        v23._countAndFlagsBits = 32;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);
      }

      TemplatingSection.content.getter();
      v17 = TemplatingText.text.getter();
      v19 = v18;
      (*v14)(v3, v28);
      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      v16 = v29;
      (*v15)(v7, v29);
      v13 += v26;
      --v9;
      v10 = v21;
    }

    while (v9);

    return v30;
  }

  else
  {

    return 0;
  }
}

uint64_t KnowledgeFallbackConfirmationStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for KnowledgeConfirmationResponse(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v36 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSg_ADtMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSg_ADtMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v32[-v16];
  v18 = __chkstk_darwin(v15);
  v20 = &v32[-v19];
  __chkstk_darwin(v18);
  v22 = &v32[-v21];
  if (Input.userCancelled.getter())
  {
    return static ActionForInput.cancel()();
  }

  v34 = v14;
  v35 = a1;
  Input.knowledgeConfirmationResponse.getter(v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
  (*(*(v24 - 8) + 56))(v20, 2, 2, v24);
  (*(v3 + 56))(v20, 0, 1, v2);
  v25 = *(v6 + 48);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v22, v9, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v20, &v9[v25], &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v26 = *(v3 + 48);
  if (v26(v9, 1, v2) == 1)
  {
    outlined destroy of Any?(v20, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    outlined destroy of Any?(v22, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    if (v26(&v9[v25], 1, v2) == 1)
    {
      outlined destroy of Any?(v9, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
      return static ActionForInput.cancel()();
    }

    goto LABEL_9;
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v9, v17, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  if (v26(&v9[v25], 1, v2) == 1)
  {
    outlined destroy of Any?(v20, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    outlined destroy of Any?(v22, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    outlined destroy of KnowledgeConfirmationResponse(v17);
LABEL_9:
    outlined destroy of Any?(v9, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSg_ADtMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSg_ADtMR);
    v27 = v34;
    goto LABEL_10;
  }

  v31 = v36;
  outlined init with take of KnowledgeConfirmationResponse(&v9[v25], v36);
  v33 = specialized static KnowledgeConfirmationResponse.__derived_enum_equals(_:_:)(v17, v31);
  outlined destroy of KnowledgeConfirmationResponse(v31);
  outlined destroy of Any?(v20, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  outlined destroy of Any?(v22, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  outlined destroy of KnowledgeConfirmationResponse(v17);
  outlined destroy of Any?(v9, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v27 = v34;
  if (v33)
  {
    return static ActionForInput.cancel()();
  }

LABEL_10:
  Input.knowledgeConfirmationResponse.getter(v27);
  v28 = v26(v27, 1, v2);
  v29 = v27;
  v30 = v28;
  outlined destroy of Any?(v29, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  if (v30 == 1)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t Input.knowledgeConfirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = type metadata accessor for Parse.DirectInvocation();
  v85 = *(v1 - 8);
  v2 = *(v85 + 64);
  __chkstk_darwin(v1);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v84 - v10;
  v11 = type metadata accessor for USOParse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Parse();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == enum case for Parse.directInvocation(_:))
  {
    (*(v17 + 96))(v20, v16);
    v22 = v85;
    (*(v85 + 32))(v4, v20, v1);
    v23 = Parse.DirectInvocation.identifier.getter();
    v25 = v24;
    v26 = static SiriKitDirectInvocationPayloads.reject.getter();
    v27 = [v26 identifier];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v28 == v23 && v30 == v25)
    {

LABEL_16:
      (*(v22 + 8))(v4, v1);

      goto LABEL_17;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_16;
    }

    v50 = static SiriKitDirectInvocationPayloads.confirm.getter();
    v51 = [v50 identifier];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    if (v52 == v23 && v54 == v25)
    {

      (*(v22 + 8))(v4, v1);
LABEL_26:
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      v63 = *(v62 + 48);
      v64 = type metadata accessor for GenAIPartner();
      v65 = v86;
      (*(*(v64 - 8) + 56))(v86, 1, 1, v64);
      *(v65 + v63) = 1;
      (*(*(v62 - 8) + 56))(v65, 0, 2, v62);
LABEL_27:
      v45 = type metadata accessor for KnowledgeConfirmationResponse(0);
      v46 = *(*(v45 - 8) + 56);
      v47 = v65;
      return v46(v47, 0, 1, v45);
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v22 + 8))(v4, v1);
    if (v61)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

  if (v21 != enum case for Parse.uso(_:))
  {
    v49 = type metadata accessor for KnowledgeConfirmationResponse(0);
    (*(*(v49 - 8) + 56))(v86, 1, 1, v49);
    return (*(v17 + 8))(v20, v16);
  }

  (*(v17 + 96))(v20, v16);
  v31 = v12;
  v32 = *(v12 + 32);
  v33 = v15;
  v34 = v11;
  v32(v15, v20, v11);
  v35 = v84;
  USOParse.userConfirmationResponse.getter(v84);
  v36 = type metadata accessor for ConfirmationResponse();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) != 1)
  {
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v35, v9, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    v55 = (*(v37 + 88))(v9, v36);
    if (v55 == enum case for ConfirmationResponse.confirmed(_:))
    {
      (*(v31 + 8))(v15, v34);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      v57 = *(v56 + 48);
      v58 = type metadata accessor for GenAIPartner();
      v59 = v86;
      (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
      *(v59 + v57) = 0;
      (*(*(v56 - 8) + 56))(v59, 0, 2, v56);
      v60 = type metadata accessor for KnowledgeConfirmationResponse(0);
      (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    }

    else
    {
      if (v55 != enum case for ConfirmationResponse.rejected(_:))
      {
        (*(v37 + 8))(v9, v36);
        goto LABEL_7;
      }

      (*(v31 + 8))(v15, v34);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      v67 = v86;
      (*(*(v66 - 8) + 56))(v86, 2, 2, v66);
      v68 = type metadata accessor for KnowledgeConfirmationResponse(0);
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    }

    return outlined destroy of Any?(v35, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  }

LABEL_7:
  outlined destroy of Any?(v35, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v38 = USOParse.authorisedAppName.getter();
  v40 = v38;
  v41 = v39;
  if (v39)
  {
    if (v38 == 6448503 && v39 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v40 == 0x656C676F6F67 && v41 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      (*(v31 + 8))(v33, v34);
LABEL_17:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      v44 = v86;
      (*(*(v43 - 8) + 56))(v86, 1, 2, v43);
      v45 = type metadata accessor for KnowledgeConfirmationResponse(0);
      v46 = *(*(v45 - 8) + 56);
      v47 = v44;
      return v46(v47, 0, 1, v45);
    }

    if (v40 == 0x74706774616863 && v41 == 0xE700000000000000)
    {

      (*(v31 + 8))(v33, v34);
      goto LABEL_35;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v31 + 8))(v33, v34);
      if ((v73 & 1) == 0)
      {
        v74 = type metadata accessor for GenAIPartner();
        v65 = v86;
        (*(*(v74 - 8) + 56))(v86, 1, 1, v74);
        goto LABEL_36;
      }

LABEL_35:
      v69 = enum case for GenAIPartner.chatGPT(_:);
      v70 = type metadata accessor for GenAIPartner();
      v71 = *(v70 - 8);
      v65 = v86;
      (*(v71 + 104))(v86, v69, v70);
      (*(v71 + 56))(v65, 0, 1, v70);
LABEL_36:
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
      *(v65 + *(v72 + 48)) = 0;
      (*(*(v72 - 8) + 56))(v65, 0, 2, v72);
      goto LABEL_27;
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static Logger.information);

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = v33;
    v80 = swift_slowAlloc();
    v87 = v80;
    *v78 = 136315138;
    if (v41)
    {
      v81 = v40;
    }

    else
    {
      v81 = 0;
    }

    if (!v41)
    {
      v41 = 0xE000000000000000;
    }

    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v41, &v87);

    *(v78 + 4) = v82;
    _os_log_impl(&dword_0, v76, v77, "Received authorise::common_App response with unknown app name: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);

    (*(v31 + 8))(v79, v34);
  }

  else
  {

    (*(v31 + 8))(v33, v34);
  }

LABEL_50:
  v83 = type metadata accessor for KnowledgeConfirmationResponse(0);
  return (*(*(v83 - 8) + 56))(v86, 1, 1, v83);
}

uint64_t KnowledgeFallbackConfirmationStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Input();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for KnowledgeConfirmationResponse(0);
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.parseConfirmationResponse(input:), 0, 0);
}

uint64_t KnowledgeFallbackConfirmationStrategy.parseConfirmationResponse(input:)()
{
  v33 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  Input.knowledgeConfirmationResponse.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Any?(v0[8], &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v5 = v0[6];
    v8 = v0[3];
    v7 = v0[4];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.information);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_0, v10, v11, "Unexpectedly found nil userConfirmationResponse in %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v24 = 1;
  }

  else
  {
    v22 = v0[11];
    v23 = v0[7];
    outlined init with take of KnowledgeConfirmationResponse(v0[8], v22);
    outlined init with take of KnowledgeConfirmationResponse(v22, v23);
    v24 = 0;
  }

  v25 = v0[11];
  v26 = v0[9];
  v27 = v0[7];
  v28 = v0[2];
  v29 = *(v0[10] + 56);
  v29(v27, v24, 1, v26);
  v29(v28, 1, 1, v26);
  outlined assign with take of KnowledgeConfirmationResponse?(v27, v28);

  v30 = v0[1];

  return v30();
}

uint64_t KnowledgeConfirmationResponseProvider.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KnowledgeConfirmationResponse(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return outlined assign with take of KnowledgeConfirmationResponse?(a1, a2);
}

uint64_t KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v6 = *(v5 + 64) + 15;
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();
  v10 = type metadata accessor for NLContextUpdate();
  v2[23] = v10;
  v11 = *(v10 - 8);
  v2[24] = v11;
  v12 = *(v11 + 64) + 15;
  v2[25] = swift_task_alloc();
  v13 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v2[26] = v13;
  v14 = *(v13 - 8);
  v2[27] = v14;
  v15 = *(v14 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v16 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v2[30] = v16;
  v17 = *(v16 - 8);
  v2[31] = v17;
  v18 = *(v17 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

uint64_t KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  udaForApp #1 (_:) in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(0x74706774616863, v0[33]);
  udaForApp #1 (_:) in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(6448503, v0[32]);
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v20 = v0[15];
  v8 = swift_task_alloc();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
  static Message.with(_:)();

  *(swift_task_alloc() + 16) = v2;
  static Message.with(_:)();

  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v9 = *(v6 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_B95F0;
  v12 = v11 + v10;
  v13 = *(v6 + 16);
  v13(v12, v4, v5);
  v13(v12 + v9, v3, v5);
  NLContextUpdate.nluSystemDialogActs.setter();
  v14 = *(*v20 + 160);
  v19 = *v20 + 160;
  v0[34] = v14;
  v0[35] = v19 & 0xFFFFFFFFFFFFLL | 0xBC8C000000000000;
  v21 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  v17 = v0[15];

  return v21(0);
}

{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[42];
  v58 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[15];
  v55 = (*(*v6 + 184))();
  v57 = v7;
  v8 = [objc_allocWithZone(DialogExecutionResult) init];
  v0[51] = v8;
  v9 = [objc_allocWithZone(DialogElement) init];
  v0[52] = v9;

  v10 = String._bridgeToObjectiveC()();

  [v9 setFullPrint:v10];

  v11 = String._bridgeToObjectiveC()();

  [v9 setFullSpeak:v11];

  v12 = String._bridgeToObjectiveC()();

  [v9 setSupportingPrint:v12];

  v13 = String._bridgeToObjectiveC()();

  [v9 setSupportingSpeak:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_B9BD0;
  *(v14 + 32) = v9;
  type metadata accessor for DialogElement();
  v15 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v59 = v8;
  [v8 setDialog:isa];

  v17 = v6[2];
  if (v17)
  {
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[20];
    v21 = v0[15];
    v22 = objc_allocWithZone(SAUIRevealRecognizedSpeech);
    v23 = v17;
    v24 = [v22 init];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v19 + 8))(v18, v20);
    v25 = String._bridgeToObjectiveC()();

    [v24 setAceId:v25];

    v26 = v23;
    v27 = v24;
    v28 = [v26 refId];
    [v27 setRefId:v28];

    v29 = [v26 aceId];
    [v27 setSpeechRecognizedAceId:v29];

    [v27 setRecognition:v26];
    v30 = v21[13];
    __swift_project_boxed_opaque_existential_1(v21 + 9, v21[12]);
    AceServiceInvokerAsync.submitAndForget(_:)();
  }

  v53 = v0[13];
  v54 = v0[12];
  v32 = v0[8];
  v31 = v0[9];
  v33 = v0[46];
  v50 = v0[42];
  v51 = v0[45];
  v49 = v0[41];
  v34 = v0[37];
  v35 = v0[38];
  v36 = v0[25];
  v52 = v0[19];
  v38 = v0[15];
  v37 = v0[16];
  static DialogPhase.confirmation.getter();
  v39 = swift_task_alloc();
  v39[2] = v36;
  v39[3] = v34;
  v39[4] = v35;
  v39[5] = v49;
  v39[6] = v50;
  v39[7] = v51;
  v39[8] = v33;
  v39[9] = v32;
  v39[10] = v31;
  v39[11] = v54;
  v39[12] = v53;
  v39[13] = v55;
  v39[14] = v57;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v40 = v38[7];
  v56 = v38[8];
  __swift_project_boxed_opaque_existential_1(v38 + 4, v40);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v0[5] = &type metadata for SiriInformationDataModels;
  v0[6] = lazy protocol witness table accessor for type SiriInformationDataModels and conformance SiriInformationDataModels();
  v41 = swift_allocObject();
  v0[2] = v41;
  *(v41 + 16) = v32;
  *(v41 + 24) = v31;
  *(v41 + 32) = v54;
  *(v41 + 40) = v53;
  *(v41 + 48) = 0;
  v42 = swift_allocObject();
  v0[53] = v42;
  *(v42 + 16) = xmmword_B9BD0;
  *(v42 + 32) = v59;
  v43 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v44 = v59;
  v45 = swift_task_alloc();
  v0[54] = v45;
  *v45 = v0;
  v45[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  v46 = v0[19];
  v47 = v0[14];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v47, v0 + 2, v42, v46, v40, v56);
}

{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

{
  v1 = *(v0 + 416);
  v18 = *(v0 + 256);
  v19 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v16 = *(v0 + 200);
  v17 = *(v0 + 240);
  v14 = *(v0 + 232);
  v15 = *(v0 + 184);
  v20 = *(v0 + 176);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  v21 = *(v0 + 128);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v3, v4);
  v10(v14, v4);
  (*(v6 + 8))(v16, v15);
  v11 = *(v2 + 8);
  v11(v18, v17);
  v11(v19, v17);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[31];
  v21 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v0[27] + 8);
  v8(v0[28], v4);
  v8(v3, v4);
  (*(v7 + 8))(v5, v6);
  v9 = *(v1 + 8);
  v9(v21, v2);
  v10 = v0[39];
  v9(v0[33], v0[30]);
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[31];
  v21 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v0[27] + 8);
  v8(v0[28], v4);
  v8(v3, v4);
  (*(v7 + 8))(v5, v6);
  v9 = *(v1 + 8);
  v9(v21, v2);
  v10 = v0[43];
  v9(v0[33], v0[30]);
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[31];
  v21 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v0[27] + 8);
  v8(v0[28], v4);
  v8(v3, v4);
  (*(v7 + 8))(v5, v6);
  v9 = *(v1 + 8);
  v9(v21, v2);
  v10 = v0[47];
  v9(v0[33], v0[30]);
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[31];
  v21 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = *(v0[27] + 8);
  v8(v0[28], v4);
  v8(v3, v4);
  (*(v7 + 8))(v5, v6);
  v9 = *(v1 + 8);
  v9(v21, v2);
  v10 = v0[49];
  v9(v0[33], v0[30]);
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];

  v19 = v0[1];

  return v19();
}

uint64_t KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 288);
  v5 = *v3;
  v5[37] = a1;
  v5[38] = a2;
  v5[39] = v2;

  if (v2)
  {

    return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v6 = v5[35];
    v12 = (v5[34] + *v5[34]);
    v7 = *(v5[34] + 4);
    v8 = swift_task_alloc();
    v5[40] = v8;
    *v8 = v5;
    v8[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v9 = v5[35];
    v10 = v5[15];

    return v12(0);
  }
}

{
  v4 = *(*v3 + 320);
  v5 = *v3;
  v5[41] = a1;
  v5[42] = a2;
  v5[43] = v2;

  if (v2)
  {
    v6 = v5[38];

    return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v7 = v5[35];
    v13 = (v5[34] + *v5[34]);
    v8 = *(v5[34] + 4);
    v9 = swift_task_alloc();
    v5[44] = v9;
    *v9 = v5;
    v9[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v10 = v5[35];
    v11 = v5[15];

    return v13(1);
  }
}

{
  v4 = *(*v3 + 352);
  v5 = *v3;
  *(v5 + 360) = a1;
  *(v5 + 368) = a2;
  *(v5 + 376) = v2;

  if (v2)
  {
    v6 = *(v5 + 336);
    v7 = *(v5 + 304);

    return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v8 = *(**(v5 + 120) + 168);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v5 + 384) = v10;
    *v10 = v5;
    v10[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v11 = *(v5 + 120);

    return v13();
  }
}

{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 56) = v3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 80) = v2;
  v6 = *(v4 + 384);
  v7 = *v3;
  *(v5 + 392) = v2;

  if (v2)
  {
    v8 = *(v5 + 368);
    v9 = *(v5 + 336);
    v10 = *(v5 + 304);

    return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v11 = *(**(v5 + 120) + 176);
    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v5 + 400) = v13;
    *v13 = v7;
    v13[1] = KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v14 = *(v5 + 120);

    return v16();
  }
}

{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = v3[50];
  v7 = *v2;

  return _swift_task_switch(KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

uint64_t udaForApp #1 (_:) in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v34 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v34);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v37 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v37);
  v31 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  Siri_Nlu_External_UserWantedToProceed.init()();
  v18 = type metadata accessor for UsoTaskBuilder_authorise_common_App();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = UsoTaskBuilder_authorise_common_App.init()();
  v22 = type metadata accessor for UsoEntityBuilder_common_App();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_App.init()();
  dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceControl.setReference(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_B9BD0;
  *(v25 + 32) = v21;
  v26 = type metadata accessor for UsoBuilderOptions();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of Any?(v5, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v27 = v36;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (v27)
  {
    (*(v12 + 8))(v17, v37);
  }

  else
  {

    (*(v6 + 16))(v32, v11, v34);
    Siri_Nlu_External_UserWantedToProceed.reference.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    v29 = *(v12 + 16);
    v36 = v11;
    v30 = v37;
    v29(v31, v17, v37);
    Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();

    (*(v6 + 8))(v36, v34);
    return (*(v12 + 8))(v17, v30);
  }
}

uint64_t closure #1 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemGaveOptions and conformance Siri_Nlu_External_SystemGaveOptions, &type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
  static Message.with(_:)();
  return Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
}

uint64_t closure #1 in closure #1 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_B95F0;
  v10 = v9 + v8;
  v11 = *(v6 + 16);
  v11(v10, a2, v5);
  v11(v10 + v7, a3, v5);
  return Siri_Nlu_External_SystemGaveOptions.choices.setter();
}

uint64_t closure #2 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemOffered and conformance Siri_Nlu_External_SystemOffered, &type metadata accessor for Siri_Nlu_External_SystemOffered);
  static Message.with(_:)();
  return Siri_Nlu_External_SystemDialogAct.offered.setter();
}

uint64_t closure #1 in closure #2 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
  static Message.with(_:)();
  return Siri_Nlu_External_SystemOffered.offeredAct.setter();
}

uint64_t closure #1 in closure #1 in closure #2 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.getter();
  return Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
}

uint64_t closure #3 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 80);
  v5 = *(a3 + 88);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  v10 = type metadata accessor for NLContextUpdate();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  OutputGenerationManifest.nlContextUpdate.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t KnowledgeFallbackConfirmationStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  return v0;
}

uint64_t KnowledgeFallbackConfirmationStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance KnowledgeFallbackConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 208);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v10(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance KnowledgeFallbackConfirmationStrategy(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance KnowledgeFallbackConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for KnowledgeFallbackConfirmationStrategy();
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance KnowledgeFallbackConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for KnowledgeFallbackConfirmationStrategy();
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v10, a4);
}

uint64_t KnowledgeConfirmationResponseProvider.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v2, &v17 - v6, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v8 = type metadata accessor for KnowledgeConfirmationResponse(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v9 = type metadata accessor for ConfirmationResponse();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
    v12 = (*(*(v11 - 8) + 48))(v7, 2, v11);
    v13 = type metadata accessor for ConfirmationResponse();
    v14 = *(v13 - 8);
    v15 = *(v14 + 104);
    v16 = (v14 + 56);
    if (v12)
    {
      v15(a1, enum case for ConfirmationResponse.rejected(_:), v13);
      return (*v16)(a1, 0, 1, v13);
    }

    else
    {
      v15(a1, enum case for ConfirmationResponse.confirmed(_:), v13);
      (*v16)(a1, 0, 1, v13);
      return outlined destroy of Any?(v7, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    }
  }
}

uint64_t USOParse.authorisedAppName.getter()
{
  v1 = type metadata accessor for USOParse();
  v91 = *(v1 - 8);
  v92 = v1;
  v2 = *(v91 + 64);
  v3 = __chkstk_darwin(v1);
  v90 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v89 = &v87 - v5;
  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v10 = *(v94 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v94);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserParse();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v0;
  USOParse.userParse.getter();
  v24 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v15 + 8))(v18, v14);
  if (!*(v24 + 16))
  {
    v27 = v89;
    v26 = v90;
    v29 = v91;
    v28 = v92;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.information);
    v31 = *(v29 + 16);
    v31(v27, v93, v28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v98[0] = v35;
      *v34 = 136315138;
      v31(v26, v27, v28);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      (*(v29 + 8))(v27, v28);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v98);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_0, v32, v33, "Invalid USOParse while looking for user confirmation. Parse has no UDAs: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    else
    {

      (*(v29 + 8))(v27, v28);
    }

    return 0;
  }

  (*(v20 + 16))(v23, v24 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v10 + 8))(v13, v94);
  v25 = v20;
  static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  v88 = v23;
  (*(v95 + 8))(v9, v96);
  v40 = static UsoConversionUtils.convertGraphToTasks(graph:)();
  if (v40 >> 62)
  {
    v43 = v40;
    v44 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v43;
    v41 = v88;
    if (!v44)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v41 = v88;
    if (!*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_59:
      swift_once();
LABEL_17:
      v45 = type metadata accessor for Logger();
      v46 = __swift_project_value_buffer(v45, static Logger.information);

      v96 = v46;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      v49 = os_log_type_enabled(v47, v48);
      v87 = v19;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v98[0] = v51;
        *v50 = 136315138;
        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
        if (v97 && (v95 = dispatch thunk of UsoEntity_common_App.name.getter(), v53 = v52, , v53))
        {
          v54 = v95;
        }

        else
        {

          v54 = 0;
          v53 = 0xE000000000000000;
        }

        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, v98);

        *(v50 + 4) = v66;
        _os_log_impl(&dword_0, v47, v48, "Parsed confirmation response as authorise_common_App: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);

        v41 = v88;
      }

      else
      {
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

      v67 = USOParse.appNameIdentifier(app:)(v98[0]);
      v69 = v68;

      if (v69)
      {
        v70 = v69;
        v71 = v25;
      }

      else
      {
        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
        if (v98[0] && (v67 = dispatch thunk of UsoEntity_common_App.name.getter(), v73 = v72, , v73))
        {
          v70 = v73;
          v71 = v25;
        }

        else
        {
          v71 = v25;

          v67 = 0;
          v70 = 0xE000000000000000;
        }
      }

      v80 = v70;

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      v83 = v80;

      if (!os_log_type_enabled(v81, v82))
      {
        goto LABEL_56;
      }

LABEL_55:
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v98[0] = v86;
      *v85 = 136315138;
      *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v83, v98);
      _os_log_impl(&dword_0, v81, v82, "Identified the authorized app name as: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v86);

      (*(v71 + 8))(v88, v87);
      return v67;
    }

    v42 = *(v40 + 32);
  }

LABEL_14:

  static UsoTask_CodegenConverter.convert(task:)();
  if (v99)
  {
    type metadata accessor for UsoTask_authorise_common_App();
    if (swift_dynamicCast())
    {
      if (one-time initialization token for information == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_59;
    }
  }

  else
  {
    outlined destroy of Any?(v98, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v99)
  {
    (*(v25 + 8))(v41, v19);

    outlined destroy of Any?(v98, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_open_common_App();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v25 + 8))(v41, v19);

    return 0;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  v56 = __swift_project_value_buffer(v55, static Logger.information);

  v96 = v56;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  v59 = os_log_type_enabled(v57, v58);
  v87 = v19;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v98[0] = v61;
    *v60 = 136315138;
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    if (v97 && (v95 = dispatch thunk of UsoEntity_common_App.name.getter(), v63 = v62, , v63))
    {
      v64 = v95;
    }

    else
    {

      v64 = 0;
      v63 = 0xE000000000000000;
    }

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, v98);

    *(v60 + 4) = v74;
    _os_log_impl(&dword_0, v57, v58, "Parsed confirmation response as open_common_App: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);

    v41 = v88;
  }

  else
  {
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v67 = USOParse.appNameIdentifier(app:)(v98[0]);
  v76 = v75;

  if (v76)
  {
    v77 = v76;
    v71 = v25;
    goto LABEL_54;
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v98[0])
  {
    v71 = v25;
    v67 = dispatch thunk of UsoEntity_common_App.name.getter();
    v79 = v78;

    if (v79)
    {
      v77 = v79;
      goto LABEL_54;
    }
  }

  else
  {
    v71 = v25;
  }

  v67 = 0;
  v77 = 0xE000000000000000;
LABEL_54:
  v84 = v77;

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  v83 = v84;

  if (os_log_type_enabled(v81, v82))
  {
    goto LABEL_55;
  }

LABEL_56:

  (*(v71 + 8))(v41, v87);
  return v67;
}

uint64_t static GenAIPartner.fromAuthorisedAppName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x74706774616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = enum case for GenAIPartner.chatGPT(_:);
    v6 = type metadata accessor for GenAIPartner();
    v13 = *(v6 - 8);
    (*(v13 + 104))(a3, v5, v6);
    v7 = *(v13 + 56);
    v8 = a3;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for GenAIPartner();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a3;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t USOParse.appNameIdentifier(app:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  if (!a1)
  {
    return 0;
  }

  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_12:

    return 0;
  }

  v20 = v9;
  v12 = 0;
  v13 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v21 = 0x80000000000BFCF0;
  while (v12 < *(v11 + 16))
  {
    (*(v3 + 16))(v7, v13 + *(v3 + 72) * v12, v2);
    v15 = UsoIdentifier.namespace.getter();
    if (v16)
    {
      if (v15 == 0xD000000000000010 && v16 == v21)
      {

LABEL_15:

        v17 = v20;
        (*(v3 + 32))(v20, v7, v2);
        UsoIdentifier.value.getter();
        (*(v3 + 8))(v17, v2);
        countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

        return countAndFlagsBits;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_15;
      }
    }

    ++v12;
    result = (*(v3 + 8))(v7, v2);
    if (v22 == v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized KnowledgeFallbackConfirmationStrategy.init(sasRecognition:isEnablement:responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a7 + 56) = a9;
  *(a7 + 64) = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a7 + 32));
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a3, a9);
  v23 = a8;
  v24 = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(a8 - 8) + 32))(v20, a6, a8);
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  outlined init with take of SiriSuggestionsBroker(a4, a7 + 72);
  *(a7 + 112) = a5;
  outlined init with take of SiriSuggestionsBroker(&v22, a7 + 120);
  return a7;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy.ConfirmationError and conformance KnowledgeFallbackConfirmationStrategy.ConfirmationError);
  }

  return result;
}

uint64_t outlined destroy of KnowledgeConfirmationResponse(uint64_t a1)
{
  v2 = type metadata accessor for KnowledgeConfirmationResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of KnowledgeConfirmationResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnowledgeConfirmationResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static KnowledgeConfirmationResponse.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenAIPartner();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v46[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg_ADtMd, &_s16SiriMessageTypes12GenAIPartnerOSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v46[-v14];
  v16 = type metadata accessor for KnowledgeConfirmationResponse(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v46[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseO_ACtMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseO_ACtMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v46[-v23];
  v25 = &v46[*(v22 + 56) - v23];
  outlined init with copy of KnowledgeConfirmationResponse(a1, &v46[-v23]);
  outlined init with copy of KnowledgeConfirmationResponse(a2, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
  v27 = *(*(v26 - 8) + 48);
  v28 = v27(v24, 2, v26);
  if (v28)
  {
    if (v28 == 1)
    {
      if (v27(v25, 2, v26) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      outlined destroy of KnowledgeConfirmationResponse(v24);
      return 1;
    }

    if (v27(v25, 2, v26) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    outlined destroy of Any?(v24, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseO_ACtMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseO_ACtMR);
    return 0;
  }

  v48 = v7;
  v49 = v15;
  outlined init with copy of KnowledgeConfirmationResponse(v24, v19);
  v29 = *(v26 + 48);
  v30 = v19[v29];
  if (v27(v25, 2, v26))
  {
    outlined destroy of Any?(v19, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    goto LABEL_9;
  }

  v47 = v30;
  v32 = v25[v29];
  v33 = *(v12 + 48);
  v34 = v49;
  outlined init with take of GenAIPartner?(v19, v49);
  v35 = v25;
  v36 = v34;
  outlined init with take of GenAIPartner?(v35, v34 + v33);
  v37 = v50;
  v38 = *(v50 + 48);
  v39 = v34;
  v40 = v51;
  if (v38(v39, 1, v51) != 1)
  {
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v36, v11, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    if (v38(v36 + v33, 1, v40) != 1)
    {
      v43 = v48;
      (*(v37 + 32))(v48, v36 + v33, v40);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type GenAIPartner and conformance GenAIPartner, &type metadata accessor for GenAIPartner);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v37 + 8);
      v45(v43, v40);
      v45(v11, v40);
      outlined destroy of Any?(v36, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      v42 = v47;
      if (v44)
      {
        goto LABEL_19;
      }

LABEL_17:
      outlined destroy of KnowledgeConfirmationResponse(v24);
      return 0;
    }

    (*(v37 + 8))(v11, v40);
LABEL_16:
    outlined destroy of Any?(v36, &_s16SiriMessageTypes12GenAIPartnerOSg_ADtMd, &_s16SiriMessageTypes12GenAIPartnerOSg_ADtMR);
    goto LABEL_17;
  }

  v41 = v38(v36 + v33, 1, v40);
  v42 = v47;
  if (v41 != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of Any?(v36, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
LABEL_19:
  outlined destroy of KnowledgeConfirmationResponse(v24);
  return v42 ^ v32 ^ 1u;
}

uint64_t outlined assign with take of KnowledgeConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)();
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #3 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  v6 = *(v1 + 88);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  v10[0] = *(v1 + 24);
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v11 = v7;
  v12 = v8;
  return closure #3 in KnowledgeFallbackConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(a1, v2, v10);
}

uint64_t sub_678C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  outlined consume of SiriInformationDataModels();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_67A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_67A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for KnowledgeConfirmationResponseProvider()
{
  type metadata accessor for KnowledgeConfirmationResponse?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for KnowledgeConfirmationResponse?()
{
  if (!lazy cache variable for type metadata for KnowledgeConfirmationResponse?)
  {
    type metadata accessor for KnowledgeConfirmationResponse(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KnowledgeConfirmationResponse?);
    }
  }
}

uint64_t sub_67BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_67C7C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata completion function for KnowledgeConfirmationResponse()
{
  type metadata accessor for (genAIPartner: GenAIPartner?, didTap: Bool)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (genAIPartner: GenAIPartner?, didTap: Bool)()
{
  if (!lazy cache variable for type metadata for (genAIPartner: GenAIPartner?, didTap: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (genAIPartner: GenAIPartner?, didTap: Bool));
    }
  }
}

uint64_t outlined init with copy of KnowledgeConfirmationResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnowledgeConfirmationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GenAIPartner?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.title.getter()
{
  v0 = Apple_Parsec_Siri_V2alpha_MovieObject.titles.getter();
  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.sixteenByNineImages.getter()
{
  v0 = type metadata accessor for Moviespb_CoverArt.AspectRatio();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v25 = type metadata accessor for Moviespb_CoverArt();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v25);
  v37 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v24 = &v24 - v12;
  result = Apple_Parsec_Siri_V2alpha_MovieObject.coverArt.getter();
  v36 = *(result + 16);
  if (v36)
  {
    v14 = 0;
    v33 = v8 + 16;
    v32 = enum case for Moviespb_CoverArt.AspectRatio.sixteenByNine(_:);
    v30 = (v1 + 8);
    v31 = (v1 + 104);
    v26 = (v8 + 8);
    v29 = (v8 + 32);
    v15 = _swiftEmptyArrayStorage;
    v27 = v7;
    v28 = v5;
    v16 = v24;
    v17 = v25;
    v34 = result;
    v35 = v8;
    while (v14 < *(result + 16))
    {
      v38 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18 = *(v8 + 72);
      (*(v8 + 16))(v16, result + v38 + v18 * v14, v17);
      Moviespb_CoverArt.type.getter();
      (*v31)(v5, v32, v0);
      lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio, &type metadata accessor for Moviespb_CoverArt.AspectRatio);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v19 = *v30;
      (*v30)(v5, v0);
      v19(v7, v0);
      if (v40 == v39)
      {
        v20 = *v29;
        (*v29)(v37, v16, v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1);
          v16 = v24;
          v17 = v25;
          v15 = v41;
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
          v16 = v24;
          v17 = v25;
          v15 = v41;
        }

        v15[2] = v23 + 1;
        v20(v15 + v38 + v23 * v18, v37, v17);
        v7 = v27;
        v5 = v28;
      }

      else
      {
        (*v26)(v16, v17);
      }

      ++v14;
      v8 = v35;
      result = v34;
      if (v36 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_13:

    return v15;
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.sixteenByNineImages.getter()
{
  v0 = type metadata accessor for Tvpb_CoverArt.AspectRatio();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v25 = type metadata accessor for Tvpb_CoverArt();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v25);
  v37 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v24 = &v24 - v12;
  result = Apple_Parsec_Siri_V2alpha_TvObject.coverArt.getter();
  v36 = *(result + 16);
  if (v36)
  {
    v14 = 0;
    v33 = v8 + 16;
    v32 = enum case for Tvpb_CoverArt.AspectRatio.sixteenByNine(_:);
    v30 = (v1 + 8);
    v31 = (v1 + 104);
    v26 = (v8 + 8);
    v29 = (v8 + 32);
    v15 = _swiftEmptyArrayStorage;
    v27 = v7;
    v28 = v5;
    v16 = v24;
    v17 = v25;
    v34 = result;
    v35 = v8;
    while (v14 < *(result + 16))
    {
      v38 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18 = *(v8 + 72);
      (*(v8 + 16))(v16, result + v38 + v18 * v14, v17);
      Tvpb_CoverArt.type.getter();
      (*v31)(v5, v32, v0);
      lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Tvpb_CoverArt.AspectRatio and conformance Tvpb_CoverArt.AspectRatio, &type metadata accessor for Tvpb_CoverArt.AspectRatio);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v19 = *v30;
      (*v30)(v5, v0);
      v19(v7, v0);
      if (v40 == v39)
      {
        v20 = *v29;
        (*v29)(v37, v16, v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1);
          v16 = v24;
          v17 = v25;
          v15 = v41;
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
          v16 = v24;
          v17 = v25;
          v15 = v41;
        }

        v15[2] = v23 + 1;
        v20(v15 + v38 + v23 * v18, v37, v17);
        v7 = v27;
        v5 = v28;
      }

      else
      {
        (*v26)(v16, v17);
      }

      ++v14;
      v8 = v35;
      result = v34;
      if (v36 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_13:

    return v15;
  }

  return result;
}

void closure #1 in static VideoSnippetUtils.makeDisambiguationList(for:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject();
  v118 = *(v4 - 8);
  *&v119 = v4;
  v5 = v118[8];
  __chkstk_darwin(v4);
  v117 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  __chkstk_darwin(v7);
  v114 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v121 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v122 = &v105 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Searchfoundation_DynamicURLImageResourceVSgMd, &_s10PegasusAPI40Searchfoundation_DynamicURLImageResourceVSgMR);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v105 - v22;
  v24 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = a1;
  static VideoSnippetUtils.makeDynamicURLImageResource(for:)(a1, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    outlined destroy of Any?(v23, &_s10PegasusAPI40Searchfoundation_DynamicURLImageResourceVSgMd, &_s10PegasusAPI40Searchfoundation_DynamicURLImageResourceVSgMR);
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.videoSnippet);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Could not generate dynamic URL image resource for object", v32, 2u);
    }

    v33 = 0;
    goto LABEL_31;
  }

  v108 = a2;
  v120 = v25;
  (*(v25 + 32))(v28, v23, v24);
  v34 = [objc_allocWithZone(SAUIListItemProtobufMessage) init];
  UUID.init()();
  UUID.uuidString.getter();
  v35 = *(v16 + 8);
  v113 = v16 + 8;
  v123 = v35;
  v35(v19, v15);
  v36 = String._bridgeToObjectiveC()();

  [v34 setAceId:v36];
  v124 = v34;

  lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Searchfoundation_DynamicURLImageResource and conformance Searchfoundation_DynamicURLImageResource, &type metadata accessor for Searchfoundation_DynamicURLImageResource);
  v107 = v24;
  v37 = v126;
  v38 = Message.serializedData(partial:)();
  if (v37)
  {
    v40 = v15;

    isa = 0;
    v126 = 0;
  }

  else
  {
    v42 = v38;
    v43 = v39;
    v40 = v15;
    v126 = 0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v42, v43);
  }

  v45 = v121;
  v44 = v122;
  [v124 setDynamicURLImageResourceData:isa];

  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v44, 1, v46);
  v106 = v28;
  if (v48 == 1)
  {
    goto LABEL_11;
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v44, v45, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v49 = (*(v47 + 88))(v45, v46);
  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.tv(_:))
  {
    (*(v47 + 96))(v45, v46);
    v50 = v114;
    v51 = v115;
    v52 = v116;
    (*(v115 + 32))(v114, v45, v116);
    v109 = Apple_Parsec_Siri_V2alpha_TvObject.title.getter();
    v110 = v53;
    v121 = Apple_Parsec_Siri_V2alpha_TvObject.contentRatingSystem.getter();
    v122 = v54;
    v111 = Apple_Parsec_Siri_V2alpha_TvObject.contentRatingValue.getter();
    v112 = v55;
    (*(v51 + 8))(v50, v52);
  }

  else
  {
    if (v49 != enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.movie(_:))
    {
      (*(v47 + 8))(v45, v46);
LABEL_11:
      v111 = 0;
      v112 = 0;
      v121 = 0;
      v122 = 0;
      v109 = 0;
      v110 = 0xE000000000000000;
      goto LABEL_20;
    }

    (*(v47 + 96))(v45, v46);
    (v118[4])(v117, v45, v119);
    v56 = Apple_Parsec_Siri_V2alpha_MovieObject.titles.getter();
    if (v56[2])
    {
      v57 = v56[4];
      v58 = v56[5];
    }

    else
    {
      v57 = 0;
      v58 = 0xE000000000000000;
    }

    v109 = v57;
    v110 = v58;

    v59 = v117;
    v121 = Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingSystem.getter();
    v122 = v60;
    v111 = Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingValue.getter();
    v112 = v61;
    (v118[1])(v59, v119);
  }

LABEL_20:
  outlined destroy of Any?(v44, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v62 = [objc_allocWithZone(SAStartRequest) init];
  UUID.init()();
  UUID.uuidString.getter();
  v63 = v123;
  v123(v19, v40);
  v64 = String._bridgeToObjectiveC()();

  [v62 setAceId:v64];

  [v62 setInputOrigin:SAInputOriginDialogButtonTapValue];
  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.machineUtterance.getter();
  v65 = String._bridgeToObjectiveC()();

  [v62 setUtterance:v65];

  v66 = [objc_allocWithZone(SASendCommands) init];
  UUID.init()();
  UUID.uuidString.getter();
  v63(v19, v40);
  v67 = String._bridgeToObjectiveC()();

  [v66 setAceId:v67];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v68 = swift_allocObject();
  v119 = xmmword_B9BD0;
  *(v68 + 16) = xmmword_B9BD0;
  *(v68 + 32) = v62;
  v118 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
  v69 = Array._bridgeToObjectiveC()().super.isa;

  [v66 setCommands:v69];

  v70 = [objc_allocWithZone(SAUIListItem) init];
  UUID.init()();
  UUID.uuidString.getter();
  v123(v19, v40);
  v71 = String._bridgeToObjectiveC()();

  [v70 setAceId:v71];

  v72 = swift_allocObject();
  *(v72 + 16) = v119;
  *(v72 + 32) = v66;
  v73 = v66;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v75 = Array._bridgeToObjectiveC()().super.isa;

  [v70 setCommands:v75];

  v76 = v124;
  [v70 setObject:v124];
  v77 = String._bridgeToObjectiveC()();

  [v70 setTitle:v77];

  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.contentRowDescriptionData.getter();
  v78 = String._bridgeToObjectiveC()();

  [v70 setPrimaryDescriptiveText:v78];

  v79 = specialized static VideoSnippetUtils.makeContentRatingTemplate(ratingSystem:ratingValue:)(v121, v122, v111, v112);

  [v70 setContentRating:v79];

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  __swift_project_value_buffer(v80, static Logger.videoSnippet);
  v33 = v70;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v120;
  if (!v83)
  {

LABEL_30:
    (*(v84 + 8))(v106, v107);
    a2 = v108;
LABEL_31:
    *a2 = v33;
    return;
  }

  v123 = v74;
  v125 = v73;
  v85 = swift_slowAlloc();
  v128 = swift_slowAlloc();
  *v85 = 136315906;
  v86 = [v33 title];
  if (!v86)
  {

    __break(1u);
    goto LABEL_34;
  }

  v87 = v86;
  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v128);

  *(v85 + 4) = v91;
  *(v85 + 12) = 2080;
  v92 = [v33 primaryDescriptiveText];

  if (!v92)
  {
LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;

  v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v128);

  *(v85 + 14) = v96;
  *(v85 + 22) = 2080;
  v127 = [v33 contentRating];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SASTTemplateContentRatingCSgMd, &_sSo25SASTTemplateContentRatingCSgMR);
  v97 = String.init<A>(describing:)();
  v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v128);

  *(v85 + 24) = v99;
  *(v85 + 32) = 2048;
  v100 = [v33 commands];
  if (v100)
  {
    v101 = v100;
    v102 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v84 = v120;
    v103 = v124;
    if (v102 >> 62)
    {
      v104 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v104 = *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8));
    }

    *(v85 + 34) = v104;

    _os_log_impl(&dword_0, v81, v82, "Generated list item for TV or movie object\n    title: %s\n    descriptive text: %s\n    content rating: %s\n    commands: %ld", v85, 0x2Au);
    swift_arrayDestroy();

    goto LABEL_30;
  }

LABEL_35:

  __break(1u);
}

uint64_t static VideoSnippetUtils.makeDynamicURLImageResource(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(a1);
  if (v3)
  {
    v11 = v3;
    v12 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
    __chkstk_darwin(v12);
    lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Searchfoundation_DynamicURLImageResource and conformance Searchfoundation_DynamicURLImageResource, &type metadata accessor for Searchfoundation_DynamicURLImageResource);
    static Message.with(_:)();

    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  else
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.videoSnippet);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Could not create image resource for TV or movie object; canceling dynamic URL image resource", v7, 2u);
    }

    v8 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

void closure #1 in static VideoSnippetUtils.makeSingleItemContentDetailPage(for:utsURL:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v48 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v54 = static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)(v17, v15, v16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 32))(v18, v19);
  v50 = v21;
  v51 = v20;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24._countAndFlagsBits = (*(v23 + 24))(v22, v23);
  v58 = 0x3A636D753A6E7275;
  v59 = 0xE800000000000000;
  String.append(_:)(v24);

  v52 = v58;
  v53 = v59;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v26 + 40))(v25, v26);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 64))(v27, v28);
  v29 = [objc_allocWithZone(SAVCSContentDetailPage) init];
  UUID.init()();
  UUID.uuidString.getter();
  v30 = v10;
  v31 = v49;
  (*(v11 + 8))(v14, v30);
  v32 = String._bridgeToObjectiveC()();

  [v29 setAceId:v32];

  v33 = String._bridgeToObjectiveC()();

  [v29 setLoadingText:v33];

  v34 = String._bridgeToObjectiveC()();

  [v29 setContentType:v34];

  URL.init(string:)();

  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v39 = 0;
  if (v37(v31, 1, v35) != 1)
  {
    URL._bridgeToObjectiveC()(v38);
    v39 = v40;
    (*(v36 + 8))(v31, v35);
  }

  [v29 setUrl:v39];

  v41 = String._bridgeToObjectiveC()();

  [v29 setUtsId:v41];

  [v29 setResultIndex:-1];
  v42 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v42 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = v48;
    URL.init(string:)();
    if (v37(v43, 1, v35) == 1)
    {
      v45 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v44);
      v45 = v46;
      (*(v36 + 8))(v43, v35);
    }

    [v29 setUtsSearchUrl:v45];
  }

  v47 = v54;
  if (v54)
  {
    [v29 setImage:v54];
  }

  *v57 = v29;
}

id _s21InformationFlowPlugin17VideoSnippetUtilsO22makeSixteenByNineImage33_FD1E824859CA65C07CD3A7D3E94C10F9LL3forSo17SAUIImageResourceCSgx_tAA0dE6ObjectAELLRzlFZ10PegasusAPI031Apple_Parsec_Siri_V2alpha_MovieY0V_Tt0g5()
{
  v0 = type metadata accessor for Moviespb_CoverArt();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI17Moviespb_CoverArtVSgMd, &_s10PegasusAPI17Moviespb_CoverArtVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = Apple_Parsec_Siri_V2alpha_MovieObject.sixteenByNineImages.getter();
  if (*(v12 + 16))
  {
    (*(v1 + 16))(v11, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);
    (*(v1 + 56))(v11, 0, 1, v0);
  }

  else
  {
    (*(v1 + 56))(v11, 1, 1, v0);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v11, v9, &_s10PegasusAPI17Moviespb_CoverArtVSgMd, &_s10PegasusAPI17Moviespb_CoverArtVSgMR);
  if ((*(v1 + 48))(v9, 1, v0) == 1)
  {
    v13 = 0;
  }

  else
  {
    (*(v1 + 32))(v4, v9, v0);
    v13 = _s21InformationFlowPlugin17VideoSnippetUtilsO9makeImage33_FD1E824859CA65C07CD3A7D3E94C10F93forSo17SAUIImageResourceCSgx_tAA0dE8CoverArtAELLRzlFZ10PegasusAPI05Tvpb_vW0V_Tt0g5Tm(v4, &Moviespb_CoverArt.url.getter);
    (*(v1 + 8))(v4, v0);
  }

  outlined destroy of Any?(v11, &_s10PegasusAPI17Moviespb_CoverArtVSgMd, &_s10PegasusAPI17Moviespb_CoverArtVSgMR);
  return v13;
}

id _s21InformationFlowPlugin17VideoSnippetUtilsO22makeSixteenByNineImage33_FD1E824859CA65C07CD3A7D3E94C10F9LL3forSo17SAUIImageResourceCSgx_tAA0dE6ObjectAELLRzlFZ10PegasusAPI028Apple_Parsec_Siri_V2alpha_TvY0V_Tt0g5()
{
  v0 = type metadata accessor for Tvpb_CoverArt();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI13Tvpb_CoverArtVSgMd, &_s10PegasusAPI13Tvpb_CoverArtVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = Apple_Parsec_Siri_V2alpha_TvObject.sixteenByNineImages.getter();
  if (*(v12 + 16))
  {
    (*(v1 + 16))(v11, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);
    (*(v1 + 56))(v11, 0, 1, v0);
  }

  else
  {
    (*(v1 + 56))(v11, 1, 1, v0);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v11, v9, &_s10PegasusAPI13Tvpb_CoverArtVSgMd, &_s10PegasusAPI13Tvpb_CoverArtVSgMR);
  if ((*(v1 + 48))(v9, 1, v0) == 1)
  {
    v13 = 0;
  }

  else
  {
    (*(v1 + 32))(v4, v9, v0);
    v13 = _s21InformationFlowPlugin17VideoSnippetUtilsO9makeImage33_FD1E824859CA65C07CD3A7D3E94C10F93forSo17SAUIImageResourceCSgx_tAA0dE8CoverArtAELLRzlFZ10PegasusAPI05Tvpb_vW0V_Tt0g5Tm(v4, &Tvpb_CoverArt.url.getter);
    (*(v1 + 8))(v4, v0);
  }

  outlined destroy of Any?(v11, &_s10PegasusAPI13Tvpb_CoverArtVSgMd, &_s10PegasusAPI13Tvpb_CoverArtVSgMR);
  return v13;
}

uint64_t static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v16 = (*(a3 + 72))(a2, a3);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v14 = a2;
  v15 = a3;
  v10 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIImageResource, SAUIImageResource_ptr);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static VideoSnippetUtils.makeSixteenByNineImage<A>(for:), v13, &type metadata for Never, v10, v11, &v17);
  (*(v6 + 8))(v9, v5);
  return v17;
}

NSObject *specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  __chkstk_darwin(v2);
  v61 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject();
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v19 = *(*(v57 - 8) + 64);
  v20 = __chkstk_darwin(v57);
  v56 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v54 - v23;
  __chkstk_darwin(v22);
  v26 = &v54 - v25;
  v60 = a1;
  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    v55 = v26;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v26, v24, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
    v34 = (*(v28 + 88))(v24, v27);
    if (v34 == enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.tv(_:))
    {
      (*(v28 + 96))(v24, v27);
      v35 = v64;
      (*(v64 + 32))(v11, v24, v5);
      (*(v35 + 16))(v9, v11, v5);
      v30 = _s21InformationFlowPlugin17VideoSnippetUtilsO22makeSixteenByNineImage33_FD1E824859CA65C07CD3A7D3E94C10F93forSo17SAUIImageResourceCSgx_tAA0dE6ObjectAELLRzlFZ10PegasusAPI028Apple_Parsec_Siri_V2alpha_TvY0V_Tt0g5();
      v36 = *(v35 + 8);
      v36(v11, v5);
      v36(v9, v5);
    }

    else
    {
      if (v34 != enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.movie(_:))
      {
        (*(v28 + 8))(v24, v27);
        if (one-time initialization token for videoSnippet != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        v30 = __swift_project_value_buffer(v41, static Logger.videoSnippet);
        v42 = v61;
        v43 = v62;
        v44 = v63;
        (*(v62 + 16))(v61, v60, v63);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        v47 = os_log_type_enabled(v45, v46);
        v32 = v55;
        if (v47)
        {
          v48 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v66 = v65;
          *v48 = 136315138;
          Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
          v49 = String.init<A>(describing:)();
          v50 = v42;
          v52 = v51;
          (*(v43 + 8))(v50, v44);
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v52, &v66);

          *(v48 + 4) = v53;
          _os_log_impl(&dword_0, v45, v46, "Unknown or future payload in a TV or movie object: %s", v48, 0xCu);
          v30 = v65;
          __swift_destroy_boxed_opaque_existential_0Tm(v65);
        }

        else
        {

          (*(v43 + 8))(v42, v44);
        }

        goto LABEL_7;
      }

      (*(v28 + 96))(v24, v27);
      v38 = v58;
      v37 = v59;
      (*(v58 + 32))(v18, v24, v59);
      (*(v38 + 16))(v16, v18, v37);
      v30 = _s21InformationFlowPlugin17VideoSnippetUtilsO22makeSixteenByNineImage33_FD1E824859CA65C07CD3A7D3E94C10F93forSo17SAUIImageResourceCSgx_tAA0dE6ObjectAELLRzlFZ10PegasusAPI031Apple_Parsec_Siri_V2alpha_MovieY0V_Tt0g5();
      v39 = *(v38 + 8);
      v39(v18, v37);
      v39(v16, v37);
    }

    outlined destroy of Any?(v55, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
    return v30;
  }

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.videoSnippet);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v32 = v26;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v30, v31, "No TV or movie payload in a TV or movie object", v33, 2u);
  }

LABEL_7:
  lazy protocol witness table accessor for type VideoSnippetError and conformance VideoSnippetError();
  swift_allocError();
  swift_willThrow();
  outlined destroy of Any?(v32, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  return v30;
}

uint64_t specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2)
{
  v54 = a1;
  v53 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  __chkstk_darwin(v3);
  v49 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v14 = *(*(v47 - 8) + 64);
  v15 = __chkstk_darwin(v47);
  v46[1] = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v46 - v18;
  __chkstk_darwin(v17);
  v21 = v46 - v20;
  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.videoSnippet);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "No TV or movie payload in a TV or movie object", v27, 2u);
    }

LABEL_7:
    lazy protocol witness table accessor for type VideoSnippetError and conformance VideoSnippetError();
    swift_allocError();
    swift_willThrow();
    return outlined destroy of Any?(v21, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v21, v19, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v29 = (*(v23 + 88))(v19, v22);
  if (v29 == enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.tv(_:))
  {
    (*(v23 + 96))(v19, v22);
    v30 = v52;
    (*(v52 + 32))(v9, v19, v6);
    v57 = v6;
    v58 = &protocol witness table for Apple_Parsec_Siri_V2alpha_TvObject;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
    (*(v30 + 16))(boxed_opaque_existential_1, v9, v6);
    v54(&v59, v56);
    (*(v30 + 8))(v9, v6);
  }

  else
  {
    if (v29 != enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.movie(_:))
    {
      (*(v23 + 8))(v19, v22);
      if (one-time initialization token for videoSnippet != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.videoSnippet);
      v35 = v49;
      v36 = v50;
      v37 = v51;
      (*(v50 + 16))(v49, v2, v51);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56[0] = v55;
        *v40 = 136315138;
        Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
        v41 = String.init<A>(describing:)();
        v42 = v35;
        v44 = v43;
        (*(v36 + 8))(v42, v37);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, v56);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_0, v38, v39, "Unknown or future payload in a TV or movie object: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
      }

      else
      {

        (*(v36 + 8))(v35, v37);
      }

      goto LABEL_7;
    }

    (*(v23 + 96))(v19, v22);
    v32 = v48;
    (*(v48 + 32))(v13, v19, v10);
    v57 = v10;
    v58 = &protocol witness table for Apple_Parsec_Siri_V2alpha_MovieObject;
    v33 = __swift_allocate_boxed_opaque_existential_1(v56);
    (*(v32 + 16))(v33, v13, v10);
    v54(&v59, v56);
    (*(v32 + 8))(v13, v10);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  outlined destroy of Any?(v21, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  return v59;
}

uint64_t closure #1 in closure #1 in static VideoSnippetUtils.makeContentButtons(for:utsURL:switchProfileBuilderParams:)@<X0>(void *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = Apple_Parsec_Siri_V2alpha_TvOrMovieObject.contentRowDescriptionData.getter();
  v16 = static VideoSnippetUtils.makeContentButton<A>(for:utsURL:contentRowDescription:index:switchProfileBuilderParams:)(v13, a2, a3, v14, v15, a4, a5, v11, v12);

  *a6 = v16;
  return result;
}

id static VideoSnippetUtils.makeContentButton<A>(for:utsURL:contentRowDescription:index:switchProfileBuilderParams:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v101 = a7;
  v92 = a6;
  v97 = a4;
  v98 = a5;
  v94 = a2;
  v95 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v99 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v87 = (&v86 - v17);
  __chkstk_darwin(v16);
  *&v88 = &v86 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)(a1, a8, a9);
  v109 = (*(a9 + 32))(a8, a9);
  v110 = v24;
  v25._countAndFlagsBits = (*(a9 + 24))(a8, a9);
  v113 = 0x3A636D753A6E7275;
  v114 = 0xE800000000000000;
  String.append(_:)(v25);

  v107 = v113;
  v108 = v114;
  v26 = *(a9 + 40);
  v100 = a9 + 40;
  v90 = v26;
  v26(a8, a9);
  v27 = *(a9 + 64);
  v93 = a1;
  v103 = a8;
  v91 = a9 + 64;
  v89 = v27;
  v96 = v27(a8, a9);
  v28 = [objc_allocWithZone(SAVCSContentDetailPage) init];
  UUID.init()();
  UUID.uuidString.getter();
  v29 = *(v20 + 8);
  v104 = v23;
  v105 = v20 + 8;
  v106 = v19;
  v102 = v29;
  v29(v23, v19);
  v30 = String._bridgeToObjectiveC()();

  [v28 setAceId:v30];

  v31 = String._bridgeToObjectiveC()();
  v32 = v88;

  [v28 setLoadingText:v31];

  v33 = String._bridgeToObjectiveC()();

  [v28 setContentType:v33];

  URL.init(string:)();
  v34 = type metadata accessor for URL();
  v35 = *(v34 - 8);
  v36 = *(v35 + 6);
  v38 = 0;
  if (v36(v32, 1, v34) != 1)
  {
    URL._bridgeToObjectiveC()(v37);
    v38 = v39;
    (*(v35 + 1))(v32, v34);
  }

  [v28 setUrl:v38];

  v40 = String._bridgeToObjectiveC()();
  [v28 setUtsId:v40];

  [v28 setResultIndex:v92];
  v41 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v41 = v94 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = v87;
    URL.init(string:)();
    if (v36(v42, 1, v34) == 1)
    {
      v44 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v43);
      v44 = v45;
      (*(v35 + 1))(v42, v34);
    }

    [v28 setUtsSearchUrl:v44];
  }

  v94 = v35 + 48;
  v87 = v35;
  if (v111)
  {
    [v28 setImage:?];
  }

  v46 = [objc_allocWithZone(SAUIAddViews) init];
  v47 = v104;
  UUID.init()();
  UUID.uuidString.getter();
  v102(v47, v106);
  v48 = String._bridgeToObjectiveC()();

  [v46 setAceId:v48];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v49 = swift_allocObject();
  v88 = xmmword_B9BD0;
  *(v49 + 16) = xmmword_B9BD0;
  *(v49 + 32) = v28;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  v92 = v28;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 setViews:isa];

  v51 = specialized static VideoSnippetUtils.makeProfileSwitch(switchProfileBuilderParams:)(v101);
  v52 = v103;
  v101 = v90(v103, a9);
  v54 = v53;
  v100 = v89(v52, a9);
  v56 = v55;
  v90 = (*(a9 + 56))(v52, a9);
  v91 = v57;
  v93 = (*(a9 + 48))(v52, a9);
  v103 = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = v88;
  *(v59 + 32) = v46;
  v113 = v59;
  v95 = v51;
  v96 = v36;
  if (v51)
  {
    v60 = v46;
    v61 = v51;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v113 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v113 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v85 = *(&dword_10 + (v113 & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v62 = v46;
  }

  v63 = [objc_allocWithZone(SAVCSContentButton) init];
  v64 = v104;
  UUID.init()();
  UUID.uuidString.getter();
  v102(v64, v106);
  v65 = String._bridgeToObjectiveC()();

  [v63 setAceId:v65];

  v66 = v63;
  v67 = String._bridgeToObjectiveC()();
  [v66 setText:v67];

  v68 = String._bridgeToObjectiveC()();
  [v66 setSecondaryText:v68];

  [v66 setImage:v111];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v69 = Array._bridgeToObjectiveC()().super.isa;

  [v66 setCommands:v69];

  v70 = String._bridgeToObjectiveC()();
  [v66 setContentType:v70];

  v71 = String._bridgeToObjectiveC()();

  [v66 setCanonicalId:v71];

  v72 = v99;
  URL.init(string:)();

  if (v96(v72, 1, v34) == 1)
  {
    v74 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v73);
    v74 = v75;
    v87[1](v72, v34);
  }

  v76 = v91;
  [v66 setUrl:v74];

  v77 = specialized static VideoSnippetUtils.makeContentRatingTemplate(ratingSystem:ratingValue:)(v93, v103, v90, v76);
  [v66 setContentRating:v77];

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, static Logger.videoSnippet);

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v81 = 136315394;
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v56, &v112);

    *(v81 + 4) = v82;
    *(v81 + 12) = 2080;
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v54, &v112);

    *(v81 + 14) = v83;
    _os_log_impl(&dword_0, v79, v80, "Built content button for %s “%s”", v81, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v66;
}

id closure #1 in static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = static VideoSnippetUtils.makeImage<A>(for:)(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  *a2 = result;
  return result;
}

id _s21InformationFlowPlugin17VideoSnippetUtilsO9makeImage33_FD1E824859CA65C07CD3A7D3E94C10F9LL3forSo17SAUIImageResourceCSgx_tAA0dE8CoverArtAELLRzlFZ10PegasusAPI05Tvpb_vW0V_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for UUID();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for URL();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  __chkstk_darwin(v11);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CharacterSet();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v20 = a2;
  v65 = a2(v17);
  v66 = v21;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v22 = StringProtocol.trimmingCharacters(in:)();
  v24 = v23;
  (*(v15 + 8))(v19, v14);

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.videoSnippet);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Cover art image URL is empty";
    goto LABEL_13;
  }

  v65 = a2(v25);
  v66 = v27;
  v63 = 8222587;
  v64 = 0xE300000000000000;
  v61 = 3223863;
  v62 = 0xE300000000000000;
  v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v30 = v29;

  v65 = v28;
  v66 = v30;
  v63 = 8218747;
  v64 = 0xE300000000000000;
  v61 = 3158068;
  v62 = 0xE300000000000000;
  v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v33 = v32;

  v65 = v31;
  v66 = v33;
  v63 = 8218235;
  v64 = 0xE300000000000000;
  v61 = 7496556;
  v62 = 0xE300000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  v35 = v58;
  v34 = v59;
  if ((*(v58 + 48))(v10, 1, v59) == 1)
  {
    outlined destroy of Any?(v10, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.videoSnippet);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Cover art image URL string was not a valid URL";
LABEL_13:
    _os_log_impl(&dword_0, v37, v38, v40, v39, 2u);

LABEL_14:

    return 0;
  }

  v43 = (*(v35 + 32))(v57, v10, v34);
  v65 = v20(v43);
  v66 = v44;
  v63 = 8218235;
  v64 = 0xE300000000000000;
  v61 = 7496556;
  v62 = 0xE300000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v45 = [objc_allocWithZone(SAUIImageResource) init];
  v46 = v54;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v55 + 8))(v46, v56);
  v47 = String._bridgeToObjectiveC()();

  [v45 setAceId:v47];

  [v45 setScaleFactor:1.0];
  v48 = v57;
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  [v45 setResourceUrl:v50];

  [v45 setPointWidth:711.11];
  [v45 setPointHeight:400.0];
  [v45 setPixelWidth:711.11];
  [v45 setPixelHeight:400.0];
  v52 = String._bridgeToObjectiveC()();

  [v45 setUrlFormatString:v52];

  (*(v35 + 8))(v48, v34);
  return v45;
}

id static VideoSnippetUtils.makeImage<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for URL();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  __chkstk_darwin(v13);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CharacterSet();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 8);
  v59 = a1;
  v60 = a2;
  v61 = a3;
  v58 = v21;
  v66 = v21(a2, a3);
  v67 = v22;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v23 = StringProtocol.trimmingCharacters(in:)();
  v25 = v24;
  (*(v17 + 8))(v20, v16);

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.videoSnippet);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Cover art image URL is empty";
    goto LABEL_13;
  }

  v66 = v58(v60, v61);
  v67 = v27;
  v64 = 8222587;
  v65 = 0xE300000000000000;
  v62 = 3223863;
  v63 = 0xE300000000000000;
  v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v30 = v29;

  v66 = v28;
  v67 = v30;
  v64 = 8218747;
  v65 = 0xE300000000000000;
  v62 = 3158068;
  v63 = 0xE300000000000000;
  v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v33 = v32;

  v66 = v31;
  v67 = v33;
  v64 = 8218235;
  v65 = 0xE300000000000000;
  v62 = 7496556;
  v63 = 0xE300000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.init(string:)();

  v35 = v56;
  v34 = v57;
  if ((*(v56 + 48))(v12, 1, v57) == 1)
  {
    outlined destroy of Any?(v12, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.videoSnippet);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_14;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Cover art image URL string was not a valid URL";
LABEL_13:
    _os_log_impl(&dword_0, v37, v38, v40, v39, 2u);

LABEL_14:

    return 0;
  }

  (*(v35 + 32))(v55, v12, v34);
  v66 = v58(v60, v61);
  v67 = v43;
  v64 = 8218235;
  v65 = 0xE300000000000000;
  v62 = 7496556;
  v63 = 0xE300000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v44 = [objc_allocWithZone(SAUIImageResource) init];
  v45 = v52;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v53 + 8))(v45, v54);
  v46 = String._bridgeToObjectiveC()();

  [v44 setAceId:v46];

  [v44 setScaleFactor:1.0];
  v47 = v55;
  URL._bridgeToObjectiveC()(v48);
  v50 = v49;
  [v44 setResourceUrl:v49];

  [v44 setPointWidth:711.11];
  [v44 setPointHeight:400.0];
  [v44 setPixelWidth:711.11];
  [v44 setPixelHeight:400.0];
  v51 = String._bridgeToObjectiveC()();

  [v44 setUrlFormatString:v51];

  (*(v35 + 8))(v47, v34);
  return v44;
}

id closure #2 in static VideoSnippetUtils.makeDynamicURLImageResource(for:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Searchfoundation_GraphicalFloat();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(&lazy protocol witness table cache variable for type Searchfoundation_GraphicalFloat and conformance Searchfoundation_GraphicalFloat, &type metadata accessor for Searchfoundation_GraphicalFloat);
  static Message.with(_:)();
  Searchfoundation_DynamicURLImageResource.pixelWidth.setter();
  static Message.with(_:)();
  Searchfoundation_DynamicURLImageResource.pixelHeight.setter();
  result = [a2 urlFormatString];
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Searchfoundation_DynamicURLImageResource.formatURL.setter();
    return Searchfoundation_DynamicURLImageResource.supportsResizing.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static VideoSnippetUtils.makeContentRatingTemplate(ratingSystem:ratingValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a2)
  {
    if (a4)
    {
      v12 = [objc_allocWithZone(SASTTemplateContentRating) init];
      UUID.init()();
      UUID.uuidString.getter();
      (*(v7 + 8))(v10, v6);
      v13 = String._bridgeToObjectiveC()();

      [v12 setAceId:v13];

      v14 = String._bridgeToObjectiveC()();
      [v12 setValue:v14];

      v15 = String._bridgeToObjectiveC()();
      [v12 setSystem:v15];

      return v12;
    }
  }

  return result;
}

void specialized static VideoSnippetUtils.makeDisambiguationList(for:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  if (v7)
  {
    v8 = 0;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v9 = v8;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject() - 8);
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        closure #1 in static VideoSnippetUtils.makeDisambiguationList(for:)(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9, &v28);
        if (v28)
        {
          break;
        }

        ++v9;
        if (v8 == v7)
        {
          goto LABEL_12;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v29 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v11 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v8 != v7);
LABEL_12:
    a1 = [objc_allocWithZone(SAUIDisambiguationList) init];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v3 + 8))(v6, v2);
    v12 = String._bridgeToObjectiveC()();

    [a1 setAceId:v12];

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIListItem, SAUIListItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 setItems:isa];

    if (one-time initialization token for videoSnippet == -1)
    {
      goto LABEL_13;
    }

LABEL_27:
    swift_once();
LABEL_13:
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.videoSnippet);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {

      v16 = v15;
LABEL_24:

      return;
    }

    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = [v15 items];
    if (v19)
    {
      v20 = v19;
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v21 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      }

      *(v18 + 4) = v22;

      _os_log_impl(&dword_0, v16, v17, "Generated disambiguation list for TV or movie objects with %ld items", v18, 0xCu);

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.videoSnippet);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "No TV or movie objects for disambiguation list", v26, 2u);
    }
  }
}

uint64_t specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55 = a3;
  v54 = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  __chkstk_darwin(v4);
  v51 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v16 = *(*(v48 - 8) + 64);
  v17 = __chkstk_darwin(v48);
  v47[1] = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v47 - v20;
  __chkstk_darwin(v19);
  v23 = v47 - v22;
  v50 = a1;
  Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.videoSnippet);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "No TV or movie payload in a TV or movie object", v29, 2u);
    }

LABEL_7:
    lazy protocol witness table accessor for type VideoSnippetError and conformance VideoSnippetError();
    swift_allocError();
    swift_willThrow();
    return outlined destroy of Any?(v23, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v23, v21, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  v31 = (*(v25 + 88))(v21, v24);
  if (v31 == enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.tv(_:))
  {
    (*(v25 + 96))(v21, v24);
    (*(v8 + 32))(v11, v21, v7);
    v58 = v7;
    v59 = &protocol witness table for Apple_Parsec_Siri_V2alpha_TvObject;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
    (*(v8 + 16))(boxed_opaque_existential_1, v11, v7);
    closure #1 in static VideoSnippetUtils.makeSingleItemContentDetailPage(for:utsURL:)(v57, v54, v55, &v60);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    if (v31 != enum case for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.movie(_:))
    {
      (*(v25 + 8))(v21, v24);
      if (one-time initialization token for videoSnippet != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.videoSnippet);
      v36 = v51;
      v37 = v52;
      v38 = v53;
      (*(v52 + 16))(v51, v50, v53);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57[0] = v56;
        *v41 = 136315138;
        Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter();
        v42 = String.init<A>(describing:)();
        v43 = v36;
        v45 = v44;
        (*(v37 + 8))(v43, v38);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, v57);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_0, v39, v40, "Unknown or future payload in a TV or movie object: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
      }

      else
      {

        (*(v37 + 8))(v36, v38);
      }

      goto LABEL_7;
    }

    (*(v25 + 96))(v21, v24);
    v33 = v49;
    (*(v49 + 32))(v15, v21, v12);
    v58 = v12;
    v59 = &protocol witness table for Apple_Parsec_Siri_V2alpha_MovieObject;
    v34 = __swift_allocate_boxed_opaque_existential_1(v57);
    (*(v33 + 16))(v34, v15, v12);
    closure #1 in static VideoSnippetUtils.makeSingleItemContentDetailPage(for:utsURL:)(v57, v54, v55, &v60);
    (*(v33 + 8))(v15, v12);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  outlined destroy of Any?(v23, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV06OneOf_J0OSgMR);
  return v60;
}

void *specialized static VideoSnippetUtils.makeContentButtons(for:utsURL:switchProfileBuilderParams:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV7elementtMd, &_sSi6offset_10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV7elementtMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v20 - v7);
  result = _swiftEmptyArrayStorage;
  v24 = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v20 = result;
      v12 = v11;
      if (v11 >= v10)
      {
        break;
      }

      result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
      v13 = *(result - 1);
      v11 = (v11 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_10;
      }

      v14 = *(v13 + 16);
      v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12;
      v16 = v8 + *(v5 + 48);
      *v8 = v12;
      v17 = v14(v16, v15, result);
      __chkstk_darwin(v17);
      v18 = v22;
      *(&v20 - 6) = v21;
      *(&v20 - 5) = v18;
      *(&v20 - 4) = v16;
      *(&v20 - 3) = v12;
      *(&v20 - 2) = v23;
      specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(partial apply for closure #1 in closure #1 in static VideoSnippetUtils.makeContentButtons(for:utsURL:switchProfileBuilderParams:), (&v20 - 8));
      outlined destroy of Any?(v8, &_sSi6offset_10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV7elementtMd, &_sSi6offset_10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectV7elementtMR);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v19 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v24;
      if (v11 == v10)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t specialized static VideoSnippetUtils.makeContentCabinet(for:utsURL:switchProfileBuilderParams:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = a2;
  v46 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = specialized static VideoSnippetUtils.makeContentButtons(for:utsURL:switchProfileBuilderParams:)(a1, a2, a3, a4);
  v17 = [objc_allocWithZone(SAVCSContentCabinet) init];
  UUID.init()();
  UUID.uuidString.getter();
  v18 = *(v13 + 8);
  v18(v16, v12);
  v19 = String._bridgeToObjectiveC()();

  [v17 setAceId:v19];

  v20 = [objc_allocWithZone(SAVCSContentShelf) init];
  UUID.init()();
  UUID.uuidString.getter();
  v18(v16, v12);
  v21 = v44;
  v22 = String._bridgeToObjectiveC()();

  [v20 setAceId:v22];

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAVCSContentButton, SAVCSContentButton_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 setContentHead:isa];

  URL.init(string:)();
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v27 = 0;
  if ((*(v25 + 48))(v11, 1, v24) != 1)
  {
    URL._bridgeToObjectiveC()(v26);
    v27 = v28;
    (*(v25 + 8))(v11, v24);
  }

  [v20 setUrl:v27];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_B9BD0;
  *(v29 + 32) = v20;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAVCSContentShelf, SAVCSContentShelf_ptr);
  v30 = v20;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v17 setShelves:v31];

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.videoSnippet);
  v33 = v17;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v34, v35))
  {

    swift_bridgeObjectRelease_n();
    return v33;
  }

  v36 = swift_slowAlloc();
  *v36 = 134218240;
  v37 = [v33 shelves];
  if (v37)
  {
    v38 = v37;
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v39 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
    }

    *(v36 + 4) = v40;

    *(v36 + 12) = 2048;
    if (v21 >> 62)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v41 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    }

    *(v36 + 14) = v41;

    _os_log_impl(&dword_0, v34, v35, "Built content cabinet (%ld shelves, %ld buttons) for TV or movie objects", v36, 0x16u);

    return v33;
  }

  __break(1u);
  return result;
}

void *specialized static VideoSnippetUtils.makeResultSnippets(for:switchProfileBuilderParams:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.tvOrMovieObject.getter();
  v9 = v8;
  if (*(v8 + 16))
  {
    (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
    v11 = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.relativeUtsSearchURL.getter();
    v12 = v10;
    if (*(v9 + 16) == 1)
    {

      v23 = specialized Apple_Parsec_Siri_V2alpha_TvOrMovieObject.withSnippetObject<A>(_:)(v7, v11, v12);
      swift_bridgeObjectRelease_n();
      if (one-time initialization token for videoSnippet != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.videoSnippet);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "Built detail page for single TV or movie object", v27, 2u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_B9BD0;
      *(v22 + 32) = v23;
LABEL_20:
      (*(v4 + 8))(v7, v3);
      return v22;
    }

    v17 = specialized static VideoSnippetUtils.makeContentCabinet(for:utsURL:switchProfileBuilderParams:)(v9, v11, v10, a2);

    if (v17)
    {
      if (one-time initialization token for videoSnippet != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.videoSnippet);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "Built content cabinet for multiple TV or movie objects", v21, 2u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_B9BD0;
      *(v22 + 32) = v17;
      goto LABEL_20;
    }

    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.videoSnippet);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Could not construct content cabinet for TV or movie objects", v32, 2u);
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {

    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.videoSnippet);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "No TV or movie objects in component; cannot build result snippets", v16, 2u);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *specialized static VideoSnippetUtils.makeVideoSnippets(for:switchProfileBuilderParams:)(uint64_t a1, void *a2)
{
  v73 = a2;
  v77 = a1;
  v78 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase();
  v76 = *(v78 - 8);
  v2 = *(v76 + 64);
  v3 = __chkstk_darwin(v78);
  v75 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v72 = &v67[-v5];
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v9 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v67[-v12];
  v14 = type metadata accessor for DeviceClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v22 = &v67[-v21];
  __chkstk_darwin(v20);
  v24 = &v67[-v23];
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.deviceClass.getter();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of Any?(v13, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.videoSnippet);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Not generating video snippets for video object component; cannot determine device class", v28, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  (*(v15 + 32))(v24, v13, v14);
  (*(v15 + 104))(v22, enum case for DeviceClass.appleTV(_:), v14);
  v29 = static DeviceClass.== infix(_:_:)();
  v70 = *(v15 + 8);
  v71 = v15 + 8;
  v70(v22, v14);
  v30 = v24;
  if ((v29 & 1) == 0)
  {
    if (one-time initialization token for videoSnippet != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.videoSnippet);
    v42 = *(v15 + 16);
    v42(v19, v30, v14);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v43, v44))
    {

      v63 = v19;
      v52 = v70;
      v70(v63, v14);
      goto LABEL_23;
    }

    v45 = v30;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v79 = v47;
    *v46 = 136315138;
    v42(v22, v19, v14);
    v48 = String.init<A>(describing:)();
    v50 = v49;
    v51 = v19;
    v52 = v70;
    v70(v51, v14);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v79);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_0, v43, v44, "Not generating video snippets for video object component on device class: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);

    v30 = v45;
    goto LABEL_16;
  }

  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.videoSnippet);
  v32 = v74;
  v33 = v77;
  (*(v74 + 16))(v9, v77, v6);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v79 = v69;
    *v36 = 136315138;
    v68 = v35;
    Apple_Parsec_Siri_V2alpha_VideoObjectComponent.videoUseCase.getter();
    v37 = String.init<A>(describing:)();
    v39 = v38;
    (*(v32 + 8))(v9, v6);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v79);
    v30 = v24;

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v34, v68, "Building video snippets for use case: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);

    v33 = v77;
  }

  else
  {

    (*(v32 + 8))(v9, v6);
  }

  v54 = v75;
  Apple_Parsec_Siri_V2alpha_VideoObjectComponent.videoUseCase.getter();
  v55 = v76;
  v56 = v78;
  v57 = (*(v76 + 88))(v54, v78);
  v52 = v70;
  if (v57 == enum case for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.disambiguate(_:))
  {
    v58 = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.tvOrMovieObject.getter();
    specialized static VideoSnippetUtils.makeDisambiguationList(for:)(v58);
    v60 = v59;

    if (v60)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_B9BD0;
      *(v61 + 32) = v60;
      v52(v30, v14);
      return v61;
    }

    v43 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v43, v65))
    {
      goto LABEL_17;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_0, v43, v65, "Could not build disambiguation list for TV or movie objects", v66, 2u);
LABEL_16:

LABEL_17:

LABEL_23:
    v52(v30, v14);
    return _swiftEmptyArrayStorage;
  }

  v64 = specialized static VideoSnippetUtils.makeResultSnippets(for:switchProfileBuilderParams:)(v33, v73);
  v52(v30, v14);
  (*(v55 + 8))(v54, v56);
  return v64;
}
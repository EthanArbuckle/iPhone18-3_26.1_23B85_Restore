Swift::Int sub_A15780()
{
  v1 = *v0;
  sub_ABB5C0();
  JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A157E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore13JSApplicationC29SubscriptionFlowConfigurationV9PlacementO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_A15810@<X0>(unint64_t *a1@<X8>)
{
  result = JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__n128 JSApplication.SubscriptionFlowConfiguration.init(placement:source:options:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  *(a4 + 48) = a3;
  return result;
}

uint64_t JSApplication.SubscriptionFlowConfiguration.init(placement:model:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = a3;
  return result;
}

uint64_t JSApplication.initiateSubscribeFlow(configuration:completion:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext];
  if (*&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext])
  {
    return a2(0);
  }

  v11 = ObjectType;
  v44 = a2;
  v12 = sub_97420(&_swiftEmptyArrayStorage);
  v13 = JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*a1);
  v47 = &type metadata for String;
  *&v46 = v13;
  *(&v46 + 1) = v14;
  sub_9ACFC(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v45, 0x6E656D6563616C70, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  v16 = v12;
  v17 = *(a1 + 40);
  if (v17 == 255)
  {
    goto LABEL_17;
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 32);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_17;
    }

    v43 = *(a1 + 24);
    v20 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v21 = MPModelObject.bestIdentifier(for:)(*v20, 1u);
    v23 = v22;
    if (!v22)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v43 = *(a1 + 24);

  v21 = v18;
  if (v23)
  {
LABEL_9:
    v47 = &type metadata for String;
    *&v46 = v21;
    *(&v46 + 1) = v23;
    sub_9ACFC(&v46, v45);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v45, 25705, 0xE200000000000000, v24);
  }

LABEL_10:
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_17;
    }

    v25 = MPModelObject.mediaKitPlayableKind.getter();
    if (v25 == 10)
    {
      goto LABEL_17;
    }

    v26 = MPModelObject.MediaKitPlayableKind.rawValue.getter(v25);
    v19 = v27;
    goto LABEL_16;
  }

  if (v19)
  {

    v26 = v43;
LABEL_16:
    v47 = &type metadata for String;
    *&v46 = v26;
    *(&v46 + 1) = v19;
    sub_9ACFC(&v46, v45);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v45, 0x74694B616964656DLL, 0xEC000000646E694BLL, v28);
  }

LABEL_17:
  v29 = *(a1 + 48);
  if (v29)
  {
    v30 = sub_A972C8(v29);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    *&v46 = v30;
    sub_9ACFC(&v46, v45);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v45, 0xD000000000000014, 0x8000000000B81620, v31);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_AF85F0;
  *(v32 + 56) = v11;
  *(v32 + 32) = v4;
  *(v32 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v32 + 64) = v16;
  v33 = *v9;
  v34 = v9[1];
  v35 = v9[2];
  v36 = v9[3];
  v37 = v9[4];
  *v9 = v44;
  v9[1] = a3;
  *(v9 + 1) = xmmword_AFAA90;
  v9[4] = 0;
  v38 = v4;

  sub_9EB4FC(v33, v34, v35, v36, v37);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v39 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0);
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  *(v40 + 24) = &_swiftEmptyArrayStorage;
  *(v40 + 32) = 0xD00000000000001CLL;
  *(v40 + 40) = 0x8000000000B81600;
  *(v40 + 48) = v38;
  *(v40 + 56) = v39;
  *(v40 + 64) = 0;
  v41 = v38;
  v42 = v39;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v40);
}

uint64_t JSApplication.updatePrivacyOnboardingPresentationStatus(isPresented:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  v3[v7] = a1;
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext];
  v9 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext];
  v10 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 8];
  v11 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 16];
  v12 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 24];
  v13 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 32];
  *v8 = a2;
  *(v8 + 1) = a3;
  *(v8 + 1) = xmmword_AFAA90;
  *(v8 + 4) = 0;
  swift_retain_n();
  sub_9EB4FC(v9, v10, v11, v12, v13);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v14 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 56) = ObjectType;
  *(v15 + 32) = v3;
  *(v15 + 88) = &type metadata for Bool;
  *(v15 + 64) = a1 & 1;
  sub_13C80(0, &qword_DE8ED0);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = _swiftEmptyArrayStorage;
  *(v16 + 32) = 0xD000000000000034;
  *(v16 + 40) = 0x8000000000B81640;
  *(v16 + 48) = v3;
  *(v16 + 56) = v14;
  *(v16 + 64) = 0;
  v3;
  v17 = v14;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v16);

  if ((a1 & 1) == 0)
  {
    sub_A15EBC();
  }
}

uint64_t sub_A15EBC()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyDisclaimerDismissalCompletionHandlers;
    swift_beginAccess();
    v4 = *(v0 + v3);
    *(v0 + v3) = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {
        v7 = *(v6 - 8);

        v7(v8);

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t JSApplication.updatePrivacyTermsAccepted(completionHandler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext];
  v7 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext];
  v8 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 8];
  v9 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 16];
  v10 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 24];
  v11 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 32];
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 1) = xmmword_AFAA90;
  *(v6 + 4) = 0;
  swift_retain_n();
  sub_9EB4FC(v7, v8, v9, v10, v11);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 56) = ObjectType;
  *(v13 + 32) = v2;
  sub_13C80(0, &qword_DE8ED0);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0xD00000000000001CLL;
  *(v14 + 40) = 0x8000000000B81680;
  *(v14 + 48) = v2;
  *(v14 + 56) = v12;
  *(v14 + 64) = 0;
  v15 = v2;
  v16 = v12;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v14);
}

uint64_t JSApplication.performModalMessagePresentation(message:completionHandler:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext];
  if (*&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext])
  {
    return a2(0);
  }

  v10 = ObjectType;
  *v8 = a2;
  *(v8 + 1) = a3;
  *(v8 + 1) = xmmword_AFAA90;
  *(v8 + 4) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x6567617373656DLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = type metadata accessor for JSApplicationMessage();
  *(inited + 48) = a1;

  v12 = a1;
  v13 = sub_97420(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DF06F0);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v14 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 56) = v10;
  *(v15 + 32) = v3;
  *(v15 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v15 + 64) = v13;
  sub_13C80(0, &qword_DE8ED0);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = _swiftEmptyArrayStorage;
  *(v16 + 32) = 0xD00000000000002BLL;
  *(v16 + 40) = 0x8000000000B816A0;
  *(v16 + 48) = v3;
  *(v16 + 56) = v14;
  *(v16 + 64) = 0;
  v17 = v3;
  v18 = v14;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v16);
}

Swift::Void __swiftcall JSApplication.willContinueUserActivity(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  strcpy((inited + 32), "activityType");
  *(inited + 72) = &type metadata for String;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;

  v5 = sub_97420(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DF06F0);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v6 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF4EC0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v7 + 32) = v5;
  sub_13C80(0, &qword_DE8ED0);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = _swiftEmptyArrayStorage;
  *(v8 + 32) = 0xD00000000000001ALL;
  *(v8 + 40) = 0x8000000000B816D0;
  *(v8 + 48) = v1;
  *(v8 + 56) = v6;
  *(v8 + 64) = 0;
  v9 = v1;
  v10 = v6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v8);
}

uint64_t JSApplication.isPrivacyDisclaimerPresented.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSApplication.isPrivacyDisclaimerPresented.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t JSApplication.pendingPrivacyDisclaimerDismissalCompletionHandlers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyDisclaimerDismissalCompletionHandlers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t JSApplication.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_identifier);

  return v1;
}

uint64_t JSApplication.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_version);

  return v1;
}

uint64_t sub_A167DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier];
  result = swift_beginAccess();
  v8 = v6[1];
  if (v8)
  {
    if (a2)
    {
      result = *v6;
      if (*v6 == a1 && v8 == a2)
      {
        return result;
      }

      result = sub_ABB3C0();
      if (result)
      {
        return result;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF85F0;
  *(v11 + 56) = ObjectType;
  *(v11 + 32) = v2;
  v12 = v6[1];
  if (v12)
  {
    v13 = *v6;
    *(&v22 + 1) = &type metadata for String;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    sub_9ACFC(&v21, (v11 + 64));
    v14 = v2;
  }

  else
  {
    v22 = 0u;
    v15 = objc_allocWithZone(NSNull);
    v16 = v2;
    v17 = [v15 init];
    *(v11 + 88) = sub_13C80(0, &qword_E27CD0);
    *(v11 + 64) = v17;
    if (*(&v22 + 1))
    {
      sub_12E1C(&v21, &unk_DE8E40);
    }
  }

  sub_13C80(0, &qword_DE8ED0);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = _swiftEmptyArrayStorage;
  *(v18 + 32) = 0xD000000000000011;
  *(v18 + 40) = 0x8000000000B81B10;
  *(v18 + 48) = v2;
  *(v18 + 56) = v10;
  *(v18 + 64) = 0;

  v19 = v10;
  v20 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v18);
}

uint64_t JSApplication.selectedTabIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSApplication.selectedTabIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_A167DC(v6, v7);
}

void (*JSApplication.selectedTabIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_A16BA0;
}

void sub_A16BA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_A167DC(v9, v8);
  }

  else
  {
    sub_A167DC(v9, v8);
  }

  free(v2);
}

void sub_A16C34(unsigned __int8 *a1, char a2)
{
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v8 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint;
    v11 = *(v8 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint);
    *(v8 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) = 1;
    sub_A16DCC(a1);
    *(v8 + v10) = v11;
    if (a2)
    {
      sub_9A78D8();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A16DCC(unsigned __int8 *a1)
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  v4 = a1[v3];
  if (v4 == 2)
  {
    v11 = 0u;
    v12 = 0u;
    v5 = [objc_allocWithZone(NSNull) init];
    v14 = sub_13C80(0, &qword_E27CD0);
    *&v13 = v5;
  }

  else
  {
    *(&v12 + 1) = &type metadata for Bool;
    LOBYTE(v11) = v4 & 1;
    sub_9ACFC(&v11, &v13);
  }

  sub_13C80(0, &qword_DE8ED0);
  sub_15F84(&v13, &v11, &unk_DE8E40);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = v12;
  *(v6 + 24) = v11;
  *(v6 + 40) = v7;
  *(v6 + 56) = 0xD00000000000001DLL;
  *(v6 + 64) = 0x8000000000B819A0;
  *(v6 + 72) = a1;
  *(v6 + 80) = v2;
  *(v6 + 88) = 0;
  v8 = a1;
  v9 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F12C0, v6);

  return sub_12E1C(&v13, &unk_DE8E40);
}

uint64_t JSApplication.applicationMessageWillPresent.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSApplication.applicationMessageWillPresent.setter(int a1)
{
  v2 = v1;
  v4 = a1;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  v6 = v2[v5];
  v2[v5] = a1;
  if (v4 == 2)
  {
    if (v6 == 2)
    {
      return;
    }
  }

  else if (v6 != 2 && ((v6 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v7 = sub_9A7534();
  v8 = [objc_opt_self() sharedApplication];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v7 & 1;
  aBlock[4] = sub_A19430;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_61_3;
  v10 = _Block_copy(aBlock);
  v11 = v2;

  [v8 _performBlockAfterCATransactionCommits:v10];
  _Block_release(v10);
}

void (*JSApplication.applicationMessageWillPresent.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_A17238;
}

void sub_A17238(uint64_t a1)
{
  v1 = *a1;
  JSApplication.applicationMessageWillPresent.setter(*(*a1 + 32));

  free(v1);
}

Swift::Void __swiftcall JSApplication.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = _._countAndFlagsBits == 0xD00000000000001ELL && 0x8000000000B816F0 == _._object;
  if (v6 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) == 2)
    {
      sub_808B0(arguments._rawValue + 64, &v57);
      type metadata accessor for JSSegue();
      if (swift_dynamicCast())
      {
        v7 = v55;
      }

      else
      {
        v7 = 0;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_41;
      }

      v8 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext;
      v9 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext);
      if (v9)
      {
        v10 = *(v8 + 24);
        v11 = *(v8 + 32);
        v12 = *(v8 + 16);
        *v8 = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0;
        [v11 invalidate];
        if (v55 == v12 && v10 == v56)
        {
        }

        else
        {
          v14 = sub_ABB3C0();

          if ((v14 & 1) == 0)
          {
            v15 = 0;
LABEL_39:
            v9(v15);

            goto LABEL_40;
          }
        }

        v15 = v7;
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    return;
  }

  if ((countAndFlagsBits != 0xD000000000000017 || 0x8000000000B81710 != object) && (sub_ABB3C0() & 1) == 0)
  {
    if (countAndFlagsBits == 0xD000000000000024 && 0x8000000000B81730 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (*(arguments._rawValue + 2))
      {
        sub_808B0(arguments._rawValue + 32, &v57);
        type metadata accessor for JSSegue();
        if (swift_dynamicCast())
        {
          v24 = v55;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext;
      v26 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext);
      if (v26)
      {
        v27 = *(v25 + 32);
        *v25 = 0u;
        *(v25 + 16) = 0u;
        *(v25 + 32) = 0;
        v26(v24);

        return;
      }

      goto LABEL_91;
    }

    if (countAndFlagsBits == 0xD000000000000024 && 0x8000000000B81760 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      type metadata accessor for JSSegue();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v24 = v55;
      v28 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext;
LABEL_53:
      v29 = v2 + v28;
      v30 = *v29;
      if (*v29)
      {
        v31 = *(v29 + 32);
        *v29 = 0u;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 0;
        v32 = v24;
        v30(v24);

        return;
      }

      goto LABEL_91;
    }

    if (countAndFlagsBits == 0xD00000000000003CLL && 0x8000000000B81790 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      type metadata accessor for JSSegue();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v24 = v55;
      v28 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext;
      goto LABEL_53;
    }

    if (countAndFlagsBits == 0xD000000000000033 && 0x8000000000B817D0 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      Array.subscript.getter(&type metadata for Any + 8, &v57);
      if (*(&v58 + 1))
      {
        type metadata accessor for JSSegue();
        if (swift_dynamicCast())
        {
          v24 = v55;
          v33 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext;
          v34 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext);
          if (v34)
          {
            v35 = *(v33 + 32);
            *(v33 + 32) = 0;
            *v33 = 0u;
            *(v33 + 16) = 0u;
            v36 = v55;
            v34();

            v37 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v38 = *(v37 + 8);
              ObjectType = swift_getObjectType();
              (*(v38 + 8))(v55, v56, ObjectType, v38);

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return;
          }

LABEL_91:

          return;
        }

LABEL_117:

        return;
      }

LABEL_88:

      sub_12E1C(&v57, &unk_DE8E40);
      return;
    }

    if (countAndFlagsBits == 0xD000000000000027 && 0x8000000000B7D4F0 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v40 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_117;
      }

      v41 = *(v40 + 8);
      v42 = swift_getObjectType();
      (*(v41 + 16))(v55, v56, v42, v41);
    }

    else
    {
      if (countAndFlagsBits == 0xD00000000000002ALL && 0x8000000000B7D520 == object || (sub_ABB3C0() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        Array.subscript.getter(&type metadata for Any + 8, &v57);
        if (*(&v58 + 1))
        {
          if (swift_dynamicCast())
          {
            v43 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v44 = *(v43 + 8);
              v45 = swift_getObjectType();
              (*(v44 + 24))(v55, v56, v55, v56, v45, v44);

              swift_unknownObjectRelease();
              return;
            }
          }

          goto LABEL_117;
        }

        goto LABEL_88;
      }

      if (countAndFlagsBits == 0xD00000000000002ELL && 0x8000000000B81810 == object || (sub_ABB3C0() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v46 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v47 = *(v46 + 8);
        v48 = swift_getObjectType();
        (*(v47 + 32))(v55, v56, v48, v47);
      }

      else if (countAndFlagsBits == 0xD000000000000020 && 0x8000000000B81840 == object || (sub_ABB3C0() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, &v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v49 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v50 = *(v49 + 8);
        v51 = swift_getObjectType();
        (*(v50 + 40))(v55, v51, v50);
      }

      else
      {
        if ((countAndFlagsBits != 0xD000000000000028 || 0x8000000000B81870 != object) && (sub_ABB3C0() & 1) == 0)
        {
          return;
        }

        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v52 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v53 = *(v52 + 8);
        v54 = swift_getObjectType();
        (*(v53 + 8))(v55, v56, v54, v53);
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (*(arguments._rawValue + 2) == 2)
  {
    sub_808B0(arguments._rawValue + 64, &v57);
    type metadata accessor for JSSegue();
    if (swift_dynamicCast())
    {
      v7 = v55;
    }

    else
    {
      v7 = 0;
    }

    sub_808B0(arguments._rawValue + 32, &v57);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v16 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingOpenURLContexts;
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (*(v17 + 16))
    {
      v18 = sub_2EBF88(v55, v56);
      if (v19)
      {
        v20 = *(v17 + 56) + 40 * v18;
        v21 = *v20;
        v22 = *(v20 + 32);
        swift_endAccess();
        v57 = 0u;
        v58 = 0u;
        v59 = 0;
        swift_beginAccess();
        v23 = v22;

        sub_9A0854(&v57, v55, v56);
        swift_endAccess();
        v21(v7);

LABEL_40:

LABEL_41:

        return;
      }
    }

    swift_endAccess();
LABEL_43:
  }
}

uint64_t JSApplication.SharedWithYouMetadata.score.setter(uint64_t a1)
{
  result = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_A17FE4()
{
  v1 = v0;
  v2 = sub_AB35C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(v1, v7, &unk_E01230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_E01230);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = [objc_allocWithZone(NSDateFormatter) init];
    sub_AB3480();
    isa = sub_AB34E0().super.isa;
    (*(v3 + 8))(v5, v2);
    [v13 setLocale:isa];

    v15 = sub_AB9260();
    [v13 setDateFormat:v15];

    v16 = sub_AB3370().super.isa;
    v17 = [v13 stringFromDate:v16];

    v18 = sub_AB92A0();
    (*(v9 + 8))(v11, v8);
    return v18;
  }
}

unint64_t sub_A18304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  v2 = sub_A17FE4();
  if (v3)
  {
    *(&v11 + 1) = &type metadata for String;
    *&v10 = v2;
    *(&v10 + 1) = v3;
    sub_9ACFC(&v10, (inited + 48));
  }

  else
  {
    v11 = 0u;
    v4 = [objc_allocWithZone(NSNull) init];
    *(inited + 72) = sub_13C80(0, &qword_E27CD0);
    *(inited + 48) = v4;
    if (*(&v11 + 1))
    {
      sub_12E1C(&v10, &unk_DE8E40);
    }
  }

  *(inited + 80) = 0x65726F6373;
  *(inited + 88) = 0xE500000000000000;
  v5 = (v0 + *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) + 20));
  if (v5[1])
  {
    v10 = 0u;
    v11 = 0u;
    v6 = [objc_allocWithZone(NSNull) init];
    *(inited + 120) = sub_13C80(0, &qword_E27CD0);
    *(inited + 96) = v6;
    if (*(&v11 + 1))
    {
      sub_12E1C(&v10, &unk_DE8E40);
    }
  }

  else
  {
    v7 = *v5;
    *(&v11 + 1) = &type metadata for Float;
    LODWORD(v10) = v7;
    sub_9ACFC(&v10, (inited + 96));
  }

  v8 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_A184FC(uint64_t a1)
{
  v3 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v32 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00);
  __chkstk_darwin();
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26AF0) - 8;
  __chkstk_darwin();
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  v14 = *(v10 + 56);
  v35 = v1;
  sub_15F84(v1 + v13, v12, &qword_E26A00);
  sub_15F84(a1, &v12[v14], &qword_E26A00);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_12E1C(v12, &qword_E26A00);
    }
  }

  else
  {
    sub_15F84(v12, v9, &qword_E26A00);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v30 = v33;
      sub_9B8D30(&v12[v14], v33);
      v31 = _s11MusicJSCore13JSApplicationC21SharedWithYouMetadataV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v30);
      sub_9B8D94(v30);
      sub_9B8D94(v9);
      result = sub_12E1C(v12, &qword_E26A00);
      v18 = v35;
      v17 = v36;
      if (v31)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_9B8D94(v9);
  }

  sub_12E1C(v12, &qword_E26AF0);
  v18 = v35;
  v17 = v36;
LABEL_7:
  v19 = v34;
  sub_15F84(v18 + v13, v34, &qword_E26A00);
  if (v15(v19, 1, v3) == 1)
  {
    v20 = sub_AB3430();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = v17 + *(v3 + 20);
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v15(v19, 1, v3) != 1)
    {
      sub_12E1C(v19, &qword_E26A00);
    }
  }

  else
  {
    sub_9B8D30(v19, v17);
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v22 = static JSBridge.shared;
  v23 = sub_A18304();
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  v38[0] = v23;
  sub_13C80(0, &qword_DE8ED0);
  sub_15F84(v38, v37, &unk_DE8E40);
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  v25 = v37[1];
  *(v24 + 24) = v37[0];
  *(v24 + 40) = v25;
  *(v24 + 56) = 0xD000000000000015;
  *(v24 + 64) = 0x8000000000B819C0;
  *(v24 + 72) = v18;
  *(v24 + 80) = v22;
  *(v24 + 88) = 0;
  v26 = v18;
  v27 = v22;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v24);

  sub_12E1C(v38, &unk_DE8E40);
  v28 = *&v26[OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer];
  v29 = *(v28 + 16);
  *(v28 + 16) = 1;
  sub_9B0CF0(v29);
  return sub_9B8D94(v17);
}

uint64_t JSApplication.sharedWithYouMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &qword_E26A00);
}

void (*JSApplication.sharedWithYouMetadata.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_15F84(v1 + v8, v7, &qword_E26A00);
  return sub_A18BDC;
}

void sub_A18BDC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_15F84(*(*a1 + 96), v6, &qword_E26A00);
    sub_15F84(v7 + v4, v5, &qword_E26A00);
    swift_beginAccess();
    sub_A19254(v6, v7 + v4);
    swift_endAccess();
    sub_A184FC(v5);
    sub_12E1C(v5, &qword_E26A00);
  }

  else
  {
    sub_15F84(v7 + v4, v6, &qword_E26A00);
    swift_beginAccess();
    sub_A19254(v3, v7 + v4);
    swift_endAccess();
    sub_A184FC(v6);
  }

  sub_12E1C(v6, &qword_E26A00);
  sub_12E1C(v3, &qword_E26A00);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

BOOL _s11MusicJSCore13JSApplicationC21SharedWithYouMetadataV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v9 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE81D8);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v13 = *(v12 + 56);
  sub_15F84(a1, &v23 - v10, &unk_E01230);
  sub_15F84(a2, &v11[v13], &unk_E01230);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) == 1)
  {
    if (v14(&v11[v13], 1, v4) == 1)
    {
      sub_12E1C(v11, &unk_E01230);
      goto LABEL_9;
    }

LABEL_6:
    sub_12E1C(v11, &qword_DE81D8);
    return 0;
  }

  sub_15F84(v11, v9, &unk_E01230);
  if (v14(&v11[v13], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v11[v13], v4);
  sub_A19A2C(&qword_DE81E0, &type metadata accessor for Date);
  v16 = sub_AB91C0();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v9, v4);
  sub_12E1C(v11, &unk_E01230);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v18 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if ((v20 & 1) == 0)
  {
    if (*v19 != *v21)
    {
      v22 = 1;
    }

    return (v22 & 1) == 0;
  }

  return (v22 & 1) != 0;
}

uint64_t sub_A19118()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_A19158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_A132A8(a1, v4, v5, v6);
}

uint64_t sub_A1920C()
{

  return swift_deallocObject();
}

uint64_t sub_A19254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_A192C4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_265(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A19328()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A19360()
{

  return swift_deallocObject();
}

uint64_t _s11MusicJSCore13JSApplicationC29SubscriptionFlowConfigurationV9PlacementO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F860;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_A193F8()
{

  return swift_deallocObject();
}

unint64_t sub_A19440()
{
  result = qword_E26A08;
  if (!qword_E26A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26A08);
  }

  return result;
}

unint64_t sub_A19498()
{
  result = qword_E26A10;
  if (!qword_E26A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26A10);
  }

  return result;
}

void sub_A19514()
{
  sub_A198F8(319, &qword_E26A50, type metadata accessor for JSApplication.SharedWithYouMetadata);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_11MusicJSCore13JSApplicationC29SubscriptionFlowConfigurationV6SourceOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_A19650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_A196AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_A19750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_A197DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_A19858()
{
  sub_A198F8(319, &qword_E247E0, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_A1994C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A198F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_A1994C()
{
  if (!qword_E26AC0)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E26AC0);
    }
  }
}

uint64_t sub_A199A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v5 = a5;
  }

  return result;
}

uint64_t sub_A199EC()
{

  return swift_deallocObject();
}

uint64_t sub_A19A2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A19A74()
{
  v1 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_A19B88()
{
  v1 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_A13A50(v2, v3);
}

uint64_t sub_A19C50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F74747562;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x6E6F74747562;
    }

    if (v3)
    {
      v5 = 0x8000000000B6B920;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE500000000000000;
    v4 = 0x6B63617274;
  }

  else if (a1 == 3)
  {
    v4 = 0x7475426B63617274;
    v5 = 0xEB000000006E6F74;
  }

  else
  {
    v5 = 0x8000000000B6B900;
    v4 = 0xD000000000000015;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v8 = 0xD000000000000010;
    v7 = 0x8000000000B6B920;
    v9 = a2 == 0;
LABEL_17:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (a2 != 2)
  {
    v2 = 0x7475426B63617274;
    v6 = 0xEB000000006E6F74;
    v7 = 0x8000000000B6B900;
    v8 = 0xD000000000000015;
    v9 = a2 == 3;
    goto LABEL_17;
  }

  v11 = 0xE500000000000000;
  if (v4 != 0x6B63617274)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v5 != v11)
  {
LABEL_27:
    v12 = sub_ABB3C0();
    goto LABEL_28;
  }

  v12 = 1;
LABEL_28:

  return v12 & 1;
}

uint64_t sub_A19DF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 2036427888;
    }

    else
    {
      v4 = 0x7463656C6573;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x657461676976616ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x7373696D736964;
  }

  else
  {
    v4 = 0x726F62616C6C6F63;
    v3 = 0xEB00000000657461;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 2036427888;
    }

    else
    {
      v9 = 0x7463656C6573;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x7373696D736964;
    if (a2 != 3)
    {
      v6 = 0x726F62616C6C6F63;
      v5 = 0xEB00000000657461;
    }

    if (a2 == 2)
    {
      v7 = 0x657461676976616ELL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_ABB3C0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_A19F7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "eAll";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "uniqueIdentifierChanged";
      v4 = 0xD000000000000018;
    }

    else
    {
      v5 = "userSocialProfileChanged";
      v4 = 0xD00000000000001DLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = "applicationLaunch";
    }

    else
    {
      v5 = "eAll";
    }
  }

  if (a2 > 1u)
  {
    v2 = "uniqueIdentifierChanged";
    v6 = "userSocialProfileChanged";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD00000000000001DLL;
    }
  }

  else
  {
    v6 = "applicationLaunch";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD000000000000011;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_ABB3C0();
  }

  return v10 & 1;
}

uint64_t sub_A1A0A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  v6 = 0xE400000000000000;
  v7 = 1952867692;
  if (a1 != 4)
  {
    v7 = 0x7468676972;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E696C69617274;
  if (a1 != 1)
  {
    v9 = 0x656966697473756ALL;
    v8 = 0xE900000000000064;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7265746E6563)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952867692)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7468676972)
      {
LABEL_34:
        v13 = sub_ABB3C0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E696C69617274)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x656966697473756ALL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x676E696461656CLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_A1A270(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v3)
    {
      v6 = "fullCatalogPlayback";
    }

    else
    {
      v6 = "needsManualVerification";
    }
  }

  else if (a1 == 2)
  {
    v6 = "voiceActivatedCatalogPlayback";
    v5 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = "cloudLibraryEligible";
    }

    else
    {
      v4 = "catalogLyricsViewing";
    }

    v6 = v4 - 32;
    v5 = 0xD000000000000014;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD000000000000013;
    }

    if (a2)
    {
      v7 = "fullCatalogPlayback";
    }

    else
    {
      v7 = "needsManualVerification";
    }
  }

  else if (a2 == 2)
  {
    v7 = "voiceActivatedCatalogPlayback";
    v2 = 0xD000000000000012;
  }

  else
  {
    v7 = "anyCatalogPlayback";
    if (a2 != 3)
    {
      v7 = "cloudLibraryEligible";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

uint64_t sub_A1A3CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6373627553746F6ELL;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2)
    {
      v4 = 0xED00006465626972;
    }

    else
    {
      v4 = 0x8000000000B6C1F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6564696C67;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6373627553746F6ELL;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xED00006465626972;
    }

    else
    {
      v5 = 0x8000000000B6C1F0;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000006465;
    if (v3 != 0x6269726373627573)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x6564696C67)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v7 = sub_ABB3C0();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_A1A578(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x64656B6E696C6E75;
    }

    if (v2)
    {
      v4 = 0x8000000000B7CAE0;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656C626967696C65;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6967696C45746F6ELL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000656C62;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x64656B6E696C6E75;
    }

    if (a2)
    {
      v5 = 0x8000000000B7CAE0;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x656C626967696C65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000656C62;
    if (v3 != 0x6967696C45746F6ELL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v7 = sub_ABB3C0();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_A1A72C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1735290732;
    }

    else
    {
      v4 = 1819047270;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x74726F6873;
    }

    else
    {
      v8 = 1701736302;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1735290732;
    if (a2 != 3)
    {
      v5 = 1819047270;
    }

    if (a2 == 2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_ABB3C0();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_A1A87C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6574736575716572;
  v5 = 0xE900000000000064;
  v6 = 0x6E69776F6C6C6F66;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x64656B636F6C62;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6F6C6C6F46746F6ELL;
  v9 = 0xED0000656C626177;
  if (a1 != 1)
  {
    v8 = 0x6F6C6C6F46746F6ELL;
    v9 = 0xEC000000676E6977;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1718379891;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x6574736575716572)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000067;
      if (v10 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64656B636F6C62)
      {
LABEL_34:
        v13 = sub_ABB3C0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xED0000656C626177;
      if (v10 != 0x6F6C6C6F46746F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC000000676E6977;
      if (v10 != 0x6F6C6C6F46746F6ELL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1718379891)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_A1AA84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006261;
  v3 = 0x547972617262696CLL;
  v4 = a1;
  v5 = 0x6154686372616573;
  v6 = 0xE900000000000062;
  if (a1 != 5)
  {
    v5 = 0x6979616C50776F6ELL;
    v6 = 0xEA0000000000676ELL;
  }

  v7 = 0x61546573776F7262;
  v8 = 0xE900000000000062;
  if (a1 != 3)
  {
    v7 = 0x6261546F69646172;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6154756F59726F66;
  v10 = 0xE900000000000062;
  if (a1 != 1)
  {
    v9 = 0x6F4E6E657473696CLL;
    v10 = 0xEC00000062615477;
  }

  if (!a1)
  {
    v9 = 0x547972617262696CLL;
    v10 = 0xEA00000000006261;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v2 = 0xEC00000062615477;
        if (v11 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v13 = 0x756F59726F66;
      goto LABEL_26;
    }

LABEL_31:
    if (v11 != v3)
    {
LABEL_35:
      v14 = sub_ABB3C0();
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v13 = 0x6573776F7262;
      goto LABEL_26;
    }

    v2 = 0xE800000000000000;
    v3 = 0x6261546F69646172;
    goto LABEL_31;
  }

  if (a2 == 5)
  {
    v13 = 0x686372616573;
LABEL_26:
    v2 = 0xE900000000000062;
    if (v11 != (v13 & 0xFFFFFFFFFFFFLL | 0x6154000000000000))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v2 = 0xEA0000000000676ELL;
  if (v11 != 0x6979616C50776F6ELL)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v12 != v2)
  {
    goto LABEL_35;
  }

  v14 = 1;
LABEL_36:

  return v14 & 1;
}

uint64_t sub_A1ACA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6174654472657375;
    }

    else
    {
      v4 = 0x6552776F6C6C6F66;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000736C69;
    }

    else
    {
      v5 = 0xEE00737473657571;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74754F6E676973;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0x6174654472657375;
  v7 = 0xEB00000000736C69;
  if (a2 != 2)
  {
    v6 = 0x6552776F6C6C6F66;
    v7 = 0xEE00737473657571;
  }

  if (a2)
  {
    v2 = 0x74754F6E676973;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_ABB3C0();
  }

  return v10 & 1;
}

uint64_t sub_A1AE10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696461656CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 0x7468676972;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696C69617274;
    }

    else
    {
      v4 = 0x676E696461656CLL;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x676E696C69617274;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

uint64_t sub_A1AF3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x8000000000B4E1D0;
  if (a1 != 5)
  {
    v4 = 1869768040;
    v5 = 0xE400000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x776F68537674;
  if (a1 != 3)
  {
    v7 = 0x65736163776F6873;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x747369747261;
  if (a1 != 1)
  {
    v9 = 0x6F526D6F74737563;
    v8 = 0xEF6D75626C416D6FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6D75626C61;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x747369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF6D75626C416D6FLL;
        if (v10 != 0x6F526D6F74737563)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6D75626C61)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x8000000000B4E1D0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1869768040)
      {
LABEL_39:
        v13 = sub_ABB3C0();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x776F68537674)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x65736163776F6873)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_A1B15C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006B636142;
  v3 = 0x657461676976616ELL;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6146747369747261;
    v12 = 0xEF64657469726F76;
    if (a1 != 6)
    {
      v11 = 0xD000000000000011;
      v12 = 0x8000000000B7CDE0;
    }

    v13 = 0x8000000000B7CD90;
    v14 = 0xD00000000000001CLL;
    if (a1 != 4)
    {
      v14 = 0xD00000000000001ELL;
      v13 = 0x8000000000B7CDB0;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x8000000000B7CD70;
    v6 = 0xD000000000000014;
    if (a1 == 2)
    {
      v6 = 0x657461676976616ELL;
      v5 = 0xEC0000006B636142;
    }

    v7 = 0x8000000000B7CD40;
    v8 = 0xD000000000000015;
    if (a1)
    {
      v7 = 0x8000000000B48D50;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF64657469726F76;
        if (v9 != 0x6146747369747261)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x8000000000B7CDE0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 4)
    {
      v2 = 0x8000000000B7CD90;
      if (v9 != 0xD00000000000001CLL)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0x8000000000B7CDB0;
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x8000000000B48D50;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x8000000000B7CD40;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 != 2)
    {
      v2 = 0x8000000000B7CD70;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  if (v9 != v3)
  {
LABEL_45:
    v15 = sub_ABB3C0();
    goto LABEL_46;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_A1B3E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4843544150;
  v6 = 0xE300000000000000;
  v7 = 5526864;
  if (a1 != 4)
  {
    v7 = 0x4554454C4544;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 1145128264;
  if (a1 != 1)
  {
    v8 = 1414745936;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 5522759;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x4843544150)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE300000000000000;
      if (v9 != 5526864)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x4554454C4544)
      {
LABEL_34:
        v12 = sub_ABB3C0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE400000000000000;
    if (a2 == 1)
    {
      if (v9 != 1145128264)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 1414745936)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 5522759)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t JSSettingsItem.Kind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x746C7561666564;
  v2 = 0x6174654472657375;
  if (a1 != 2)
  {
    v2 = 0x6552776F6C6C6F66;
  }

  if (a1)
  {
    v1 = 0x74754F6E676973;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_A1B620()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A1B6F8()
{
  sub_AB93F0();
}

Swift::Int sub_A1B7BC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A1B890@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_A1B8C0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xEB00000000736C69;
  v5 = 0x6174654472657375;
  if (*v1 != 2)
  {
    v5 = 0x6552776F6C6C6F66;
    v4 = 0xEE00737473657571;
  }

  if (*v1)
  {
    v3 = 0x74754F6E676973;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

Swift::Void __swiftcall JSSettingsItem.AccessoryItem.updateToggle(isToggled:)(Swift::Bool isToggled)
{
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_AB5520();
    sub_9E2C20(v4);
  }
}

uint64_t static JSSettingsItem.AccessoryItem.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (a2 < 0)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  return sub_ABA790() & 1;
}

uint64_t sub_A1BAA4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  return sub_ABA790() & 1;
}

uint64_t sub_A1BB54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A1BD30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A1BF00@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A1BF80(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSettingsItem.kind.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A1C064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BD8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B10);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A1C218(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_AB5520();
}

uint64_t sub_A1C2A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A1C47C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A1C658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A1C834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A1CA10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_A1CC08@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_A1CC90(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSettingsItem.followRequestsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A1CD88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BD0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B48);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

void sub_A1CF3C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v4 = v19[0] & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) == 0)
  {
    if (v4 == 0xF000000000000007)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 != 0xF000000000000007)
  {
    if (a1 < 0)
    {
      if (v19[0] < 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v19[0] & 0x8000000000000000) == 0)
    {
LABEL_9:
      sub_13C80(0, &qword_DFA720);
      v5 = sub_ABA790();
      sub_404114(v19[0]);
      if (v5)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_3:
    sub_404114(v19[0]);
  }

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v6 = v19[0];
  if ((~v19[0] & 0xF000000000000007) != 0)
  {
    if (*(v2 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS))
    {
      sub_404114(v19[0]);
    }

    else
    {
      if (v19[0] < 0)
      {
        if (qword_E23F48 != -1)
        {
          swift_once();
        }

        v13 = static JSBridge.shared;
        v20 = type metadata accessor for JSSettingsItemText();
        v19[0] &= ~0x8000000000000000;
        sub_13C80(0, &qword_DE8ED0);
        sub_F46A0(v19, &v17);
        v8 = swift_allocObject();
        *(v8 + 16) = 1;
        v14 = v18;
        *(v8 + 24) = v17;
        *(v8 + 40) = v14;
        strcpy((v8 + 56), "accessoryItem");
        *(v8 + 70) = -4864;
        *(v8 + 72) = v2;
        *(v8 + 80) = v13;
        *(v8 + 88) = 0;
        sub_A1F1E8(v6);
        v15 = v2;
        v16 = v13;
        v12 = sub_9F1374;
      }

      else
      {
        if (qword_E23F48 != -1)
        {
          swift_once();
        }

        v7 = static JSBridge.shared;
        v20 = type metadata accessor for JSSettingsItemToggle();
        sub_13C80(0, &qword_DE8ED0);
        sub_F46A0(v19, &v17);
        v8 = swift_allocObject();
        *(v8 + 16) = 1;
        v9 = v18;
        *(v8 + 24) = v17;
        *(v8 + 40) = v9;
        strcpy((v8 + 56), "accessoryItem");
        *(v8 + 70) = -4864;
        *(v8 + 72) = v2;
        *(v8 + 80) = v7;
        *(v8 + 88) = 0;
        sub_A1F1E8(v6);
        v10 = v2;
        v11 = v7;
        v12 = sub_9F12C0;
      }

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(v12, v8);
      sub_404114(v6);

      sub_12E1C(v19, &unk_DE8E40);
    }
  }
}

void sub_A1D2E4(unint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A1F1E8(v2);
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_A1F1E8(v2);
  v4 = v3;
  sub_AB5520();
  sub_A1CF3C(v5);
  sub_404114(v5);
  sub_404114(v2);
}

void JSSettingsItem.accessoryItem.setter(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_A1F1E8(a1);
  sub_AB5520();
  sub_A1CF3C(v4);
  sub_404114(v4);
  sub_404114(a1);
}

void (*JSSettingsItem.accessoryItem.modify(void *a1))(unint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = a1[1];
  return sub_A1D544;
}

void sub_A1D544(unint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  if (a2)
  {
    sub_A1F1E8(v4);
    sub_AB5510();

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v7 = v5;
    sub_A1F1E8(v4);
    sub_AB5520();
    sub_A1CF3C(v6);
    sub_404114(v6);
    sub_404114(v4);
    v4 = *a1;
  }

  else
  {
    sub_AB5510();

    v8 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v9 = v5;
    sub_A1F1E8(v4);
    sub_AB5520();
    sub_A1CF3C(v8);
    sub_404114(v8);
  }

  sub_404114(v4);
}

uint64_t JSSettingsItem.$accessoryItem.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B68);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B60);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSSettingsItem.$accessoryItem.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B68);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B60);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

uint64_t JSSettingsItem.description.getter()
{
  v1 = v0;
  v16._countAndFlagsBits = 60;
  v16._object = 0xE100000000000000;
  sub_AB94A0(v16);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v17._countAndFlagsBits = v4;
  v17._object = v6;
  sub_AB94A0(v17);

  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  sub_AB94A0(v18);
  v14 = v1;
  sub_ABAF70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v15)
  {
    v7._countAndFlagsBits = v1;
    v8 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v8 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v14 = 59;
      v7._object = v15;
      sub_AB94A0(v7);

      v19._countAndFlagsBits = 34;
      v19._object = 0xE100000000000000;
      sub_AB94A0(v19);
      v20._countAndFlagsBits = 0x20656C746974203BLL;
      v20._object = 0xEB0000000022203DLL;
      sub_AB94A0(v20);
    }
  }

  v9 = 0x74754F6E676973;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v14 <= 1u && !v14)
  {
    goto LABEL_17;
  }

  v10 = sub_ABB3C0();

  if ((v10 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v13 > 1u)
    {
      if (v13 == 2)
      {
        v9 = 0x6174654472657375;
        v11 = 0xEB00000000736C69;
      }

      else
      {
        v9 = 0x6552776F6C6C6F66;
        v11 = 0xEE00737473657571;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (!v13)
      {
        v9 = 0x746C7561666564;
      }
    }

    v21._countAndFlagsBits = v9;
    v21._object = v11;
    sub_AB94A0(v21);

    v22._countAndFlagsBits = 34;
    v22._object = 0xE100000000000000;
    sub_AB94A0(v22);
    v23._countAndFlagsBits = 0x3D20646E696B203BLL;
    v23._object = 0xEA00000000002220;
    sub_AB94A0(v23);
LABEL_17:
  }

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  sub_AB94A0(v24);
  return 0;
}

uint64_t JSSettingsItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS;
  v7 = v3[OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS];
  v18[0] = a1;
  v18[1] = a2;
  sub_F46A0(a3, v19);
  if (v19[3])
  {
    sub_F46A0(v19, v17);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0 || a1 == 0x65546C6961746564 && a2 == 0xEA00000000007478 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_40;
      }

      if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(v15, v16);
        goto LABEL_40;
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    type metadata accessor for JSSettingsItemText();
    if (swift_dynamicCast())
    {
      if (a1 == 0x726F737365636361 && a2 == 0xED00006D65744979 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v9 = v15;
        sub_AB5510();

        swift_getKeyPath();
        swift_getKeyPath();
        v3;
        v10 = v9;
        sub_AB5520();
        sub_A1CF3C(v14);
        sub_404114(v14);

        __swift_destroy_boxed_opaque_existential_0(v17);
LABEL_42:
        sub_12E1C(v19, &unk_DE8E40);

        goto LABEL_43;
      }
    }

    type metadata accessor for JSSettingsItemToggle();
    if (swift_dynamicCast())
    {
      if (a1 == 0x726F737365636361 && a2 == 0xED00006D65744979 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v13 = v15;
        sub_AB5510();

        swift_getKeyPath();
        swift_getKeyPath();
        v3;
        v11 = v13;
        sub_AB5520();
        sub_A1CF3C(v14);
        sub_404114(v14);

LABEL_41:
        __swift_destroy_boxed_opaque_existential_0(v17);
        goto LABEL_42;
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD000000000000018 && 0x8000000000B81B70 == a2 || (sub_ABB3C0() & 1) != 0 || a1 == 0x7276656843736168 && a2 == 0xEA00000000006E6FLL || (sub_ABB3C0() & 1) != 0 || a1 == 0x4274696445736168 && a2 == 0xED00006E6F747475 || (sub_ABB3C0() & 1) != 0 || a1 == 0x6174656C65447369 && a2 == 0xEB00000000656C62 || (sub_ABB3C0() & 1) != 0) || swift_dynamicCast() && (a1 == 0xD000000000000013 && 0x8000000000B81B50 == a2 || (sub_ABB3C0() & 1) != 0))
    {
LABEL_40:
      swift_getKeyPath();
      swift_getKeyPath();
      v12 = v3;
      sub_AB5520();
      goto LABEL_41;
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
  }

  result = sub_12E1C(v18, &unk_E27200);
LABEL_43:
  v3[v6] = v7;
  return result;
}

id JSSettingsItem.init(type:)(uint64_t a1)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B60);
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B48);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v37 = &v35 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B10);
  v11 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  v18 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__title;
  v49 = 0;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
  sub_AB54D0();
  v19 = *(v15 + 32);
  v19(v1 + v18, v17, v14);
  v20 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__detailText;
  v49 = 0;
  v50 = 0;
  sub_AB54D0();
  v19(v1 + v20, v17, v14);
  v21 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__kind;
  LOBYTE(v49) = 0;
  sub_AB54D0();
  (*(v11 + 32))(v1 + v21, v13, v36);
  v22 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__artwork;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25950);
  v23 = v37;
  sub_AB54D0();
  (*(v38 + 32))(v1 + v22, v23, v39);
  v24 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__usesApplicationTintColor;
  LOBYTE(v49) = 1;
  sub_AB54D0();
  v25 = v41;
  v26 = *(v40 + 32);
  v26(v1 + v24, v8, v41);
  v27 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasChevron;
  LOBYTE(v49) = 0;
  sub_AB54D0();
  v26(v1 + v27, v8, v25);
  v28 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasEditButton;
  LOBYTE(v49) = 0;
  sub_AB54D0();
  v26(v1 + v28, v8, v25);
  v29 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__isDeletable;
  LOBYTE(v49) = 0;
  sub_AB54D0();
  v26(v1 + v29, v8, v25);
  v30 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__followRequestsCount;
  v49 = 0;
  LOBYTE(v50) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1320);
  v31 = v42;
  sub_AB54D0();
  (*(v43 + 32))(v1 + v30, v31, v44);
  v32 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v49 = 0xF000000000000007;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B50);
  v33 = v45;
  sub_AB54D0();
  (*(v46 + 32))(v1 + v32, v33, v47);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS) = 0;
  return JSObject.init(type:)(v48);
}

uint64_t sub_A1EB90()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__detailText, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__kind;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B10);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__artwork;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__usesApplicationTintColor;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasChevron, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasEditButton, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__isDeletable, v9);
  v11 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__followRequestsCount;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B48);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B60);
  v15 = *(*(v14 - 8) + 8);

  return v15(v0 + v13, v14);
}

id JSSettingsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A1F0E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSSettingsItem();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E690;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_A1F1E8(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t type metadata accessor for JSSettingsItem()
{
  result = qword_E26BA8;
  if (!qword_E26BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_A1F250()
{
  result = qword_E26B78;
  if (!qword_E26B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26B78);
  }

  return result;
}

void sub_A1F480()
{
  sub_3641C(319, &qword_E26098, &unk_DEE6F0);
  if (v0 <= 0x3F)
  {
    sub_299798(319, &qword_E26BB8);
    if (v1 <= 0x3F)
    {
      sub_3641C(319, &qword_E259D8, &qword_E25950);
      if (v2 <= 0x3F)
      {
        sub_299798(319, &qword_DFC638);
        if (v3 <= 0x3F)
        {
          sub_3641C(319, &qword_E26BC0, &unk_DF1320);
          if (v4 <= 0x3F)
          {
            sub_3641C(319, &qword_E26BC8, &qword_E26B50);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_A1F6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_A1F73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t JSBiographyViewModel.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A1F868@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A1F8EC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSBiographyViewModel.items.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

void (*JSBiographyViewModel.items.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6A82CC;
}

uint64_t JSBiographyViewModel.$items.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t JSBiographyViewModel.$items.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSBiographyViewModel.$items.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

uint64_t JSBiographyViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_F46A0(a3, v11);
  if (v11[3])
  {
    sub_F46A0(v11, v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BE0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_AB5520();
        __swift_destroy_boxed_opaque_existential_0(v9);
        sub_12E1C(v11, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v10, &unk_E27200);
}

id JSBiographyViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  v7 = objc_allocWithZone(v1);
  v8 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v12[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BE0);
  sub_AB54D0();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v9 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v10 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v10 = 0;
  *(v10 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSBiographyViewModel.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v11[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BE0);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v9 = 0;
  v9[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A201E0()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSBiographyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBiographyViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSBiographyViewModel()
{
  result = qword_E26C28;
  if (!qword_E26C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A20350@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSBiographyViewModel();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_A20398()
{
  sub_A20428();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A20428()
{
  if (!qword_E26C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E26BE0);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E26C38);
    }
  }
}

uint64_t JSViewModelKind.innerViewModel.getter(unint64_t a1)
{
  v1 = a1;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
      v1 = a1 & 0xFFFFFFFFFFFFFF9;
      break;
    default:
      break;
  }

  v2 = (a1 & 0xFFFFFFFFFFFFFF9);
  return v1;
}

uint64_t JSViewModelKind.hash(into:)(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v2 = 1;
      break;
    case 2uLL:
      v2 = 2;
      break;
    case 3uLL:
      v2 = 3;
      break;
    case 4uLL:
      v2 = 4;
      break;
    case 5uLL:
      v2 = 5;
      break;
    case 6uLL:
      v2 = 6;
      break;
    case 7uLL:
      v2 = 7;
      break;
    case 8uLL:
      v2 = 8;
      break;
    case 9uLL:
      v2 = 9;
      break;
    case 0xAuLL:
      v2 = 10;
      break;
    case 0xBuLL:
      v2 = 11;
      break;
    case 0xCuLL:
      v2 = 12;
      break;
    case 0xDuLL:
      v2 = 13;
      break;
    case 0xEuLL:
      v2 = 14;
      break;
    case 0xFuLL:
      v2 = 15;
      break;
    case 0x10uLL:
      v2 = 16;
      break;
    case 0x11uLL:
      v2 = 17;
      break;
    case 0x12uLL:
      v2 = 18;
      break;
    case 0x13uLL:
      v2 = 19;
      break;
    case 0x14uLL:
      v2 = 20;
      break;
    case 0x15uLL:
      v2 = 21;
      break;
    case 0x16uLL:
      v2 = 22;
      break;
    case 0x17uLL:
      v2 = 23;
      break;
    case 0x18uLL:
      v2 = 24;
      break;
    case 0x19uLL:
      v2 = 25;
      break;
    case 0x1AuLL:
      v2 = 26;
      break;
    case 0x1BuLL:
      v2 = 27;
      break;
    case 0x1CuLL:
      v2 = 28;
      break;
    case 0x1DuLL:
      v2 = 29;
      break;
    case 0x1EuLL:
      v2 = 30;
      break;
    case 0x1FuLL:
      v2 = 31;
      break;
    case 0x20uLL:
      v2 = 32;
      break;
    case 0x21uLL:
      v2 = 33;
      break;
    case 0x22uLL:
      v2 = 34;
      break;
    case 0x23uLL:
      v2 = 35;
      break;
    case 0x24uLL:
      v2 = 36;
      break;
    case 0x25uLL:
      v2 = 37;
      break;
    case 0x26uLL:
      v2 = 38;
      break;
    case 0x27uLL:
      v2 = 39;
      break;
    case 0x28uLL:
      v2 = 40;
      break;
    case 0x29uLL:
      v2 = 41;
      break;
    case 0x2AuLL:
      v2 = 42;
      break;
    case 0x2BuLL:
      v2 = 43;
      break;
    case 0x2CuLL:
      v2 = 44;
      break;
    default:
      break;
  }

  sub_ABB5D0(v2);
  return sub_ABA7A0();
}

Swift::Int JSViewModelKind.hashValue.getter(unint64_t a1)
{
  sub_ABB5C0();
  JSViewModelKind.hash(into:)(v3, a1);
  return sub_ABB610();
}

Swift::Int sub_A209C4()
{
  v1 = *v0;
  sub_ABB5C0();
  JSViewModelKind.hash(into:)(v3, v1);
  return sub_ABB610();
}

Swift::Int sub_A20A14()
{
  v1 = *v0;
  sub_ABB5C0();
  JSViewModelKind.hash(into:)(v3, v1);
  return sub_ABB610();
}

uint64_t _s11MusicJSCore15JSViewModelKindO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      if (v2 != 1)
      {
        return 0;
      }

      type metadata accessor for JSShelf();
      return sub_ABA790() & 1;
    case 2uLL:
      if (v2 != 2)
      {
        return 0;
      }

      type metadata accessor for JSBrick();
      return sub_ABA790() & 1;
    case 3uLL:
      if (v2 != 3)
      {
        return 0;
      }

      type metadata accessor for JSFlowcase();
      return sub_ABA790() & 1;
    case 4uLL:
      if (v2 != 4)
      {
        return 0;
      }

      type metadata accessor for JSGrid();
      return sub_ABA790() & 1;
    case 5uLL:
      if (v2 != 5)
      {
        return 0;
      }

      type metadata accessor for JSLiveRadioCase();
      return sub_ABA790() & 1;
    case 6uLL:
      if (v2 != 6)
      {
        return 0;
      }

      type metadata accessor for JSVerticalStack();
      return sub_ABA790() & 1;
    case 7uLL:
      if (v2 != 7)
      {
        return 0;
      }

      type metadata accessor for JSMenu();
      return sub_ABA790() & 1;
    case 8uLL:
      if (v2 != 8)
      {
        return 0;
      }

      type metadata accessor for JSSettingsViewModel();
      return sub_ABA790() & 1;
    case 9uLL:
      if (v2 != 9)
      {
        return 0;
      }

      type metadata accessor for JSMessageViewModel();
      return sub_ABA790() & 1;
    case 0xAuLL:
      if (v2 != 10)
      {
        return 0;
      }

      type metadata accessor for JSOnboardingViewModel();
      return sub_ABA790() & 1;
    case 0xBuLL:
      if (v2 != 11)
      {
        return 0;
      }

      type metadata accessor for JSStaticImageViewModel();
      return sub_ABA790() & 1;
    case 0xCuLL:
      if (v2 != 12)
      {
        return 0;
      }

      type metadata accessor for JSParagraphViewModel();
      return sub_ABA790() & 1;
    case 0xDuLL:
      if (v2 != 13)
      {
        return 0;
      }

      type metadata accessor for JSMultiChoiceViewModel();
      return sub_ABA790() & 1;
    case 0xEuLL:
      if (v2 != 14)
      {
        return 0;
      }

      type metadata accessor for JSToggleSelectorViewModel();
      return sub_ABA790() & 1;
    case 0xFuLL:
      if (v2 != 15)
      {
        return 0;
      }

      type metadata accessor for JSItemizedTextListViewModel();
      return sub_ABA790() & 1;
    case 0x10uLL:
      if (v2 != 16)
      {
        return 0;
      }

      type metadata accessor for JSGroupedTextListViewModel();
      return sub_ABA790() & 1;
    case 0x11uLL:
      if (v2 != 17)
      {
        return 0;
      }

      type metadata accessor for JSGroupedItemizedTextListViewModel();
      return sub_ABA790() & 1;
    case 0x12uLL:
      if (v2 != 18)
      {
        return 0;
      }

      type metadata accessor for JSBadgingViewModel();
      return sub_ABA790() & 1;
    case 0x13uLL:
      if (v2 != 19)
      {
        return 0;
      }

      type metadata accessor for JSMusicVideoViewModel();
      return sub_ABA790() & 1;
    case 0x14uLL:
      if (v2 != 20)
      {
        return 0;
      }

      type metadata accessor for JSTVShowEpisodeDetail();
      return sub_ABA790() & 1;
    case 0x15uLL:
      if (v2 != 21)
      {
        return 0;
      }

      type metadata accessor for JSTVShowPlayBarViewModel();
      return sub_ABA790() & 1;
    case 0x16uLL:
      if (v2 != 22)
      {
        return 0;
      }

      type metadata accessor for JSSearchLandingUpsell();
      return sub_ABA790() & 1;
    case 0x17uLL:
      if (v2 != 23)
      {
        return 0;
      }

      type metadata accessor for JSSocialLightIdentityCreator();
      return sub_ABA790() & 1;
    case 0x18uLL:
      if (v2 != 24)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingFriendsFinder();
      return sub_ABA790() & 1;
    case 0x19uLL:
      if (v2 != 25)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileVerticalStack();
      return sub_ABA790() & 1;
    case 0x1AuLL:
      if (v2 != 26)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingVerticalStack();
      return sub_ABA790() & 1;
    case 0x1BuLL:
      if (v2 != 27)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingWelcomeViewModel();
      return sub_ABA790() & 1;
    case 0x1CuLL:
      if (v2 != 28)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileCollection();
      return sub_ABA790() & 1;
    case 0x1DuLL:
      if (v2 != 29)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileEditor();
      return sub_ABA790() & 1;
    case 0x1EuLL:
      if (v2 != 30)
      {
        return 0;
      }

      type metadata accessor for JSSongDetail();
      return sub_ABA790() & 1;
    case 0x1FuLL:
      if (v2 != 31)
      {
        return 0;
      }

      type metadata accessor for JSSplitWidgetViewModel();
      return sub_ABA790() & 1;
    case 0x20uLL:
      if (v2 != 32)
      {
        return 0;
      }

      type metadata accessor for JSInlineSocialUpsell();
      return sub_ABA790() & 1;
    case 0x21uLL:
      if (v2 != 33)
      {
        return 0;
      }

      type metadata accessor for JSCircleImage();
      return sub_ABA790() & 1;
    case 0x22uLL:
      if (v2 != 34)
      {
        return 0;
      }

      type metadata accessor for JSInlinePopup();
      return sub_ABA790() & 1;
    case 0x23uLL:
      if (v2 != 35)
      {
        return 0;
      }

      type metadata accessor for JSAlertViewModel();
      return sub_ABA790() & 1;
    case 0x24uLL:
      if (v2 != 36)
      {
        return 0;
      }

      type metadata accessor for JSOrderedPlaylistSelector();
      return sub_ABA790() & 1;
    case 0x25uLL:
      if (v2 != 37)
      {
        return 0;
      }

      type metadata accessor for JSPrivacyLinkViewModel();
      return sub_ABA790() & 1;
    case 0x26uLL:
      if (v2 != 38)
      {
        return 0;
      }

      type metadata accessor for JSBiographyViewModel();
      return sub_ABA790() & 1;
    case 0x27uLL:
      if (v2 != 39)
      {
        return 0;
      }

      type metadata accessor for JSSearchLandingViewModel();
      return sub_ABA790() & 1;
    case 0x28uLL:
      if (v2 != 40)
      {
        return 0;
      }

      type metadata accessor for JSInterstellarViewModel();
      return sub_ABA790() & 1;
    case 0x29uLL:
      if (v2 != 41)
      {
        return 0;
      }

      type metadata accessor for JSListenNowMusicSiriUpsell();
      return sub_ABA790() & 1;
    case 0x2AuLL:
      if (v2 != 42)
      {
        return 0;
      }

      type metadata accessor for JSUserNotificationAuthorizationViewModel();
      return sub_ABA790() & 1;
    case 0x2BuLL:
      if (v2 != 43)
      {
        return 0;
      }

      type metadata accessor for JSWhatsNewFeaturedItemViewModel();
      return sub_ABA790() & 1;
    case 0x2CuLL:
      if (v2 != 44)
      {
        return 0;
      }

      type metadata accessor for JSWhatsNewViewModel();
      return sub_ABA790() & 1;
    default:
      if (v2)
      {
        return 0;
      }

      type metadata accessor for JSContainerDetail();
      return sub_ABA790() & 1;
  }
}

unint64_t _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(uint64_t a1)
{
  type metadata accessor for JSContainerDetail();
  if (!swift_dynamicCast())
  {
    type metadata accessor for JSShelf();
    if (swift_dynamicCast())
    {
      v2 = v9 | 2;
      goto LABEL_19;
    }

    type metadata accessor for JSBrick();
    if (swift_dynamicCast())
    {
      v2 = v9 | 4;
      goto LABEL_19;
    }

    type metadata accessor for JSFlowcase();
    if (swift_dynamicCast())
    {
      v2 = v9 | 6;
      goto LABEL_19;
    }

    type metadata accessor for JSGrid();
    if (swift_dynamicCast())
    {
      v2 = v9 | 0x1000000000000000;
      goto LABEL_19;
    }

    type metadata accessor for JSLiveRadioCase();
    if (swift_dynamicCast())
    {
      v3 = v9;
      v4 = 0x1000000000000002;
LABEL_13:
      v2 = v3 | v4;
      goto LABEL_19;
    }

    type metadata accessor for JSSocialLightIdentityCreator();
    if (swift_dynamicCast())
    {
      v5 = v9;
      v6 = 0x5000000000000002;
      goto LABEL_16;
    }

    type metadata accessor for JSSocialOnboardingFriendsFinder();
    if (swift_dynamicCast())
    {
      v2 = v9 | 0x6000000000000000;
      goto LABEL_19;
    }

    type metadata accessor for JSSocialProfileVerticalStack();
    if (swift_dynamicCast())
    {
      v3 = v9;
      v4 = 0x6000000000000002;
      goto LABEL_13;
    }

    type metadata accessor for JSSocialOnboardingVerticalStack();
    if (swift_dynamicCast())
    {
      v3 = v9;
      v8 = 0x6000000000000002;
    }

    else
    {
      type metadata accessor for JSSocialProfileCollection();
      if (swift_dynamicCast())
      {
        v2 = v9 | 0x7000000000000000;
        goto LABEL_19;
      }

      type metadata accessor for JSSocialProfileEditor();
      if (swift_dynamicCast())
      {
        v3 = v9;
        v4 = 0x7000000000000002;
        goto LABEL_13;
      }

      type metadata accessor for JSInlineSocialUpsell();
      if (swift_dynamicCast())
      {
        v2 = v9 | 0x8000000000000000;
        goto LABEL_19;
      }

      type metadata accessor for JSCircleImage();
      if (swift_dynamicCast())
      {
        v3 = v9;
        v4 = 0x8000000000000002;
        goto LABEL_13;
      }

      type metadata accessor for JSVerticalStack();
      if (swift_dynamicCast())
      {
        v3 = v9;
        v8 = 0x1000000000000002;
      }

      else
      {
        type metadata accessor for JSMenu();
        if (swift_dynamicCast())
        {
          v5 = v9;
          v6 = 0x1000000000000002;
          goto LABEL_16;
        }

        type metadata accessor for JSSettingsViewModel();
        if (swift_dynamicCast())
        {
          v2 = v9 | 0x2000000000000000;
          goto LABEL_19;
        }

        type metadata accessor for JSMessageViewModel();
        if (swift_dynamicCast())
        {
          v3 = v9;
          v4 = 0x2000000000000002;
          goto LABEL_13;
        }

        type metadata accessor for JSOnboardingViewModel();
        if (swift_dynamicCast())
        {
          v3 = v9;
          v8 = 0x2000000000000002;
        }

        else
        {
          type metadata accessor for JSStaticImageViewModel();
          if (swift_dynamicCast())
          {
            v5 = v9;
            v6 = 0x2000000000000002;
            goto LABEL_16;
          }

          type metadata accessor for JSParagraphViewModel();
          if (swift_dynamicCast())
          {
            v2 = v9 | 0x3000000000000000;
            goto LABEL_19;
          }

          type metadata accessor for JSMultiChoiceViewModel();
          if (swift_dynamicCast())
          {
            v3 = v9;
            v4 = 0x3000000000000002;
            goto LABEL_13;
          }

          type metadata accessor for JSToggleSelectorViewModel();
          if (swift_dynamicCast())
          {
            v3 = v9;
            v8 = 0x3000000000000002;
          }

          else
          {
            type metadata accessor for JSItemizedTextListViewModel();
            if (swift_dynamicCast())
            {
              v5 = v9;
              v6 = 0x3000000000000002;
              goto LABEL_16;
            }

            type metadata accessor for JSGroupedTextListViewModel();
            if (swift_dynamicCast())
            {
              v2 = v9 | 0x4000000000000000;
              goto LABEL_19;
            }

            type metadata accessor for JSGroupedItemizedTextListViewModel();
            if (swift_dynamicCast())
            {
              v3 = v9;
              v4 = 0x4000000000000002;
              goto LABEL_13;
            }

            type metadata accessor for JSBadgingViewModel();
            if (swift_dynamicCast())
            {
              v3 = v9;
              v8 = 0x4000000000000002;
            }

            else
            {
              type metadata accessor for JSMusicVideoViewModel();
              if (swift_dynamicCast())
              {
                v5 = v9;
                v6 = 0x4000000000000002;
                goto LABEL_16;
              }

              type metadata accessor for JSTVShowEpisodeDetail();
              if (swift_dynamicCast())
              {
                v3 = v9;
                v4 = 0x5000000000000000;
                goto LABEL_13;
              }

              type metadata accessor for JSTVShowPlayBarViewModel();
              if (swift_dynamicCast())
              {
                v3 = v9;
                v4 = 0x5000000000000002;
                goto LABEL_13;
              }

              type metadata accessor for JSInlinePopup();
              if (swift_dynamicCast())
              {
                v3 = v9;
                v8 = 0x8000000000000002;
              }

              else
              {
                type metadata accessor for JSAlertViewModel();
                if (swift_dynamicCast())
                {
                  v5 = v9;
                  v6 = 0x8000000000000002;
                  goto LABEL_16;
                }

                type metadata accessor for JSOrderedPlaylistSelector();
                if (swift_dynamicCast())
                {
                  v3 = v9;
                  v4 = 0x9000000000000000;
                  goto LABEL_13;
                }

                type metadata accessor for JSPrivacyLinkViewModel();
                if (swift_dynamicCast())
                {
                  v3 = v9;
                  v4 = 0x9000000000000002;
                  goto LABEL_13;
                }

                type metadata accessor for JSSocialOnboardingWelcomeViewModel();
                if (swift_dynamicCast())
                {
                  v5 = v9;
                  v6 = 0x6000000000000002;
                  goto LABEL_16;
                }

                type metadata accessor for JSBiographyViewModel();
                if (swift_dynamicCast())
                {
                  v3 = v9;
                  v8 = 0x9000000000000002;
                }

                else
                {
                  type metadata accessor for JSSplitWidgetViewModel();
                  if (swift_dynamicCast())
                  {
                    v5 = v9;
                    v6 = 0x7000000000000002;
                    goto LABEL_16;
                  }

                  type metadata accessor for JSSongDetail();
                  if (swift_dynamicCast())
                  {
                    v3 = v9;
                    v8 = 0x7000000000000002;
                  }

                  else
                  {
                    type metadata accessor for JSSearchLandingViewModel();
                    if (swift_dynamicCast())
                    {
                      v5 = v9;
                      v6 = 0x9000000000000002;
                      goto LABEL_16;
                    }

                    type metadata accessor for JSSearchLandingUpsell();
                    if (swift_dynamicCast())
                    {
                      v3 = v9;
                      v8 = 0x5000000000000002;
                    }

                    else
                    {
                      type metadata accessor for JSListenNowMusicSiriUpsell();
                      if (swift_dynamicCast())
                      {
                        v3 = v9;
                        v4 = 0xA000000000000002;
                        goto LABEL_13;
                      }

                      type metadata accessor for JSInterstellarViewModel();
                      if (swift_dynamicCast())
                      {
                        v3 = v9;
                        v4 = 0xA000000000000000;
                        goto LABEL_13;
                      }

                      type metadata accessor for JSUserNotificationAuthorizationViewModel();
                      if (!swift_dynamicCast())
                      {
                        type metadata accessor for JSWhatsNewFeaturedItemViewModel();
                        if (!swift_dynamicCast())
                        {
                          type metadata accessor for JSWhatsNewViewModel();
                          if (!swift_dynamicCast())
                          {
                            v2 = 0xF000000000000007;
                            goto LABEL_19;
                          }

                          v3 = v9;
                          v4 = 0xB000000000000000;
                          goto LABEL_13;
                        }

                        v5 = v9;
                        v6 = 0xA000000000000002;
LABEL_16:
                        v2 = v5 | v6 | 4;
                        goto LABEL_19;
                      }

                      v3 = v9;
                      v8 = 0xA000000000000002;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v4 = v8 + 2;
    goto LABEL_13;
  }

  v2 = v9;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

unint64_t sub_A219BC()
{
  result = qword_E26C40;
  if (!qword_E26C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26C40);
  }

  return result;
}

uint64_t sub_A21A24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x54 && *(a1 + 8))
  {
    return (*a1 + 84);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x53)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_A21A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x53)
  {
    *result = a2 - 84;
    if (a3 >= 0x54)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x54)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *JSDateFormatter.dateFormattingOptions.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall JSDateFormatter.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (*(arguments._rawValue + 2))
  {
    sub_808B0(arguments._rawValue + 32, &v28);
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v26[0] = countAndFlagsBits;
  v26[1] = object;
  v27[0] = v28;
  v27[1] = v29;
  if (*(&v29 + 1))
  {
    sub_F46A0(v27, v25);

    if (swift_dynamicCast())
    {
      v5 = v23;
      v4 = v24;
      if (countAndFlagsBits == 0x6D726F4665746164 && object == 0xEA00000000007461 || (sub_ABB3C0() & 1) != 0)
      {
        Array.subscript.getter(&type metadata for Any + 8, v21);
        if (v22)
        {
          v6 = swift_dynamicCast();
          if (v6)
          {
            v7 = v19;
          }

          else
          {
            v7 = 0;
          }

          if (v6)
          {
            v8 = v20;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          sub_12E1C(v21, &unk_DE8E40);
          v7 = 0;
          v8 = 0;
        }

        Array.subscript.getter(&type metadata for Any + 8, v21);
        if (v22)
        {
          v9 = swift_dynamicCast();
          if (v9)
          {
            v10 = v19;
          }

          else
          {
            v10 = 0;
          }

          if (v9)
          {
            v11 = v20;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          sub_12E1C(v21, &unk_DE8E40);
          v10 = 0;
          v11 = 0;
        }

        sub_A21F54(v5, v4, v7, v8, v10, v11);

        __swift_destroy_boxed_opaque_existential_0(v25);
        sub_12E1C(v27, &unk_DE8E40);

        return;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
  }

  if (qword_E23FF8 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, qword_E26C58);

  v13 = sub_AB4BA0();
  v14 = sub_AB9F40();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_425E68(0xD00000000000001ALL, 0x8000000000B81CA0, v25);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_425E68(countAndFlagsBits, object, v25);
    *(v15 + 22) = 2080;
    v16 = sub_AB9770();
    v18 = sub_425E68(v16, v17, v25);

    *(v15 + 24) = v18;
    _os_log_impl(&dword_0, v13, v14, "%s Unexpected method: '%s' '%s'", v15, 0x20u);
    swift_arrayDestroy();
  }

  sub_12E1C(v26, &unk_E27200);
}

void sub_A21F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = *(sub_AB35C0() - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v38 = v13;

    if (a4)
    {

      sub_AB3480();
    }

    else
    {
      sub_AB3550();
    }

    v20 = objc_opt_self();
    v21 = sub_AB9260();
    isa = sub_AB34E0().super.isa;
    v23 = [v20 dateFormatFromTemplate:v21 options:0 locale:isa];

    if (v23)
    {
      v24 = sub_AB92A0();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v37 = a5;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v27 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF8820;
    *(v28 + 56) = ObjectType;
    *(v28 + 32) = v7;
    if (v26)
    {
      *(&v40 + 1) = &type metadata for String;
      *&v39 = v24;
      *(&v39 + 1) = v26;
      sub_9ACFC(&v39, (v28 + 64));
      v29 = v7;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v30 = objc_allocWithZone(NSNull);
      v31 = v7;
      v32 = [v30 init];
      *(v28 + 88) = sub_13C80(0, &qword_E27CD0);
      *(v28 + 64) = v32;
      if (*(&v40 + 1))
      {
        sub_12E1C(&v39, &unk_DE8E40);
      }
    }

    *(v28 + 120) = &type metadata for String;
    *(v28 + 96) = v37;
    *(v28 + 104) = a6;
    sub_13C80(0, &qword_DE8ED0);
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    *(v33 + 24) = _swiftEmptyArrayStorage;
    *(v33 + 32) = 0xD00000000000001ELL;
    *(v33 + 40) = 0x8000000000B81EF0;
    *(v33 + 48) = v7;
    *(v33 + 56) = v27;
    *(v33 + 64) = 0;
    v34 = v7;
    v35 = v27;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v33);

    (*(v12 + 8))(v15, v38);
  }

  else
  {
    if (qword_E23FF8 != -1)
    {
      swift_once();
    }

    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, qword_E26C58);
    v38 = sub_AB4BA0();
    v17 = sub_AB9F40();
    if (os_log_type_enabled(v38, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v39 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_425E68(0xD00000000000002FLL, 0x8000000000B81EC0, &v39);
      _os_log_impl(&dword_0, v38, v17, "Completion handler required for '%s''", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      v36 = v38;
    }
  }
}

uint64_t JSDateFormatter.updateProperty(_:value:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21[0] = a1;
  v21[1] = a2;
  sub_F46A0(a3, v22);
  if (v22[3])
  {
    sub_F46A0(v22, v20);
    type metadata accessor for JSDateFormattingOptions();

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000015 && 0x8000000000B81CE0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
        swift_beginAccess();
        v8 = *(v3 + v7);
        *(v3 + v7) = v19;

        __swift_destroy_boxed_opaque_existential_0(v20);
        sub_12E1C(v22, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
  }

  if (qword_E23FF8 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E26C58);
  sub_F46A0(a3, v20);

  v11 = sub_AB4BA0();
  v12 = sub_AB9F40();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_425E68(0xD000000000000018, 0x8000000000B81CC0, &v19);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_425E68(a1, a2, &v19);
    *(v13 + 22) = 2080;
    sub_F46A0(v20, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40);
    v14 = sub_AB9350();
    v16 = v15;
    sub_12E1C(v20, &unk_DE8E40);
    v17 = sub_425E68(v14, v16, &v19);

    *(v13 + 24) = v17;
    _os_log_impl(&dword_0, v11, v12, "%s Unexpected property name or value: '%s' '%s'", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_12E1C(v20, &unk_DE8E40);
  }

  return sub_12E1C(v21, &unk_E27200);
}

void JSDateFormatter.transformedValue(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    if (qword_E23FF8 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, qword_E26C58);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F40();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_425E68(0xD000000000000017, 0x8000000000B81D00, v30);
      _os_log_impl(&dword_0, v16, v17, "%s Date formatting options should be assigned upon initialization", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    goto LABEL_15;
  }

  sub_808B0(a1, v30);
  type metadata accessor for JSDateDescriptor();
  v7 = v6;
  if (!swift_dynamicCast())
  {
    type metadata accessor for JSDateRangeDescriptor();
    if (!swift_dynamicCast())
    {
      if (qword_E23FF8 != -1)
      {
        swift_once();
      }

      v20 = sub_AB4BC0();
      __swift_project_value_buffer(v20, qword_E26C58);
      sub_808B0(a1, v29);
      v21 = sub_AB4BA0();
      v22 = sub_AB9F40();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v23 = 136315394;
        *(v23 + 4) = sub_425E68(0xD000000000000017, 0x8000000000B81D00, &v28);
        *(v23 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(v29, v29[3]);
        swift_getDynamicType();
        v24 = sub_ABB6D0();
        v26 = v25;
        __swift_destroy_boxed_opaque_existential_0(v29);
        v27 = sub_425E68(v24, v26, &v28);

        *(v23 + 14) = v27;
        _os_log_impl(&dword_0, v21, v22, "%s Unhandled raw value type method/arguments: '%s'", v23, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_22;
    }

    v8 = v29[0];
    if ((*(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp + 8) & 1) == 0 && (*(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp + 8) & 1) == 0)
    {
      v10 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp);
      v9 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp);
      v11 = 0;
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v8 = v29[0];
  if (*(v29[0] + OBJC_IVAR____TtC11MusicJSCore16JSDateDescriptor_timestamp + 8))
  {
LABEL_14:

    __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_15:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v9 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore16JSDateDescriptor_timestamp);
  v10 = 0;
  v11 = 1;
LABEL_5:
  v12 = sub_A23D98(v10, v11, v7, v9);
  v14 = v13;
  *(a2 + 24) = &type metadata for String;

  *a2 = v12;
  *(a2 + 8) = v14;
LABEL_22:
  __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t sub_A22BA0(uint64_t a1, char a2, double a3)
{
  v5 = (v3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_template);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = (v3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_languageTag);
    swift_beginAccess();
    v11 = *v9;
    v10 = v9[1];
    v12 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_dateStyle;
    swift_beginAccess();
    v13 = *(v3 + v12);
    v14 = v13 == 5;
    if (v13 == 5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v3 + v12);
    }

    v16 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_timeStyle;
    swift_beginAccess();
    v17 = *(v3 + v16);
    v18 = v17 == 5;
    if (v17 == 5)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v3 + v16);
    }

    v20 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_uppercasedDateComponentSymbols;
    swift_beginAccess();
    v21 = *(v3 + v20);
    type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 56) = v11;
    *(v22 + 64) = v10;
    *(v22 + 40) = v8;
    *(v22 + 48) = v7;
    *(v22 + 72) = v15;
    *(v22 + 80) = v14;
    *(v22 + 88) = v19;
    *(v22 + 96) = v18;
    *(v22 + 24) = a1;
    *(v22 + 32) = a2 & 1;
    *(v22 + 104) = v21;

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_A22D40()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_E26C48 = result;
  return result;
}

void sub_A22D74(uint64_t a1)
{
  v2 = v1;
  sub_AB93F0();
  sub_ABB5E0((*(v2 + 32) & 1) == 0);
  if (*(v2 + 64))
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  if (*(v2 + 80) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v4 = *(v2 + 72);
    sub_ABB5E0(1u);
    sub_ABB5D0(v4);
  }

  if (*(v2 + 96) != 1)
  {
    v6 = *(v2 + 88);
    sub_ABB5E0(1u);
    sub_ABB5D0(v6);
    v5 = *(v2 + 104);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_13:
    sub_ABB5E0(0);
    return;
  }

  sub_ABB5E0(0);
  v5 = *(v2 + 104);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_ABB5E0(1u);

  sub_A23658(a1, v5);
}

id sub_A22F88()
{
  v1 = v0;
  v2 = sub_AB35C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  if (*(v1 + 64))
  {

    sub_AB3480();
    isa = sub_AB34E0().super.isa;
    (*(v3 + 8))(v5, v2);
    [v6 setLocale:isa];
  }

  if ((*(v1 + 80) & 1) == 0)
  {
    [v6 setDateStyle:*(v1 + 72)];
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    [v6 setTimeStyle:*(v1 + 88)];
  }

  [v6 setBoundaryStyle:2];
  v8 = sub_AB9260();
  [v6 setDateTemplate:v8];

  return v6;
}

id sub_A23128()
{
  v1 = v0;
  v2 = sub_AB35C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  if (*(v1 + 64))
  {

    sub_AB3480();
    isa = sub_AB34E0().super.isa;
    (*(v3 + 8))(v5, v2);
    [v6 setLocale:isa];
  }

  if ((*(v1 + 80) & 1) == 0)
  {
    [v6 setDateStyle:*(v1 + 72)];
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    [v6 setTimeStyle:*(v1 + 88)];
  }

  v8 = sub_AB9260();
  [v6 setLocalizedDateFormatFromTemplate:v8];

  return v6;
}

uint64_t sub_A232B4()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_A232FC()
{
  sub_ABB5C0();
  sub_A22D74(v1);
  return sub_ABB610();
}

Swift::Int sub_A23364()
{
  sub_ABB5C0();
  sub_A22D74(v1);
  return sub_ABB610();
}

uint64_t sub_A233A4(uint64_t a1)
{
  v3 = sub_ABB640();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v10[3] = a1;
  v10[0] = v7;

  sub_ABB620();
  v8 = sub_ABB630();
  (*(v4 + 8))(v6, v3);
  return v8;
}

id JSDateFormatter.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A23568()
{
  sub_13C80(0, &qword_DED8C0);
  result = OS_os_log.init(musicCategory:)();
  qword_E26C50 = result;
  return result;
}

uint64_t sub_A235CC()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E26C58);
  __swift_project_value_buffer(v0, qword_E26C58);
  if (qword_E23FF0 != -1)
  {
    swift_once();
  }

  v1 = qword_E26C50;
  return sub_AB4BD0();
}

void sub_A23658(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_ABB5D0(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      ++v4;
      sub_AB93F0();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_A2372C(char **a1)
{
  v3 = sub_AB3430();
  v57 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v56 - v6;
  if (qword_E23FE8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v8 = [qword_E26C48 objectForKey:{a1, v56}];
  if (!v8)
  {
    if (a1[4])
    {
      v9 = sub_A23128();
    }

    else
    {
      v9 = sub_A22F88();
    }

    v8 = v9;
    [qword_E26C48 setObject:v9 forKey:a1];
  }

  v58 = v7;
  v59 = v3;
  sub_AB33C0();
  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (!v61)
  {
    objc_opt_self();
    v1 = v8;
    v42 = swift_dynamicCastObjCClass();
    if (!v42 || (a1[4] & 1) != 0)
    {
      goto LABEL_42;
    }

    v43 = v42;
    v44 = v58;
    isa = sub_AB3370().super.isa;
    sub_AB33C0();
    v46 = sub_AB3370().super.isa;
    v47 = *(v57 + 8);
    v48 = v5;
    v49 = v59;
    v47(v48, v59);
    v50 = [v43 stringFromDate:isa toDate:v46];

    v41 = sub_AB92A0();
    v47(v44, v49);
    return v41;
  }

  v56 = v8;
  v3 = a1[13];
  v5 = v61;
  if (!v3 || (v7 = *(v3 + 16)) == 0)
  {
LABEL_33:
    v38 = v58;
    v39 = sub_AB3370().super.isa;
    v40 = [v5 stringFromDate:v39];

    v41 = sub_AB92A0();
    (*(v57 + 8))(v38, v59);
    return v41;
  }

  v10 = 0;
  v11 = v3 + 32;
  v63 = *(v3 + 16);
  v64 = v3;
  v62 = v3 + 32;
  while (1)
  {
    if (v10 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (!*(v11 + v10))
    {
      break;
    }

    if (*(v11 + v10) != 1)
    {
      goto LABEL_13;
    }

    v13 = [v5 shortMonthSymbols];
    if (!v13)
    {
      goto LABEL_41;
    }

    v14 = v13;
    v15 = sub_AB9760();

    v1 = *(v15 + 16);
    if (!v1)
    {

      a1 = &selRef_setShortMonthSymbols_;
      goto LABEL_12;
    }

    v65 = _swiftEmptyArrayStorage;
    sub_6D5A0(0, v1, 0);
    v16 = v65;
    sub_36A48();
    v17 = (v15 + 40);
    do
    {
      v18 = *v17;
      v66 = *(v17 - 1);
      v67 = v18;
      v19 = sub_ABAA90();
      v65 = v16;
      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v24 = v19;
        v25 = v20;
        sub_6D5A0((v21 > 1), v22 + 1, 1);
        v20 = v25;
        v19 = v24;
        v5 = v61;
        v16 = v65;
      }

      v16[2] = v22 + 1;
      v23 = &v16[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
      v17 += 2;
      --v1;
    }

    while (v1);

    a1 = &selRef_setShortMonthSymbols_;
LABEL_11:
    v7 = v63;
    v3 = v64;
    v11 = v62;
LABEL_12:
    v12 = sub_AB9740().super.isa;

    [v5 *a1];

LABEL_13:
    if (++v10 == v7)
    {
      goto LABEL_33;
    }
  }

  v26 = [v5 shortWeekdaySymbols];
  if (v26)
  {
    v27 = v26;
    v28 = sub_AB9760();

    v1 = *(v28 + 16);
    if (!v1)
    {

      a1 = &selRef_setShortWeekdaySymbols_;
      goto LABEL_12;
    }

    v65 = _swiftEmptyArrayStorage;
    sub_6D5A0(0, v1, 0);
    v29 = v65;
    sub_36A48();
    v60 = v28;
    v30 = (v28 + 40);
    do
    {
      v31 = *v30;
      v66 = *(v30 - 1);
      v67 = v31;
      v32 = sub_ABAA90();
      v34 = v33;
      v65 = v29;
      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        sub_6D5A0((v35 > 1), v36 + 1, 1);
        v29 = v65;
      }

      v29[2] = v36 + 1;
      v37 = &v29[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      v30 += 2;
      --v1;
    }

    while (v1);

    a1 = &selRef_setShortWeekdaySymbols_;
    v5 = v61;
    goto LABEL_11;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_ABAD90(25);

  v66 = 0xD000000000000016;
  v67 = 0x8000000000B81EA0;
  v52 = [v1 description];
  v53 = sub_AB92A0();
  v55 = v54;

  v68._countAndFlagsBits = v53;
  v68._object = v55;
  sub_AB94A0(v68);

  v69._countAndFlagsBits = 39;
  v69._object = 0xE100000000000000;
  sub_AB94A0(v69);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_A23D98(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v8 = sub_ABB640();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_A22BA0(a1, a2 & 1, a4);
  v13 = sub_A2372C(v12);
  v14 = v13;
  v16 = v15;
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    if (qword_E23FF8 != -1)
    {
      swift_once();
    }

    v18 = sub_AB4BC0();
    __swift_project_value_buffer(v18, qword_E26C58);

    v19 = sub_AB4BA0();
    v20 = sub_AB9F30();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48[0] = v41;
      *v21 = 136315394;
      *(v21 + 4) = sub_425E68(0xD000000000000040, 0x8000000000B81E20, v48);
      *(v21 + 12) = 2080;
      v43 = type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
      v42 = v12;

      sub_ABB620();
      LODWORD(v40) = v20;
      v22 = sub_ABB630();
      v39 = v19;
      v23 = v12;
      v25 = v24;
      (*(v9 + 8))(v11, v8);
      v26 = sub_425E68(v22, v25, v48);
      v12 = v23;

      *(v21 + 14) = v26;
      v27 = v39;
      _os_log_impl(&dword_0, v39, v40, "%s Empty formatted value for key: '%s'", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v28 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_excludedPatterns;
  swift_beginAccess();
  v29 = *(a3 + v28);
  if (v29)
  {
    v40 = a3;
    v41 = v12;
    v30 = *(v29 + 16);

    if (v30)
    {
      sub_36A48();
      v31 = (v29 + 40);
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;
        v48[0] = v14;
        v48[1] = v16;
        v46 = v32;
        v47 = v33;
        v44 = 0;
        v45 = 0xE000000000000000;

        v14 = sub_ABAAB0();
        v35 = v34;

        v31 += 2;
        v16 = v35;
        --v30;
      }

      while (v30);
    }

    else
    {
      v35 = v16;
    }

    v16 = v35;
    a3 = v40;
  }

  v36 = a3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_stringFormat;
  swift_beginAccess();
  if (*(v36 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_AF4EC0;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_2792B0();
    *(v37 + 32) = v14;
    *(v37 + 40) = v16;

    v14 = sub_AB92E0();
  }

  return v14;
}

unint64_t sub_A24260()
{
  result = qword_E26D70;
  if (!qword_E26D70)
  {
    type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26D70);
  }

  return result;
}

uint64_t sub_A242B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    v4 = a1;
    v5 = a2;
    v6 = sub_ABB3C0();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a2 + 56) || v8 != v9)
    {
      v10 = a1;
      v11 = a2;
      v12 = sub_ABB3C0();
      a2 = v11;
      v13 = v12;
      a1 = v10;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v14 = *(a2 + 80);
  if ((*(a1 + 80) & 1) == 0)
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }

LABEL_23:
    v14 = *(a2 + 96);
    if ((*(a1 + 96) & 1) == 0)
    {
      return (*(a1 + 88) == *(a2 + 88)) & ~v14;
    }

    return v14;
  }

  if (*(a2 + 80))
  {
    goto LABEL_23;
  }

  return v14;
}

uint64_t sub_A243D8()
{

  return swift_deallocObject();
}

uint64_t JSItemizedTextListItem.wantsTitleAsBadge.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSItemizedTextListItem.wantsTitleAsBadge.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t JSItemizedTextListItem.wantsLeadingLineBreak.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSItemizedTextListItem.wantsLeadingLineBreak.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t JSItemizedTextListItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_F46A0(a3, v14);
  if (v14[3])
  {
    sub_F46A0(v14, v12);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v10;
        v7[1] = v11;

LABEL_20:
        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_12E1C(v14, &unk_DE8E40);
      }

      if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text;
        goto LABEL_7;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000011 && 0x8000000000B81F10 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
LABEL_19:
        swift_beginAccess();
        *(v3 + v8) = v10;
        goto LABEL_20;
      }

      if (a1 == 0xD000000000000015 && 0x8000000000B81F30 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
        goto LABEL_19;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  return sub_12E1C(v13, &unk_E27200);
}

id JSItemizedTextListItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak] = 0;
  return JSObject.init(type:)(a1);
}

id JSItemizedTextListItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A24A34()
{
}

id JSItemizedTextListItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSItemizedTextListItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A24B4C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSItemizedTextListItem();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t JSItemizedTextListViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSItemizedTextListViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t JSItemizedTextListViewModel.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSItemizedTextListViewModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t JSItemizedTextListViewModel.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A24EC0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A24F44(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSItemizedTextListViewModel.items.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

void (*JSItemizedTextListViewModel.items.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6A82CC;
}

uint64_t JSItemizedTextListViewModel.$items.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t JSItemizedTextListViewModel.$items.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSItemizedTextListViewModel.$items.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

uint64_t JSItemizedTextListViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a1;
  v19[1] = a2;
  sub_F46A0(a3, v20);
  if (v20[3])
  {
    sub_F46A0(v20, v18);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = &v3[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title];
        swift_beginAccess();
        *v7 = v16;
        *(v7 + 1) = v17;

        v8 = &v3[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 1);
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v3, ObjectType, v9);
LABEL_16:
          swift_unknownObjectRelease();
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DD0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v11 = v3;
        sub_AB5520();
        v12 = &v11[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 1);
          v14 = swift_getObjectType();
          (*(v13 + 16))(v11, v14, v13);
          goto LABEL_16;
        }

LABEL_17:
        __swift_destroy_boxed_opaque_existential_0(v18);
        sub_12E1C(v20, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v19, &unk_E27200);
}

id JSItemizedTextListViewModel.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v12[1] = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DD0);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v8, v6, v3);
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v10 = 0;
  v10[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A25898()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate);

  v1 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSItemizedTextListViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSItemizedTextListViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSItemizedTextListViewModel()
{
  result = qword_E26E18;
  if (!qword_E26E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A25A50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSItemizedTextListViewModel();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_A25A98()
{
  sub_A25B3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A25B3C()
{
  if (!qword_E26E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E26DD0);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E26E28);
    }
  }
}

MusicJSCore::JSArtwork::Treatment_optional __swiftcall JSArtwork.Treatment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4EF70;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSArtwork_Treatment_circle;
  }

  else
  {
    v4.value = MusicJSCore_JSArtwork_Treatment_unknownDefault;
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

uint64_t JSArtwork.Treatment.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656C63726963;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_A25C28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C63726963;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C63726963;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_A25CCC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A25D4C()
{
  sub_AB93F0();
}

Swift::Int sub_A25DB8()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A25E34@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4EF70;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

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

void sub_A25E94(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x656C63726963;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t JSArtwork.artworkDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSArtwork.artworkDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t sub_A26074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  *(v3 + v4) = v2;

  v5 = v3 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *JSArtwork.cropStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_A26188(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4)
  {
    if (a1)
    {
      v5 = sub_AB92A0();
      v7 = v6;
      if (v5 == sub_AB92A0() && v7 == v8)
      {

        return;
      }

      v10 = sub_ABB3C0();
      v11 = a1;

      if (v10)
      {

        return;
      }
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v12 = a1;
  }

  v13 = v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v1, ObjectType, v14);
    swift_unknownObjectRelease();
  }
}

uint64_t JSArtwork.treatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_A26330(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (a1)
  {
    v5 = 0x656C63726963;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (a1)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4)
  {
    v7 = 0x656C63726963;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (v4)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_ABB3C0();

    if ((v10 & 1) == 0)
    {
      v12 = v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(v1, ObjectType, v13);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id JSArtwork.artworkCatalog(defaultCropStyle:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4 || !*(v4 + 16))
  {
    return 0;
  }

  sub_3E8814(v5);
  v6 = objc_allocWithZone(ICStoreArtworkInfo);
  isa = sub_AB8FD0().super.isa;

  v8 = [v6 initWithArtworkResponseDictionary:isa];

  if (!v8)
  {

    return 0;
  }

  v9 = [objc_opt_self() tokenWithImageArtworkInfo:v8];
  v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11)
  {
    v12 = *(v1 + v10);
  }

  else
  {
    v12 = a1;
    v11 = 0;
  }

  v14 = v11;
  [v9 setCropStyle:v12];

  v15 = objc_opt_self();
  v16 = v9;
  result = [v15 sharedStoreArtworkDataSource];
  if (result)
  {
    v17 = result;

    v18 = objc_allocWithZone(MPArtworkCatalog);
    v19 = v16;
    v20 = [v18 initWithToken:v19 dataSource:v17];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t JSArtwork.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26E50);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  swift_beginAccess();
  sub_15F84(v1 + v7, v6, &qword_E26E50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_A27464(v6, a1);
  }

  sub_12E1C(v6, &qword_E26E50);
  v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  if (!*(v1 + v10))
  {
    goto LABEL_7;
  }

  v11 = objc_opt_self();

  isa = sub_AB8FD0().super.isa;

  v23[0] = 0;
  v13 = [v11 dataWithJSONObject:isa options:0 error:v23];

  v14 = v23[0];
  if (!v13)
  {
    v20 = v14;
    sub_AB3050();

    swift_willThrow();

LABEL_7:
    v21 = sub_AB8A60();
    (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    goto LABEL_8;
  }

  v22[0] = v1;
  v15 = sub_AB3260();
  v17 = v16;

  sub_AB2AD0();
  swift_allocObject();
  sub_AB2AC0();
  v18 = sub_AB8A60();
  sub_A2740C();
  sub_AB2AB0();
  sub_466B8(v15, v17);

  (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  v1 = v22[0];
LABEL_8:
  sub_15F84(a1, v4, &unk_DE9C50);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_A26A50(v4, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_A26A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t JSArtwork.artwork.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26E50);
  __chkstk_darwin();
  v4 = &v8 - v3;
  sub_A27464(a1, &v8 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  swift_beginAccess();
  sub_A26A50(v4, v1 + v6);
  return swift_endAccess();
}

void (*JSArtwork.artwork.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26E50) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  JSArtwork.artwork.getter(v9);
  return sub_A26CF0;
}

void sub_A26CF0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 72) + 56);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[6];
    sub_15F84(v2[10], v2[7], &unk_DE9C50);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
    swift_beginAccess();
    sub_A26A50(v5, v7 + v8);
    swift_endAccess();
    sub_12E1C(v4, &unk_DE9C50);
  }

  else
  {
    v9 = v2[6];
    sub_A27464(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
    swift_beginAccess();
    sub_A26A50(v5, v9 + v10);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t JSArtwork.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a1;
  v19[1] = a2;
  sub_15F84(a3, v20, &unk_DE8E40);
  if (v20[3])
  {
    sub_15F84(v20, v18, &unk_DE8E40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    if (swift_dynamicCast())
    {
      if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
        swift_beginAccess();
        *(v3 + v6) = v17;

        v7 = v3 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 8);
          ObjectType = swift_getObjectType();
          (*(v8 + 8))(v3, ObjectType, v8);
          swift_unknownObjectRelease();
        }

        goto LABEL_15;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x6C797453706F7263 && a2 == 0xE900000000000065 || (sub_ABB3C0() & 1) != 0)
      {
        v10 = sub_AB9260();

        sub_A26188(v10);
LABEL_15:
        __swift_destroy_boxed_opaque_existential_0(v18);
        sub_12E1C(v20, &unk_DE8E40);
      }

      if (a1 == 0x6E656D7461657274 && a2 == 0xE900000000000074 || (sub_ABB3C0() & 1) != 0)
      {
        v12._rawValue = &off_D4EF70;
        v13 = sub_ABB140(v12, v16);

        if (v13 <= 1)
        {
          v14 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
          swift_beginAccess();
          v15 = *(v3 + v14);
          *(v3 + v14) = v13;
          sub_A26330(v15);
        }

        goto LABEL_15;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
  }

  return sub_12E1C(v19, &unk_E27200);
}

id JSArtwork.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment] = 0;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  return JSObject.init(type:)(a1);
}

id JSArtwork.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment) = 0;
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);

  return JSObject.init(type:)(a1);
}

uint64_t sub_A27314()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate);

  return sub_12E1C(v0 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork, &qword_E26E50);
}

unint64_t sub_A2740C()
{
  result = qword_E26E60;
  if (!qword_E26E60)
  {
    sub_AB8A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26E60);
  }

  return result;
}

uint64_t sub_A27464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_A274D8()
{
  result = qword_E26E68;
  if (!qword_E26E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26E68);
  }

  return result;
}

uint64_t sub_A2752C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_A2758C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_A275F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_A26188(v1);
}

uint64_t sub_A27624@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_A2767C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_A26330(v5);
}

uint64_t type metadata accessor for JSArtwork()
{
  result = qword_E26E98;
  if (!qword_E26E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A2772C()
{
  sub_A277DC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A277DC()
{
  if (!qword_E26EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DE9C50);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E26EA8);
    }
  }
}

void *JSCatalogPlaybackIntent.containerStoreItemMetadata.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSCatalogPlaybackIntent.containerIdentifierSet.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSCatalogPlaybackIntent.startItemIdentifier.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t JSCatalogPlaybackIntent.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a1;
  v32[1] = a2;
  sub_F46A0(a3, v33);
  if (!v33[3])
  {

LABEL_41:
    if (a1 == 0xD000000000000013 && 0x8000000000B82040 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      sub_F46A0(a3, &v28);
      if (v29)
      {
        sub_9ACFC(&v28, &v30);
        __swift_project_boxed_opaque_existential_1(&v30, v31);
        sub_ABB3A0();
        v22 = MPStoreItemMetadataInt64NormalizeStoreIDValue();
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v30);
        v23 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier;
        swift_beginAccess();
        *(v3 + v23) = v22;
      }

      else
      {
        sub_12E1C(&v28, &unk_DE8E40);
        v24 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier;
        swift_beginAccess();
        *(v3 + v24) = 0;
      }

      goto LABEL_47;
    }

    JSPlaybackIntent.updateProperty(_:value:)(a1, a2, a3);
    return sub_12E1C(v32, &unk_E27200);
  }

  sub_F46A0(v33, &v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  if (swift_dynamicCast())
  {
    if (a1 == 0xD000000000000020 && 0x8000000000B820C0 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v7 = objc_allocWithZone(MPStoreItemMetadata);
      isa = sub_AB8FD0().super.isa;

      v9 = [v7 initWithStorePlatformDictionary:isa];

      v10 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata;
      swift_beginAccess();
      v11 = *(v3 + v10);
      *(v3 + v10) = v9;

      __swift_destroy_boxed_opaque_existential_0(&v30);
LABEL_47:
      sub_12E1C(v33, &unk_DE8E40);
    }
  }

  type metadata accessor for JSIdentifierSet();
  if (swift_dynamicCast())
  {
    v12 = v3;
    if (a1 == 0xD000000000000016 && 0x8000000000B820A0 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v13 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet;
      swift_beginAccess();
      v14 = *(v12 + v13);
      *(v12 + v13) = v27;

LABEL_38:
      __swift_destroy_boxed_opaque_existential_0(&v30);
      goto LABEL_47;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26ED8);
  if (!swift_dynamicCast())
  {
LABEL_33:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26EE0);
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000012 && 0x8000000000B82060 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v21 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_itemIdentifiers;
        swift_beginAccess();
        *(v3 + v21) = v27;

        goto LABEL_38;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v30);
    goto LABEL_41;
  }

  result = 0xD00000000000001DLL;
  if (a1 != 0xD00000000000001DLL || 0x8000000000B82080 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      goto LABEL_33;
    }
  }

  if (v27 >> 62)
  {
    result = sub_ABB060();
    v16 = result;
    v26 = v3;
    if (result)
    {
      goto LABEL_21;
    }

LABEL_51:

    v25 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_items;
    swift_beginAccess();
    *(v26 + v25) = _swiftEmptyArrayStorage;

    __swift_destroy_boxed_opaque_existential_0(&v30);
    sub_12E1C(v33, &unk_DE8E40);
  }

  v16 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  v26 = v3;
  if (!v16)
  {
    goto LABEL_51;
  }

LABEL_21:
  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v18 = sub_3603F8(i, v27);
      }

      else
      {
        v18 = *(v27 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      *&v28 = v18;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v19 = objc_allocWithZone(MPStoreItemMetadata);
        v20 = sub_AB8FD0().super.isa;

        [v19 initWithStorePlatformDictionary:v20];

        sub_AB9730();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_51;
  }

  __break(1u);
  return result;
}

id JSCatalogPlaybackIntent.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_items) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_itemIdentifiers) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier) = 0;
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_playActivityRecommendationData) = xmmword_B10830;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSPlaybackIntent_shuffleMode) = 1;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A280F4()
{
}

id JSSubscriptionPurchaseSegue.__allocating_init(nativeBuyParameters:)()
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v7 = 3;
  v1 = objc_allocWithZone(v0);
  v2 = JSSubscriptionPurchaseSegue.init(type:)(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_AB5520();
  return v3;
}

uint64_t JSSubscriptionPurchaseSegue.buyParameters.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

double sub_A28304@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_A28384(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t sub_A28420()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_A28498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSSubscriptionPurchaseSegue.metricsOverlay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A286E0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A28760(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSubscriptionPurchaseSegue.metricsOverlay.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

void (*JSSubscriptionPurchaseSegue.metricsOverlay.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t JSSubscriptionPurchaseSegue.$metricsOverlay.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F30);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F28);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSubscriptionPurchaseSegue.$metricsOverlay.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F30);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__metricsOverlay;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F28);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

uint64_t JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_A28C20@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_A28CA0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSSubscriptionPurchaseSegue.$shouldShowLoadingIndicator.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSubscriptionPurchaseSegue.$shouldShowLoadingIndicator.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__shouldShowLoadingIndicator;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t JSSubscriptionPurchaseSegue.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_F46A0(a3, v11);
  if (v11[3])
  {
    sub_F46A0(v11, v9);

    if (swift_dynamicCast())
    {
      if (a1 == 0x6D61726150797562 && a2 == 0xED00007372657465 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_19;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    if (swift_dynamicCast())
    {
      if (a1 == 0x4F7363697274656DLL && a2 == 0xEE0079616C726576 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_19;
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD00000000000001ALL && 0x8000000000B82160 == a2 || (sub_ABB3C0() & 1) != 0))
    {
LABEL_19:
      swift_getKeyPath();
      swift_getKeyPath();
      v7 = v3;
      sub_AB5520();
      __swift_destroy_boxed_opaque_existential_0(v9);
      sub_12E1C(v11, &unk_DE8E40);
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  JSSegue.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v10, &unk_E27200);
}

id JSSubscriptionPurchaseSegue.init(type:)(uint64_t a1)
{
  v18 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__buyParameters;
  v19 = 0;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
  sub_AB54D0();
  (*(v10 + 32))(v1 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__metricsOverlay;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F18);
  sub_AB54D0();
  (*(v6 + 32))(v1 + v14, v8, v5);
  v15 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__shouldShowLoadingIndicator;
  LOBYTE(v19) = 1;
  sub_AB54D0();
  (*(v2 + 32))(v1 + v15, v4, v17);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent) = 0;
  return JSObject.init(type:)(v18);
}

uint64_t sub_A296B4()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__buyParameters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__metricsOverlay;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26F28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11MusicJSCore27JSSubscriptionPurchaseSegue__shouldShowLoadingIndicator;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

uint64_t type metadata accessor for JSSubscriptionPurchaseSegue()
{
  result = qword_E26F68;
  if (!qword_E26F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A2992C()
{
  sub_3641C(319, &qword_E26098, &unk_DEE6F0);
  if (v0 <= 0x3F)
  {
    sub_3641C(319, &qword_E26F78, &qword_E26F18);
    if (v1 <= 0x3F)
    {
      sub_9E3EB4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t JSBrickItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_F46A0(a3, v14);
  if (v14[3])
  {
    sub_F46A0(v14, v12);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_headlineText;
LABEL_7:
        v8 = (v3 + v7);
        swift_beginAccess();
        *v8 = v10;
        v8[1] = v11;

        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_12E1C(v14, &unk_DE8E40);
      }

      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_titleText;
        goto LABEL_7;
      }

      if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_subtitleText;
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v13, &unk_E27200);
}

id JSBrickItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_headlineText];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_titleText];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_subtitleText];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  return JSMediaItem.init(type:)(a1);
}

id JSBrickItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_headlineText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_titleText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_subtitleText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return JSMediaItem.init(type:)(a1);
}

uint64_t sub_A29D2C()
{
}

uint64_t type metadata accessor for JSBrickItem()
{
  result = qword_E26FA8;
  if (!qword_E26FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSRedirectSegue.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &unk_DF2AE0);
}

uint64_t JSRedirectSegue.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v8 = v12 - v7 + 32;
  v13[0] = a1;
  v13[1] = a2;
  sub_15F84(a3, v14, &unk_DE8E40);
  if (v14[3])
  {
    sub_15F84(v14, v12, &unk_DE8E40);

    if (swift_dynamicCast())
    {
      if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        sub_AB3180();

        v9 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
        swift_beginAccess();
        sub_DB970(v8, v3 + v9);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_12E1C(v14, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  JSSegue.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v13, &unk_E27200);
}

id JSRedirectSegue.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
  v5 = sub_AB31C0();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
  return JSObject.init(type:)(a1);
}

id JSRedirectSegue.init(type:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSRedirectSegue_url;
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent) = 0;

  return JSObject.init(type:)(a1);
}

uint64_t type metadata accessor for JSRedirectSegue()
{
  result = qword_E26FE0;
  if (!qword_E26FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A2A2DC()
{
  sub_26E00C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id JSNowPlayingViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode] = 3;
  v3[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode] = 5;
  *&v3[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary] = _swiftEmptyDictionarySingleton;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  v5[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t JSNowPlayingViewModel.Action.rawValue.getter(char a1)
{
  result = 0x62694C6F54646461;
  switch(a1)
  {
    case 1:
      return 0x616C506F54646461;
    case 2:
    case 3:
      return 0x79616C506F747561;
    case 4:
      return 0x616C506E69676562;
    case 5:
      return 0x7453657461657263;
    case 6:
      return 0xD000000000000012;
    case 7:
      return 0x64616F6C6E776F64;
    case 8:
      return 0x657469726F766166;
    case 9:
      return 0x69726F7661666E75;
    case 10:
      return 1702125928;
    case 11:
      v4 = 1701079400;
      goto LABEL_29;
    case 12:
      v5 = 1701079400;
      goto LABEL_12;
    case 13:
      return 0x6574614C79616C70;
    case 14:
      return 0x7478654E79616C70;
    case 15:
      return 0x6F4374726F706572;
    case 16:
      v3 = 0x4C6275726373;
      goto LABEL_27;
    case 17:
      return 0x6572616873;
    case 18:
      return 0x616C506572616873;
    case 19:
      v3 = 0x4C6572616873;
LABEL_27:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7279000000000000;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0x79726F7473;
      break;
    case 22:
      result = 0x74736948776F6873;
      break;
    case 23:
      v4 = 2003789939;
LABEL_29:
      result = v4 | 0x6972794C00000000;
      break;
    case 24:
      v5 = 2003789939;
LABEL_12:
      result = v5 | 0x654E705500000000;
      break;
    case 25:
      result = 0x6F466C6169636F73;
      break;
    case 26:
      result = 0x75626C4177656976;
      break;
    case 27:
      result = 0xD00000000000001BLL;
      break;
    case 28:
      result = 0xD000000000000017;
      break;
    case 29:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_A2A80C()
{
  v1 = *v0;
  sub_ABB5C0();
  JSNowPlayingViewModel.Action.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A2A870()
{
  JSNowPlayingViewModel.Action.rawValue.getter(*v0);
  sub_AB93F0();
}

Swift::Int sub_A2A8C4()
{
  v1 = *v0;
  sub_ABB5C0();
  JSNowPlayingViewModel.Action.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A2A924@<X0>(_BYTE *a1@<X8>)
{
  result = _s11MusicJSCore21JSNowPlayingViewModelC6ActionO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_A2A954@<X0>(uint64_t *a1@<X8>)
{
  result = JSNowPlayingViewModel.Action.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t JSNowPlayingViewModel.Mode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x736C6F72746E6F63;
  }

  if (a1 == 1)
  {
    return 0x73636972796CLL;
  }

  return 0x75517478654E7075;
}

uint64_t sub_A2A9E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x73636972796CLL;
  if (v2 != 1)
  {
    v4 = 0x75517478654E7075;
    v3 = 0xEB00000000657565;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x736C6F72746E6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73636972796CLL;
  if (*a2 != 1)
  {
    v8 = 0x75517478654E7075;
    v7 = 0xEB00000000657565;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736C6F72746E6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_A2AAEC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A2AB94()
{
  sub_AB93F0();
}

Swift::Int sub_A2AC28()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_A2ACCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore21JSNowPlayingViewModelC4ModeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_A2ACFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73636972796CLL;
  if (v2 != 1)
  {
    v5 = 0x75517478654E7075;
    v4 = 0xEB00000000657565;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736C6F72746E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t JSNowPlayingViewModel.LyricsMode.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 2:
      return 1701736302;
    case 3:
      return 0x676E6964616F6CLL;
    case 4:
      return 0x636974617473;
  }

  if (a1)
  {
    v2 = 0x8000000000B7D050;
  }

  else
  {
    v2 = 0xEA0000000000656ELL;
  }

  if (0x8000000000B7D050 == v2 && (a1 & 1) != 0)
  {

    return 0xD000000000000012;
  }

  else
  {
    v3 = sub_ABB3C0();

    result = 0xD000000000000012;
    if ((v3 & 1) == 0)
    {
      return 0x636E7953656D6974;
    }
  }

  return result;
}
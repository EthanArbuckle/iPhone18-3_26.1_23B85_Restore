uint64_t ConfirmationViewBuilder.makeViewsForCar(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationView, SAUIConfirmationView_ptr);
  OUTLINED_FUNCTION_2_43();
  v6 = OUTLINED_FUNCTION_1_56();
  v7 = SAUIConfirmationView.init(confirmOption:denyOption:)(v3, v6);
  if (v4[21])
  {
    v8 = v4[20];
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setStyle:v9];

  if (v4[17])
  {
    v10 = v4[16];
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v7 setTitle:v11];

  if (v4[19])
  {
    v12 = v4[18];
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v7 setSubtitle:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = OUTLINED_FUNCTION_48_0();
  *(v14 + 16) = xmmword_426260;
  *(v14 + 32) = v7;
  v15 = v7;
  v16 = OUTLINED_FUNCTION_3_33();
  a2(v16);
}

uint64_t ConfirmationViewBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationView, SAUIConfirmationView_ptr);
  OUTLINED_FUNCTION_2_43();
  v5 = OUTLINED_FUNCTION_1_56();
  v6 = SAUIConfirmationView.init(confirmOption:denyOption:)(v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = OUTLINED_FUNCTION_48_0();
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v6;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_3_33();
  a2(v9);
}

uint64_t ConfirmationViewBuilder.deinit()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  outlined destroy of ConfirmationViewTemplate(v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  return v0;
}

uint64_t ConfirmationViewBuilder.__deallocating_deinit()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  outlined destroy of ConfirmationViewTemplate(v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  return swift_deallocClassInstance();
}

id ConfirmationViewTemplate.Button.asSASTButtonItem.getter()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SASTButtonItem, SASTButtonItem_ptr);
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_426260;
  *(v3 + 32) = v0[6];

  swift_unknownObjectRetain();
  return SASTButtonItem.init(label:commands:centered:)(v1, v2, v3, 1);
}

id ConfirmationViewTemplate.Button.asConfirmationOption.getter()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v0[6];

  swift_unknownObjectRetain();

  return SAUIConfirmationOption.init(label:type:iconType:commands:)(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t SingleResultVoicemailModel.transcriptTitle.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t ConfirmationViewTemplate.subtitle.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t ConfirmationViewTemplate.style.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_19_0();
}

double static ConfirmationViewTemplate.makeDefaultConfirmationViewTemplate(labels:sharedGlobals:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a5[3];
  v12 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v11);
  v13 = *(v12 + 8);
  v13(v26, v11, v12);
  static ConfirmationViewTemplate.Button.makeDefaultYesButton(label:deviceState:)(a1, a2, v26, v24);
  v21 = v24[1];
  v22 = v24[0];
  v20 = v24[2];
  v14 = v25;
  __swift_destroy_boxed_opaque_existential_1(v26);
  v13(v23, v11, v12);
  static ConfirmationViewTemplate.Button.makeDefaultNoButton(label:deviceState:)(a3, a4, v23, v26);
  v18 = v26[1];
  v19 = v26[0];
  v17 = v26[2];
  v15 = v27;
  __swift_destroy_boxed_opaque_existential_1(v23);
  *a6 = v22;
  *(a6 + 16) = v21;
  *(a6 + 32) = v20;
  *(a6 + 48) = v14;
  *(a6 + 56) = v19;
  *(a6 + 72) = v18;
  *(a6 + 88) = v17;
  *(a6 + 104) = v15;
  result = 0.0;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  return result;
}

uint64_t static ConfirmationViewTemplate.Button.makeDefaultYesButton(label:deviceState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for CommonDirectAction();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);

  CommonDirectAction.identifier.getter();
  v18 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v19 = CommonDirectAction.userData.getter();
  v20 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v20, v18);
  v21 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(a3);

  result = outlined destroy of CommonDirectAction(v13);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v15;
  a5[3] = v17;
  a5[4] = 0;
  a5[5] = 0;
  a5[6] = v21;
  return result;
}

__n128 ConfirmationViewTemplate.init(yes:no:title:subtitle:style:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = *(a2 + 6);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 48);
  *a9 = *a1;
  *(a9 + 16) = v13;
  *(a9 + 24) = v14;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v15;
  *(a9 + 56) = v9;
  *(a9 + 72) = v10;
  *(a9 + 80) = v11;
  result = a2[2];
  *(a9 + 88) = result;
  *(a9 + 104) = v12;
  *(a9 + 112) = a3;
  *(a9 + 120) = a4;
  *(a9 + 128) = a5;
  *(a9 + 136) = a6;
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  return result;
}

uint64_t SingleResultVoicemailModel.responseViewId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_19_0();
}

uint64_t ConfirmationViewTemplate.Button.confirmationOptionTypes.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

double ConfirmationViewTemplate.Button.init(label:confirmationOptionTypes:command:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  swift_getObjectType();
  specialized ConfirmationViewTemplate.Button.init(label:confirmationOptionTypes:command:)(a1, a2, a3, a4, a5, a6, a7, v18);
  v16 = v18[1];
  *a8 = v18[0];
  *(a8 + 16) = v16;
  result = *&v19;
  *(a8 + 32) = v19;
  *(a8 + 48) = v20;
  return result;
}

uint64_t specialized ConfirmationViewTemplate.Button.init(label:confirmationOptionTypes:command:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationViewTemplate(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for ConfirmationViewTemplate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationViewTemplate.Button(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ConfirmationViewTemplate.Button(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
  return _swift_task_switch(static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:), 0, 0);
}

uint64_t static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 376);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 392) = v3;
  *v3 = v0;
  v3[1] = static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:);

  return LabelTemplatesProviding.yesAndNo()();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[48];
  static ConfirmationViewTemplate.makeDefaultConfirmationViewTemplate(labels:sharedGlobals:)(v0[53], v0[52], v0[51], v0[50], v1, (v0 + 2));

  outlined init with copy of SignalProviding(v1, (v0 + 42));
  type metadata accessor for ConfirmationViewBuilder();
  v2 = swift_allocObject();
  v0[54] = v2;
  memcpy((v2 + 16), v0 + 2, 0xA0uLL);
  outlined init with take of PhoneCallFeatureFlagProviding(v0 + 42, v2 + 176);
  outlined init with copy of ConfirmationViewTemplate((v0 + 2), (v0 + 22));
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:);

  return specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(_swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v7 = *(v6 + 440);
  v8 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v9 = v8;
  v4[56] = v0;

  if (v0)
  {
    v10 = static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:);
  }

  else
  {
    v11 = v4[54];

    v4[57] = v3;
    v10 = static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:);
  }

  return _swift_task_switch(v10, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of ConfirmationViewTemplate(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 456);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[54];

  outlined destroy of ConfirmationViewTemplate((v0 + 2));
  v2 = v0[56];
  v3 = v0[1];

  return v3();
}

uint64_t static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  OUTLINED_FUNCTION_13_1();
  *v11 = v10;
  v13 = *(v12 + 392);
  v14 = *v5;
  OUTLINED_FUNCTION_13_1();
  *v15 = v14;

  if (v4)
  {
    v16 = v14[1];

    return v16();
  }

  else
  {
    v10[50] = a4;
    v10[51] = a3;
    v10[52] = a2;
    v10[53] = a1;

    return _swift_task_switch(static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:), 0, 0);
  }
}

uint64_t specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 16) = v1;
  return _swift_task_switch(specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:), 0, 0);
}

uint64_t specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:)()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  *v4 = v0;
  v4[1] = specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000001ALL, 0x800000000045A9D0, partial apply for specialized closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:), v2, v5);
}

{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v7 = v6;
  *(v2 + 56) = v0;

  if (v0)
  {
    v8 = specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:);
  }

  else
  {
    v9 = *(v2 + 40);

    v8 = specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 24));
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t specialized closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a3, partial apply for closure #1 in closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:), v11);
}

uint64_t partial apply for closure #1 in closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(a1, a2 & 1);
}

uint64_t ContactDisambiguationPromptResponseParser.init(personsToDisambiguate:referenceResolver:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v5 = (a4 + 6);
  outlined init with take of SPHConversation(a2, (a4 + 1));

  return outlined init with take of SPHConversation(a3, v5);
}

uint64_t ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)(uint64_t a1)
{
  v3 = type metadata accessor for Parse.DirectInvocation();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Parse();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SignalProviding((v1 + 6), v62);
  v19 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(a1, 0);
  outlined destroy of ContactPromptResponseParser(v62);
  if (v19 != 8)
  {
    return OUTLINED_FUNCTION_55();
  }

  (*(v14 + 16))(v18, a1, v11);
  v20 = *(v14 + 88);
  v21 = OUTLINED_FUNCTION_69();
  v23 = v22(v21);
  if (v23 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v23 == enum case for Parse.directInvocation(_:))
    {
      v32 = *(v14 + 96);
      v33 = OUTLINED_FUNCTION_69();
      v34(v33);
      (*(v6 + 32))(v10, v18, v3);
      ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)();
      v31 = v35;
      (*(v6 + 8))(v10, v3);
      goto LABEL_8;
    }

    if (v23 != enum case for Parse.NLv4IntentOnly(_:) && v23 != enum case for Parse.uso(_:))
    {
      v39 = *(v14 + 8);
      v40 = OUTLINED_FUNCTION_69();
      v41(v40);
LABEL_15:
      v31 = -1;
      goto LABEL_16;
    }
  }

  v24 = *(v14 + 8);
  v25 = OUTLINED_FUNCTION_69();
  v26(v25);
  v27 = v1[9];
  v28 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v27);
  v29 = (*(v28 + 72))(v27, v28);
  (*(*v29 + 192))(&v60, a1);

  if (!v61)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v60, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_15;
  }

  outlined init with take of SPHConversation(&v60, v62);
  ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:parse:)(v62);
  v31 = v30;
  __swift_destroy_boxed_opaque_existential_1(v62);
LABEL_8:
  v36 = OUTLINED_FUNCTION_55();
  outlined copy of ContactDisambiguationPromptResponse?(v36, v37);
LABEL_16:
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.siriPhone);
  v43 = OUTLINED_FUNCTION_55();
  outlined copy of ContactDisambiguationPromptResponse?(v43, v44);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v47 = OUTLINED_FUNCTION_55();
  outlined consume of ContactDisambiguationPromptResponse?(v47, v48);
  if (os_log_type_enabled(v45, v46))
  {
    v49 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v49 = 136315394;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x800000000045A9F0, v62);
    *(v49 + 12) = 2080;
    if (v31 == -1)
    {
      v53 = 0xE300000000000000;
      v51 = 7104878;
    }

    else
    {
      v50 = OUTLINED_FUNCTION_55();
      v51 = ContactDisambiguationPromptResponse.debugDescription.getter(v50);
      v53 = v52;
      v54 = OUTLINED_FUNCTION_55();
      outlined consume of ContactDisambiguationPromptResponse?(v54, v55);
    }

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v62);

    *(v49 + 14) = v58;
    _os_log_impl(&dword_0, v45, v46, "#ContactDisambiguationPromptResponseParser %s: %s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v56 = OUTLINED_FUNCTION_55();
    outlined consume of ContactDisambiguationPromptResponse?(v56, v57);
  }

  return OUTLINED_FUNCTION_55();
}

uint64_t specialized PhoneCallNLIntent.isEmergencyServicesCall()()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    v12 = *(v1 + 75);
    if (v12 != 5)
    {
      goto LABEL_11;
    }

    return v11;
  }

  v4 = 0;
  v5 = v2 + 32;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    outlined init with copy of SignalProviding(v5, v21);
    v6 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v8 = SiriPhoneContact.getEmergencyType()(v6, v7);
    if (v9 != 3)
    {
      break;
    }

LABEL_7:
    ++v4;
    __swift_destroy_boxed_opaque_existential_1(v21);
    v5 += 40;
    if (v3 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v9 != 1)
  {
    outlined consume of PhoneCallEmergencyType?(v8, v9);
    goto LABEL_7;
  }

  v10 = 1;
  outlined consume of PhoneCallEmergencyType?(v8, 1uLL);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v12 = *(v1 + 75);
  if (v12 == 5)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (PhoneCallDestinationType.rawValue.getter(v12) == 0x636E656772656D65 && v13 == 0xE900000000000079)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = 0;
    if (((v10 | v15) & 1) == 0)
    {
      return v11;
    }
  }

LABEL_18:
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_24:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#PhoneCallNLIntent EmergencyServices intent", v19, 2u);
  }

  return 1;
}

Class ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  static CommonDirectAction.from(_:)((&v14 - v5));
  v7 = type metadata accessor for CommonDirectAction();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v6, v4, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v11 = *v4;
        v10 = v4[1];
        type metadata accessor for INPerson();
        v12._countAndFlagsBits = v11;
        v12._object = v10;
        isa = INPerson.init(contactIdentifier:)(v12).super.isa;
        goto LABEL_9;
      case 2:
        isa = *v4;
        goto LABEL_9;
      case 1:
        isa = *v4;
        goto LABEL_9;
    }

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v4, type metadata accessor for CommonDirectAction);
  }

  isa = 0;
LABEL_9:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  return isa;
}

uint64_t ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:parse:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhoneCallNLv3Intent(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SignalProviding(a1, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v7, type metadata accessor for PhoneCallNLv3Intent);
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    (*(v9 + 24))(v8, v9);
    specialized Collection.first.getter(__dst);

    v10 = __dst[3];
    if (__dst[3])
    {
      v11 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      v12 = (*(v11 + 32))(v10, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(__dst);
      if (v14)
      {
        type metadata accessor for INPerson();
        v15 = static INPerson.from(base64ContactId:)(v12, v14);

        if (v15)
        {
          return v15;
        }
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(__dst, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
    }
  }

  v16 = v41;
  outlined init with copy of SignalProviding(a1, v40);
  if (!swift_dynamicCast())
  {
    memset(v42, 0, sizeof(v42));
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMR);
    return 0;
  }

  memcpy(__dst, v42, 0x68uLL);
  outlined init with copy of SignalProviding((v2 + 1), v42);
  v15 = DisambiguationReferenceResolver.resolveDisambiguationReference(_:)();
  outlined destroy of DisambiguationReferenceResolver(v42);
  if (v15)
  {
    outlined destroy of PhoneCallNLv4Intent(__dst);
    return v15;
  }

  if (specialized PhoneCallNLIntent.isEmergencyServicesCall()())
  {
    v18 = *v2;
    v2 = specialized Array.count.getter(*v2);
    v19 = 0;
    v16 = (v18 & 0xC000000000000001);
    while (1)
    {
      if (v2 == v19)
      {
        outlined destroy of PhoneCallNLv4Intent(__dst);
        return 0;
      }

      if (v16)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_52;
        }

        v20 = *(v18 + 8 * v19 + 32);
      }

      v15 = v20;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v21 = [v20 personHandle];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 emergencyType];

        if (v23 == &dword_0 + 1)
        {
          outlined destroy of PhoneCallNLv4Intent(__dst);
          return v15;
        }
      }

      ++v19;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_27;
  }

  v24 = __dst[1];
  if (*(__dst[1] + 16) != 1 || (outlined init with copy of SignalProviding(__dst[1] + 32, v42), __swift_project_boxed_opaque_existential_1(v42, v42[3]), isa = SiriPhoneContact.toINPerson()().super.isa, __swift_destroy_boxed_opaque_existential_1(v42), v26 = INPerson.isUnnamedHandleLabel.getter(), isa, (v26 & 1) == 0))
  {
    v34 = Array<A>.hasQueryableContactInformation.getter(v24);
    outlined destroy of PhoneCallNLv4Intent(__dst);
    if (v34)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_53;
  }

LABEL_27:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriPhone);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "#ContactDisambiguationPromptResponseParser user called an unknown label", v30, 2u);
  }

  v31 = v2[9];
  v32 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v31);
  v33 = (*(v32 + 72))(v31, v32);
  (*(*v33 + 224))(v42);

  if (v42[4])
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v42[6], v41, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(v42);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    *v16 = 0u;
    v16[1] = 0u;
    v41[4] = 0;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v41, v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (!v39[3])
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    memset(v40, 0, 104);
LABEL_48:
    outlined destroy of PhoneCallNLv4Intent(__dst);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMR);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v40, 0, 104);
    goto LABEL_47;
  }

  if (!v40[0])
  {
LABEL_47:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_48;
  }

  memcpy(v42, v40, sizeof(v42));
  if (!PhoneCallNLv4Intent.isCallLabelOnly()() || !PhoneCallNLv4Intent.isCallLabelOnly()())
  {
    outlined destroy of PhoneCallNLv4Intent(v42);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of PhoneCallNLv4Intent(__dst);
    return 0;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "#ContactDisambiguationPromptResponseParser user may actually want to call the handle specified on the meCard (if existing). Skipping the current disambiguation flow..", v37, 2u);
  }

  outlined destroy of PhoneCallNLv4Intent(v42);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  outlined destroy of PhoneCallNLv4Intent(__dst);
  return 7;
}

id outlined copy of ContactDisambiguationPromptResponse?(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of ContactDisambiguationPromptResponse(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin35ContactDisambiguationPromptResponseO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t getEnumTagSinglePayload for ContactDisambiguationPromptResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for ContactDisambiguationPromptResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for ContactDisambiguationPromptResponse(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactDisambiguationPromptResponseParser(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for ContactDisambiguationPromptResponseParser(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined consume of PhoneCallEmergencyType?(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return outlined consume of PhoneCallEmergencyType(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of PhoneCallEmergencyType(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *ContactGroupResolver.findGroups(query:config:)()
{
  v0 = type metadata accessor for ContactGroup();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = ContactGroupResolver.findGroups(query:config:)();
  v6 = *(v5 + 16);
  if (v6)
  {
    v22 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v22;
    v10 = *(v1 + 16);
    v8 = v1 + 16;
    v9 = v10;
    v11 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    v17 = v5;
    v18 = v12;
    do
    {
      v9(v4, v11, v0);
      v22 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      v20 = v0;
      v21 = &protocol witness table for ContactGroup;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v9(boxed_opaque_existential_1, v4, v0);
      v7 = v22;
      v22[2] = v14 + 1;
      outlined init with take of SPHConversation(&v19, &v7[5 * v14 + 4]);
      (*(v8 - 8))(v4, v0);
      v11 += v18;
      --v6;
    }

    while (v6);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t ContactNeedsConfirmationFlowStrategy.actionForInput(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of SignalProviding(v3 + *(a3 + 36), v13);
  Input.parse.getter();
  v10 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v9, 1);
  (*(v6 + 8))(v9, v5);
  outlined destroy of ContactPromptResponseParser(v13);
  if ((v10 - 5) >= 4u)
  {
    return static ActionForInput.handle()();
  }

  else
  {
    return static ActionForInput.ignore()();
  }
}

uint64_t ContactNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v4;
  v1[14] = v5;
  v1[12] = v6;
  v7 = type metadata accessor for PhoneError();
  v1[17] = v7;
  v8 = *(*(v7 - 8) + 64);
  v1[18] = OUTLINED_FUNCTION_45();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64);
  v1[19] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for ParameterIdentifier();
  v1[20] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[21] = v11;
  v13 = *(v12 + 64);
  v1[22] = OUTLINED_FUNCTION_45();
  v14 = type metadata accessor for Parse();
  v1[23] = v14;
  OUTLINED_FUNCTION_13_2(v14);
  v1[24] = v15;
  v17 = *(v16 + 64);
  v1[25] = OUTLINED_FUNCTION_45();
  v1[26] = *(v3 + 24);
  v1[27] = *(v3 + 16);
  v1[28] = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for ParameterResolutionRecord();
  v1[29] = v18;
  OUTLINED_FUNCTION_13_2(v18);
  v1[30] = v19;
  v21 = *(v20 + 64);
  v1[31] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(ContactNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:), 0, 0);
}

{
  v106 = v0;
  v1 = v0[29];
  v2 = v0[14];
  v3 = ParameterResolutionRecord.result.getter();
  v4 = [v3 itemToConfirm];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INPerson();
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#ContactNeedsConfirmationFlowStrategy No item to confirm.", v28, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v30 = v0[17];
    v29 = v0[18];

    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    swift_allocError();
    PhoneError.logged()(v31);
    outlined destroy of PhoneError(v29);
    swift_willThrow();
    goto LABEL_11;
  }

  person = v0[11];
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[14];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  (*(v6 + 16))(v5, v8, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[30];
  v14 = v0[31];
  v15 = v0[29];
  if (v12)
  {
    v16 = v0[28];
    v100 = v0[27];
    v17 = v0[26];
    v18 = OUTLINED_FUNCTION_42();
    v102 = OUTLINED_FUNCTION_36();
    v105[0] = v102;
    *v18 = 136315138;
    v19 = ParameterResolutionRecord.intent.getter();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(v16);

    (*(v13 + 8))(v14, v15);
    v21 = Array.description.getter();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v105);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_0, v10, v11, "#ContactNeedsConfirmationFlowStrategy contacts before parsing confirmation response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v102);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    (*(v13 + 8))(v0[31], v0[29]);
  }

  v38 = v0[29];
  v40 = v0[24];
  v39 = v0[25];
  v41 = v0[22];
  v42 = v0[23];
  v43 = v0[21];
  v103 = v0[20];
  v44 = v0[13];
  v45 = v0[14];
  outlined init with copy of SignalProviding(v0[16] + *(v0[15] + 36), (v0 + 2));
  Input.parse.getter();
  v46 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v39, 1);
  (*(v40 + 8))(v39, v42);
  outlined destroy of ContactPromptResponseParser((v0 + 2));
  v47 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v48 = ParameterIdentifier.multicardinalIndex.getter();
  LOBYTE(v38) = v49;
  (*(v43 + 8))(v41, v103);
  if (v38)
  {
    v50 = 0;
  }

  else
  {
    v50 = v48;
  }

  if (v46 - 1 >= 2)
  {
    if (!v46)
    {
      v65 = v0[27];
      v66 = v0[28];
      v67 = v0[26];
      v68 = *(swift_getAssociatedConformanceWitness() + 8);
      v69 = *(v68 + 8);
      v70 = v69(v66, v68);
      if (v70)
      {
        v71 = v70;
      }

      else
      {
        v71 = _swiftEmptyArrayStorage;
      }

      v72 = specialized Array.count.getter(v71);

      v73 = v0[28];
      if (v50 >= v72)
      {
        v78 = v0[28];
        INPersonContainingIntent.appendContact(person:)(person);
      }

      else
      {
        INPersonContainingIntent.replaceContact(at:person:)(v50, person);
      }

      v79 = v47;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v101 = v0[28];
        v82 = OUTLINED_FUNCTION_42();
        v83 = OUTLINED_FUNCTION_36();
        v84 = v69;
        v85 = v83;
        v105[0] = v83;
        *v82 = 136315138;
        v84(v101, v68);
        v86 = Array.description.getter();
        v88 = v87;

        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v105);

        *(v82 + 4) = v89;
        _os_log_impl(&dword_0, v80, v81, "#ContactNeedsConfirmationFlowStrategy contacts after user said yes: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
      }

      v74 = &enum case for ConfirmationResponse.confirmed(_:);
      goto LABEL_33;
    }

    v75 = v0[17];
    v76 = v0[18];
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_7_25();
    PhoneError.logged()(v77);
    outlined destroy of PhoneError(v76);
    swift_willThrow();

LABEL_11:
    v32 = v0[31];
    v33 = v0[25];
    v34 = v0[22];
    v36 = v0[18];
    v35 = v0[19];

    OUTLINED_FUNCTION_11();
    goto LABEL_34;
  }

  v51 = v0[27];
  v52 = v0[28];
  v53 = v0[26];
  v54 = *(swift_getAssociatedConformanceWitness() + 8);

  v55 = v47;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = v0[28];
    v59 = OUTLINED_FUNCTION_42();
    v60 = OUTLINED_FUNCTION_36();
    v105[0] = v60;
    *v59 = 136315138;
    (*(v54 + 8))(v58, v54);
    v61 = Array.description.getter();
    v63 = v62;

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v105);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_0, v56, v57, "#ContactNeedsConfirmationFlowStrategy contacts after user said no: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v74 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_33:
  v90 = v0[31];
  v91 = v0[28];
  v92 = v0[25];
  v93 = v0[22];
  v95 = v0[18];
  v94 = v0[19];
  v96 = v0[12];
  v97 = *v74;
  v98 = type metadata accessor for ConfirmationResponse();
  (*(*(v98 - 8) + 104))(v94, v97, v98);
  __swift_storeEnumTagSinglePayload(v94, 0, 1, v98);
  NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();

  OUTLINED_FUNCTION_11();
LABEL_34:

  return v37();
}

uint64_t ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = type metadata accessor for PhoneError();
  v1[12] = v6;
  v7 = *(*(v6 - 8) + 64);
  v1[13] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:), 0, 0);
}

{
  v27 = v0;
  outlined init with copy of Any(v0[8], (v0 + 2));
  type metadata accessor for INPerson();
  if (swift_dynamicCast())
  {
    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[6];
    v0[14] = v3;
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    swift_getAssociatedTypeWitness();
    type metadata accessor for ParameterResolutionRecord();
    v6 = ParameterResolutionRecord.app.getter();
    v0[15] = v6;
    v7 = ParameterResolutionRecord.intent.getter();
    v0[16] = v7;
    v8 = ParameterResolutionRecord.result.getter();
    v0[17] = v8;
    v9 = *(v4 + 40);
    v25 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
    v12 = v0[11];
    v13 = v0[7];

    return v25(v13, v6, v7, v8, v3, v5, v4);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_42();
      v19 = OUTLINED_FUNCTION_36();
      v26 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x800000000045AAC0, &v26);
      _os_log_impl(&dword_0, v16, v17, "#%s: No item to confirm.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v20 = v0[12];
    v21 = v0[13];
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_7_25();
    PhoneError.logged()(v22);
    outlined destroy of PhoneError(v21);
    swift_willThrow();
    v23 = v0[13];

    OUTLINED_FUNCTION_11();

    return v24();
  }
}

{
  v3 = *(*v1 + 144);
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v2;
  *(v2 + 152) = v0;

  if (v0)
  {
    v5 = ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 120);

    v5 = ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);

  v4 = *(v0 + 152);
  v5 = *(v0 + 104);

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t ContactNeedsConfirmationFlowStrategy.init(promptProvider:sharedGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for ContactNeedsConfirmationFlowStrategy() + 36);

  return outlined init with take of PhoneCallFeatureFlagProviding(a2, v6);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return ContactNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)();
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for Flow.onAsync(input:) in conformance AnnounceCallFlow;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.execute() in conformance AnnounceCallFlow;

  return ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)();
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t type metadata completion function for ContactNeedsConfirmationFlowStrategy(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for SharedGlobalsProviding();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNeedsConfirmationFlowStrategy(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for ContactNeedsConfirmationFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t type metadata accessor for SharedGlobalsProviding()
{
  result = lazy cache variable for type metadata for SharedGlobalsProviding;
  if (!lazy cache variable for type metadata for SharedGlobalsProviding)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SharedGlobalsProviding);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ContactNeedsDisambiguationFlowStrategy.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for ContactNeedsDisambiguationFlowStrategy.authenticationPolicy;
  v4 = type metadata accessor for UnlockDevicePolicy();
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void key path setter for ContactNeedsDisambiguationFlowStrategy.cachedPromptResponse : <A>ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2 + *(**a2 + 144);
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *v3;
  *v3 = v2;
  v6 = *(v3 + 8);
  *(v3 + 8) = v4;
  outlined copy of ContactDisambiguationPromptResponse?(v2, v4);
  outlined consume of ContactDisambiguationPromptResponse?(v5, v6);
}

id ContactNeedsDisambiguationFlowStrategy.cachedPromptResponse.getter()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v0 + *(v1 + 144);
  swift_beginAccess();
  v3 = *v2;
  outlined copy of ContactDisambiguationPromptResponse?(*v2, *(v2 + 8));
  return v3;
}

uint64_t ContactNeedsDisambiguationFlowStrategy.__allocating_init(promptProvider:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v25 = a1;
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 88);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_18_11();
  type metadata accessor for PhoneCallBaseCatTemplatingService();
  outlined init with copy of SignalProviding(a2, v26);
  OUTLINED_FUNCTION_8_33();
  default argument 0 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)();
  v10 = OUTLINED_FUNCTION_8_33();
  default argument 2 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v10);
  v11 = OUTLINED_FUNCTION_8_33();
  default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v11, v12);
  v13 = OUTLINED_FUNCTION_8_33();
  default argument 4 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v13);
  v14 = OUTLINED_FUNCTION_8_33();
  default argument 5 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v14);
  v15 = OUTLINED_FUNCTION_8_33();
  default argument 6 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v15);
  PhoneCallBaseCatTemplatingService.__allocating_init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)();
  v17 = v16;
  v18 = v24;
  v19 = v25;
  (*(v6 + 16))(v24, v25, v5);
  v20 = v23;
  outlined init with copy of SignalProviding(v23, v26);
  v21 = (*(v3 + 200))(v18, v26, v17, 0, 255);
  __swift_destroy_boxed_opaque_existential_1(v20);
  (*(v6 + 8))(v19, v5);
  return v21;
}

uint64_t ContactNeedsDisambiguationFlowStrategy.__allocating_init(promptProvider:sharedGlobals:templatingService:cachedPromptResponse:)(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  ContactNeedsDisambiguationFlowStrategy.init(promptProvider:sharedGlobals:templatingService:cachedPromptResponse:)(a1, a2, a3, a4, a5);
  return v13;
}

char *ContactNeedsDisambiguationFlowStrategy.init(promptProvider:sharedGlobals:templatingService:cachedPromptResponse:)(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  v6 = v5;
  v12 = *v6;
  static UnlockDevicePolicy.default.getter();
  *&v6[direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate] = _swiftEmptyArrayStorage;
  OUTLINED_FUNCTION_41_0();
  v14 = &v6[*(v13 + 144)];
  *v14 = 0;
  v14[8] = -1;
  OUTLINED_FUNCTION_41_0();
  v16 = *(v12 + 80);
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v6[*(v15 + 112)], a1, v16);
  OUTLINED_FUNCTION_41_0();
  outlined init with copy of SignalProviding(a2, &v6[*(v18 + 120)]);
  OUTLINED_FUNCTION_41_0();
  *&v6[*(v19 + 128)] = a3;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = (*(v21 + 72))(v20, v21);
  (*(v17 + 8))(a1, v16);
  outlined init with copy of SignalProviding(v22 + 160, v28);

  OUTLINED_FUNCTION_41_0();
  outlined init with take of SPHConversation(v28, &v6[*(v23 + 136)]);
  OUTLINED_FUNCTION_41_0();
  v25 = &v6[*(v24 + 144)];
  swift_beginAccess();
  v26 = *v25;
  *v25 = a4;
  LOBYTE(v16) = v25[8];
  v25[8] = a5;
  outlined copy of ContactDisambiguationPromptResponse?(a4, a5);
  outlined consume of ContactDisambiguationPromptResponse?(v26, v16);
  outlined consume of ContactDisambiguationPromptResponse?(a4, a5);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

void ContactNeedsDisambiguationFlowStrategy.actionForInput(_:resolveRecord:)()
{
  v1 = v0;
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate);
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(v0 + *(v8 + 136), &v23);
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(v0 + *(v9 + 120), &v24);
  v22 = v7;

  Input.parse.getter();
  v10 = ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)(v6);
  LOBYTE(v7) = v11;
  (*(v3 + 8))(v6, v2);
  outlined destroy of ContactDisambiguationPromptResponseParser(&v22);
  OUTLINED_FUNCTION_16_24();
  v13 = v1 + *(v12 + 144);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v10;
  v15 = *(v13 + 8);
  *(v13 + 8) = v7;
  outlined consume of ContactDisambiguationPromptResponse?(v14, v15);
  OUTLINED_FUNCTION_16_24();
  v17 = (*(v16 + 176))();
  v19 = v17;
  switch(v18)
  {
    case 0u:
      if (v17 - 1 < 2)
      {
        outlined consume of ContactDisambiguationPromptResponse?(v17, 0);
        static ActionForInput.cancel()();
      }

      else
      {
        if (v17 == 6)
        {
          static ActionForInput.ignore()();
        }

        else
        {
          if (v17)
          {
            v18 = 0;
            goto LABEL_17;
          }

          static ActionForInput.handle()();
        }

        outlined consume of ContactDisambiguationPromptResponse?(v19, 0);
      }

      return;
    case 1u:
      v17 = OUTLINED_FUNCTION_7_26();
      goto LABEL_12;
    case 2u:
      goto LABEL_17;
    case 3u:
      v20 = 3;
      goto LABEL_12;
    case 4u:
      if (v17)
      {
        goto LABEL_17;
      }

      v17 = 0;
      v20 = 4;
LABEL_12:
      outlined consume of ContactDisambiguationPromptResponse?(v17, v20);
      static ActionForInput.handle()();
      break;
    default:
      if (v18 == 255)
      {
        goto LABEL_18;
      }

LABEL_17:
      outlined consume of ContactDisambiguationPromptResponse?(v17, v18);
LABEL_18:
      static ActionForInput.ignore()();
      break;
  }
}

uint64_t ContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *v0;
  v1[5] = *(*v0 + 88);
  v1[6] = *(v4 + 80);
  v1[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for IntentPromptAnswer();
  v1[8] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[9] = v6;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  v1[11] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[12] = v10;
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  v90 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[3];
  type metadata accessor for ParameterResolutionRecord();
  v6 = ParameterResolutionRecord.intent.getter();
  v0[14] = v6;
  ParameterResolutionRecord.parameter.getter();
  v7 = ParameterIdentifier.multicardinalIndex.getter();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v11, static Logger.siriPhone);
  v12 = v6;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[5];
    v18 = OUTLINED_FUNCTION_42();
    v86 = v10;
    *&v88 = OUTLINED_FUNCTION_36();
    v19 = v88;
    *v18 = 136315138;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(v16);
    type metadata accessor for INPerson();
    OUTLINED_FUNCTION_90();
    v21 = Array.description.getter();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v88);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_0, v13, v14, "#ContactNeedsDisambiguationFlowStrategy contacts before parsing disambiguation response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v10 = v86;
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v25 = v0[4];
  OUTLINED_FUNCTION_2_0();
  v27 = (*(v26 + 176))();
  v0[16] = v27;
  if (v28 == 255)
  {
    goto LABEL_21;
  }

  v29 = v27;
  if (v28 != 1)
  {
    if (v28)
    {
      outlined consume of ContactDisambiguationPromptResponse?(v27, v28);
    }

    else
    {
      v30 = v27;
      outlined consume of ContactDisambiguationPromptResponse?(v27, 0);
      if ((v30 - 1) < 2)
      {
        v31 = v0[6];
        v32 = v0[7];
        v33 = v0[5];
        v34 = *(swift_getAssociatedConformanceWitness() + 8);

        v35 = v12;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = v0[7];
          v39 = OUTLINED_FUNCTION_42();
          v40 = OUTLINED_FUNCTION_36();
          *&v88 = v40;
          *v39 = 136315138;
          (*(v34 + 8))(v38, v34);
          type metadata accessor for INPerson();
          OUTLINED_FUNCTION_90();
          v41 = Array.description.getter();
          v43 = v42;

          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v88);

          *(v39 + 4) = v44;
          _os_log_impl(&dword_0, v36, v37, "#ContactNeedsDisambiguationFlowStrategy contacts after user said no: %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        else
        {
        }

        v79 = v0[10];
        v81 = v0[7];
        v80 = v0[8];
        v82 = v0[2];
        v88 = 0u;
        v89 = 0u;
        v83 = v35;
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        goto LABEL_22;
      }
    }

LABEL_21:
    v54 = v0[10];
    v56 = v0[7];
    v55 = v0[8];
    v57 = v0[2];
    v88 = 0u;
    v89 = 0u;
    v58 = v12;
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
LABEL_22:
    static DisambiguationResult.chosenItem(_:)();
    v59 = v0[13];
    v61 = v0[9];
    v60 = v0[10];
    v62 = v0[8];

    (*(v61 + 8))(v60, v62);

    OUTLINED_FUNCTION_11();

    return v63();
  }

  v45 = v0[6];
  v46 = v0[7];
  v47 = v0[5];
  v48 = *(swift_getAssociatedConformanceWitness() + 8);
  v0[17] = v48;
  v49 = *(v48 + 8);
  v0[18] = v49;
  v0[19] = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x11ED000000000000;
  outlined copy of ContactDisambiguationPromptResponse(v29, 1u);
  v50 = v49(v46, v48);
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  v52 = specialized Array.count.getter(v51);

  v53 = v0[7];
  if (v10 >= v52)
  {
    v65 = v0[7];
    INPersonContainingIntent.appendContact(person:)(v29);
  }

  else
  {
    INPersonContainingIntent.replaceContact(at:person:)(v10, v29);
  }

  v66 = v12;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v84 = v0[7];
    v87 = v10;
    v69 = OUTLINED_FUNCTION_42();
    v85 = OUTLINED_FUNCTION_36();
    *&v88 = v85;
    *v69 = 136315138;
    v49(v84, v48);
    v70 = v66;
    type metadata accessor for INPerson();
    OUTLINED_FUNCTION_90();
    v71 = Array.description.getter();
    v73 = v72;

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v88);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_0, v67, v68, "#ContactNeedsDisambiguationFlowStrategy contacts after user disambiguated: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_26_0();
    v10 = v87;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    v70 = v66;
  }

  v75 = v0[3];
  v76 = ParameterResolutionRecord.app.getter();
  v0[20] = v76;
  v77 = swift_task_alloc();
  v0[21] = v77;
  *v77 = v0;
  v77[1] = ContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  v78 = v0[4];

  return ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:)(v29, v70, v76, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v10 + 176) = v9;
  *(v10 + 184) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  v38 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 176);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  if (v5)
  {
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 136);
    v10 = *(v0 + 56);
    v11 = OUTLINED_FUNCTION_42();
    v12 = OUTLINED_FUNCTION_36();
    v37[0] = v12;
    *v11 = 136315138;
    v8(v10, v9);
    type metadata accessor for INPerson();
    v13 = Array.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v37);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v3, v4, "#ContactNeedsDisambiguationFlowStrategy contacts after re-running CRR: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v17 = *(v0 + 176);
  v18 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 80);
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 16);
  v37[3] = type metadata accessor for INPerson();
  v37[0] = v18;
  v24 = OUTLINED_FUNCTION_7_26();
  outlined copy of ContactDisambiguationPromptResponse?(v24, v25);
  v26 = v17;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  static DisambiguationResult.chosenItem(_:)();
  v27 = OUTLINED_FUNCTION_7_26();
  outlined consume of ContactDisambiguationPromptResponse?(v27, v28);
  v29 = OUTLINED_FUNCTION_7_26();
  outlined consume of ContactDisambiguationPromptResponse?(v29, v30);

  v31 = *(v0 + 104);
  v33 = *(v0 + 72);
  v32 = *(v0 + 80);
  v34 = *(v0 + 64);

  (*(v33 + 8))(v32, v34);

  OUTLINED_FUNCTION_11();

  return v35();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[10];
  v5 = OUTLINED_FUNCTION_7_26();
  outlined consume of ContactDisambiguationPromptResponse?(v5, v6);
  v7 = OUTLINED_FUNCTION_7_26();
  outlined consume of ContactDisambiguationPromptResponse?(v7, v8);

  OUTLINED_FUNCTION_11();
  v10 = v0[23];

  return v9();
}

uint64_t ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v5[33] = *v4;
  return OUTLINED_FUNCTION_0_1(ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:));
}

uint64_t ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:)()
{
  v1 = *(v0 + 224);
  if (INPerson.hasHandleValue.getter())
  {
    v2 = *(v0 + 232);
    OUTLINED_FUNCTION_11();
    v27 = v3;
    v5 = v4;

    return v27(v5);
  }

  else
  {
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v11 = *(v0 + 224);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v12 = type metadata accessor for ContactQuery();
    OUTLINED_FUNCTION_13_2(v12);
    v14 = *(v13 + 72);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_424FD0;
    INPerson.toContactQuery()();
    *(v0 + 56) = _swiftEmptyArrayStorage;
    *(v0 + 64) = 2;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0x1123030905050204;
    *(v0 + 88) = 518;
    *(v0 + 96) = _swiftEmptyArrayStorage;
    *(v0 + 104) = v17;
    *(v0 + 112) = _swiftEmptyArrayStorage;
    v18 = *(*v8 + 120);
    v21 = v7 + 80;
    v20 = *(v7 + 80);
    v19 = *(v21 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

    static ContactSlotResolver.makeMulticardinalResolver<A>(multicardinalIndex:rchFlowContext:sharedGlobals:)(v10, 0, v9, 0, 0, v8 + v18, AssociatedTypeWitness, AssociatedConformanceWitness);

    *(v0 + 208) = &type metadata for PhoneCallDirectInvocationNLIntent;
    *(v0 + 216) = &protocol witness table for PhoneCallDirectInvocationNLIntent;
    v24 = swift_allocObject();
    *(v0 + 184) = v24;
    outlined init with copy of PhoneCallDirectInvocationNLIntent(v0 + 16, v24 + 16);
    v25 = swift_task_alloc();
    *(v0 + 272) = v25;
    *(v0 + 280) = type metadata accessor for AnyIntentResolver();
    *v25 = v0;
    v25[1] = ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:);
    v26 = *(v0 + 232);

    return AnyIntentResolver.resolve(skIntent:nlIntent:)(v26, v0 + 184);
  }
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 272);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  v5[36] = v0;

  if (v0)
  {
    (*(*(v5[35] - 8) + 8))(v5 + 15);
  }

  else
  {
    v11 = v5[35];
    v5[37] = v3;
    (*(*(v11 - 8) + 8))(v5 + 15);
    __swift_destroy_boxed_opaque_existential_1(v5 + 23);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallDirectInvocationNLIntent(v0 + 16);
  v1 = *(v0 + 296);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallDirectInvocationNLIntent(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 288);

  return v1();
}

uint64_t ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = type metadata accessor for UnlockDevicePolicy();
  v1[6] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[7] = v4;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1[11];
  v3 = v1[10];
  v1[9];
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v16 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = (v4 + *(*v4 + 120));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 8))(v15, v7, v8);
  (*(v2 + 16))(v1, v4 + direct field offset for ContactNeedsDisambiguationFlowStrategy.authenticationPolicy, v3);
  v9 = type metadata accessor for SiriKitDisambiguationListAdapter();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:authenticationPolicy:)();

  v13 = v0[1];

  return v13(v12);
}

uint64_t ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *(v22 + 40);
  v25 = *(v23 + 80);
  v24 = *(v23 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v46 = *(v22 + 24);
  v26 = ParameterResolutionRecord.result.getter();
  v27 = [v26 disambiguationItems];

  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = *(v28 + 16);

  v30 = ParameterResolutionRecord.result.getter();
  v31 = v30;
  v32 = &selRef_alternatives;
  if (v29)
  {
    v32 = &selRef_disambiguationItems;
  }

  v33 = [v30 *v32];

  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = specialized _arrayConditionalCast<A, B>(_:)(v34);
  *(v22 + 72) = v35;

  if (!v35)
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v36 = swift_task_alloc();
  *(v22 + 80) = v36;
  *(v36 + 16) = v35;
  *(v36 + 24) = vextq_s8(v47, v47, 8uLL);
  v37 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v38 = swift_task_alloc();
  *(v22 + 88) = v38;
  type metadata accessor for SiriKitDisambiguationList();
  *v38 = v22;
  v38[1] = ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:);
  OUTLINED_FUNCTION_66_0();

  return withCheckedContinuation<A>(isolation:function:_:)(v39, v40, v41, 0xD00000000000002FLL, v42, v43, v36, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v30 = a1;
  v4 = *a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMd, &_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMR);
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v29);
  v8 = &v27 - v7;
  v9 = *(a3 + v4[16]);
  v10 = v4[11];
  v11 = v4[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for PhoneCallBaseCatTemplatingService();
  v33 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
  v32 = v12;
  *&v31 = v9;
  type metadata accessor for ParameterResolutionRecord();

  ParameterResolutionRecord.app.getter();
  v13 = App.appIdentifier.getter();
  v15 = v14;

  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = (a3 + *(*a3 + 120));
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v20 + 184))(v38, v19, v20);
  v21 = v18[3];
  v22 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v21);
  (*(v22 + 8))(v21, v22);
  v34[0] = v28;
  v34[1] = v28;
  outlined init with take of SPHConversation(&v31, &v39);
  v35 = 1;
  v36 = v16;
  v37 = v17;
  v23 = v29;
  (*(v5 + 16))(v8, v30, v29);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v24, v8, v23);
  swift_bridgeObjectRetain_n();
  specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(partial apply for closure #1 in closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:), v25);

  return outlined destroy of PhoneContactDisambiguationItemFactory(v34);
}

uint64_t closure #1 in closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMd, &_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = *v3;
  return OUTLINED_FUNCTION_0_1(ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:));
}

uint64_t ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  v1 = v0[7];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMd, &_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMR);
  v0[2] = PaginatedItemContainer.items.getter();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow0aB22DisambiguationItemPairVGMd, &_sSay11SiriKitFlow0aB22DisambiguationItemPairVGMR);
  type metadata accessor for INPerson();
  lazy protocol witness table accessor for type [SiriKitDisambiguationItemPair] and conformance [A](&lazy protocol witness table cache variable for type [SiriKitDisambiguationItemPair] and conformance [A]);
  v4 = Sequence.compactMap<A>(_:)();

  v5 = direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  v6 = *(v1 + direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate);
  *(v1 + direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = v4;

  v0[3] = PaginatedItemContainer.items.getter();
  v7 = type metadata accessor for SiriKitDisambiguationItem();
  v8 = lazy protocol witness table accessor for type [SiriKitDisambiguationItemPair] and conformance [A](&lazy protocol witness table cache variable for type [SiriKitDisambiguationItemPair] and conformance [A]);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0, v3, v7, &type metadata for Never, v8, &protocol witness table for Never, v9);

  v10 = *(v1 + v5);

  specialized _arrayForceCast<A, B>(_:)();
  if (specialized Array.count.getter(v10) < 6 || PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v10))
  {
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v10);
  }

  else
  {
  }

  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  v14 = type metadata accessor for SiriKitDisambiguationList();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
  v0[9] = v17;
  v30 = *(*v12 + 112);
  v20 = v11 + 80;
  v19 = *(v11 + 80);
  v18 = *(v20 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v21 = ParameterResolutionRecord.app.getter();
  v0[10] = v21;
  v22 = ParameterResolutionRecord.intent.getter();
  v0[11] = v22;
  v23 = ParameterResolutionRecord.result.getter();
  v0[12] = v23;
  v24 = *(v18 + 56);
  v29 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[13] = v26;
  *v26 = v0;
  v26[1] = ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v27 = v0[4];

  return v29(v27, v21, v22, v23, v17, v19, v18);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
    v10 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_11();
  v5 = *(v0 + 112);

  return v4();
}

uint64_t closure #1 in ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)@<X0>(void *a1@<X8>)
{
  SiriKitDisambiguationItemPair.rawItem.getter();
  type metadata accessor for INPerson();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t closure #2 in ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitDisambiguationItemPair.formattedItem.getter();
  *a1 = result;
  return result;
}

char *ContactNeedsDisambiguationFlowStrategy.deinit()
{
  v1 = *v0;
  v2 = direct field offset for ContactNeedsDisambiguationFlowStrategy.authenticationPolicy;
  v3 = type metadata accessor for UnlockDevicePolicy();
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *&v0[direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate];

  OUTLINED_FUNCTION_2_0();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v6 + 112)]);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v7 + 120)]);
  OUTLINED_FUNCTION_2_0();
  v9 = *&v0[*(v8 + 128)];

  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v10 + 136)]);
  OUTLINED_FUNCTION_2_0();
  outlined consume of ContactDisambiguationPromptResponse?(*&v0[*(v11 + 144)], v0[*(v11 + 144) + 8]);
  return v0;
}

uint64_t ContactNeedsDisambiguationFlowStrategy.__deallocating_deinit()
{
  ContactNeedsDisambiguationFlowStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.authenticationPolicy.getter in conformance ContactNeedsDisambiguationFlowStrategy<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for ContactNeedsDisambiguationFlowStrategy.authenticationPolicy;
  v5 = type metadata accessor for UnlockDevicePolicy();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy();

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v7, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(**v2 + 232);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>;

  return v9(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 216);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 240);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 80);
  v14 = *(a4 + 88);
  v15 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 80);
  v14 = *(a4 + 88);
  v15 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v7, a3);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  v17 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy();
  *v14 = v6;
  v14[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v17, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = *(a6 + 80);
  v18 = *(a6 + 88);
  v19 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy();
  *v16 = v7;
  v16[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v19, a7);
}

uint64_t lazy protocol witness table accessor for type [SiriKitDisambiguationItemPair] and conformance [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow0aB22DisambiguationItemPairVGMd, &_sSay11SiriKitFlow0aB22DisambiguationItemPairVGMR);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for ContactNeedsDisambiguationFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for UnlockDevicePolicy();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMd, &_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)();
}

uint64_t ContactNeedsValueFlowStrategy.actionForInput(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of SignalProviding(v3 + *(a3 + 36), v13);
  Input.parse.getter();
  v10 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v9, 0);
  (*(v6 + 8))(v9, v5);
  outlined destroy of ContactPromptResponseParser(v13);
  if (v10 - 1 < 2)
  {
    return static ActionForInput.cancel()();
  }

  if (v10 == 6)
  {
    return static ActionForInput.ignore()();
  }

  return static ActionForInput.handle()();
}

uint64_t ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[31] = v5;
  v6 = type metadata accessor for PhoneError();
  v1[36] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v8 = type metadata accessor for Parse();
  v1[38] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_24_5();
  v1[39] = v10;
  v12 = *(v11 + 64) + 15;
  v1[40] = swift_task_alloc();
  v13 = type metadata accessor for ParameterIdentifier();
  v1[41] = v13;
  v14 = *(v13 - 8);
  OUTLINED_FUNCTION_24_5();
  v1[42] = v15;
  v17 = *(v16 + 64) + 15;
  v1[43] = swift_task_alloc();

  return _swift_task_switch(ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:), 0, 0);
}

{
  v146 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v4 + 24);
  *(v0 + 352) = v6;
  *(v0 + 360) = *(v4 + 16);
  v135 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 368) = AssociatedTypeWitness;
  v8 = type metadata accessor for ParameterResolutionRecord();
  v9 = ParameterResolutionRecord.intent.getter();
  *(v0 + 376) = v9;
  v143 = v8;
  ParameterResolutionRecord.parameter.getter();
  v10 = ParameterIdentifier.multicardinalIndex.getter();
  LOBYTE(v8) = v11;
  (*(v1 + 8))(v2, v3);
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v133 = v12;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.siriPhone);
  *(v0 + 384) = v14;
  v15 = v9;
  v142 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v137 = v15;
  v140 = AssociatedTypeWitness;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v145[0] = v19;
    *v18 = 136315138;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
    type metadata accessor for INPerson();
    v21 = Array.description.getter();
    v22 = v15;
    v23 = v21;
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v145);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_0, v16, v17, "#ContactNeedsValueFlowStrategy contacts before parsing NeedsValue prompt response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v28 = *(v0 + 312);
  v27 = *(v0 + 320);
  v29 = *(v0 + 304);
  v30 = *(v0 + 256);
  v31 = (*(v0 + 280) + *(*(v0 + 272) + 36));
  v32 = v31[3];
  v33 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v34 = (*(v33 + 72))(v32, v33);
  Input.parse.getter();
  (*(*v34 + 192))(v27);

  (*(v28 + 8))(v27, v29);
  if (!*(v0 + 144))
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 120);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v63))
    {
      v64 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v64);
      OUTLINED_FUNCTION_14_1(&dword_0, v65, v66, "#ContactNeedsValueFlowStrategy Received unsupported parse type. Skipping..");
      OUTLINED_FUNCTION_12_3();
    }

    v67 = *(v0 + 288);
    v68 = *(v0 + 296);

    *v68 = xmmword_42D060;
    *(v68 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_7_25();
    PhoneError.logged()(v69);
    outlined destroy of PhoneError(v68);
    swift_willThrow();

    goto LABEL_21;
  }

  v35 = *(v0 + 264);
  outlined init with take of SPHConversation((v0 + 120), v0 + 80);
  v36 = v31[3];
  v37 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v36);
  (*(v37 + 80))(v36, v37);
  v38 = ParameterResolutionRecord.app.getter();
  v39 = v140;
  SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v0 + 80, v38, 0, 0, v140, v40, v41, v42, buf, v126, v128, v129, v130, v133, v135, v137, v140, v142, v143, v145[0]);
  v44 = v43;
  *(v0 + 392) = v43;

  outlined destroy of SKTransformer(v0 + 160);
  if (!v44)
  {
    v70 = *(v0 + 288);
    v71 = *(v0 + 296);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_7_25();
    PhoneError.logged()(v72);
    outlined destroy of PhoneError(v71);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
LABEL_21:
    v73 = *(v0 + 344);
    v74 = *(v0 + 320);
    v75 = *(v0 + 296);

    OUTLINED_FUNCTION_11();
LABEL_22:

    return v76();
  }

  v45 = *(v0 + 104);
  v46 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v45);
  v47 = *((*(v46 + 136))(v45, v46) + 16);

  if (v47)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v49))
    {
      v50 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v50);
      OUTLINED_FUNCTION_14_1(&dword_0, v51, v52, "#ContactNeedsValueFlowStrategy User provided a group name. Rerun slot resolution.");
      OUTLINED_FUNCTION_12_3();
    }

    v53 = *(v0 + 264);

    v54 = v31[3];
    v55 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v54);
    (*(v55 + 88))(v54, v55);
    v56 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
    *(v0 + 456) = ParameterResolutionRecord.intent.getter();
    *(v0 + 464) = ParameterResolutionRecord.app.getter();
    v57 = *(v56 + 8);
    OUTLINED_FUNCTION_24_5();
    v144 = v58 + *v58;
    v60 = *(v59 + 4);
    v61 = swift_task_alloc();
    *(v0 + 472) = v61;
    *v61 = v0;
    v61[1] = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
    v148 = v56;
    OUTLINED_FUNCTION_8_34();

    __asm { BRAA            X8, X16 }
  }

  v78 = *(v0 + 104);
  v79 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v78);
  v80 = *((*(v79 + 24))(v78, v79) + 16);

  if (!v80)
  {
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v96))
    {
      v97 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v97);
      OUTLINED_FUNCTION_14_1(&dword_0, v98, v99, "#ContactNeedsValueFlowStrategy contacts, resolved persons, and smsGroups were empty at prompt. IntentPromptAnswer = nil, reprompt.");
      OUTLINED_FUNCTION_12_3();
    }

    v100 = *(v0 + 248);

    v102 = type metadata accessor for IntentPromptAnswer();
    v103 = v100;
    v104 = 1;
    goto LABEL_44;
  }

  v81 = *(v0 + 272);
  v131 = *(v0 + 280);
  v82 = v39;
  v127 = swift_getAssociatedConformanceWitness();
  v83 = *(v127 + 8);
  *(v0 + 400) = v83;
  v84 = *(v83 + 8);
  *(v0 + 408) = v84;
  *(v0 + 416) = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x11ED000000000000;
  v85 = v84(v82, v83);
  v86 = _swiftEmptyArrayStorage;
  if (v85)
  {
    v86 = v85;
  }

  *(v0 + 240) = v86;
  v136 = v84;
  v87 = v84(v82, v83);
  ContactNeedsValueFlowStrategy.insertNewContacts(_:into:at:)(v87, (v0 + 240), v134);

  (*(v83 + 16))(*(v0 + 240), v82, v83);

  v88 = v138;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.debug.getter();
  v139 = v88;
  if (os_log_type_enabled(v89, v90))
  {
    bufa = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v145[0] = v132;
    *bufa = 136315138;
    v136(v82, v83);
    type metadata accessor for INPerson();
    v91 = Array.description.getter();
    v93 = v92;

    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v145);

    *(bufa + 4) = v94;
    _os_log_impl(&dword_0, v89, v90, "#ContactNeedsValueFlowStrategy contacts after parsing NeedsValue prompt response: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v132);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v105 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  if (PhoneCallNLIntent.isBusinessNameCall()())
  {
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v107))
    {
      v108 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v108);
      OUTLINED_FUNCTION_14_1(&dword_0, v109, v110, "#ContactNeedsValueFlowStrategy NLv4 indicates that contact cannot be resolved on-device. Skipping CRR.");
      OUTLINED_FUNCTION_12_3();
    }

    v111 = (v136)(v141, v83);
    v112 = v111;
    if (v111)
    {
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    }

    else
    {
      v145[1] = 0;
      v145[2] = 0;
    }

    v123 = *(v0 + 248);
    v145[0] = v112;
    v145[3] = v111;
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();

    v102 = type metadata accessor for IntentPromptAnswer();
    v103 = v123;
    v104 = 0;
LABEL_44:
    OUTLINED_FUNCTION_0_45(v103, v104, v101, v102);

    OUTLINED_FUNCTION_11();
    goto LABEL_22;
  }

  v113 = *(v0 + 264);
  ParameterResolutionRecord.app.getter();
  OUTLINED_FUNCTION_8_34();
  static ContactSlotResolver.makeMulticardinalResolver<A>(multicardinalIndex:rchFlowContext:sharedGlobals:)(v114, v115, v116, v117, v118, v119, v141, v127);

  v120 = swift_task_alloc();
  *(v0 + 424) = v120;
  v121 = type metadata accessor for AnyIntentResolver();
  *(v0 + 432) = v121;
  WitnessTable = swift_getWitnessTable();
  *v120 = v0;
  v120[1] = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);

  return SKIntentResolver.run(skIntent:nlIntent:)(v139, v0 + 80, v121, WitnessTable);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 424);
  *v3 = *v1;
  *(v2 + 440) = v6;
  *(v2 + 448) = v0;

  if (v0)
  {
    v7 = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  }

  else
  {
    v7 = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v32 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 440);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 440);
  if (v5)
  {
    v8 = *(v0 + 408);
    v7 = *(v0 + 416);
    v9 = *(v0 + 400);
    v10 = *(v0 + 368);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31[0] = v12;
    *v11 = 136315138;
    v8(v10, v9);
    type metadata accessor for INPerson();
    v13 = Array.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v3, v4, "#ContactNeedsValueFlowStrategy contacts after re-running CRR: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v17 = *(v0 + 440);
  v18 = *(v0 + 416);
  v19 = (*(v0 + 408))(*(v0 + 368), *(v0 + 400));
  v20 = v19;
  if (v19)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  }

  else
  {
    v31[1] = 0;
    v31[2] = 0;
  }

  v22 = *(v0 + 432);
  v21 = *(v0 + 440);
  v23 = *(v0 + 392);
  v24 = *(v0 + 368);
  v25 = *(v0 + 376);
  v26 = *(v0 + 248);
  v31[0] = v20;
  v31[3] = v19;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();

  (*(*(v22 - 8) + 8))(v0 + 16, v22);
  v27 = type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_0_45(v26, 0, v28, v27);

  OUTLINED_FUNCTION_11();

  return v29();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 472);
  *v4 = *v1;
  v3[60] = v7;
  v3[61] = v0;

  if (v0)
  {
    v8 = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  }

  else
  {
    v10 = v3[57];
    v9 = v3[58];

    v8 = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  v1 = v0[60];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((*(*(AssociatedConformanceWitness + 8) + 8))(v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  }

  v6 = v0[60];
  v7 = v0[49];
  v8 = v0[46];
  v9 = v0[47];
  v10 = v0[31];
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();

  v11 = type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_0_45(v10, 0, v12, v11);

  OUTLINED_FUNCTION_11();

  return v13();
}

{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 392);

  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v4 = *(v0 + 488);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 296);

  OUTLINED_FUNCTION_11();

  return v8();
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 392);

  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v3 = *(v0 + 448);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);

  OUTLINED_FUNCTION_11();

  return v7();
}

void ContactNeedsValueFlowStrategy.insertNewContacts(_:into:at:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 && specialized Array.count.getter(a1) && specialized Array.count.getter(*a2) >= a3)
  {

    specialized Array.replaceSubrange<A>(_:with:)(a3, a3, a1);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000000045AB60, &v11);
      _os_log_impl(&dword_0, oslog, v7, "#ContactNeedsValueFlowStrategy %s: Multicardinal index is beyond end of array. Leaving contacts as-is.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }
}

uint64_t ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:), 0, 0);
}

uint64_t ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v5 = ParameterResolutionRecord.app.getter();
  v0[6] = v5;
  v6 = ParameterResolutionRecord.intent.getter();
  v0[7] = v6;
  v7 = ParameterResolutionRecord.result.getter();
  v0[8] = v7;
  v8 = *(v3 + 32);
  OUTLINED_FUNCTION_24_5();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
  v13 = v0[5];
  v14 = v0[2];

  return v16(v14, v5, v6, v7, v4, v3);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 48);

    OUTLINED_FUNCTION_11();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_11();
  v4 = *(v0 + 80);

  return v3();
}

uint64_t ContactNeedsValueFlowStrategy.init(outputProvider:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for ContactNeedsValueFlowStrategy() + 36);

  return outlined init with take of SPHConversation(a2, v6);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t outlined destroy of PhoneCallNLIntent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContactNeedsValueFlowStrategy(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for ContactNeedsValueFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t ContactNeedsValueGuardFlow.FlowState.description.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR) + 48);
      v11 = type metadata accessor for Parse();
      OUTLINED_FUNCTION_23_5(v11);
      (*(v12 + 8))(&v8[v10]);
      return 0x6F5472656665642ELL;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    (*(v4 + 8))(v8, a1);
    return 0xD000000000000017;
  }
}

uint64_t static ContactNeedsValueGuardFlow.FlowState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v86 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_7(v86);
  v83 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_5_4();
  v82 = v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v8 = OUTLINED_FUNCTION_23_1(v85);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v92 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  OUTLINED_FUNCTION_16_2();
  v84 = v14;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v15);
  v87 = &v80 - v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  v88 = &v80 - v18;
  OUTLINED_FUNCTION_15_0();
  v90 = type metadata accessor for PluginAction();
  v19 = OUTLINED_FUNCTION_7(v90);
  v94 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_16_2();
  v89 = v23;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v24);
  v26 = &v80 - v25;
  v27 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  v28 = OUTLINED_FUNCTION_7(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_16_2();
  v91 = v33;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v34);
  v36 = &v80 - v35;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = OUTLINED_FUNCTION_7(TupleTypeMetadata2);
  v40 = v39;
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v38);
  v45 = &v80 - v44;
  v46 = &v80 + *(v43 + 48) - v44;
  v93 = v30;
  v47 = *(v30 + 16);
  v47(&v80 - v44, v95, v27);
  v47(v46, a2, v27);
  v48 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v81 = v26;
    v56 = v90;
    v57 = v92;
    v47(v36, v48, v27);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v94 + 8))(v36, v56);
      goto LABEL_10;
    }

    v61 = *(v94 + 32);
    v62 = v56;
    v61();
    v63 = v89;
    (v61)(v89, v46, v56);
    v64 = v63;
    v65 = v88;
    PluginAction.loggingId.getter();
    v66 = v87;
    PluginAction.loggingId.getter();
    v67 = v65;
    v68 = *(v85 + 48);
    v69 = v57;
    outlined init with copy of UUID?(v67, v57);
    outlined init with copy of UUID?(v66, v57 + v68);
    v70 = v57;
    v71 = v86;
    if (__swift_getEnumTagSinglePayload(v70, 1, v86) == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of PhoneCallNLIntent?(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v72 = *(v94 + 8);
      v72(v64, v62);
      v72(v81, v62);
      if (__swift_getEnumTagSinglePayload(v69 + v68, 1, v71) == 1)
      {
        outlined destroy of PhoneCallNLIntent?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_8;
      }
    }

    else
    {
      v73 = v84;
      outlined init with copy of UUID?(v69, v84);
      if (__swift_getEnumTagSinglePayload(v69 + v68, 1, v71) != 1)
      {
        v75 = v82;
        v76 = v83;
        (*(v83 + 32))(v82, v69 + v68, v71);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        v77 = *(v76 + 8);
        v77(v75, v71);
        outlined destroy of PhoneCallNLIntent?(v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of PhoneCallNLIntent?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v78 = *(v94 + 8);
        v78(v89, v62);
        v78(v81, v62);
        v77(v84, v71);
        outlined destroy of PhoneCallNLIntent?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_18;
      }

      outlined destroy of PhoneCallNLIntent?(v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of PhoneCallNLIntent?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v74 = *(v94 + 8);
      v74(v89, v62);
      v74(v81, v62);
      (*(v83 + 8))(v73, v71);
    }

    outlined destroy of PhoneCallNLIntent?(v69, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v52 = 0;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_10;
    }

LABEL_8:
    v52 = 1;
    goto LABEL_18;
  }

  v50 = v91;
  v47(v91, v45, v27);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v50 == *v46;
    v53 = type metadata accessor for Parse();
    OUTLINED_FUNCTION_23_1(v53);
    v55 = *(v54 + 8);
    v55(&v46[v51], v53);
    v55(&v50[v51], v53);
LABEL_18:
    v40 = v93;
    goto LABEL_19;
  }

  v58 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_5(v58);
  (*(v59 + 8))(&v50[v51], v60);
LABEL_10:
  v52 = 0;
  v27 = TupleTypeMetadata2;
LABEL_19:
  (*(v40 + 8))(v48, v27);
  return v52 & 1;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ContactNeedsValueGuardFlow<A>.FlowState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static ContactNeedsValueGuardFlow.FlowState.== infix(_:_:)(a1, a2);
}

uint64_t ContactNeedsValueGuardFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_47_0();
  v5 = v4;
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_47_0();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v34 - v20;
  (*(v5 + 136))(v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  (*(v13 + 16))(v18, v21, v10);
  v22 = *v18;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR) + 48);
  if (v22 != 2)
  {
    v29 = type metadata accessor for Parse();
    OUTLINED_FUNCTION_23_5(v29);
    (*(v30 + 8))(&v18[v23]);
LABEL_5:
    OUTLINED_FUNCTION_2_0();
    v32 = *(v1 + *(v31 + 104));
    dispatch thunk of AnyValueFlow.exitValue.getter();
    return (*(v13 + 8))(v21, v10);
  }

  v24 = enum case for PromptResult.cancelled<A>(_:);
  type metadata accessor for IntentPromptAnswer();
  v25 = type metadata accessor for PromptResult();
  OUTLINED_FUNCTION_23_1(v25);
  (*(v26 + 104))(a1, v24);
  v27 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_5(v27);
  (*(v28 + 8))(&v18[v23]);
  return (*(v13 + 8))(v21, v10);
}

uint64_t key path setter for ContactNeedsValueGuardFlow.flowState : <A>ContactNeedsValueGuardFlow<A>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1);
  v13 = *a2;
  return ContactNeedsValueGuardFlow.flowState.setter(v11);
}

void ContactNeedsValueGuardFlow.flowState.didset()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);

  v19 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = *(*v1 + 96);
    swift_beginAccess();
    (*(v5 + 16))(v8, v1 + v13, v4);
    swift_getWitnessTable();
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v19, v10, "#ContactNeedsValueGuardFlow state => %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v17 = v19;
  }
}

uint64_t ContactNeedsValueGuardFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_33_0();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  OUTLINED_FUNCTION_23_1(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

uint64_t ContactNeedsValueGuardFlow.flowState.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_33_0();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  v11 = *(v10 - 8);
  (*(v11 + 24))(&v1[v5], a1, v10);
  swift_endAccess();
  ContactNeedsValueGuardFlow.flowState.didset();
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_55();
  return v14(v13);
}

uint64_t ContactNeedsValueGuardFlow.__allocating_init(_:_:app:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  v9 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  v10 = OUTLINED_FUNCTION_23_5(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18[-v13 - 8];
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v18);
  v15 = (*(v3 + 160))(a1, v14, v18, a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v15;
}

uint64_t ContactNeedsValueGuardFlow.__allocating_init(flow:state:sharedGlobals:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  ContactNeedsValueGuardFlow.init(flow:state:sharedGlobals:app:)(a1, a2, a3, a4);
  return v11;
}

char *ContactNeedsValueGuardFlow.init(flow:state:sharedGlobals:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  OUTLINED_FUNCTION_47_0();
  *&v4[*(v9 + 104)] = v10;
  OUTLINED_FUNCTION_2_0();
  v12 = *(v11 + 96);
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_47_0();
  v16 = *(v15 + 88);
  v17 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  OUTLINED_FUNCTION_23_1(v17);
  (*(v18 + 32))(&v4[v12], a2);
  OUTLINED_FUNCTION_2_0();
  outlined init with take of PhoneCallFeatureFlagProviding(a3, &v4[*(v19 + 112)]);
  OUTLINED_FUNCTION_2_0();
  *&v4[*(v20 + 120)] = a4;
  return v4;
}

uint64_t ContactNeedsValueGuardFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  OUTLINED_FUNCTION_5_4();
  v94 = v7;
  OUTLINED_FUNCTION_15_0();
  v8 = type metadata accessor for PluginAction();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_5_4();
  v95 = v14;
  OUTLINED_FUNCTION_15_0();
  v15 = type metadata accessor for Parse();
  v16 = OUTLINED_FUNCTION_7(v15);
  v97 = v17;
  v98 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_5_4();
  v96 = v20;
  v21 = *(v4 + 80);
  v22 = *(v4 + 88);
  v23 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  v24 = OUTLINED_FUNCTION_7(v23);
  v99 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_16_2();
  v100 = v28;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v29);
  v102 = &v86[-v30];
  OUTLINED_FUNCTION_15_0();
  v31 = type metadata accessor for Input();
  v32 = OUTLINED_FUNCTION_7(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_16_2();
  v93 = v37;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v38);
  v40 = &v86[-v39];
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Logger.siriPhone);
  v91 = *(v34 + 16);
  v92 = v34 + 16;
  v91(v40, a1, v31);
  swift_retain_n();
  v101 = v42;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v89 = v11;
    v46 = v45;
    v47 = swift_slowAlloc();
    v90 = a1;
    v88 = v47;
    v103 = v47;
    *v46 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v87 = v44;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v23;
    v50 = v8;
    v52 = v51;
    (*(v34 + 8))(v40, v31);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v52, &v103);
    v8 = v50;
    v23 = v49;

    *(v46 + 4) = v53;
    *(v46 + 12) = 2080;
    OUTLINED_FUNCTION_41_0();
    v55 = v102;
    (*(v54 + 136))();

    v56 = ContactNeedsValueGuardFlow.FlowState.description.getter(v49);
    v58 = v57;

    (*(v99 + 8))(v55, v49);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v103);

    *(v46 + 14) = v59;
    _os_log_impl(&dword_0, v43, v87, "#ContactNeedsValueGuardFlow on(input:) %s, state = %s", v46, 0x16u);
    swift_arrayDestroy();
    a1 = v90;
    OUTLINED_FUNCTION_26_0();
    v11 = v89;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    (*(v34 + 8))(v40, v31);
    v55 = v102;
  }

  v60 = v31;
  OUTLINED_FUNCTION_41_0();
  v62 = v100;
  (*(v61 + 136))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR);
      (*(v97 + 8))(v62 + *(v64 + 48), v98);
      goto LABEL_10;
    }

    v74 = v96;
    Input.parse.getter();
    v75 = static ExecutionPath.choosePath(for:sharedGlobals:app:)(v74, (v2 + *(*v2 + 112)), *(v2 + *(*v2 + 120)));
    (*(v97 + 8))(v74, v98);
    if (v75 != 3)
    {
      if (v75 == 4)
      {
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_51_0(v78))
        {
          *OUTLINED_FUNCTION_65_0() = 0;
          OUTLINED_FUNCTION_36_0(&dword_0, v79, v80, "#ContactNeedsValueGuardFlow on(input:) .deferToEmergencyPlugin");
          OUTLINED_FUNCTION_26_0();
        }

        v91(v93, a1, v60);
        UUID.init()();
        v81 = v95;
        PluginAction.init(flowHandlerId:input:loggingId:)();
        (*(v11 + 16))(v55, v81, v8);
        swift_storeEnumTagMultiPayload();
        ContactNeedsValueGuardFlow.flowState.setter(v55);
        (*(v11 + 8))(v81, v8);
      }

      else
      {
        if (v75 == 5)
        {
          goto LABEL_18;
        }

        v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR) + 48);
        *v55 = v75;
        Input.parse.getter();
        swift_storeEnumTagMultiPayload();
        ContactNeedsValueGuardFlow.flowState.setter(v55);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v85);
          _os_log_impl(&dword_0, v83, v84, "#ContactNeedsValueGuardFlow on(input:) .deferToServer", v23, 2u);
          OUTLINED_FUNCTION_12_3();
        }
      }

      v72 = 1;
      return v72 & 1;
    }

LABEL_18:
    v65 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_51_0(v76))
    {
      goto LABEL_13;
    }

    *OUTLINED_FUNCTION_65_0() = 0;
    v69 = "#ContactNeedsValueGuardFlow on(input:) delegate to wrapped flow";
    goto LABEL_12;
  }

  (*(v99 + 8))(v62, v23);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  ContactNeedsValueGuardFlow.flowState.setter(v55);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v66))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    v69 = "#ContactNeedsValueGuardFlow on(input:) fallback (to server or Emergency plugin) did not succeed, re-run wrapped flow.";
LABEL_12:
    OUTLINED_FUNCTION_36_0(&dword_0, v67, v68, v69);
    OUTLINED_FUNCTION_26_0();
  }

LABEL_13:

  OUTLINED_FUNCTION_41_0();
  v71 = *(v2 + *(v70 + 104));
  v72 = dispatch thunk of AnyValueFlow.on(input:)();
  return v72 & 1;
}

uint64_t ContactNeedsValueGuardFlow.execute()(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *v1;
  v4 = type metadata accessor for Parse();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for PluginAction();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();
  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
  v12 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
  v2[23] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return _swift_task_switch(ContactNeedsValueGuardFlow.execute(), 0, 0);
}

uint64_t ContactNeedsValueGuardFlow.execute()()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[15];
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 136))();
  OUTLINED_FUNCTION_55();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v0[21] + 32))(v0[22], v0[24], v0[20]);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.siriPhone);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v29))
    {
      v30 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v30);
      OUTLINED_FUNCTION_14_1(&dword_0, v31, v32, "#ContactNeedsValueGuardFlow execute() Request needs execution of emergency resource flow on device. Deferring to Emergency plugin.");
      OUTLINED_FUNCTION_12_3();
    }

    v34 = v0[21];
    v33 = v0[22];
    v35 = v0[20];
    v36 = v0[14];

    static ExecuteResponse.redirect(nextPluginAction:)();
    v37 = *(v34 + 8);
    v38 = OUTLINED_FUNCTION_55();
    v39(v38);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0[24];
    v7 = v0[19];
    v8 = v0[16];
    v9 = v0[17];
    v10 = *v6;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR);
    (*(v9 + 32))(v7, &v6[*(v11 + 48)], v8);
    if (v10 == 2)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.siriPhone);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v14))
      {
        v15 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v15);
        OUTLINED_FUNCTION_14_1(&dword_0, v16, v17, "#ContactNeedsValueGuardFlow execute() deferring to CompositionFlow");
        OUTLINED_FUNCTION_12_3();
      }

      v19 = v0[18];
      v18 = v0[19];
      v20 = v0[16];
      v21 = v0[17];
      v22 = v0[14];
      v23 = v0[15];

      type metadata accessor for BusinessCompositionFlow();
      (*(v21 + 16))(v19, v18, v20);
      outlined init with copy of SignalProviding(v23 + *(*v23 + 112), (v0 + 7));
      v0[13] = BusinessCompositionFlow.__allocating_init(parse:sharedGlobals:)(v19, v0 + 7);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type BusinessCompositionFlow and conformance BusinessCompositionFlow, type metadata accessor for BusinessCompositionFlow);
      static ExecuteResponse.complete<A>(next:)();

      v24 = *(v21 + 8);
      v25 = OUTLINED_FUNCTION_55();
      v26(v25);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Logger.siriPhone);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v55))
      {
        v56 = OUTLINED_FUNCTION_65_0();
        *v56 = 0;
        _os_log_impl(&dword_0, v54, v8, "#ContactNeedsValueGuardFlow execute() Returning unhandled due to needsServerExecution", v56, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v57 = v0[19];
      v58 = v0[16];
      v59 = v0[17];
      v60 = v0[14];
      v61 = v0[15];

      outlined init with copy of SignalProviding(v61 + *(*v61 + 112), (v0 + 2));
      type metadata accessor for RedirectToServerFlow();
      swift_allocObject();
      v0[12] = RedirectToServerFlow.init(to:sharedGlobals:isSentinelFlow:)(v10, (v0 + 2), 0);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, type metadata accessor for RedirectToServerFlow);
      static ExecuteResponse.ongoing<A>(next:)();

      (*(v59 + 8))(v57, v58);
    }

LABEL_26:
    v62 = v0[24];
    v63 = v0[22];
    v65 = v0[18];
    v64 = v0[19];

    v66 = v0[1];

    return v66();
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.siriPhone);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v42))
  {
    v43 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v43);
    OUTLINED_FUNCTION_14_1(&dword_0, v44, v45, "#ContactNeedsValueGuardFlow execute() Request needs execution on device. Moving onto NeedsValue flow strategy.");
    OUTLINED_FUNCTION_12_3();
  }

  v46 = v0[15];

  OUTLINED_FUNCTION_41_0();
  v48 = *(v46 + *(v47 + 104));
  v49 = *(&async function pointer to dispatch thunk of AnyValueFlow.execute() + 1);
  v67 = (&async function pointer to dispatch thunk of AnyValueFlow.execute() + async function pointer to dispatch thunk of AnyValueFlow.execute());
  v50 = swift_task_alloc();
  v0[25] = v50;
  *v50 = v0;
  v50[1] = ContactNeedsValueGuardFlow.execute();
  v51 = v0[14];

  return v67(v51);
}

{
  v1 = *(*v0 + 200);
  v2 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  return _swift_task_switch(ContactNeedsValueGuardFlow.execute(), 0, 0);
}

{
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[1];

  return v5();
}

uint64_t ContactNeedsValueGuardFlow.execute(completion:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 88);
  type metadata accessor for ContactNeedsValueGuardFlow();
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for Flow.execute() in conformance ContactNeedsValueGuardFlow<A>(uint64_t a1)
{
  v4 = *(**v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow;

  return v8(a1);
}

uint64_t type metadata completion function for ContactNeedsValueGuardFlow(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for ContactNeedsValueGuardFlow.FlowState();
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

void type metadata completion function for ContactNeedsValueGuardFlow.FlowState()
{
  type metadata accessor for PluginAction();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (ExecutionPath.FallbackLocation, Parse)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (ExecutionPath.FallbackLocation, Parse)()
{
  if (!lazy cache variable for type metadata for (ExecutionPath.FallbackLocation, Parse))
  {
    type metadata accessor for Parse();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ExecutionPath.FallbackLocation, Parse));
    }
  }
}

uint64_t ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Parse.DirectInvocation();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Parse();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a1, v14);
  v22 = *(v17 + 88);
  v23 = OUTLINED_FUNCTION_1_12();
  v25 = v24(v23);
  if (v25 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_2;
  }

  if (v25 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v29 = *(v17 + 96);
    v30 = OUTLINED_FUNCTION_1_12();
    v31(v30);
    v32 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

    v33 = type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_1(v33);
    (*(v34 + 8))(v21);
    goto LABEL_5;
  }

  if (v25 == enum case for Parse.directInvocation(_:))
  {
    v39 = *(v17 + 96);
    v40 = OUTLINED_FUNCTION_1_12();
    v41(v40);
    (*(v9 + 32))(v13, v21, v6);
    v38 = ContactPromptResponseParser.parseResponse(from:)();
    (*(v9 + 8))(v13, v6);
  }

  else
  {
    if (v25 == enum case for Parse.NLv4IntentOnly(_:) || v25 == enum case for Parse.uso(_:))
    {
LABEL_2:
      v26 = *(v17 + 8);
      v27 = OUTLINED_FUNCTION_1_12();
      v28(v27);
LABEL_5:
      v35 = v3[3];
      v36 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v35);
      v37 = (*(v36 + 72))(v35, v36);
      (*(*v37 + 192))(&v54, a1);

      if (v55)
      {
        outlined init with take of SPHConversation(&v54, v56);
        v38 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v56, a2 & 1);
        __swift_destroy_boxed_opaque_existential_1(v56);
        goto LABEL_11;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v54, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      goto LABEL_8;
    }

    if (v25 != enum case for Parse.empty(_:))
    {
      v51 = *(v17 + 8);
      v52 = OUTLINED_FUNCTION_1_12();
      v53(v52);
LABEL_8:
      v38 = 5;
      goto LABEL_11;
    }

    v38 = 8;
  }

LABEL_11:
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.siriPhone);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v45 = 136315394;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045AC00, v56);
    *(v45 + 12) = 2080;
    if (v38 == 8)
    {
      v46 = 0xE300000000000000;
      v47 = 7104878;
    }

    else
    {
      v47 = ContactPromptResponse.debugDescription.getter(v38);
      v46 = v48;
    }

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, v56);

    *(v45 + 14) = v49;
    _os_log_impl(&dword_0, v43, v44, "#ContactPromptResponseParser %s: %s", v45, 0x16u);
    swift_arrayDestroy();
  }

  return v38;
}

uint64_t ContactPromptResponse.debugDescription.getter(uint64_t a1)
{
  switch(a1)
  {
    case 5u:
      return 0x6E776F6E6B6E752ELL;
    case 6u:
      return 0xD000000000000015;
    case 7u:
      return 0x6F4374657365722ELL;
  }

  _StringGuts.grow(_:)(17);

  strcpy(v5, ".confirmation(");
  v3._countAndFlagsBits = PhoneCallConfirmation.rawValue.getter(a1);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return v5[0];
}

uint64_t ContactPromptResponseParser.parseResponse(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  static CommonDirectAction.from(_:)((&v11 - v5));
  v7 = type metadata accessor for CommonDirectAction();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    goto LABEL_7;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v6, v4, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v9 = 0;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 7)
  {
    outlined destroy of CommonDirectAction(v4);
LABEL_7:
    v9 = 8;
    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  return v9;
}

uint64_t ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(void *a1, char a2)
{
  v3 = v2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = (*(v7 + 64))(v6, v7);
  if (result != 5)
  {
    return result;
  }

  if ((a2 & 1) == 0 || (v9 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), !PhoneCallNLIntent.isCallWithReference()()))
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = *((*(v16 + 24))(v15, v16) + 16);

    if (v17)
    {
      v18 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      v20 = (*(v19 + 24))(v18, v19);
      v21 = v20 + 32;
      v22 = -*(v20 + 16);
      v23 = -1;
      while (1)
      {
        if (v22 + v23 == -1)
        {

          return 1;
        }

        if (++v23 >= *(v20 + 16))
        {
          break;
        }

        outlined init with copy of SignalProviding(v21, v43);
        v24 = v44;
        v25 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        if (((*(v25 + 368))(v24, v25) & 0xFF00) == 0x200 || (v26 = v44, v27 = v45, __swift_project_boxed_opaque_existential_1(v43, v44), v28 = (*(v27 + 368))(v26, v27), (v28 & 0xFF00) == 0x200))
        {

          __swift_destroy_boxed_opaque_existential_1(v43);
          goto LABEL_17;
        }

        v21 += 40;
        v29 = v28 & 0xFFFFFF;
        __swift_destroy_boxed_opaque_existential_1(v43);
        if ((v29 & 0x10000) == 0)
        {

          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_17:
    v30 = v3[3];
    v31 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v30);
    v32 = (*(v31 + 72))(v30, v31);
    (*(*v32 + 224))(v43);

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v43, v36, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    if (v37)
    {
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v38, &v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      outlined destroy of TransformationResult(v36);
      if (*(&v40 + 1))
      {
        outlined init with take of SPHConversation(&v39, v42);
        v33 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        outlined init with copy of SignalProviding(v42, v36);
        PhoneCallNLIntent.shouldResetRequest(previousNLIntent:)();
        v35 = v34;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(v42);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
        if (v35)
        {
          return 6;
        }

        return 8;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return 8;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_28:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045AC00, v43);
    _os_log_impl(&dword_0, v11, v12, "#ContactPromptResponseParser %s: treat call + reference as a confirmation to proceed the call", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return 0;
}

unsigned __int8 *getEnumTagSinglePayload for ContactPromptResponse(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 5)
    {
      v7 = v6 - 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 7;
    if (a2 + 7 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 7);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactPromptResponse(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 >= 0xF9)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF8)
  {
    v7 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for ContactPromptResponse(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ContactPromptResponse(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactPromptResponseParser(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ContactPromptResponseParser(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void specialized _ArrayProtocol.filter(_:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_30;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v4);
    if (!v6)
    {
      v8 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v5);
      if (!v8)
      {
        goto LABEL_25;
      }

      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_24;
        }
      }

      else if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v11 = *(v9 + 32);
      }

      outlined bridged method (ob) of @objc INPerson.contactIdentifier.getter(v11);
      if (!v12 || (v10 ? (v13 = _CocoaArrayWrapper.endIndex.getter()) : (v13 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8))), , v13 != 1))
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v7 = specialized Set._Variant.insert(_:)();

    if (!v7)
    {

      continue;
    }

LABEL_25:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v14 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void specialized INPersonContainingIntent.clearContactsSlotMatches()()
{
  specialized INPersonContainingIntent.clearContactsSlotMatches()();
}

{
  specialized INPersonContainingIntent.clearContactsSlotMatches()();
}

{
  specialized INPersonContainingIntent.clearContactsSlotMatches()();
}

{
  OUTLINED_FUNCTION_136_0();
  v2 = v1;
  v4 = v3(v0);
  if (!v4)
  {
    OUTLINED_FUNCTION_86_3();
    return;
  }

  v5 = v4;
  v6 = specialized Array.count.getter(v4);
  if (v6)
  {
    v7 = v6;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      __break(1u);
      return;
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

      ++v8;
      outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(_swiftEmptyArrayStorage, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v8);
  }

  v2(_swiftEmptyArrayStorage);
  OUTLINED_FUNCTION_86_3();
}

void specialized INPersonContainingIntent.clearContactsSlotMatches()(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Swift::OpaquePointer newContacts, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_136_0();
  INSearchCallHistoryIntent.contacts.getter();
  if (!v22)
  {
    OUTLINED_FUNCTION_86_3();
    return;
  }

  v23 = v22;
  v24 = specialized Array.count.getter(v22);
  if (v24)
  {
    v25 = v24;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v25 < 0)
    {
      __break(1u);
      return;
    }

    v26 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v23 + 8 * v26 + 32);
      }

      ++v26;
      v28 = OUTLINED_FUNCTION_123();
      outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(v28, v29);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v25 != v26);
  }

  INSearchCallHistoryIntent.overwriteContacts(newContacts:)(_swiftEmptyArrayStorage);
  OUTLINED_FUNCTION_86_3();
}

uint64_t static ContactResolution.dedupeContacts(contacts:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_42();
    v16 = OUTLINED_FUNCTION_62();
    *v0 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v5 = Array.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v16);
    OUTLINED_FUNCTION_113_0();
    *(v0 + 4) = v1;
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_22_8();
    OUTLINED_FUNCTION_52();
  }

  v16 = _swiftEmptySetSingleton;

  specialized _ArrayProtocol.filter(_:)(v12);
  v14 = v13;

  return v14;
}

void static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  LOBYTE(v19) = a10 & 1;
  specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(a1, a3, a4, a5, a6, a7, a8, a9, v19, a11, a12, v12, ObjectType, a2, v20, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31);
}

void SiriPhoneContact.asSiriInferenceContact.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, &_s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v14 = &v82 - v13;
  v92 = type metadata accessor for ContactHandle.HandleType();
  v15 = OUTLINED_FUNCTION_7(v92);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_2();
  v91 = v20;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_91();
  v90 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_21(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v26);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  OUTLINED_FUNCTION_21(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v32);
  v34 = &v82 - v33;
  ContactQuery.init()();
  v94 = v6;
  if (SiriPhoneContact.getFullName(filteredAlternatives:)(1).value._object)
  {
    ContactQuery.fullName.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getPrefixName()().value._object)
  {
    ContactQuery.namePrefix.setter();
  }

  v35 = OUTLINED_FUNCTION_48_9();
  if (SiriPhoneContact.getFirstName(filteredAlternatives:)(v35).value._object)
  {
    ContactQuery.givenName.setter();
  }

  v36 = OUTLINED_FUNCTION_48_9();
  if (SiriPhoneContact.getMiddleName(filteredAlternatives:)(v36).value._object)
  {
    ContactQuery.middleName.setter();
  }

  v37 = OUTLINED_FUNCTION_48_9();
  if (SiriPhoneContact.getLastName(filteredAlternatives:)(v37).value._object)
  {
    ContactQuery.familyName.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getPostfixName()().value._object)
  {
    ContactQuery.nameSuffix.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getNickName()().value._object)
  {
    ContactQuery.nickname.setter();
  }

  v38 = *(v4 + 416);
  v93 = v4;
  v38(v94, v4);
  if (v39)
  {
    OUTLINED_FUNCTION_70_1();
    v40 = type metadata accessor for ContactQuery();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v40);
    OUTLINED_FUNCTION_19_0();
    ContactRelationshipQuery.init(label:fromContact:)();
    v41 = type metadata accessor for ContactRelationshipQuery();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v41);
    ContactQuery.relationship.setter();
  }

  if (SiriPhoneContact.getOrganzationName()().value._object)
  {
    ContactQuery.organizationName.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.isMe()())
  {
    ContactQuery.isMe.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getContactName()().value._object)
  {
    ContactQuery.givenName.getter();
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_61_9();
    if (v42 || (ContactQuery.middleName.getter(), OUTLINED_FUNCTION_111_1(), OUTLINED_FUNCTION_61_9(), v43) || (ContactQuery.familyName.getter(), OUTLINED_FUNCTION_111_1(), OUTLINED_FUNCTION_61_9(), v44))
    {
    }

    else
    {
      ContactQuery.givenName.setter();
    }
  }

  v45 = SiriPhoneContact.getHandleType()();
  if (v45.value._object)
  {
    v86 = v2;
    v87 = v14;
    v88 = v8;
    v85 = v45;
    v100 = v45;
    v84 = lazy protocol witness table accessor for type String and conformance String();
    v46 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
    v47 = 0;
    v95 = *(v46 + 16);
    v48 = v46 + 56;
    v89 = _swiftEmptyArrayStorage;
    v83 = v46 + 56;
LABEL_28:
    v49 = (v48 + 32 * v47);
    while (v95 != v47)
    {
      if (v47 >= *(v46 + 16))
      {
        __break(1u);
LABEL_71:
        OUTLINED_FUNCTION_6_2();
LABEL_60:
        v75 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v75, static Logger.siriPhone);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v77))
        {
          v78 = OUTLINED_FUNCTION_65_0();
          *v78 = 0;
          _os_log_impl(&dword_0, v76, v77, "#ContactResolution received AmbiguousHandle. Setting handleType as unknown", v78, 2u);
          OUTLINED_FUNCTION_26_0();
        }

        v72 = v90;
        v74 = v92;
        (*(v17 + 8))(v90, v92);
        (v1)(v72, enum case for ContactHandle.HandleType.unknown(_:), v74);
        goto LABEL_63;
      }

      v50 = v17;
      v51 = *(v49 - 3);
      v1 = *(v49 - 2);
      v53 = *(v49 - 1);
      v52 = *v49;
      v54 = v51 >> 16;
      v55 = v1 >> 16;
      if (v53 != 0x656E6F6870 || v52 != 0xE500000000000000 || v54 != 0 || v55 != 5)
      {
        OUTLINED_FUNCTION_100_1();
        if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
        {
          v59 = v53 == 0x6C69616D65 && v52 == 0xE500000000000000;
          if (!v59 || v54 || v55 != 5)
          {
            OUTLINED_FUNCTION_100_1();
            if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
            {

              countAndFlagsBits = v89;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v100.value._countAndFlagsBits = countAndFlagsBits;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v62 = *(countAndFlagsBits + 16);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                countAndFlagsBits = v100.value._countAndFlagsBits;
              }

              v64 = *(countAndFlagsBits + 16);
              v63 = *(countAndFlagsBits + 24);
              if (v64 >= v63 >> 1)
              {
                OUTLINED_FUNCTION_76(v63);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                countAndFlagsBits = v100.value._countAndFlagsBits;
              }

              ++v47;
              *(countAndFlagsBits + 16) = v64 + 1;
              v89 = countAndFlagsBits;
              v65 = (countAndFlagsBits + 32 * v64);
              v65[4] = v51;
              v65[5] = v1;
              v65[6] = v53;
              v65[7] = v52;
              v17 = v50;
              v48 = v83;
              goto LABEL_28;
            }
          }
        }
      }

      v49 += 4;
      ++v47;
      v17 = v50;
    }

    v100.value._countAndFlagsBits = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v66 = Sequence<>.joined(separator:)();
    v68 = v67;

    v100.value._countAndFlagsBits = v66;
    v100.value._object = v68;
    v98 = 0x6C616E6F73726570;
    v99 = 0xE800000000000000;
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v69;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v100 = v85;
    v98 = 0x6C69616D65;
    v99 = 0xE500000000000000;
    v70 = StringProtocol.contains<A>(_:)();

    v1 = *(v17 + 104);
    v71 = &enum case for ContactHandle.HandleType.email(_:);
    if ((v70 & 1) == 0)
    {
      v71 = &enum case for ContactHandle.HandleType.phone(_:);
    }

    v72 = v90;
    v73 = v92;
    (v1)(v90, *v71, v92);
    v74 = v73;
    if ((*(v93 + 344))(v94))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        goto LABEL_71;
      }

      goto LABEL_60;
    }

LABEL_63:
    (*(v17 + 16))(v91, v72, v74);
    OUTLINED_FUNCTION_5_26();
    ContactHandleQuery.init(type:label:value:)();
    v79 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_84_3(v79);
    ContactQuery.handle.setter();
    (*(v17 + 8))(v72, v74);
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getPhoneNumber()().value._object)
  {
    OUTLINED_FUNCTION_70_1();
    (*(v17 + 104))(v91, enum case for ContactHandle.HandleType.phone(_:), v92);
    OUTLINED_FUNCTION_95_1();
    v80 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_84_3(v80);
    ContactQuery.handle.setter();
  }

  if (SiriPhoneContact.getEmailAddress()().value._object)
  {
    OUTLINED_FUNCTION_70_1();
    (*(v17 + 104))(v91, enum case for ContactHandle.HandleType.email(_:), v92);
    OUTLINED_FUNCTION_95_1();
    v81 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_84_3(v81);
    ContactQuery.handle.setter();
  }

  OUTLINED_FUNCTION_65();
}

uint64_t ContactQuery.isEmpty.getter()
{
  if (one-time initialization token for emptyQuery != -1)
  {
    OUTLINED_FUNCTION_13_22();
    swift_once();
  }

  v0 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_123_1(v0, static ContactQuery.emptyQuery);
  if (static ContactQuery.== infix(_:_:)())
  {
    return 1;
  }

  if (one-time initialization token for emptyNLv4Query != -1)
  {
    OUTLINED_FUNCTION_12_29();
    swift_once();
  }

  OUTLINED_FUNCTION_123_1(v0, static ContactQuery.emptyNLv4Query);

  return static ContactQuery.== infix(_:_:)();
}

uint64_t closure #1 in static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *a1;

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  _s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO08populateafG005phoneB8NLIntent13contextNLType3app23resolvedSiriKitContacts17callStateProviderSo020FLOWSchemaFLOWDomainG0CSgAA0abL0_p_AA0afgN0O0Q13AppResolution0Y0CSgSay0Q9Inference08ResolvedqR7ContactVGAA0bU9Providing_ptFZTf4nnnnen_nAA0buV0V_Tt4g5(a3, 1, a2, a4, &static CallStateProvider.instance);
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

void static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_135_0();

  specialized static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)(v21, v22, v23, v24, v25, v26, v27, v20, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t ContactResolution.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t ContactResolution.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

void static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)()
{
  OUTLINED_FUNCTION_92_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_135_0();

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)();
}

void closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_66();
  v70 = v27;
  v71 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_2_4();
  v34 = type metadata accessor for PhoneError();
  v35 = OUTLINED_FUNCTION_23_1(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_4();
  v40 = (v39 - v38);
  if (v33)
  {
    swift_errorRetain();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v41 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v68 = v31;
      v44 = OUTLINED_FUNCTION_42();
      v69 = v29;
      v67 = swift_slowAlloc();
      v72 = v67;
      *v44 = 136315138;
      swift_getErrorValue();
      v45 = Error.localizedDescription.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v72);

      *(v44 + 4) = v47;
      _os_log_impl(&dword_0, v42, v43, "#EmergencyContactResolution Error gathering emergency contacts: %s", v44, 0xCu);
      v25 = v67;
      __swift_destroy_boxed_opaque_existential_1(v67);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    *v40 = v33;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    swift_allocError();
    OUTLINED_FUNCTION_70_1();
    swift_errorRetain();
    PhoneError.logged()(v25);
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    v71(v42, 1);
  }

  else
  {
    if (v24)
    {
      v48 = v24;
    }

    else
    {
      v48 = _swiftEmptyArrayStorage;
    }

    v49 = one-time initialization token for siriPhone;

    if (v49 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v50 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v50, static Logger.siriPhone);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v52))
    {
      v53 = OUTLINED_FUNCTION_42();
      *v53 = 134217984;
      *(v53 + 4) = specialized Array.count.getter(v48);

      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v54, v55, v56, v57, v53, 0xCu);
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

    __chkstk_darwin(v58);
    *(&v66 - 2) = a21;
    *(&v66 - 1) = a24;
    v59 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo19_HKEmergencyContactCG_So8INPersonCs5NeverOTg5(partial apply for closure #1 in closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:), (&v66 - 4), v48);

    if (specialized Array.count.getter(v59) >= 2)
    {
      ObjectType = swift_getObjectType();
      v61 = (*(a23 + 8))(ObjectType, a23);
      if (v61)
      {
        v62 = v61;
        if (specialized Array.count.getter(v61))
        {
          OUTLINED_FUNCTION_46_7();
          if (a22)
          {
            OUTLINED_FUNCTION_140_0();
          }

          else
          {
            v63 = *(v62 + 32);
          }

          OUTLINED_FUNCTION_40_0();

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_426260;
          outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(v59, a22);
          v65 = a22;
          OUTLINED_FUNCTION_5();

          *(v64 + 32) = a22;

          v59 = v64;
        }

        else
        {
        }
      }
    }

    v71(v59, 0);
  }

  Signpost.OpenSignpost.end()();
  OUTLINED_FUNCTION_65();
}

id static EmergencyContactResolution.makeINPerson(emergencyContact:locale:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27 - v4;
  v6 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_phoneNumberLabel);
  if (v7)
  {
    v29[0] = v6;
    v29[1] = v7;
    closure #1 in static EmergencyContactResolution.makeINPerson(emergencyContact:locale:)(v29, &v28);

    v8 = v28;
  }

  else
  {
    v8 = 0;
  }

  outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_relationship);
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_phoneNumber);
  v13 = v12;
  v14 = objc_allocWithZone(INPersonHandle);
  v15 = v8;
  v16 = @nonobjc INPersonHandle.init(value:type:label:)(v11, v13, 2, v8);
  v17 = type metadata accessor for PersonNameComponents();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v17);
  v18 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_name);
  v20 = v19;
  v21 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_nameContactIdentifier);
  v23 = v22;
  v24 = objc_allocWithZone(INPerson);
  v25 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(v16, v5, v18, v20, 0, v21, v23, 0, 0, v10);

  return v25;
}

void EmergencyContactResolution.populateEmergencyContacts(sirikitIntent:locale:medicalIDStore:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v40 = *v0;
  v42 = type metadata accessor for DispatchTimeInterval();
  v5 = OUTLINED_FUNCTION_7(v42);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = (v11 - v10);
  v41 = type metadata accessor for DispatchTime();
  v13 = OUTLINED_FUNCTION_7(v41);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_12_5();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v22 = dispatch_semaphore_create(0);
  swift_getObjectType();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v4;
  v23[4] = v2;
  v24 = *(*(v2 + 8) + 8);
  v25 = v22;
  v26 = v4;
  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)();

  static DispatchTime.now()();
  *v12 = 300;
  (*(v7 + 104))(v12, enum case for DispatchTimeInterval.milliseconds(_:), v42);
  + infix(_:_:)();
  v27 = *(v7 + 8);
  v28 = OUTLINED_FUNCTION_5_26();
  v29(v28);
  v30 = *(v15 + 8);
  v30(v20, v41);
  OS_dispatch_semaphore.wait(timeout:)();
  v31 = OUTLINED_FUNCTION_101_1();
  (v30)(v31);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_8(v34))
  {
    v35 = OUTLINED_FUNCTION_42();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v35 = 136315138;
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v43);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_0, v33, v41, "#ContactResolution Timeout result (set at 300ms): %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_65();
}

Swift::Int closure #1 in EmergencyContactResolution.populateEmergencyContacts(sirikitIntent:locale:medicalIDStore:)(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ((a2 & 1) == 0 && specialized Array.count.getter(a1))
  {
    ObjectType = swift_getObjectType();
    (*(*(*(a5 + 8) + 8) + 16))(a1, ObjectType);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = a4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = swift_getObjectType();
    (*(*(*(a5 + 8) + 8) + 8))(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v11, v12, "#ContactResolution Emergency contact conversion: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OS_dispatch_semaphore.signal()();
}

void closure #1 in static EmergencyContactResolution.makeINPerson(emergencyContact:locale:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  v15[0] = Locale.identifier.getter();
  v15[1] = v6;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v16 = v5;
  v7 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
  v9 = v8;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v15);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v15);
    _os_log_impl(&dword_0, v11, v12, "#ContactResolution Converted originalLabel: %s to %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = String._bridgeToObjectiveC()();

  *a2 = v14;
}

uint64_t @nonobjc HKMedicalIDStore.fetchMedicalIDEmergencyContacts(completion:)(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [_HKEmergencyContact]?, @guaranteed Error?) -> ();
  v5[3] = &block_descriptor_2;
  v3 = _Block_copy(v5);

  [v2 fetchMedicalIDEmergencyContactsWithCompletion:v3];
  _Block_release(v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [_HKEmergencyContact]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _HKEmergencyContact, _HKEmergencyContact_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t one-time initialization function for emptyQuery(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for ContactQuery();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t closure #1 in variable initialization expression of static ContactQuery.emptyNLv4Query@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v12 - v4;
  v6 = type metadata accessor for UsoEntityBuilder_common_Person();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  type metadata accessor for UsoEntity_common_Person();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
  if (v12[1])
  {
    UsoEntity_common_Person.toContactQuery()();

    v9 = type metadata accessor for ContactQuery();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
    return (*(*(v9 - 8) + 32))(a1, v5, v9);
  }

  else
  {
    v11 = type metadata accessor for ContactQuery();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
    ContactQuery.init()();

    result = __swift_getEnumTagSinglePayload(v5, 1, v11);
    if (result != 1)
    {
      return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
    }
  }

  return result;
}

uint64_t ContactQuery.init(isMe:phoneLabel:)()
{
  v0 = type metadata accessor for ContactHandle.HandleType();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, &_s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  ContactQuery.init()();
  ContactQuery.isMe.setter();
  (*(v3 + 104))(v8, enum case for ContactHandle.HandleType.phone(_:), v0);
  ContactHandleQuery.init(type:label:value:)();
  v15 = type metadata accessor for ContactHandleQuery();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  return ContactQuery.handle.setter();
}

void specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)()
{
  OUTLINED_FUNCTION_66();
  v43 = v1;
  v44 = v0;
  v40 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v42 = v8;
  v9 = type metadata accessor for Locale();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v17 = v16;
  v36 = v18;
  v20 = v19;
  v22 = v21;
  v23 = v5[4];
  v39 = v5[3];
  v37 = v23;
  v38 = __swift_project_boxed_opaque_existential_1(v5, v39);
  (*(v12 + 16))(v15, v7, v9);
  v24 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 16) = v17;
  *(v26 + 24) = v27;
  *(v26 + 32) = v20;
  *(v26 + 40) = v22;
  *(v26 + 41) = HIBYTE(v22) & 1;
  v28 = v41;
  *(v26 + 48) = v40;
  *(v26 + 56) = v28;
  (*(v12 + 32))(v26 + v24, v15, v9);
  v29 = (v26 + v25);
  v31 = v42;
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
  v32 = v37;
  v33 = *(v37 + 8);

  v34 = v31;
  v33(partial apply for closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:), v26, v39, v32);

  OUTLINED_FUNCTION_65();
}

void specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_66();
  a19 = v26;
  a20 = v27;
  v29 = v28;
  v296 = v30;
  v32 = v31;
  v34 = v33;
  v292 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v277 = type metadata accessor for ResolvedSiriKitContact();
  v42 = OUTLINED_FUNCTION_7(v277);
  v278 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v46);
  v274 = type metadata accessor for PhoneError();
  v47 = OUTLINED_FUNCTION_23_1(v274);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_12_5();
  v52 = (v50 - v51);
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v54);
  v291 = type metadata accessor for RecommenderType();
  v55 = OUTLINED_FUNCTION_7(v291);
  v289 = v56;
  v58 = *(v57 + 64);
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_5_4();
  v290 = v59;
  OUTLINED_FUNCTION_15_0();
  v285 = type metadata accessor for SearchSuggestedContacts();
  v60 = OUTLINED_FUNCTION_7(v285);
  v284 = v61;
  v63 = *(v62 + 64);
  __chkstk_darwin(v60);
  OUTLINED_FUNCTION_5_4();
  v287 = v64;
  OUTLINED_FUNCTION_15_0();
  v65 = type metadata accessor for ContactResolverDomain();
  v66 = OUTLINED_FUNCTION_21(v65);
  v68 = *(v67 + 64);
  __chkstk_darwin(v66);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v69);
  v288 = type metadata accessor for ContactActionType();
  v70 = OUTLINED_FUNCTION_7(v288);
  v286 = v71;
  v73 = *(v72 + 64);
  __chkstk_darwin(v70);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v74);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v75);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v78 = OUTLINED_FUNCTION_21(v77);
  v80 = *(v79 + 64);
  __chkstk_darwin(v78);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v81);
  OUTLINED_FUNCTION_91();
  v298 = v82;
  OUTLINED_FUNCTION_15_0();
  v299 = type metadata accessor for Locale();
  v83 = OUTLINED_FUNCTION_7(v299);
  v295 = v84;
  v86 = *(v85 + 64);
  __chkstk_darwin(v83);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v87);
  OUTLINED_FUNCTION_91();
  v297 = v88;
  OUTLINED_FUNCTION_15_0();
  v293 = type metadata accessor for ContactResolverConfigHashable();
  v89 = OUTLINED_FUNCTION_23_1(v293);
  v91 = *(v90 + 64);
  __chkstk_darwin(v89);
  OUTLINED_FUNCTION_16_2();
  v294 = v92;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v93);
  v95 = &v261 - v94;
  if (v37)
  {
    swift_getObjectType();
    v96 = dynamic_cast_existential_1_conditional(v41);
    v98 = one-time initialization token for siriPhone;
    if (v96)
    {
      v99 = v96;
      v100 = v97;
      v101 = a23;
      v102 = v41;
      if (v98 != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v103 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v103, static Logger.siriPhone);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_8(v105))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_34_5();
        _os_log_impl(v106, v107, v108, v109, v110, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v111 = [objc_allocWithZone(HKHealthStore) init];
      v112 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v111];

      v302 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
      v303 = &protocol witness table for HKMedicalIDStore;
      *&v301 = v112;
      (*(*v101 + 80))(v99, v100, v34, &v301);

      __swift_destroy_boxed_opaque_existential_1(&v301);
      goto LABEL_64;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v113 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v113, static Logger.siriPhone);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v115))
    {
      v116 = OUTLINED_FUNCTION_65_0();
      *v116 = 0;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v117, v118, v119, v120, v116, 2u);
      OUTLINED_FUNCTION_26_0();
    }
  }

  v122 = a25;
  v121 = a26;
  v123 = OUTLINED_FUNCTION_104();
  if (specialized static ContactResolution.shouldSkipContactResolution(nlIntent:skIntent:contactQueries:)(v123, v124, v39, v125, v122, v121))
  {
LABEL_64:
    OUTLINED_FUNCTION_65();
    return;
  }

  v268 = v39;
  v262 = v32;
  v275 = v121;
  v126 = _swiftEmptyArrayStorage;
  v263 = v29;
  v261 = v52;
  v127 = v292;
  if (v292)
  {
    App.appIdentifier.getter();
    v128 = v296;
    if (v129)
    {
      OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_76_3();
      v126 = v130;
      v132 = v130[2];
      v131 = v130[3];
      if (v132 >= v131 >> 1)
      {
        OUTLINED_FUNCTION_76(v131);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v126 = v260;
      }

      v126[2] = v132 + 1;
      v133 = &v126[2 * v132];
      v133[4] = v121;
      v133[5] = v127;
    }
  }

  else
  {
    v128 = v296;
  }

  v271 = v95;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30();
  }

  v134 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v137 = v136;

  v138 = v128[3];
  v139 = v128[4];
  v140 = OUTLINED_FUNCTION_5_26();
  __swift_project_boxed_opaque_existential_1(v140, v141);
  v142 = *(v139 + 8);
  v143 = OUTLINED_FUNCTION_40_0();
  v144(v143, v139);
  __swift_project_boxed_opaque_existential_1(&v301, v302);
  v145 = v297;
  OUTLINED_FUNCTION_19_0();
  DeviceState.siriInputLocale.getter();
  v146 = v41;

  outlined bridged method (ob) of @objc INIntent.intentId.getter(v146);
  OUTLINED_FUNCTION_98_2();
  if (v149)
  {
    v150 = 0xE000000000000000;
  }

  else
  {
    v150 = v147;
  }

  v151 = v294;
  v265 = v148;
  *v294 = v148;
  *(v151 + 1) = v150;
  v267 = v135;
  *(v151 + 2) = v135;
  *(v151 + 3) = v137;
  v152 = v293;
  v153 = *(v295 + 16);
  v153(&v151[*(v293 + 24)], v145, v299);
  *&v151[*(v152 + 28)] = v126;

  v264 = v150;

  v266 = v137;

  v154 = v275;
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(v275, v298);
  v155 = *(*(v154 + 16) + 8);
  v269 = v122;
  v156 = v155(v122);
  v272 = v146;
  v270 = v126;
  if (v156 == 2)
  {
    swift_getObjectType();
    v158 = &enum case for ContactActionType.facetimeVideo(_:);
    if (dynamic_cast_existential_1_conditional(v146))
    {
      v159 = v157;
      ObjectType = swift_getObjectType();
      v161 = *(v159 + 24);
      v162 = v146;
      v163 = v161(ObjectType, v159);

      if (v163 == 1)
      {
        v158 = &enum case for ContactActionType.facetimeAudio(_:);
      }
    }
  }

  else
  {
    v158 = &enum case for ContactActionType.phoneCall(_:);
  }

  v164 = *v158;
  v165 = v286;
  v166 = v280;
  v167 = v288;
  (*(v286 + 104))(v280, v164, v288);
  v168 = v282;
  (*(v165 + 32))(v282, v166, v167);
  v153(v279, v297, v299);
  OUTLINED_FUNCTION_80_2(&a16);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v298, v281);
  OUTLINED_FUNCTION_50_9();
  v169(v287);
  (*(v289 + 104))(v290, enum case for RecommenderType.mlRecommender(_:), v291);
  v170 = *(v293 + 32);
  v171 = v294;
  v172 = v270;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v165 + 16))(v283, v168, v167);
  ContactResolverConfig.actionType.setter();
  v173 = *(v165 + 8);
  v174 = OUTLINED_FUNCTION_104();
  v175(v174);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v298, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v295 + 8))(v297, v299);
  v176 = v271;
  outlined init with take of ContactResolverConfigHashable(v171, v271);
  __swift_destroy_boxed_opaque_existential_1(&v301);
  v177 = v296[4];
  __swift_project_boxed_opaque_existential_1(v296, v296[3]);
  v178 = *(v177 + 96);
  v179 = OUTLINED_FUNCTION_40_0();
  v180(v179, v177);
  v181 = v302;
  v182 = v303;
  __swift_project_boxed_opaque_existential_1(&v301, v302);
  v183 = (v182[2])(v268, v176, v181, v182);
  v184 = v172;
  v185 = a22;
  __swift_destroy_boxed_opaque_existential_1(&v301);
  v186 = v185[4];
  v187 = __swift_project_boxed_opaque_existential_1(v185, v185[3]);
  type metadata accessor for SiriKitEvent();
  v188 = [v272 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v262, &v301);
  OUTLINED_FUNCTION_106();
  v189 = swift_allocObject();
  *(v189 + 16) = v292;
  outlined init with take of SPHConversation(&v301, v189 + 24);
  *(v189 + 64) = v183;

  v300 = 0;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  v190 = v187;
  dispatch thunk of SiriKitEventSending.send(_:)();

  v191 = *(v183 + 16);
  if (v191)
  {
    *&v301 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v192 = v276;
    v184 = v277;
    v193 = v183;
    v195 = *(v278 + 16);
    v194 = v278 + 16;
    v298 = v193;
    v299 = v195;
    v196 = *(v278 + 80);
    OUTLINED_FUNCTION_19_1();
    v199 = v198 + v197;
    v200 = *(v194 + 56);
    do
    {
      v299(v192, v199, v184);
      ResolvedSiriKitContact.person.getter();
      (*(v194 - 8))(v192, v184);
      v190 = &v301;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v201 = *(v301 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v199 += v200;
      --v191;
    }

    while (v191);

    v202 = v301;
  }

  else
  {

    v202 = _swiftEmptyArrayStorage;
  }

  v203 = a21;
  v204 = specialized Array.count.getter(v202);
  v205 = v269;
  v206 = v263;
  if (v204)
  {
    static ContactResolution.dedupeContacts(contacts:)();
    OUTLINED_FUNCTION_40_0();

    v202 = v190;
  }

  if (v203)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v207 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v207, static Logger.siriPhone);
    v208 = Logger.logObject.getter();
    v209 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v209))
    {
      v210 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v210);
      OUTLINED_FUNCTION_14_9();
      _os_log_impl(v211, v212, v213, v214, v215, 2u);
      OUTLINED_FUNCTION_52();
    }

    v216 = OUTLINED_FUNCTION_15_24(*(v275 + 8));
LABEL_63:
    v217(v216);

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    goto LABEL_64;
  }

  v218 = *(v275 + 8);
  v219 = v272;
  if (!(*(v218 + 8))(v205, v218))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v234 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v234, static Logger.siriPhone);
    v235 = Logger.logObject.getter();
    v236 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v236))
    {
      v237 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v237);
      OUTLINED_FUNCTION_47_1(&dword_0, v238, v239, "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot");
      OUTLINED_FUNCTION_35();
    }

    v216 = OUTLINED_FUNCTION_15_24(v218);
    goto LABEL_63;
  }

  v220 = OUTLINED_FUNCTION_105_1();
  if (!specialized Array.count.getter(v220))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_46_7();
  if (v219)
  {
    v221 = OUTLINED_FUNCTION_140_0();
  }

  else
  {
    v221 = *(v202 + 4);
  }

  v222 = v221;
  if (v206 < 0 || specialized Array.count.getter(v184) <= v206 || (v223 = specialized Array.count.getter(v202), specialized Array.count.getter(v184) < v223))
  {

LABEL_52:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v224 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v224, static Logger.siriPhone);
    v225 = Logger.logObject.getter();
    v226 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_8(v226))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_34_5();
      _os_log_impl(v227, v228, v229, v230, v231, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v232 = OUTLINED_FUNCTION_15_24(v218);
    v233(v232);
    goto LABEL_57;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v240 = type metadata accessor for Logger();
  v241 = __swift_project_value_buffer(v240, static Logger.siriPhone);
  v242 = Logger.logObject.getter();
  v243 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v243))
  {
    v244 = OUTLINED_FUNCTION_42();
    *v244 = 134217984;
    *(v244 + 4) = v206;
    _os_log_impl(&dword_0, v242, v243, "#ContactResolution updating person at index %ld", v244, 0xCu);
    v205 = v269;
    OUTLINED_FUNCTION_26_0();
  }

  if (specialized Array.count.getter(v184) <= v206)
  {
    *v261 = v206;
    swift_storeEnumTagMultiPayload();
    v299 = v241;
    PhoneError.logged()(v273);
    OUTLINED_FUNCTION_5_34();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    v250 = Logger.logObject.getter();
    v251 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_43(v251))
    {
      v252 = OUTLINED_FUNCTION_86_1();
      *v252 = 134218240;
      *(v252 + 4) = v206;
      *(v252 + 12) = 2048;
      *(v252 + 14) = specialized Array.count.getter(v184);
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v253, v254, v255, v256, v257, 0x16u);
      OUTLINED_FUNCTION_5_7();
    }

    v258 = OUTLINED_FUNCTION_15_24(v218);
    v259(v258);

    goto LABEL_57;
  }

  v245 = v222;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v184 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v184 = specialized _ArrayBuffer._consumeAndCreateNew()(v184);
  }

  if (*(&dword_10 + (v184 & 0xFFFFFFFFFFFFFF8)) > v206)
  {
    v247 = *(&stru_20.cmd + 8 * v206 + (v184 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v206 + (v184 & 0xFFFFFFFFFFFFFF8)) = v245;

    v248 = *(v218 + 16);

    v248(v249, v205, v218);

LABEL_57:

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();

    goto LABEL_64;
  }

  __break(1u);
}

void specialized static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v158 = v22;
  v159 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v145 = type metadata accessor for ResolvedSiriKitContact();
  v32 = OUTLINED_FUNCTION_7(v145);
  v147 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_4();
  v38 = v37 - v36;
  v170 = type metadata accessor for RecommenderType();
  v39 = OUTLINED_FUNCTION_7(v170);
  v168 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_5_4();
  v169 = v43;
  OUTLINED_FUNCTION_15_0();
  v164 = type metadata accessor for SearchSuggestedContacts();
  v44 = OUTLINED_FUNCTION_7(v164);
  v163 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_5_4();
  v166 = v48;
  OUTLINED_FUNCTION_15_0();
  v49 = type metadata accessor for ContactResolverDomain();
  v50 = OUTLINED_FUNCTION_21(v49);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v53);
  v167 = type metadata accessor for ContactActionType();
  v54 = OUTLINED_FUNCTION_7(v167);
  v165 = v55;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v62 = OUTLINED_FUNCTION_21(v61);
  v64 = *(v63 + 64);
  __chkstk_darwin(v62);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v65);
  OUTLINED_FUNCTION_91();
  v176 = v66;
  OUTLINED_FUNCTION_15_0();
  v177 = type metadata accessor for Locale();
  v67 = OUTLINED_FUNCTION_7(v177);
  v69 = v68;
  v71 = *(v70 + 64);
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v72);
  OUTLINED_FUNCTION_91();
  v175 = v73;
  OUTLINED_FUNCTION_15_0();
  v74 = type metadata accessor for ContactResolverConfigHashable();
  v75 = OUTLINED_FUNCTION_23_1(v74);
  v77 = *(v76 + 64);
  __chkstk_darwin(v75);
  OUTLINED_FUNCTION_16_2();
  v174 = v78;
  OUTLINED_FUNCTION_4_0();
  v80 = __chkstk_darwin(v79);
  v81 = _swiftEmptyArrayStorage;
  v172 = &v145 - v82;
  v146 = v38;
  v173 = v80;
  if (v27)
  {
    v83 = v69;
    v84 = App.appIdentifier.getter();
    if (v85)
    {
      v86 = v84;
      v87 = v85;
      v88 = v25;
      v89 = v31;
      OUTLINED_FUNCTION_76_3();
      v81 = v90;
      v92 = v90[2];
      v91 = v90[3];
      if (v92 >= v91 >> 1)
      {
        OUTLINED_FUNCTION_76(v91);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v81 = v144;
      }

      v81[2] = v92 + 1;
      v93 = &v81[2 * v92];
      v93[4] = v86;
      v93[5] = v87;
      v31 = v89;
      v25 = v88;
      v74 = v173;
    }

    v69 = v83;
  }

  v94 = v25;
  v154 = v31;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30();
  }

  v95 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  v99 = v94[4];
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  v100 = *(v99 + 8);
  v101 = OUTLINED_FUNCTION_5();
  v102(v101, v99);
  OUTLINED_FUNCTION_54_11(v178);
  v103 = v175;
  DeviceState.siriInputLocale.getter();

  v104 = v29;
  outlined bridged method (ob) of @objc INIntent.intentId.getter(v104);
  OUTLINED_FUNCTION_98_2();
  if (v107)
  {
    v108 = 0xE000000000000000;
  }

  else
  {
    v108 = v105;
  }

  v109 = v174;
  v151 = v106;
  *v174 = v106;
  v109[1] = v108;
  v153 = v96;
  v109[2] = v96;
  v109[3] = v98;
  v110 = v109 + *(v74 + 24);
  v148 = *(v69 + 16);
  v148(v110, v103, v177);
  *(v109 + *(v74 + 28)) = v81;
  v171 = v81;

  v150 = v108;

  v152 = v98;

  v111 = v158;
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(v158, v176);
  v112 = (*(*(v111 + 16) + 8))(v159);
  v160 = v69;
  v149 = v94;
  if (v112 == 2)
  {
    swift_getObjectType();
    v114 = &enum case for ContactActionType.facetimeVideo(_:);
    if (dynamic_cast_existential_1_conditional(v104))
    {
      v115 = v113;
      ObjectType = swift_getObjectType();
      v159 = *(v115 + 24);
      v117 = v104;
      v104 = v159(ObjectType, v115);

      if (v104 == &dword_0 + 1)
      {
        v114 = &enum case for ContactActionType.facetimeAudio(_:);
      }
    }
  }

  else
  {
    v114 = &enum case for ContactActionType.phoneCall(_:);
  }

  OUTLINED_FUNCTION_82_2();
  v118 = *v114;
  v119 = v165;
  v120 = v156;
  v121 = v167;
  (*(v165 + 104))(v156, v118, v167);
  v122 = v161;
  (*(v119 + 32))(v161, v120, v121);
  (v104)(v155, v175, v177);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v176, v157);
  OUTLINED_FUNCTION_69_4(&a18);
  v123(v166);
  (*(v168 + 104))(v169, enum case for RecommenderType.mlRecommender(_:), v170);
  v124 = *(v173 + 32);
  v125 = v174;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v119 + 16))(v162, v122, v121);
  ContactResolverConfig.actionType.setter();
  (*(v119 + 8))(v122, v121);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v176, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v160 + 8))(v175, v177);
  v126 = v172;
  outlined init with take of ContactResolverConfigHashable(v125, v172);
  __swift_destroy_boxed_opaque_existential_1(v178);
  v127 = v149[4];
  __swift_project_boxed_opaque_existential_1(v149, v149[3]);
  v128 = *(v127 + 96);
  v129 = OUTLINED_FUNCTION_5();
  v130(v129, v127);
  v131 = v179;
  v132 = v180;
  __swift_project_boxed_opaque_existential_1(v178, v179);
  v133 = (*(v132 + 16))(v154, v126, v131, v132);
  __swift_destroy_boxed_opaque_existential_1(v178);
  v134 = *(v133 + 16);
  if (v134)
  {
    v178[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v135 = v145;
    v137 = *(v147 + 16);
    v136 = v147 + 16;
    v176 = v133;
    v177 = v137;
    v138 = *(v147 + 80);
    OUTLINED_FUNCTION_19_1();
    v140 = v133 + v139;
    v141 = *(v136 + 56);
    v142 = v146;
    do
    {
      v177(v142, v140, v135);
      ResolvedSiriKitContact.person.getter();
      (*(v136 - 8))(v142, v135);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v143 = *(v178[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v140 += v141;
      --v134;
    }

    while (v134);
    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
  }

  else
  {

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
  }

  OUTLINED_FUNCTION_65();
}

uint64_t specialized static ContactResolution.shouldSkipContactResolution(nlIntent:skIntent:contactQueries:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a2))
  {
    v12 = v11;
    v13 = a1;
    ObjectType = swift_getObjectType();
    v15 = *(v12 + 16);
    v16 = a2;
    if (v15(ObjectType, v12) == 2)
    {
      if (one-time initialization token for siriPhone != -1)
      {
LABEL_85:
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriPhone);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "#ContactResolution intent is emergency call. bypassing contact resolution", v20, 2u);
      }

      return 1;
    }

    a1 = v13;
  }

  if (a3)
  {
    if (*(a3 + 16))
    {
      return 0;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_35;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "#ContactResolution ContactQueries is empty, bypassing contact resolution";
    goto LABEL_34;
  }

  v22 = (*(*(a6 + 8) + 8))(a5);
  if (v22)
  {
    v23 = v22;
    v24 = specialized Array.count.getter(v22);
    if (v24)
    {
      v25 = v24;
      v16 = 0;
      v26 = v23 & 0xC000000000000001;
      while (v25 != v16)
      {
        if (v26)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_82;
          }

          v27 = *(v23 + 8 * v16 + 32);
        }

        v28 = v27;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v29 = INPerson.hasHandleValue.getter();

        ++v16;
        if (!v29)
        {
          v37 = 0;
          while (1)
          {
            if (v26)
            {
              v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v37 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_84;
              }

              v38 = *(v23 + 8 * v37 + 32);
            }

            v16 = v38;
            v39 = (v37 + 1);
            if (__OFADD__(v37, 1))
            {
              goto LABEL_83;
            }

            v40 = [v38 personHandle];
            if (v40)
            {
              v41 = v40;
              v42 = [v40 emergencyType];

              if (v42)
              {

                if (one-time initialization token for siriPhone != -1)
                {
LABEL_89:
                  swift_once();
                }

                v63 = type metadata accessor for Logger();
                __swift_project_value_buffer(v63, static Logger.siriPhone);
                v64 = Logger.logObject.getter();
                v65 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v64, v65))
                {
                  v66 = swift_slowAlloc();
                  v67 = swift_slowAlloc();
                  v74[0] = v67;
                  *v66 = 136315138;
                  *&v73[0] = v42;
                  type metadata accessor for INPersonHandleEmergencyType(0);
                  v68 = String.init<A>(describing:)();
                  v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v74);

                  *(v66 + 4) = v70;
                  _os_log_impl(&dword_0, v64, v65, "#ContactResolution contact has a handle with an emergency type %s. bypassing contact resolution", v66, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v67);
                }

                return 1;
              }
            }

            ++v37;
            if (v39 == v25)
            {
              v43 = a1[3];
              v44 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, v43);
              v42 = (v44 + 24);
              v45 = *(v44 + 24);
              v46 = *(v45(v43, v44) + 16);

              if (!v46)
              {
LABEL_74:

                return 0;
              }

              v47 = v45(v43, v44);
              v16 = 0;
              v48 = v47 + 32;
              v72 = *(v47 + 16);
              while (1)
              {
                if (v72 == v16)
                {

                  goto LABEL_77;
                }

                if (v16 >= *(v47 + 16))
                {
                  __break(1u);
                  goto LABEL_87;
                }

                _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v48, v73);
                v49 = v23 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
                if (v16 == v49)
                {
                  break;
                }

                if (v26)
                {
                  v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v16 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    goto LABEL_89;
                  }

                  v50 = *(v23 + 8 * v16 + 32);
                }

                v51 = v50;
                outlined init with take of SPHConversation(v73, v74);
                v77 = v51;
                v52 = v75;
                v42 = v76;
                __swift_project_boxed_opaque_existential_1(v74, v75);
                v53 = v42[4](v52, v42);
                if (!v54)
                {
                  goto LABEL_72;
                }

                v55 = v53;
                v56 = v54;

                v57 = HIBYTE(v56) & 0xF;
                if ((v56 & 0x2000000000000000) == 0)
                {
                  v57 = v55 & 0xFFFFFFFFFFFFLL;
                }

                if (!v57 || (v58 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v51), !v59))
                {
LABEL_72:
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v74, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_73:

                  goto LABEL_74;
                }

                v60 = v58;
                v61 = v59;

                if ((v61 & 0x2000000000000000) != 0)
                {
                  v62 = HIBYTE(v61) & 0xF;
                }

                else
                {
                  v62 = v60 & 0xFFFFFFFFFFFFLL;
                }

                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v74, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
                v48 += 40;
                ++v16;
                if (!v62)
                {
                  goto LABEL_73;
                }
              }

              __swift_destroy_boxed_opaque_existential_1(v73);
LABEL_77:
              if (one-time initialization token for siriPhone != -1)
              {
                swift_once();
              }

              v71 = type metadata accessor for Logger();
              __swift_project_value_buffer(v71, static Logger.siriPhone);
              v31 = Logger.logObject.getter();
              v32 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v31, v32))
              {
                v33 = swift_slowAlloc();
                *v33 = 0;
                v34 = "#ContactResolution server has already expanded contacts into the SK intent. bypassing contact resolution";
                goto LABEL_34;
              }

              goto LABEL_35;
            }
          }
        }
      }

      if (one-time initialization token for siriPhone != -1)
      {
LABEL_87:
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.siriPhone);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "#ContactResolution contacts have been fully resolved. bypassing contact resolution";
        goto LABEL_34;
      }

      goto LABEL_35;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.siriPhone);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "#ContactResolution no contacts to resolve. bypassing contact resolution";
LABEL_34:
    _os_log_impl(&dword_0, v31, v32, v34, v33, 2u);
  }

LABEL_35:

  return 1;
}

void *_s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO08populateafG005phoneB8NLIntent13contextNLType3app23resolvedSiriKitContacts17callStateProviderSo020FLOWSchemaFLOWDomainG0CSgAA0abL0_p_AA0afgN0O0Q13AppResolution0Y0CSgSay0Q9Inference08ResolvedqR7ContactVGAA0bU9Providing_ptFZTf4nnnnen_nAA0buV0V_Tt4g5(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of CallStateProvider(a5, v36);
  v9 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v9)
  {
    v5 = v9;
    v10 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v10)
    {
      v11 = v10;
      if (a2)
      {
        v12 = OUTLINED_FUNCTION_19_0();
        static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv4(phoneContext:resolvedSiriKitContacts:)(v12, v13);
      }

      else
      {
        v21 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v22 = *(v21 + 24);
        v23 = OUTLINED_FUNCTION_123();
        v25 = v24(v23);
        static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv3(phoneCallContacts:phoneContext:)(v25, v11);
      }

      v26 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v27 = *(v26 + 136);
      v28 = OUTLINED_FUNCTION_123();
      v30 = *(v29(v28) + 16);

      if (v30)
      {
        [v11 addPersonType:10];
      }

      _s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO03addaB7AppType33_BC70FDE4337405FDAA5D97E0B7778BABLL05phoneB8NLIntent3app0tG017callStateProvideryAA0abU0_p_04SiriK10Resolution0K0CSgSo019FLOWSchemaFLOWPhonebG0CAA0bX9Providing_ptFZTf4nnnen_nAA0bxY0V_Tt3g5(a1, a3, v11);
      v31 = OUTLINED_FUNCTION_5_26();
      static PhoneDomainContextMetricsUtils.addPhoneCallType(phoneCallNLIntent:phoneContext:)(v31, v32);
      v33 = OUTLINED_FUNCTION_5_26();
      static PhoneDomainContextMetricsUtils.addEmergencyType(phoneCallNLIntent:phoneContext:)(v33, v34);
      [v5 setPhoneCallContext:v11];
      [v5 setHasPhoneCallContext:1];
      goto LABEL_15;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v15))
  {
    v16 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v16);
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v17, v18, v19, v20, v5, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v5 = 0;
LABEL_15:

  outlined destroy of CallStateProvider(v36);
  return v5;
}

id _s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO03addaB7AppType33_BC70FDE4337405FDAA5D97E0B7778BABLL05phoneB8NLIntent3app0tG017callStateProvideryAA0abU0_p_04SiriK10Resolution0K0CSgSo019FLOWSchemaFLOWPhonebG0CAA0bX9Providing_ptFZTf4nnnen_nAA0bxY0V_Tt3g5(void *a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = a2;
    v19 = v10;
    *v9 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B0CSgMd, &_s17SiriAppResolution0B0CSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "#PhoneDomainContextMetricsUtils addPhoneCallAppType with app: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  if (!a2)
  {
    return [a3 setPhoneCallAppType:0];
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  if (PhoneCallNLIntent.isFaceTimeCall()() && App.isFirstParty()())
  {
    [a3 setPhoneCallAppType:{2, v18, v19}];
  }

  else if (App.isFirstParty()())
  {
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (PhoneCallNLIntent.isHangUpCall()() && (type metadata accessor for SiriEnvironment(), static SiriEnvironment.root.getter(), SiriEnvironment.callState.getter(), , v16 = dispatch thunk of CallStateEnvironmentProvider.isDropInCall.getter(), , (v16 & 1) != 0))
    {
      [a3 setPhoneCallAppType:{4, v18, v19}];
    }

    else
    {
      [a3 setPhoneCallAppType:{1, v18, v19}];
    }
  }

  else
  {
    [a3 setPhoneCallAppType:{3, v18, v19}];
  }
}

void specialized static ContactResolution.updateSiriKitIntentNLv3(siriKitIntent:nlIntent:app:locale:sharedGlobals:multicardinalIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_66();
  v23 = v22;
  HIDWORD(v90) = v24;
  v95 = v25;
  v96 = v26;
  v28 = v27;
  v94 = v29;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for ContactQuery();
  v35 = OUTLINED_FUNCTION_7(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_12_5();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_13_5();
  v88 = v44;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v45);
  v47 = &v81 - v46;
  v48 = *(a22 + 8);
  v92 = v33;
  v93 = v23;
  v91 = a21;
  v89 = v48;
  if (specialized static ContactResolution.shouldSkipContactResolution(nlIntent:skIntent:contactQueries:)(v31, v33, 0, v23, a21, v48))
  {
LABEL_25:
    OUTLINED_FUNCTION_65();
  }

  else
  {
    v86 = v31;
    v87 = v28;
    v49 = v31[3];
    v50 = v31[4];
    v51 = OUTLINED_FUNCTION_101_1();
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v53 = (*(v50 + 24))(v49, v50);
    v54 = v53[2];
    if (v54)
    {
      OUTLINED_FUNCTION_64_4(_swiftEmptyArrayStorage);
      v55 = v99;
      v85 = v53;
      v56 = (v53 + 4);
      v97 = (v37 + 32);
      do
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v56, v98);
        OUTLINED_FUNCTION_54_11(v98);
        OUTLINED_FUNCTION_63_4();
        SiriPhoneContact.asSiriInferenceContact.getter();
        __swift_destroy_boxed_opaque_existential_1(v98);
        v99 = v55;
        v58 = v55[2];
        v57 = v55[3];
        if (v58 >= v57 >> 1)
        {
          OUTLINED_FUNCTION_76(v57);
          OUTLINED_FUNCTION_131_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v55 = v99;
        }

        v55[2] = v58 + 1;
        v59 = *(v37 + 80);
        OUTLINED_FUNCTION_19_1();
        (*(v37 + 32))(v55 + v60 + *(v37 + 72) * v58, v42, v34);
        v56 += 40;
        --v54;
      }

      while (v54);
    }

    else
    {

      v55 = _swiftEmptyArrayStorage;
    }

    v61 = 0;
    v62 = v55[2];
    v63 = v37 + 16;
    v85 = (v37 + 32);
    v97 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v62 == v61)
      {

        v74 = v86;
        v75 = v86[3];
        v76 = v86[4];
        v77 = OUTLINED_FUNCTION_5_26();
        __swift_project_boxed_opaque_existential_1(v77, v78);
        OUTLINED_FUNCTION_19_0();
        PhoneCallNLIntent.isDisplayNameEmergencyContact()();
        OUTLINED_FUNCTION_112_1();
        type metadata accessor for EmergencyContactResolution();
        v79 = swift_allocObject();
        LOBYTE(v80) = BYTE4(v90) & 1;
        specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(v92, v97, v75 & 1, v94, v87, v74, v95, v96, v80, v34, v79, v93, v91, v89, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);

        __swift_destroy_boxed_opaque_existential_1(v98);
        goto LABEL_25;
      }

      if (v61 >= v55[2])
      {
        break;
      }

      v64 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v65 = *(v37 + 72);
      (*(v37 + 16))(v47, v55 + v64 + v65 * v61, v34);
      if (one-time initialization token for emptyQuery != -1)
      {
        OUTLINED_FUNCTION_13_22();
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v34, static ContactQuery.emptyQuery);
      if (static ContactQuery.== infix(_:_:)())
      {
        goto LABEL_18;
      }

      if (one-time initialization token for emptyNLv4Query != -1)
      {
        OUTLINED_FUNCTION_12_29();
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v34, static ContactQuery.emptyNLv4Query);
      if (static ContactQuery.== infix(_:_:)())
      {
LABEL_18:
        (*(v37 + 8))(v47, v34);
        ++v61;
      }

      else
      {
        v83 = *v85;
        v84 = v63;
        v83(v88, v47, v34);
        v66 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98[0] = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_55_9();
        }

        OUTLINED_FUNCTION_126_1();
        v63 = v84;
        if (v72)
        {
          OUTLINED_FUNCTION_76(v68);
          OUTLINED_FUNCTION_127_1();
          v82 = v73;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v71 = v97;
          v69 = v98[0];
          v70 = v82;
          v63 = v84;
        }

        ++v61;
        v69[2] = v71;
        v97 = v69;
        v83(v69 + v64 + v70 * v65, v88, v34);
      }
    }

    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type [Substring] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Substring] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Substring] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySsGMd, &_sSaySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Substring] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_66();
  a19 = v25;
  a20 = v26;
  v220 = OUTLINED_FUNCTION_59_4(v27, v28, v29, v30, v31, v32, v33, v34);
  v35 = OUTLINED_FUNCTION_7(v220);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v38);
  v219 = type metadata accessor for PhoneError();
  v39 = OUTLINED_FUNCTION_23_1(v219);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v43);
  v223 = type metadata accessor for RecommenderType();
  v44 = OUTLINED_FUNCTION_7(v223);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v47);
  v221 = type metadata accessor for SearchSuggestedContacts();
  v48 = OUTLINED_FUNCTION_7(v221);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v51);
  v52 = type metadata accessor for ContactResolverDomain();
  v53 = OUTLINED_FUNCTION_21(v52);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v56);
  v222 = type metadata accessor for ContactActionType();
  v57 = OUTLINED_FUNCTION_7(v222);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v60);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v64 = OUTLINED_FUNCTION_21(v63);
  v66 = *(v65 + 64);
  __chkstk_darwin(v64);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_91();
  v230 = v68;
  OUTLINED_FUNCTION_15_0();
  v229 = type metadata accessor for Locale();
  v69 = OUTLINED_FUNCTION_7(v229);
  v71 = *(v70 + 64);
  __chkstk_darwin(v69);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v72);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_15_0();
  v226 = type metadata accessor for ContactResolverConfigHashable();
  v73 = OUTLINED_FUNCTION_23_1(v226);
  v75 = *(v74 + 64);
  __chkstk_darwin(v73);
  OUTLINED_FUNCTION_12_5();
  v78 = v76 - v77;
  __chkstk_darwin(v79);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_138_0(v80);
  OUTLINED_FUNCTION_40(v23);
  (*(v81 + 16))();
  type metadata accessor for ContactResolution();
  if (v21)
  {
    swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v24);
    v82 = one-time initialization token for siriPhone;
    v83 = v24;
    if (v82 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v84 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v84, static Logger.siriPhone);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_43(v86))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v87, v88, v89, v90, v91, 2u);
      OUTLINED_FUNCTION_5_7();
    }

    v92 = [objc_allocWithZone(HKHealthStore) init];
    [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v92];

    v93 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
    OUTLINED_FUNCTION_52_7(v93, &protocol witness table for HKMedicalIDStore);
    v95 = *(v94 + 80);
    v96 = OUTLINED_FUNCTION_93_3();
    v97(v96);

    __swift_destroy_boxed_opaque_existential_1(v231);
    goto LABEL_63;
  }

  v98 = OUTLINED_FUNCTION_102_1();
  if (_s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nTm(v98, v99, v100, v101, v102, v103))
  {
LABEL_63:
    __swift_destroy_boxed_opaque_existential_1(v232);
    OUTLINED_FUNCTION_65();
    return;
  }

  if (v224 && (App.appIdentifier.getter(), v104))
  {
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_120_0(v105);
    if (v107)
    {
      OUTLINED_FUNCTION_76(v106);
      OUTLINED_FUNCTION_131_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v227 = v217;
    }

    OUTLINED_FUNCTION_119_2();
  }

  else
  {
    v227 = _swiftEmptyArrayStorage;
  }

  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30();
  }

  v108 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v109 = v228[4];
  __swift_project_boxed_opaque_existential_1(v228, v228[3]);
  v110 = OUTLINED_FUNCTION_88_2();
  v111(v110);
  v112 = v231[3];
  OUTLINED_FUNCTION_54_11(v231);
  OUTLINED_FUNCTION_63_4();
  DeviceState.siriInputLocale.getter();
  v113 = v24;

  outlined bridged method (ob) of @objc INIntent.intentId.getter(v113);
  OUTLINED_FUNCTION_98_2();
  v114 = OUTLINED_FUNCTION_39_11();
  v115(v114);
  *(v78 + *(v112 + 28)) = v227;

  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartAudioCallIntent, v230);
  v218 = v113;
  if ([v113 preferredCallProvider] == &dword_0 + 2)
  {
    swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v113);
    v117 = v116;
    ObjectType = swift_getObjectType();
    v119 = *(v117 + 24);
    v113 = v113;
    v120 = v119(ObjectType, v117);

    OUTLINED_FUNCTION_24_13();
    if (v120 == 1)
    {
      v121 = &enum case for ContactActionType.facetimeAudio(_:);
    }

    else
    {
      v121 = &enum case for ContactActionType.facetimeVideo(_:);
    }

    v124 = *v121;
    v125 = OUTLINED_FUNCTION_14_25();
    v126(v125);
  }

  else
  {
    OUTLINED_FUNCTION_24_13();
    v122 = OUTLINED_FUNCTION_14_25();
    v123(v122);
  }

  v127 = OUTLINED_FUNCTION_79_3();
  v128(v127);
  v129 = OUTLINED_FUNCTION_83_3();
  v22(v129);
  OUTLINED_FUNCTION_80_2(&a12);
  static ContactResolverDomain.phone.getter();
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_69_4(&a13);
  v130 = OUTLINED_FUNCTION_97_0();
  v131(v130);
  OUTLINED_FUNCTION_50_9();
  v132 = OUTLINED_FUNCTION_118_1();
  v133(v132);
  OUTLINED_FUNCTION_31_7();
  v134 = OUTLINED_FUNCTION_67_3();
  v135(v134);
  ContactResolverConfig.actionType.setter();
  v137 = v113[1];
  v136 = v113 + 1;
  v138 = OUTLINED_FUNCTION_101_1();
  v139(v138);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v230, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v140 = OUTLINED_FUNCTION_96_1();
  v141(v140);
  outlined init with take of ContactResolverConfigHashable(v78, v225);
  __swift_destroy_boxed_opaque_existential_1(v231);
  v142 = v228[4];
  __swift_project_boxed_opaque_existential_1(v228, v228[3]);
  v143 = OUTLINED_FUNCTION_20_17();
  v144(v143);
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_94_2();
  v146 = v145();
  if (v142)
  {

    __swift_destroy_boxed_opaque_existential_1(v231);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v147 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v147, static Logger.siriPhone);
    swift_errorRetain();
    v148 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_116_0();
    if (OUTLINED_FUNCTION_115_1())
    {
      OUTLINED_FUNCTION_42();
      v231[0] = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_110_0(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v149 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, v231);
      OUTLINED_FUNCTION_113_0();
      *(v78 + 4) = v136;
      OUTLINED_FUNCTION_21_12();
      _os_log_impl(v151, v152, v153, v154, v155, 0xCu);
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_52();
    }

    OUTLINED_FUNCTION_108_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    OUTLINED_FUNCTION_2_4();
    type metadata accessor for InferenceError();
    if (OUTLINED_FUNCTION_65_6())
    {
      dispatch thunk of InferenceError.log()();
    }

    else
    {
      getpid();
      OUTLINED_FUNCTION_108_1();
      String.init<A>(describing:)();
      String._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_105_1();

      OUTLINED_FUNCTION_91_3();
    }

    specialized INPersonContainingIntent.clearContactsSlotMatches()();

    goto LABEL_62;
  }

  v156 = v146;
  v157 = OUTLINED_FUNCTION_32_10();
  v158 = [v218 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v160 = v159;

  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v232, v231);
  OUTLINED_FUNCTION_106();
  v161 = swift_allocObject();
  OUTLINED_FUNCTION_109_0(v161);

  OUTLINED_FUNCTION_49_7();
  OUTLINED_FUNCTION_66_7();
  OUTLINED_FUNCTION_85_1();

  v162 = *(v156 + 16);
  if (v162)
  {
    OUTLINED_FUNCTION_114_3(_swiftEmptyArrayStorage);
    OUTLINED_FUNCTION_33_9();
    do
    {
      v163 = OUTLINED_FUNCTION_130_1();
      v164(v163);
      ResolvedSiriKitContact.person.getter();
      v165 = OUTLINED_FUNCTION_133_0();
      v166(v165);
      v157 = v231;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_104();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v78 += v160;
      --v162;
    }

    while (v162);

    v167 = v231[0];
  }

  else
  {

    v167 = _swiftEmptyArrayStorage;
  }

  v168 = a21;
  specialized Array.count.getter(v167);
  OUTLINED_FUNCTION_121_0();
  if (v169)
  {
    static ContactResolution.dedupeContacts(contacts:)();
    OUTLINED_FUNCTION_40_0();

    v167 = v157;
  }

  if (v168)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v170 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v170, static Logger.siriPhone);
    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_51_0(v172))
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v173 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v160);
  if (!v173)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v185 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v185, static Logger.siriPhone);
    v171 = Logger.logObject.getter();
    v186 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_51_0(v186))
    {
      goto LABEL_61;
    }

LABEL_60:
    v187 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_103(v187);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v188, v189, v190, v191, v192, 2u);
    OUTLINED_FUNCTION_52();
LABEL_61:

    v193 = OUTLINED_FUNCTION_89_0();
    INStartAudioCallIntent.overwriteContacts(newContacts:)(v193);

LABEL_62:
    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    goto LABEL_63;
  }

  v174 = v173;
  if (!specialized Array.count.getter(v167))
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_46_7();
  if (v157)
  {
    v175 = OUTLINED_FUNCTION_140_0();
  }

  else
  {
    v175 = v167[4];
  }

  v176 = v175;
  OUTLINED_FUNCTION_82_2();
  if (v157 < 0 || specialized Array.count.getter(v174) <= v157 || (specialized Array.count.getter(v167), v177 = OUTLINED_FUNCTION_5(), specialized Array.count.getter(v177) < v157))
  {

LABEL_51:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v178 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v178, static Logger.siriPhone);
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v180))
    {
      v181 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v181);
      OUTLINED_FUNCTION_47_1(&dword_0, v182, v183, "#ContactResolution: overwriting contacts slot");
      OUTLINED_FUNCTION_35();
    }

    v184 = OUTLINED_FUNCTION_89_0();
    INStartAudioCallIntent.overwriteContacts(newContacts:)(v184);
    goto LABEL_56;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v194 = type metadata accessor for Logger();
  __swift_project_value_buffer(v194, static Logger.siriPhone);
  v195 = Logger.logObject.getter();
  v196 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_43(v196))
  {
    v197 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_57_8(v197, 3.852e-34);
    OUTLINED_FUNCTION_30_3();
    _os_log_impl(v198, v199, v200, v201, v202, 0xCu);
    OUTLINED_FUNCTION_5_7();
  }

  specialized Array.count.getter(v174);
  OUTLINED_FUNCTION_82_2();
  if (v203 <= v195)
  {
    OUTLINED_FUNCTION_26_13();
    OUTLINED_FUNCTION_53_11();
    OUTLINED_FUNCTION_5_34();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    v208 = Logger.logObject.getter();
    v209 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_21_8(v209))
    {
      v210 = OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_58_3(v210, 3.8521e-34);
      *(v210 + 14) = specialized Array.count.getter(v174);
      OUTLINED_FUNCTION_34_5();
      _os_log_impl(v211, v212, v213, v214, v215, 0x16u);
      OUTLINED_FUNCTION_26_0();
    }

    v216 = OUTLINED_FUNCTION_89_0();
    INStartAudioCallIntent.overwriteContacts(newContacts:)(v216);

    goto LABEL_56;
  }

  v204 = v176;
  OUTLINED_FUNCTION_125_1();
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v174 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v174 = specialized _ArrayBuffer._consumeAndCreateNew()(v174);
  }

  if (*(&dword_10 + (v174 & 0xFFFFFFFFFFFFFF8)) > v195)
  {
    v206 = *(&stru_20.cmd + 8 * v195 + (v174 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v195 + (v174 & 0xFFFFFFFFFFFFFF8)) = v167;

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v207);

LABEL_56:

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();

    goto LABEL_63;
  }

  __break(1u);
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo07INStartbK0C_Tt5g5Tf4nennnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_66();
  v22 = v21;
  HIDWORD(v88) = v23;
  v91 = v24;
  v92 = v25;
  v27 = v26;
  v90 = v28;
  v30 = v29;
  v31 = type metadata accessor for ContactQuery();
  v32 = OUTLINED_FUNCTION_7(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_12_5();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_13_5();
  v87 = v41;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v42);
  v44 = &v78 - v43;
  v45 = *(v22 - 1);
  v46 = *(v45 + 64);
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_4();
  v50 = v49 - v48;
  (*(v45 + 16))();
  v89 = v30;
  if (_s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo07INStartbT0C_Tt2g5Tf4enn_n(v50, v30, 0, v22, a21))
  {
LABEL_25:
    (*(v45 + 8))(v50, v22);
    OUTLINED_FUNCTION_65();
  }

  else
  {
    v83 = v45;
    v84 = a21;
    v85 = v27;
    v86 = v22;
    v51 = *(a21 + 24);
    v93 = v50;
    v52 = v51(v22, a21);
    v53 = v52[2];
    if (v53)
    {
      OUTLINED_FUNCTION_64_4(_swiftEmptyArrayStorage);
      v54 = v96;
      v82 = v52;
      v55 = (v52 + 4);
      v94 = v34 + 32;
      do
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v55, v95);
        OUTLINED_FUNCTION_54_11(v95);
        SiriPhoneContact.asSiriInferenceContact.getter();
        __swift_destroy_boxed_opaque_existential_1(v95);
        v96 = v54;
        v30 = v54[2];
        v56 = v54[3];
        if (v30 >= v56 >> 1)
        {
          OUTLINED_FUNCTION_76(v56);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v54 = v96;
        }

        v54[2] = v30 + 1;
        v57 = *(v34 + 80);
        OUTLINED_FUNCTION_19_1();
        v59 = OUTLINED_FUNCTION_129_0(v58);
        v60(v59, v39, v31);
        v55 += 40;
        --v53;
      }

      while (v53);
    }

    else
    {

      v54 = _swiftEmptyArrayStorage;
    }

    v61 = 0;
    v62 = v54[2];
    v94 = v34 + 16;
    v82 = (v34 + 32);
    v63 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v62 == v61)
      {

        v22 = v86;
        v74 = v84;
        PhoneCallNLIntent.isDisplayNameEmergencyContact()();
        OUTLINED_FUNCTION_112_1();
        type metadata accessor for EmergencyContactResolution();
        swift_allocObject();
        OUTLINED_FUNCTION_122_0();
        v81 = v22;
        v82 = v74;
        v75 = OUTLINED_FUNCTION_124_0();
        _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(v75, v63, v76, v77, v85, v93, v91, v92, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);

        v50 = v93;

        __swift_destroy_boxed_opaque_existential_1(v95);
        v45 = v83;
        goto LABEL_25;
      }

      if (v61 >= v54[2])
      {
        break;
      }

      v64 = OUTLINED_FUNCTION_60_5();
      v65(v64);
      if (one-time initialization token for emptyQuery != -1)
      {
        OUTLINED_FUNCTION_13_22();
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v31, static ContactQuery.emptyQuery);
      if (static ContactQuery.== infix(_:_:)())
      {
        goto LABEL_18;
      }

      if (one-time initialization token for emptyNLv4Query != -1)
      {
        OUTLINED_FUNCTION_12_29();
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v31, static ContactQuery.emptyNLv4Query);
      if (static ContactQuery.== infix(_:_:)())
      {
LABEL_18:
        (*(v34 + 8))(v44, v31);
        ++v61;
      }

      else
      {
        v66 = OUTLINED_FUNCTION_128(v82);
        v81 = v67;
        (v67)(v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95[0] = v63;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_55_9();
          v63 = v95[0];
        }

        v70 = *(v63 + 2);
        v69 = *(v63 + 3);
        v71 = v70 + 1;
        if (v70 >= v69 >> 1)
        {
          OUTLINED_FUNCTION_76(v69);
          v80 = v72;
          v79 = v73;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v71 = v80;
          v70 = v79;
          v63 = v95[0];
        }

        ++v61;
        *(v63 + 2) = v71;
        v81(&v63[v39 + v70 * v30], v87, v31);
      }
    }

    __break(1u);
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B1LL8nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo07INStartbT0C_Tt2g5Tf4enn_n(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a4;
  v85 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  swift_getObjectType();
  dynamic_cast_existential_1_unconditional(a2);
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  v15 = a2;
  if (v14(ObjectType, v12) == 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_83:
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#ContactResolution intent is emergency call. bypassing contact resolution", v19, 2u);
    }

    goto LABEL_33;
  }

  if (!a3)
  {
    v21 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v15);
    if (v21)
    {
      v15 = v21;
      v22 = specialized Array.count.getter(v21);
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = v15 & 0xC000000000000001;
        v26 = v15 & 0xFFFFFFFFFFFFFF8;
        while (v23 != v24)
        {
          if (v25)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_81;
            }

            v27 = *(v15 + 8 * v24 + 32);
          }

          v28 = v27;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v29 = INPerson.hasHandleValue.getter();

          ++v24;
          if (!v29)
          {
            v38 = 0;
            do
            {
              if (v25)
              {
                v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v38 >= *(v26 + 16))
                {
                  __break(1u);
                  goto LABEL_85;
                }

                v39 = *(v15 + 8 * v38 + 32);
              }

              v40 = v39;
              v41 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_82;
              }

              v42 = [v39 personHandle];
              if (v42)
              {
                v43 = v42;
                v44 = [v42 emergencyType];

                if (v44)
                {

                  if (one-time initialization token for siriPhone != -1)
                  {
LABEL_89:
                    swift_once();
                  }

                  v69 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v69, static Logger.siriPhone);
                  v70 = Logger.logObject.getter();
                  v71 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v70, v71))
                  {
                    v72 = swift_slowAlloc();
                    v73 = swift_slowAlloc();
                    v79[0] = v73;
                    *v72 = 136315138;
                    *&v78[0] = v44;
                    type metadata accessor for INPersonHandleEmergencyType(0);
                    v74 = String.init<A>(describing:)();
                    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v79);

                    *(v72 + 4) = v76;
                    _os_log_impl(&dword_0, v70, v71, "#ContactResolution contact has a handle with an emergency type %s. bypassing contact resolution", v72, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v73);
                  }

                  goto LABEL_33;
                }
              }

              ++v38;
              v45 = v41 == v23;
              v25 = v15 & 0xC000000000000001;
              v26 = v15 & 0xFFFFFFFFFFFFFF8;
            }

            while (!v45);
            v46 = v84;
            v47 = v85;
            __swift_project_boxed_opaque_existential_1(v83, v84);
            v48 = *(a5 + 24);
            v49 = *(v48(a4, a5) + 16);

            if (!v49)
            {
LABEL_73:

              goto LABEL_8;
            }

            v50 = v48(v46, v47);
            v51 = 0;
            v52 = *(v50 + 16);
            v53 = v50 + 32;
            v40 = (v15 & 0xFFFFFFFFFFFFFF8);
            v44 = (v15 >> 62);
            while (1)
            {
              if (v52 == v51)
              {

                goto LABEL_76;
              }

              if (v51 >= *(v50 + 16))
              {
                __break(1u);
                goto LABEL_87;
              }

              _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v53, v78);
              v54 = v44 ? _CocoaArrayWrapper.endIndex.getter() : v40[2];
              if (v51 == v54)
              {
                break;
              }

              if ((v15 & 0xC000000000000001) != 0)
              {
                v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v51 >= v40[2])
                {
                  __break(1u);
                  goto LABEL_89;
                }

                v55 = *(v15 + 8 * v51 + 32);
              }

              v56 = v55;
              outlined init with take of SPHConversation(v78, v79);
              v82 = v56;
              v58 = v80;
              v57 = v81;
              __swift_project_boxed_opaque_existential_1(v79, v80);
              v59 = (*(v57 + 32))(v58, v57);
              if (!v60)
              {
                goto LABEL_71;
              }

              v61 = v59;
              v62 = v60;

              v63 = HIBYTE(v62) & 0xF;
              if ((v62 & 0x2000000000000000) == 0)
              {
                v63 = v61 & 0xFFFFFFFFFFFFLL;
              }

              if (!v63 || (v64 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v56), !v65))
              {
LABEL_71:
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v79, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_72:

                goto LABEL_73;
              }

              v66 = v64;
              v67 = v65;

              if ((v67 & 0x2000000000000000) != 0)
              {
                v68 = HIBYTE(v67) & 0xF;
              }

              else
              {
                v68 = v66 & 0xFFFFFFFFFFFFLL;
              }

              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v79, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
              v53 += 40;
              ++v51;
              v40 = (v15 & 0xFFFFFFFFFFFFFF8);
              if (!v68)
              {
                goto LABEL_72;
              }
            }

            __swift_destroy_boxed_opaque_existential_1(v78);
LABEL_76:
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            __swift_project_value_buffer(v77, static Logger.siriPhone);
            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              v34 = "#ContactResolution server has already expanded contacts into the SK intent. bypassing contact resolution";
              goto LABEL_31;
            }

            goto LABEL_32;
          }
        }

        if (one-time initialization token for siriPhone != -1)
        {
LABEL_87:
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logger.siriPhone);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          v34 = "#ContactResolution contacts have been fully resolved. bypassing contact resolution";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v31, v32))
    {
LABEL_32:

LABEL_33:
      v20 = 1;
      goto LABEL_34;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "#ContactResolution no contacts to resolve. bypassing contact resolution";
LABEL_31:
    _os_log_impl(&dword_0, v31, v32, v34, v33, 2u);

    goto LABEL_32;
  }

  if (!*(a3 + 16))
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_85:
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_32;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "#ContactResolution ContactQueries is empty, bypassing contact resolution";
    goto LABEL_31;
  }

LABEL_8:
  v20 = 0;
LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(v83);
  return v20;
}
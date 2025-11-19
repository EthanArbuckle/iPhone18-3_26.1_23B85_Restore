uint64_t sub_2B128()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2B170()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2B1B0()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2B274()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2B308()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B38C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B3D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2B420()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_2B498()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v0 + v3);
  }

  else
  {
    v7 = type metadata accessor for TemplatingResult();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  v8 = v3 + v4;
  v9 = (v3 + v4 + 87) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v0 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;

  v13 = v11[1];

  __swift_destroy_boxed_opaque_existential_1(v11 + 4);
  v14 = *(v0 + v10);

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_2B600()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2B690()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.sashTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B6BC()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.cancelButtonText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B6E8()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.cancelledText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B714()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.callButtonText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B740()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.callingLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B76C()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.emergencyServicesLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B798()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.sos.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B7C4()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.dialog.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B7F0()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.localeIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2B81C()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.isSmartEnabled.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2B870()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.isSAEAvailable.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2B8C4()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.shouldPlayTTSCountdown.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2B918()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.callAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2B944()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.cancelAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2B970(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v7 = OUTLINED_FUNCTION_20_3(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v12 = OUTLINED_FUNCTION_20_3(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[13];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v16 = OUTLINED_FUNCTION_20_3(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[16];
    goto LABEL_7;
  }

  v19 = *(a1 + a3[18] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_2BAC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v9 = OUTLINED_FUNCTION_20_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    v14 = OUTLINED_FUNCTION_20_3(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[13];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      result = OUTLINED_FUNCTION_20_3(v17);
      if (*(v19 + 84) != a3)
      {
        *(a1 + a4[18] + 8) = (a2 - 1);
        return result;
      }

      v11 = result;
      v16 = a4[16];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2BC64()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_2BD4C()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.personHandle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BDA0()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.spokenHandle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BDCC()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.shouldPrintHandleBlue.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2BE20()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BE74()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.rskeCommand.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2BEA0()
{
  OUTLINED_FUNCTION_13_4();
  result = DisambiguationItemWithDirectInvocationModel.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BEF4()
{
  OUTLINED_FUNCTION_13_4();
  result = LocalEmergencyCallDisambiguationModel.prompt.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2BF20(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_1_15();
  v6 = type metadata accessor for UUID();
  v7 = OUTLINED_FUNCTION_20_3(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    v12 = OUTLINED_FUNCTION_20_3(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      v16 = OUTLINED_FUNCTION_20_3(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        v19 = OUTLINED_FUNCTION_20_3(v18);
        if (*(v20 + 84) == v3)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
          v22 = OUTLINED_FUNCTION_20_3(v21);
          if (*(v23 + 84) == v3)
          {
            v9 = v22;
            v14 = a3[9];
          }

          else
          {
            v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
            v14 = a3[10];
          }
        }
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_2C0F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_15();
  v8 = type metadata accessor for UUID();
  v9 = OUTLINED_FUNCTION_20_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    v14 = OUTLINED_FUNCTION_20_3(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      v18 = OUTLINED_FUNCTION_20_3(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        v21 = OUTLINED_FUNCTION_20_3(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
          v24 = OUTLINED_FUNCTION_20_3(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[9];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
            v16 = a4[10];
          }
        }
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_2C2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  v7 = OUTLINED_FUNCTION_20_3(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_45_7(*(a1 + *(a3 + 24) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_2C374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_15();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  result = OUTLINED_FUNCTION_20_3(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 24) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_2C424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_45_7(*(a1 + 8));
  }

  v7 = type metadata accessor for UUID();
  v8 = OUTLINED_FUNCTION_20_3(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 28);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    v11 = *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void sub_2C4EC()
{
  OUTLINED_FUNCTION_1_15();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = type metadata accessor for UUID();
    v7 = OUTLINED_FUNCTION_20_3(v6);
    if (*(v8 + 84) == v5)
    {
      v9 = v7;
      v10 = *(v4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      v10 = *(v4 + 32);
    }

    __swift_storeEnumTagSinglePayload(v1 + v10, v0, v0, v9);
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C016UnsupportedValueC7Adapter33_F346112A54832801DC2C781F72BAEE7FLLCfD_0()
{
  ThirdPartyAnnotatedAppStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2C798()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2C7E0(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 128))();
}

uint64_t sub_2C824(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C868(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ConfirmationResponse();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2C8CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2C90C()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2C974()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2CA4C()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_2CA90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2CB94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_2CC24()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t _sSYsSHRzSH8RawValueSYRpzrlE4hash4intoys6HasherVz_tF27PhoneCallFlowDelegatePlugin37AnnounceGroupFaceTimeInviteCATsSimpleC28OfferFollowUpIntentDialogIdsO_Tgq5_0()
{
  String.hash(into:)();
}

uint64_t _sSYsSHRzSH8RawValueSYRpzrlE4hash4intoys6HasherVz_tF27PhoneCallFlowDelegatePlugin06SearchG17HistoryCATsSimpleC46ErrorWithCodeAppConfigurationRequiredDialogIdsO_Tgq5_0()
{
  OUTLINED_FUNCTION_64_5();
  String.hash(into:)();
}

uint64_t sub_2D1C4()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2D28C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2D3BC()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2D484()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2D4BC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2D50C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2D5D4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2D66C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 104))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_2D6B0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 128))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_2D6F8(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 152))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_2D7F4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 152))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_2D838(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 176))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_2D87C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 200))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_2D8C0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 224))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_2D904(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 248))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_2D948(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 272))(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_2D99C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 296))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_2D9EC(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 320))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_2DA6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2DAAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2DB40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2DB94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2DC18()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2DC50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_2DCB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2DCC8()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v3 = v0[10];

  v4 = v0[13];

  v5 = v0[14];

  v6 = OUTLINED_FUNCTION_11_33();

  return _swift_deallocObject(v6, v7, v8);
}

id sub_2DD64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = AnnounceCallsContext.incomingCall.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2DD94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppNameSpecifiedByUserSignalCollectionHistory.apps.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2DDC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

id sub_2DEDC()
{
  v1 = [v0 callRequestMetadata];

  return v1;
}

void sub_2DF18()
{
  OUTLINED_FUNCTION_51_12();
  [v0 setCallRequestMetadata:?];
}

uint64_t sub_2E01C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2E098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Parse();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2E148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Parse();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2E1F4@<X0>(uint64_t *a1@<X8>)
{
  result = ContactDisambiguationPromptResponseParser.personsToDisambiguate.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2E224(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2E2AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2E358()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2E3DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2E41C()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[12];

  v4 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_2E47C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2E4C8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 152))();
}

id sub_2E54C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) recordTypeForRedialing];
  *v1 = result;
  return result;
}

uint64_t sub_2E590()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2E5C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_106();

  return _swift_deallocObject(v2, v3, v4);
}

id sub_2E688(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) callCapability];
  *v1 = result;
  return result;
}

id sub_2E6CC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) ttyType];
  *v1 = result;
  return result;
}

id sub_2E710(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) preferredCallProvider];
  *v1 = result;
  return result;
}

id sub_2E754(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) destinationType];
  *v1 = result;
  return result;
}

id sub_2E7C8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_35_11(a1) audioRoute];
  *v1 = result;
  return result;
}

uint64_t sub_2E870()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  OUTLINED_FUNCTION_23_5(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2E914()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2E954()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  OUTLINED_FUNCTION_23_5(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_2EA74()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v3 = v0[10];

  v4 = v0[13];

  v5 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2EADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_2EB70()
{
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t closure #2 in static PhoneReferenceResolution.resolveUpdateSKIntent(nlIntent:siriKitIntent:deviceState:referenceResolver:contactGroupResolver:siriKitEventSender:)(uint64_t *a1)
{
  v1 = *a1;
  static PhoneDomainContextMetricsUtils.populatePhoneDomainContextSRR()();
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

uint64_t sub_2EC30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2ED1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2EDD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_88();
  result = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_2EE80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_2EEC0()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v3 = v0[10];

  v4 = v0[13];

  v5 = v0[14];

  OUTLINED_FUNCTION_50_1();

  return _swift_deallocObject(v6, v7, v8);
}

uint64_t sub_2EF24()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2EF74()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v3 = v0[10];

  v4 = v0[13];

  v5 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2F168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F1BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2F24C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2F28C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_2F2DC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2F324()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_2F374()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2F3B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2F428()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_2F4A8()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_2F500()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  OUTLINED_FUNCTION_19_26();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_2F55C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v4 = v0[22];

  OUTLINED_FUNCTION_19_26();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_2F618()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2F660()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_2F6B8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_2F774()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F7AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2F804()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_2F848(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + class metadata base offset for PhoneCallBaseCatTemplatingService + 88))();
}

__n128 sub_2F8B4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2F8C0()
{
  OUTLINED_FUNCTION_66();
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7(v4);
  v6 = v5;
  v7 = *(v5 + 80);
  v9 = *(v8 + 64);
  v10 = *(v0 + 24);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v0 + v2);

    v12 = *(v6 + 8);
  }

  else
  {
    v12 = *(v6 + 8);
    v12(v0 + v2, v4);
  }

  v12(v0 + ((v2 + v3 + v7) & ~v7), v4);
  OUTLINED_FUNCTION_65();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_2FFF0(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 88))();
}

uint64_t sub_30048()
{
  type metadata accessor for Input();
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v0);
  __swift_destroy_boxed_opaque_existential_1((v1 + v8));
  v11 = *(v1 + v9);

  v12 = *(v1 + v9 + 8);

  v13 = *(v1 + v9 + 24);

  v14 = *(v1 + v9 + 40);

  return _swift_deallocObject(v1, v9 + 48, v4 | 7);
}

uint64_t sub_30148()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  OUTLINED_FUNCTION_50_15();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_3019C()
{
  type metadata accessor for Input();
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v0);
  __swift_destroy_boxed_opaque_existential_1((v1 + v7));
  v10 = *(v1 + v8 + 8);

  return _swift_deallocObject(v1, v8 + 16, v4 | 7);
}

uint64_t sub_302CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3030C()
{
  type metadata accessor for Input();
  OUTLINED_FUNCTION_51_17();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 2);
  swift_unknownObjectRelease();
  v10 = *(v1 + 4);

  v11 = *(v1 + 6);

  (*(v3 + 8))(&v1[v5], v0);
  v12 = *&v1[v7];

  v13 = *&v1[v7 + 8];

  v14 = *&v1[v7 + 24];

  v15 = *&v1[v7 + 40];

  __swift_destroy_boxed_opaque_existential_1(&v1[v8]);

  return _swift_deallocObject(v1, v8 + 40, v4 | 7);
}

uint64_t sub_30424()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_30460()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_30498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  OUTLINED_FUNCTION_36_18();
  v8 = type metadata accessor for RCHChildFlowProducers();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_36_18();
    v9 = type metadata accessor for RCHChildFlowProducersAsync();
    v10 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_30540(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  OUTLINED_FUNCTION_36_18();
  v10 = type metadata accessor for RCHChildFlowProducers();
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_36_18();
    v11 = type metadata accessor for RCHChildFlowProducersAsync();
    v12 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_305F0()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_3062C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_30684()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_306F8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 96))();
}

uint64_t sub_3073C(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 120))();
}

uint64_t sub_30780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_3086C(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 96))();
}

uint64_t sub_308B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_308FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_30970(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 96))(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_309BC(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 120))(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_30A08(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 120))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_30BE8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30C20()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_31374(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 120))();
}

uint64_t sub_313B8(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 144))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_313FC(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 184))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_31440(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 208))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_31480(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 216))(*v4);
}

uint64_t sub_314C4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 232))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_31508(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 256))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_31554(uint64_t **a1)
{
  v1 = OUTLINED_FUNCTION_0_3(a1);
  v3 = (*(v2 + 280))(v1);
  return OUTLINED_FUNCTION_77_10(v3);
}

uint64_t sub_3159C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 288))();
}

uint64_t sub_315F0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 328))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_3163C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 352))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_31688(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 376))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_316D4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 400))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_31720(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 424))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_3176C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 448))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_317B8(uint64_t **a1)
{
  v1 = OUTLINED_FUNCTION_0_3(a1);
  v3 = (*(v2 + 472))(v1);
  return OUTLINED_FUNCTION_77_10(v3);
}

uint64_t sub_31800(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 480))();
}

uint64_t sub_3184C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 496))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_31894(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 504))(*v4);
}

uint64_t sub_318E0(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 536))();
}

uint64_t sub_3192C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 560))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_31974(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 568))(*v4);
}

double _sSlsE5first7ElementQzSgvgSay27PhoneCallFlowDelegatePlugin04SiriC7Contact_pG_Tg5_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of SignalProviding(a1 + 32, a2);
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

uint64_t sub_31AB4()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v3 = v0[10];

  v4 = v0[13];

  v5 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_31B6C(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 104))();
}

uint64_t sub_31BB0(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 128))();
}

uint64_t sub_31BF4(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 152))();
}

uint64_t sub_31C38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_31D78(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 296))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_31DC4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 320))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_31E10(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 344))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_31EA4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 392))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_31EF0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 416))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_31F3C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 424))();
}

uint64_t sub_31FD0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 464))(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_32024(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 488))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_32070(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 512))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_320BC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 520))();
}

uint64_t sub_32390(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 752))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_323DC(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 776))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_32428(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 800))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_32474(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 824))(v2);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_324C8(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 296))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_32580()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_325D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_32690()
{
  v3 = type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_60();
  v9 = v1[3];

  v10 = v1[4];

  v11 = v1[5];

  v12 = v1[8];

  __swift_destroy_boxed_opaque_existential_1(v1 + 9);
  __swift_destroy_boxed_opaque_existential_1(v1 + 14);
  __swift_destroy_boxed_opaque_existential_1(v1 + 19);
  (*(v5 + 8))(v1 + ((v6 + 192) & ~v6), v0);

  return _swift_deallocObject(v1, v2 + 8, v6 | 7);
}

uint64_t sub_32780()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_327B8()
{
  v2 = type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5(v2);
  v4 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_60();
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  v9 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v10 = *(v0 + 192);

  v11 = OUTLINED_FUNCTION_13_43();
  v12(v11);

  v13 = OUTLINED_FUNCTION_11_46();

  return _swift_deallocObject(v13, v14, v15);
}

uint64_t sub_328A0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_328E8()
{
  v2 = type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5(v2);
  v4 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_60();
  v7 = v0[3];

  v8 = v0[4];

  v9 = v0[5];

  v10 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v11 = v0[24];

  v12 = OUTLINED_FUNCTION_13_43();
  v13(v12);

  v14 = OUTLINED_FUNCTION_11_46();

  return _swift_deallocObject(v14, v15, v16);
}

uint64_t sub_329D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_32A10()
{
  v2 = type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 200) & ~v5;
  v8 = *(v7 + 64);

  v9 = *(v1 + 32);

  v10 = *(v1 + 40);

  v11 = *(v1 + 48);

  v12 = *(v1 + 72);

  OUTLINED_FUNCTION_7_55();
  (*(v4 + 8))(v1 + v6, v0);

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_32AEC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32B24()
{
  v2 = type metadata accessor for Image();
  OUTLINED_FUNCTION_1_5(v2);
  v4 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_60();
  v7 = v0[2];

  v8 = v0[4];

  v9 = v0[5];

  v10 = v0[6];

  v11 = v0[9];

  OUTLINED_FUNCTION_7_55();
  v12 = OUTLINED_FUNCTION_13_43();
  v13(v12);

  v14 = OUTLINED_FUNCTION_11_46();

  return _swift_deallocObject(v14, v15, v16);
}

uint64_t sub_32C24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_32C5C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32C94()
{
  v1 = type metadata accessor for OrdinalDisplayHintsBuilder();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_32D6C()
{
  v1 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  __swift_destroy_boxed_opaque_existential_1((v0 + v7 + 40));
  v11 = *(v0 + v7 + 80);

  v12 = *(v0 + v8);

  v13 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v4 | 7);
}

uint64_t sub_32FA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_32FE0(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 128))();
}

__n128 sub_33028(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_3303C(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 152))();
}

uint64_t sub_33088(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 104))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_330CC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 112))();
}

uint64_t sub_33110(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 128))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_33154(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 136))();
}

uint64_t sub_33198(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 152))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_331DC(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 128))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_33258(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 128))();
}

__n128 sub_332A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_332B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_33324@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_339DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_33A28(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 128))();
}

uint64_t sub_33A6C(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 152))();
}

uint64_t sub_33AB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_33B24(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 88))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_33B68(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 112))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_33C98()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_33CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhoneRRTarget.Target(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 <= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = *(a1 + *(a3 + 20));
    }

    v10 = v9 - 3;
    if (v8 >= 3)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_33D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_88();
  result = type metadata accessor for PhoneRRTarget.Target(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_33EB0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 112))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_33EF4(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 136))();
}

uint64_t sub_33F38(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 160))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_33F7C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 184))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_33FC0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 136))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_34298@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_48(a1);
  result = (*(v4 + 224))(v3);
  *a2 = result;
  return result;
}

uint64_t sub_342E0@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_48(a1);
  result = (*(v4 + 248))(v3);
  *a2 = result;
  return result;
}

uint64_t sub_34328@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_48(a1);
  result = (*(v4 + 152))(v3);
  *a2 = result;
  return result;
}

uint64_t sub_34398()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_343D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_34418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_34484()
{
  OUTLINED_FUNCTION_13_4();
  result = PlayVoicemailModel.callRecords.getter();
  *v0 = result;
  return result;
}

uint64_t sub_344B0()
{
  OUTLINED_FUNCTION_13_4();
  result = PlayVoicemailModel.voicemailTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_344DC()
{
  OUTLINED_FUNCTION_13_4();
  result = PlayVoicemailModel.openPhoneText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_34508()
{
  OUTLINED_FUNCTION_13_4();
  result = PlayVoicemailModel.openPhoneAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_34534(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
    v9 = OUTLINED_FUNCTION_20_3(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      v14 = OUTLINED_FUNCTION_20_3(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
        v12 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_34660(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
    v9 = OUTLINED_FUNCTION_20_3(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      v14 = OUTLINED_FUNCTION_20_3(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
        v12 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_347B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_347F8()
{
  v1 = type metadata accessor for OutputGenerationManifest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_348C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_4_68();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_34900()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_4_68();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_349F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_34A34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_34A70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_34AFC()
{
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  (*(v3 + 8))(&v0[v5], v1);

  return _swift_deallocObject(v0, v7 + 9, v4 | 7);
}

uint64_t sub_34BD8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_34C18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = type metadata accessor for SpeakableString();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v8))
  {
    OUTLINED_FUNCTION_40(v8);
    (*(v9 + 8))(v0 + v4, v8);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_34D0C()
{
  v2 = type metadata accessor for PhoneSnippetDataModels();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for SearchCallHistoryModel();
  OUTLINED_FUNCTION_7(v6);
  v8 = *(v7 + 80);
  v221 = *(v9 + 64);
  v10 = *(v0 + 16);

  v11 = (v0 + v4);
  OUTLINED_FUNCTION_72();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v79);
      v208 = *(v80 + 8);
      v81 = OUTLINED_FUNCTION_72();
      v82(v81);
      v83 = type metadata accessor for YesNoConfirmationModel();
      OUTLINED_FUNCTION_39_21(v83);
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_8_5(v84);
      v86 = *(v85 + 8);
      v87 = OUTLINED_FUNCTION_36_3();
      v86(v87);
      v88 = OUTLINED_FUNCTION_29_6();
      v89(v88);
      v90 = OUTLINED_FUNCTION_40_1();
      v86(v90);
      v4 = (v3 + 24) & ~v3;
      goto LABEL_8;
    case 1u:
      v94 = *v11;

      v95 = *(v11 + 2);
      goto LABEL_19;
    case 2u:
    case 7u:
    case 8u:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v12);
      v205 = *(v13 + 8);
      v14 = OUTLINED_FUNCTION_72();
      v15(v14);
      v16 = type metadata accessor for YesNoConfirmationModel();
      OUTLINED_FUNCTION_39_21(v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_8_5(v17);
      v209 = v5;
      v19 = *(v18 + 8);
      v20 = OUTLINED_FUNCTION_36_3();
      v19(v20);
      v21 = OUTLINED_FUNCTION_29_6();
      v22(v21);
      v4 = (v3 + 24) & ~v3;
      v23 = OUTLINED_FUNCTION_40_1();
      v19(v23);
      v5 = v209;
LABEL_8:
      v91 = v1[8];
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      OUTLINED_FUNCTION_23_5(v92);
      (*(v93 + 8))(&v11[v91]);
      v65 = v1[9];
      goto LABEL_18;
    case 3u:
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v105);
      v107 = *(v106 + 8);
      v217 = v8;
      v108 = OUTLINED_FUNCTION_92();
      v107(v108);
      v109 = type metadata accessor for EmergencyCountdownModel();
      v110 = OUTLINED_FUNCTION_14_10(v109[5]);
      v107(v110);
      v111 = OUTLINED_FUNCTION_14_10(v109[6]);
      v107(v111);
      v112 = OUTLINED_FUNCTION_14_10(v109[7]);
      v107(v112);
      v113 = OUTLINED_FUNCTION_14_10(v109[8]);
      v107(v113);
      v114 = OUTLINED_FUNCTION_14_10(v109[9]);
      v107(v114);
      v115 = OUTLINED_FUNCTION_14_10(v109[10]);
      v107(v115);
      v116 = OUTLINED_FUNCTION_14_10(v109[11]);
      v107(v116);
      v117 = OUTLINED_FUNCTION_14_10(v109[12]);
      v107(v117);
      v118 = v109[13];
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1(v119);
      v121 = *(v120 + 8);
      v122 = OUTLINED_FUNCTION_58_11();
      v121(v122);
      v123 = OUTLINED_FUNCTION_14_10(v109[14]);
      v121(v123);
      v124 = OUTLINED_FUNCTION_14_10(v109[15]);
      v121(v124);
      v125 = v109[16];
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_23_1(v126);
      v128 = *(v127 + 8);
      v129 = OUTLINED_FUNCTION_58_11();
      v128(v129);
      v130 = OUTLINED_FUNCTION_14_10(v109[17]);
      v128(v130);
      v4 = (v3 + 24) & ~v3;
      v8 = v217;
      v65 = v109[18];
      goto LABEL_18;
    case 4u:
      v131 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
      if (!OUTLINED_FUNCTION_59_12(v131))
      {
        v132 = type metadata accessor for UUID();
        OUTLINED_FUNCTION_23_5(v132);
        (*(v133 + 8))(v0 + v4);
        v134 = v2[5];
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_6_71(v135);
        v218 = v8;
        v137 = *(v136 + 8);
        v138 = OUTLINED_FUNCTION_58_11();
        v137(v138);
        v139 = v2[6];
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
        OUTLINED_FUNCTION_23_5(v140);
        (*(v141 + 8))(&v11[v139]);
        v142 = v2[7];
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_23_5(v143);
        (*(v144 + 8))(&v11[v142]);
        v145 = OUTLINED_FUNCTION_14_10(v2[8]);
        v137(v145);
        v4 = (v3 + 24) & ~v3;
        v8 = v218;
        v146 = v2[9];
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
        OUTLINED_FUNCTION_23_5(v147);
        (*(v148 + 8))(&v11[v146]);
        v149 = v2[10];
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
        OUTLINED_FUNCTION_23_5(v150);
        (*(v151 + 8))(&v11[v149]);
      }

      v1 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
      v152 = &v11[v1[5]];
      if (!__swift_getEnumTagSinglePayload(v152, 1, v2))
      {
        v153 = type metadata accessor for UUID();
        OUTLINED_FUNCTION_23_5(v153);
        (*(v154 + 8))(v152);
        v219 = v8;
        v155 = v2[5];
        v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_8_5(v212);
        v213 = v4;
        v157 = *(v156 + 8);
        v157(v152 + v155);
        v158 = v2[6];
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
        OUTLINED_FUNCTION_23_5(v159);
        (*(v160 + 8))(v152 + v158);
        v161 = v2[7];
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_23_5(v162);
        (*(v163 + 8))(v152 + v161);
        (v157)(v152 + v2[8], v212);
        v4 = v213;
        v164 = v2[9];
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
        OUTLINED_FUNCTION_23_5(v165);
        v167 = v152 + v164;
        v8 = v219;
        (*(v166 + 8))(v167);
        v168 = v2[10];
        v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
        OUTLINED_FUNCTION_23_5(v169);
        (*(v170 + 8))(v152 + v168);
      }

      v171 = *&v11[v1[6] + 8];

      goto LABEL_17;
    case 5u:
      v96 = *(v11 + 1);

      v97 = *(v11 + 2);

      v98 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      v99 = v98[7];
      v100 = type metadata accessor for UUID();
      OUTLINED_FUNCTION_23_5(v100);
      (*(v101 + 8))(&v11[v99]);
      v102 = v98[8];
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_5(v103);
      (*(v104 + 8))(&v11[v102]);
      v65 = v98[9];
      goto LABEL_18;
    case 6u:
      v203 = *v11;
      goto LABEL_19;
    case 9u:
      v66 = *(v11 + 1);

      v67 = v6[5];
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v68);
      v70 = *(v69 + 8);
      v70(&v11[v67], v68);
      v71 = v6[6];
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      OUTLINED_FUNCTION_23_5(v72);
      (*(v73 + 8))(&v11[v71]);
      v70(&v11[v6[7]], v68);
      v70(&v11[v6[8]], v68);
      v74 = v6[9];
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1(v75);
      v77 = *(v76 + 8);
      v77(&v11[v74], v75);
      v77(&v11[v6[10]], v75);
      v78 = v6[11];
      goto LABEL_24;
    case 0xAu:
      v191 = *(v11 + 1);

      v192 = type metadata accessor for PlayVoicemailModel();
      v193 = v192[5];
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
      OUTLINED_FUNCTION_23_5(v194);
      (*(v195 + 8))(&v11[v193]);
      v214 = v192[6];
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_6_71(v196);
      v220 = v8;
      v198 = *(v197 + 8);
      v199 = OUTLINED_FUNCTION_14_10(v214);
      v198(v199);
      v200 = OUTLINED_FUNCTION_14_10(v192[7]);
      v198(v200);
      v8 = v220;
      v4 = (v3 + 24) & ~v3;
      v78 = v192[8];
LABEL_24:
      v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
      OUTLINED_FUNCTION_23_5(v201);
      (*(v202 + 8))(&v11[v78]);
      goto LABEL_20;
    case 0xBu:
      v24 = *(v11 + 1);

      v25 = *(v11 + 3);

      v26 = *(v11 + 5);

      v27 = *(v11 + 7);

      v28 = *(v11 + 9);

      v29 = *(v11 + 11);

      v30 = *(v11 + 13);

      v31 = *(v11 + 15);

      v32 = type metadata accessor for SingleResultVoicemailModel();
      v33 = v32[13];
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_6_71(v34);
      v215 = v8;
      v36 = *(v35 + 8);
      v37 = OUTLINED_FUNCTION_58_11();
      v36(v37);
      v38 = OUTLINED_FUNCTION_14_10(v32[14]);
      v36(v38);
      v11 += v32[15];
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v39);
      v206 = *(v40 + 8);
      v41 = OUTLINED_FUNCTION_72();
      v42(v41);
      v43 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
      OUTLINED_FUNCTION_39_21(v43);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
      OUTLINED_FUNCTION_8_5(v44);
      v210 = v5;
      v46 = *(v45 + 8);
      v47 = OUTLINED_FUNCTION_36_3();
      v46(v47);
      v48 = OUTLINED_FUNCTION_29_6();
      v49(v48);
      v4 = (v3 + 24) & ~v3;
      v50 = OUTLINED_FUNCTION_40_1();
      v46(v50);
      v8 = v215;
      v5 = v210;
LABEL_17:
      v65 = v1[8];
      goto LABEL_18;
    case 0xCu:
      v51 = *(v11 + 1);

      v52 = *(v11 + 3);

      v53 = *(v11 + 5);

      v54 = *(v11 + 7);

      v55 = *(v11 + 8);

      v11 += *(type metadata accessor for SingleResultCallHistoryModel() + 36);
      v56 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
      if (OUTLINED_FUNCTION_59_12(v56))
      {
        goto LABEL_20;
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_6_71(v57);
      v216 = v8;
      v59 = *(v58 + 8);
      v60 = OUTLINED_FUNCTION_92();
      v59(v60);
      v207 = v2[5];
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
      OUTLINED_FUNCTION_8_5(v61);
      v211 = v5;
      v63 = *(v62 + 8);
      v63(&v11[v207], v61);
      v64 = OUTLINED_FUNCTION_14_10(v2[6]);
      v59(v64);
      v4 = (v3 + 24) & ~v3;
      v8 = v216;
      v63(&v11[v2[7]], v61);
      v5 = v211;
      v65 = v2[8];
LABEL_18:
      v172 = *&v11[v65 + 8];
LABEL_19:

LABEL_20:
      v173 = v3 | v8;
      v174 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
      v175 = (v174 + v8 + 8) & ~v8;

      v176 = *(v0 + v175 + 8);

      v177 = v6[5];
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v178);
      v180 = *(v179 + 8);
      v180(v0 + v175 + v177, v178);
      v181 = v6[6];
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      OUTLINED_FUNCTION_23_5(v182);
      (*(v183 + 8))(v0 + v175 + v181);
      v180(v0 + v175 + v6[7], v178);
      v180(v0 + v175 + v6[8], v178);
      v184 = v6[9];
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1(v185);
      v187 = *(v186 + 8);
      v187(v0 + v175 + v184, v185);
      v187(v0 + v175 + v6[10], v185);
      v188 = v6[11];
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
      OUTLINED_FUNCTION_23_5(v189);
      (*(v190 + 8))(v0 + v175 + v188);

      return _swift_deallocObject(v0, v175 + v221, v173 | 7);
    default:
      goto LABEL_20;
  }
}

uint64_t sub_35C44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_35C90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_35CD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_35D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_35D5C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_35DB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = type metadata accessor for SpeakableString();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v0 + v4, v8);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_35EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_35FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_36090()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_360E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_36158()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_36194()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_361D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = type metadata accessor for SpeakableString();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v8))
  {
    OUTLINED_FUNCTION_40(v8);
    (*(v9 + 8))(v0 + v4, v8);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_362C8()
{
  v2 = type metadata accessor for PhoneSnippetDataModels();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for PlayVoicemailModel();
  OUTLINED_FUNCTION_7(v6);
  v8 = *(v7 + 80);
  v219 = *(v9 + 64);
  v10 = *(v0 + 16);

  v11 = (v0 + v4);
  OUTLINED_FUNCTION_72();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v85);
      v206 = *(v86 + 8);
      v87 = OUTLINED_FUNCTION_72();
      v88(v87);
      v89 = type metadata accessor for YesNoConfirmationModel();
      OUTLINED_FUNCTION_39_21(v89);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_8_5(v90);
      v92 = *(v91 + 8);
      v93 = OUTLINED_FUNCTION_36_3();
      v92(v93);
      v94 = OUTLINED_FUNCTION_29_6();
      v95(v94);
      v96 = OUTLINED_FUNCTION_40_1();
      v92(v96);
      v4 = (v3 + 24) & ~v3;
      goto LABEL_8;
    case 1u:
      v100 = *v11;

      v101 = *(v11 + 2);
      goto LABEL_19;
    case 2u:
    case 7u:
    case 8u:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v12);
      v203 = *(v13 + 8);
      v14 = OUTLINED_FUNCTION_72();
      v15(v14);
      v16 = type metadata accessor for YesNoConfirmationModel();
      OUTLINED_FUNCTION_39_21(v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_8_5(v17);
      v207 = v8;
      v19 = *(v18 + 8);
      v20 = OUTLINED_FUNCTION_36_3();
      v19(v20);
      v21 = OUTLINED_FUNCTION_29_6();
      v22(v21);
      v4 = (v3 + 24) & ~v3;
      v23 = OUTLINED_FUNCTION_40_1();
      v19(v23);
      v8 = v207;
LABEL_8:
      v97 = v1[8];
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      OUTLINED_FUNCTION_23_5(v98);
      (*(v99 + 8))(&v11[v97]);
      v65 = v1[9];
      goto LABEL_18;
    case 3u:
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v111);
      v113 = *(v112 + 8);
      v214 = v5;
      v114 = OUTLINED_FUNCTION_92();
      v113(v114);
      v115 = type metadata accessor for EmergencyCountdownModel();
      v116 = OUTLINED_FUNCTION_14_10(v115[5]);
      v113(v116);
      v117 = OUTLINED_FUNCTION_14_10(v115[6]);
      v113(v117);
      v118 = OUTLINED_FUNCTION_14_10(v115[7]);
      v113(v118);
      v119 = OUTLINED_FUNCTION_14_10(v115[8]);
      v113(v119);
      v120 = OUTLINED_FUNCTION_14_10(v115[9]);
      v113(v120);
      v121 = OUTLINED_FUNCTION_14_10(v115[10]);
      v113(v121);
      v122 = OUTLINED_FUNCTION_14_10(v115[11]);
      v113(v122);
      v123 = OUTLINED_FUNCTION_14_10(v115[12]);
      v113(v123);
      v124 = v115[13];
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1(v125);
      v127 = *(v126 + 8);
      v128 = OUTLINED_FUNCTION_58_11();
      v127(v128);
      v129 = OUTLINED_FUNCTION_14_10(v115[14]);
      v127(v129);
      v130 = OUTLINED_FUNCTION_14_10(v115[15]);
      v127(v130);
      v131 = v115[16];
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_23_1(v132);
      v134 = *(v133 + 8);
      v135 = OUTLINED_FUNCTION_58_11();
      v134(v135);
      v136 = OUTLINED_FUNCTION_14_10(v115[17]);
      v134(v136);
      v5 = v214;
      v4 = (v3 + 24) & ~v3;
      v65 = v115[18];
      goto LABEL_18;
    case 4u:
      v137 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
      if (!OUTLINED_FUNCTION_59_12(v137))
      {
        v138 = type metadata accessor for UUID();
        OUTLINED_FUNCTION_23_5(v138);
        (*(v139 + 8))(v0 + v4);
        v140 = v2[5];
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_6_71(v141);
        v215 = v5;
        v143 = *(v142 + 8);
        v144 = OUTLINED_FUNCTION_58_11();
        v143(v144);
        v145 = v2[6];
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
        OUTLINED_FUNCTION_23_5(v146);
        (*(v147 + 8))(&v11[v145]);
        v148 = v2[7];
        v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_23_5(v149);
        (*(v150 + 8))(&v11[v148]);
        v151 = OUTLINED_FUNCTION_14_10(v2[8]);
        v143(v151);
        v5 = v215;
        v4 = (v3 + 24) & ~v3;
        v152 = v2[9];
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
        OUTLINED_FUNCTION_23_5(v153);
        (*(v154 + 8))(&v11[v152]);
        v155 = v2[10];
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
        OUTLINED_FUNCTION_23_5(v156);
        (*(v157 + 8))(&v11[v155]);
      }

      v1 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
      v158 = &v11[v1[5]];
      if (!__swift_getEnumTagSinglePayload(v158, 1, v2))
      {
        v159 = type metadata accessor for UUID();
        OUTLINED_FUNCTION_23_5(v159);
        (*(v160 + 8))(v158);
        v216 = v5;
        v161 = v2[5];
        v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_8_5(v210);
        v217 = v4;
        v163 = *(v162 + 8);
        v163(v158 + v161);
        v164 = v2[6];
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
        OUTLINED_FUNCTION_23_5(v165);
        (*(v166 + 8))(v158 + v164);
        v167 = v2[7];
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        OUTLINED_FUNCTION_23_5(v168);
        (*(v169 + 8))(v158 + v167);
        (v163)(v158 + v2[8], v210);
        v4 = v217;
        v170 = v2[9];
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
        OUTLINED_FUNCTION_23_5(v171);
        v173 = v158 + v170;
        v5 = v216;
        (*(v172 + 8))(v173);
        v174 = v2[10];
        v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
        OUTLINED_FUNCTION_23_5(v175);
        (*(v176 + 8))(v158 + v174);
      }

      v177 = *&v11[v1[6] + 8];

      goto LABEL_17;
    case 5u:
      v102 = *(v11 + 1);

      v103 = *(v11 + 2);

      v104 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
      v105 = v104[7];
      v106 = type metadata accessor for UUID();
      OUTLINED_FUNCTION_23_5(v106);
      (*(v107 + 8))(&v11[v105]);
      v108 = v104[8];
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_5(v109);
      (*(v110 + 8))(&v11[v108]);
      v65 = v104[9];
      goto LABEL_18;
    case 6u:
      v201 = *v11;
      goto LABEL_19;
    case 9u:
      v66 = *(v11 + 1);

      v67 = type metadata accessor for SearchCallHistoryModel();
      v68 = v67[5];
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_6_71(v69);
      v213 = v5;
      v71 = *(v70 + 8);
      v72 = OUTLINED_FUNCTION_58_11();
      v71(v72);
      v73 = v67[6];
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      OUTLINED_FUNCTION_23_5(v74);
      (*(v75 + 8))(&v11[v73]);
      v76 = OUTLINED_FUNCTION_14_10(v67[7]);
      v71(v76);
      v77 = OUTLINED_FUNCTION_14_10(v67[8]);
      v71(v77);
      v78 = v67[9];
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
      OUTLINED_FUNCTION_23_1(v79);
      v81 = *(v80 + 8);
      v82 = OUTLINED_FUNCTION_58_11();
      v81(v82);
      v83 = OUTLINED_FUNCTION_14_10(v67[10]);
      v81(v83);
      v5 = v213;
      v4 = (v3 + 24) & ~v3;
      v84 = v67[11];
      goto LABEL_24;
    case 0xAu:
      v192 = *(v11 + 1);

      v193 = v6[5];
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
      OUTLINED_FUNCTION_23_5(v194);
      (*(v195 + 8))(&v11[v193]);
      v218 = v6[6];
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v196);
      v198 = *(v197 + 8);
      v198(&v11[v218], v196);
      v198(&v11[v6[7]], v196);
      v84 = v6[8];
LABEL_24:
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
      OUTLINED_FUNCTION_23_5(v199);
      (*(v200 + 8))(&v11[v84]);
      goto LABEL_20;
    case 0xBu:
      v24 = *(v11 + 1);

      v25 = *(v11 + 3);

      v26 = *(v11 + 5);

      v27 = *(v11 + 7);

      v28 = *(v11 + 9);

      v29 = *(v11 + 11);

      v30 = *(v11 + 13);

      v31 = *(v11 + 15);

      v32 = type metadata accessor for SingleResultVoicemailModel();
      v33 = v32[13];
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      OUTLINED_FUNCTION_6_71(v34);
      v211 = v5;
      v36 = *(v35 + 8);
      v37 = OUTLINED_FUNCTION_58_11();
      v36(v37);
      v38 = OUTLINED_FUNCTION_14_10(v32[14]);
      v36(v38);
      v11 += v32[15];
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v39);
      v204 = *(v40 + 8);
      v41 = OUTLINED_FUNCTION_72();
      v42(v41);
      v43 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
      OUTLINED_FUNCTION_39_21(v43);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
      OUTLINED_FUNCTION_8_5(v44);
      v208 = v8;
      v46 = *(v45 + 8);
      v47 = OUTLINED_FUNCTION_36_3();
      v46(v47);
      v48 = OUTLINED_FUNCTION_29_6();
      v49(v48);
      v4 = (v3 + 24) & ~v3;
      v50 = OUTLINED_FUNCTION_40_1();
      v46(v50);
      v8 = v208;
      v5 = v211;
LABEL_17:
      v65 = v1[8];
      goto LABEL_18;
    case 0xCu:
      v51 = *(v11 + 1);

      v52 = *(v11 + 3);

      v53 = *(v11 + 5);

      v54 = *(v11 + 7);

      v55 = *(v11 + 8);

      v11 += *(type metadata accessor for SingleResultCallHistoryModel() + 36);
      v56 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
      if (OUTLINED_FUNCTION_59_12(v56))
      {
        goto LABEL_20;
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_6_71(v57);
      v212 = v5;
      v59 = *(v58 + 8);
      v60 = OUTLINED_FUNCTION_92();
      v59(v60);
      v205 = v2[5];
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
      OUTLINED_FUNCTION_8_5(v61);
      v209 = v8;
      v63 = *(v62 + 8);
      v63(&v11[v205], v61);
      v64 = OUTLINED_FUNCTION_14_10(v2[6]);
      v59(v64);
      v5 = v212;
      v4 = (v3 + 24) & ~v3;
      v63(&v11[v2[7]], v61);
      v8 = v209;
      v65 = v2[8];
LABEL_18:
      v178 = *&v11[v65 + 8];
LABEL_19:

LABEL_20:
      v179 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
      v180 = (v179 + v8 + 8) & ~v8;

      v181 = *(v0 + v180 + 8);

      v182 = v6[5];
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGGMR);
      OUTLINED_FUNCTION_23_5(v183);
      (*(v184 + 8))(v0 + v180 + v182);
      v185 = v6[6];
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
      OUTLINED_FUNCTION_23_1(v186);
      v188 = *(v187 + 8);
      v188(v0 + v180 + v185, v186);
      v188(v0 + v180 + v6[7], v186);
      v189 = v6[8];
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
      OUTLINED_FUNCTION_23_5(v190);
      (*(v191 + 8))(v0 + v180 + v189);

      return _swift_deallocObject(v0, v180 + v219, v3 | v8 | 7);
    default:
      goto LABEL_20;
  }
}

uint64_t sub_37180@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_371CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3725C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_372A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Input();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_3734C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_373C8()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_37424()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v3 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v4 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_374C8()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.sashTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_374F4()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryBinaryButtonModel.primaryAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_37520()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryBinaryButtonModel.secondaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3754C()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryBinaryButtonModel.secondaryAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_37578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v7 = OUTLINED_FUNCTION_20_3(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v12 = OUTLINED_FUNCTION_20_3(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 32) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_37680(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v9 = OUTLINED_FUNCTION_20_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    result = OUTLINED_FUNCTION_20_3(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_377AC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_19_6();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_37868()
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
    return (v8 + 1);
  }
}

uint64_t sub_37900()
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
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin06SearchB17HistoryCATsSimpleC26UnsupportedUnseenDialogIdsOSYAASY8rawValue03RawO0QzvgTW_0()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t _s27PhoneCallFlowDelegatePlugin06SearchB17HistoryCATsSimpleC46ErrorWithCodeAppConfigurationRequiredDialogIdsOSYAASY8rawValue03RawS0QzvgTW_0()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_37D34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_37D78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_37DB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_37DF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_37F00()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37F38()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_38000()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_38048()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_38088()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_380F0()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.appId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3811C()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.callRecords.getter();
  *v0 = result;
  return result;
}

uint64_t sub_38148()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.recentsText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_38174()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.openPhoneText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_381A0()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.shouldShowBottomView.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_381F4()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.shouldReactOpenContact.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_38248()
{
  OUTLINED_FUNCTION_13_4();
  result = SearchCallHistoryModel.openPhoneAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_38274(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    v9 = OUTLINED_FUNCTION_20_3(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      v14 = OUTLINED_FUNCTION_20_3(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        v17 = OUTLINED_FUNCTION_20_3(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
          v12 = a3[11];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_383EC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    v9 = OUTLINED_FUNCTION_20_3(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMd, &_s10SnippetKit8LoggableVySay27PhoneCallFlowDelegatePlugin06SingleE11RecordModelVGGMR);
      v14 = OUTLINED_FUNCTION_20_3(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
        v17 = OUTLINED_FUNCTION_20_3(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
          v12 = a4[11];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_38588()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_38604()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_38640()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_38684()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_38740@<X0>(uint64_t *a1@<X8>)
{
  result = SingleCallRecordModel.directInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38770@<X0>(uint64_t *a1@<X8>)
{
  result = SingleCallRecordModel.openContactDirectInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_387A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_38834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_388E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_38938()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_38988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_38A1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_38B08@<X0>(uint64_t *a1@<X8>)
{
  result = SingleResultVoicemailModel.callbackDirectInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38B38@<X0>(uint64_t *a1@<X8>)
{
  result = SingleResultVoicemailModel.repeatDirectInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_38C40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_38D84@<X0>(uint64_t *a1@<X8>)
{
  result = SingleVoicemailModel.openVoicemailRSKE.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38DB4@<X0>(uint64_t *a1@<X8>)
{
  result = SingleVoicemailModel.openContactRSKE.getter();
  *a1 = result;
  return result;
}

uint64_t sub_38DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_38E78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_38F2C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_38F94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_39068(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 224))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_390AC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 232))();
}

uint64_t sub_390F0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 248))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_39134(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 272))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_39180(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 296))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_391C8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 304))(*v4);
}

uint64_t sub_3921C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 344))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_39268(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 368))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_392B4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 392))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_39300(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 416))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_3934C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 440))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_39398(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 464))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_393E4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 488))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_39430(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 512))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_39478(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 520))(*v4);
}

uint64_t sub_394C4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 536))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_3950C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 544))(*v4);
}

uint64_t sub_39558(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 560))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_395A4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 568))();
}

uint64_t sub_395F0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 584))(v2);
  *v1 = result;
  *(v1 + 2) = BYTE2(result);
  return result;
}

uint64_t sub_39644(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 608))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_39690(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 632))();
}

uint64_t sub_3976C()
{
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  OUTLINED_FUNCTION_1_116();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  OUTLINED_FUNCTION_1_116();
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v10 = v9;
  v11 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  (*(v4 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v11, AssociatedTypeWitness);
  OUTLINED_FUNCTION_65();

  return _swift_deallocObject(v14, v15, v16);
}

uint64_t _s27PhoneCallFlowDelegatePlugin22FirstHitIntentResolver33_F6DF120089954B0E13EF06C80F55DC3CLLVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_39908()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_39944()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_23_5(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_39A74()
{
  OUTLINED_FUNCTION_19_6();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_39AB8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_39AEC()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_39B24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = TUCall.isMicrophoneMuted.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_39B7C@<X0>(_BYTE *a1@<X8>)
{
  result = TUCall.isSpeakerphoneEnabled.getter();
  *a1 = result & 1;
  return result;
}

id sub_39BC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = TUCall.isCameraEnabled.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_39C54@<X0>(uint64_t *a1@<X8>)
{
  result = ButtonConfigurationModel.action.getter();
  *a1 = result;
  return result;
}

uint64_t sub_39C84@<X0>(uint64_t *a1@<X8>)
{
  result = ButtonConfigurationModel.directInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_39CB4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    v9 = OUTLINED_FUNCTION_20_3(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      v14 = OUTLINED_FUNCTION_20_3(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for UUID();
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_39DD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
    v9 = OUTLINED_FUNCTION_20_3(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
      v14 = OUTLINED_FUNCTION_20_3(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = type metadata accessor for UUID();
        v12 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_39F78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_39FB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_39FF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A10C()
{
  OUTLINED_FUNCTION_55_21();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3(v3);
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_8_78(*(v0 + *(v2 + 28)));
  }

  v5 = OUTLINED_FUNCTION_58_12();

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_3A1A4()
{
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_1_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_20_3(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_27_32();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0;
  }

  return result;
}

uint64_t sub_3A240()
{
  OUTLINED_FUNCTION_98_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_8_78(*v0);
  }

  OUTLINED_FUNCTION_122_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_54_0(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_3A2B8()
{
  OUTLINED_FUNCTION_1_15();
  if (v3 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v5 = OUTLINED_FUNCTION_54_0(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_3A368(uint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_122_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v4 = OUTLINED_FUNCTION_78_11();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_3A3F0()
{
  OUTLINED_FUNCTION_1_15();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v3 = OUTLINED_FUNCTION_78_11();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_3A470()
{
  OUTLINED_FUNCTION_1_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_3A4C0()
{
  OUTLINED_FUNCTION_1_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v0 = OUTLINED_FUNCTION_27_32();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_3A510()
{
  OUTLINED_FUNCTION_98_6();
  if (v2)
  {
    return OUTLINED_FUNCTION_8_78(*v0);
  }

  OUTLINED_FUNCTION_122_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_54_0(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_3A588()
{
  OUTLINED_FUNCTION_1_15();
  if (v3 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v5 = OUTLINED_FUNCTION_54_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.GenericErrorDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = 0xE700000000000000;
}

uint64_t sub_3ACFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3AD4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_3ADA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_3AE00()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3AE38()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_3AE84()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_3AEC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3AF28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_3AFC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_3B060()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3B0A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_3B0E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B120()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_3B180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  OUTLINED_FUNCTION_23_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_3B210()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3B258()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3B2A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B2E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3B3B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B3F0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3B42C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t _s27PhoneCallFlowDelegatePlugin21SuggestionsCATsSimpleC0ab6_StartB9DialogIdsOSYAASY8rawValue03RawM0QzvgTW_0@<X0>(void *a1@<X8>)
{
  result = SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

uint64_t sub_3B630()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3B670()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3B6AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B6EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B724()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3B80C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3B854()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_4_68();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_3B890()
{
  v1 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_23_5(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_3B934()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B9B8(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v7 = OUTLINED_FUNCTION_54_0(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *sub_3BA54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = OUTLINED_FUNCTION_54_0(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_3BADC(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = OUTLINED_FUNCTION_54_0(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

_BYTE *sub_3BB6C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = OUTLINED_FUNCTION_54_0(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_3BF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_3BF78(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 136))(*v4);
}

uint64_t sub_3BFBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_3C004(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 160))(*v4);
}

uint64_t sub_3C088()
{
  OUTLINED_FUNCTION_13_4();
  result = EmergencyCountdownModel.sashTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3C0B4()
{
  OUTLINED_FUNCTION_13_4();
  result = YesNoConfirmationModel.yesAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_3C0E0()
{
  OUTLINED_FUNCTION_13_4();
  result = YesNoConfirmationModel.noText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3C10C()
{
  OUTLINED_FUNCTION_13_4();
  result = YesNoConfirmationModel.noAction.getter();
  *v0 = result;
  return result;
}

uint64_t sub_3C138()
{
  OUTLINED_FUNCTION_13_4();
  result = YesNoConfirmationModel.dialogText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3C164(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v7 = OUTLINED_FUNCTION_20_3(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v12 = OUTLINED_FUNCTION_20_3(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  v16 = OUTLINED_FUNCTION_20_3(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[8];
    goto LABEL_7;
  }

  v19 = *(a1 + a3[9] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_3C2B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v9 = OUTLINED_FUNCTION_20_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v14 = OUTLINED_FUNCTION_20_3(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
      result = OUTLINED_FUNCTION_20_3(v17);
      if (*(v19 + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v11 = result;
      v16 = a4[8];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_3C430@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t TrialSmartAppSelectionConfigProvider.__allocating_init(trialConfigSource:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ThirdPartyAnnotatedAppStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

void *CallingIntentRCHFlowStrategy.init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with take of SPHConversation(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t AceOutput.withContextCommandsFirst()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  AceOutput.commands.getter();

  v5[0] = specialized Array._copyToContiguousArray()();
  specialized MutableCollection<>.sort(by:)(v5);

  AceOutput.flowActivity.getter();
  AceOutput.nlContextUpdate.getter();
  return AceOutput.init(commands:flowActivity:nlContextUpdate:)();
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

uint64_t AceOutput.copyAndPrepend(commands:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_50_3();
  v4 = AceOutput.commands.getter();

  specialized Array.append<A>(contentsOf:)(v4, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  AceOutput.flowActivity.getter();
  AceOutput.nlContextUpdate.getter();
  return AceOutput.init(commands:flowActivity:nlContextUpdate:)();
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Swift::Bool (__swiftcall *default argument 0 of AnnotatedAppFinder.init(firstPartyAnnotatedAppStore:thirdPartyAnnotatedAppStore:)())(Swift::String appBundleId)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v0 = OUTLINED_FUNCTION_67();
  v20 = &type metadata for PhoneCallFeatureFlags;
  v21 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_75(v1, v2, v3, v4, v5, v6, v7, v8, v18);
  v9 = outlined init with take of SPHConversation(&v18, v0 + 16);
  OUTLINED_FUNCTION_77_2(v9, v10, v11, v12, v13, v14, v15, v16, v18, *(&v18 + 1), v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, __dst[0]);
  return AnnotatedAppFinder.isInstalledOnDevice(appBundleId:);
}

uint64_t default argument 1 of AnnotatedAppFinder.init(firstPartyAnnotatedAppStore:thirdPartyAnnotatedAppStore:)()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_35_4();
  }

  v0 = type metadata accessor for ThirdPartyAnnotatedAppStore();
  OUTLINED_FUNCTION_36_6(v0, &protocol witness table for ThirdPartyAnnotatedAppStore);
}

uint64_t variable initialization expression of AnnounceDropInCallFlow.completionOutputManifest()
{
  return variable initialization expression of AnnounceDropInCallFlow.completionOutputManifest();
}

{
  OUTLINED_FUNCTION_74_1();
  v0 = type metadata accessor for DialogPhase();
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  static DialogPhase.completion.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t default argument 1 of ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(CNContactStore) init];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  a1[3] = result;
  a1[4] = &protocol witness table for CNContactStore;
  *a1 = v2;
  return result;
}

id SharedGlobalsProviding.siriPhoneDefaults.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static SiriPhoneDefaults.instance;
  a1[3] = &type metadata for SiriPhoneDefaults;
  a1[4] = &protocol witness table for SiriPhoneDefaults;
  *a1 = v2;

  return v2;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for DisplayHint);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for SemanticValue);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for UsoIdentifier);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &type metadata accessor for ContactQuery);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(&dword_10 + v14) + 32, (*(&dword_18 + v14) >> 1) - *(&dword_10 + v14), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_57_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
  OUTLINED_FUNCTION_76_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_57_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_57_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_8_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  OUTLINED_FUNCTION_51_4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_10();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMd, &_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMR);
  OUTLINED_FUNCTION_76_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_49_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array.count.getter(a1);
  v4 = specialized Array.count.getter(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t default argument 2 of SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)()
{
  type metadata accessor for DiagnosticLogPermission();
  OUTLINED_FUNCTION_39_6();

  return swift_allocObject();
}

uint64_t default argument 4 of PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)()
{
  type metadata accessor for AppUsageProvider();
  OUTLINED_FUNCTION_39_6();

  return swift_allocObject();
}

uint64_t variable initialization expression of AppSelectionState.forcedDisambiguationShadowPrediction()
{
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for AppResolverResult();
  v0 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void *default argument 0 of AppSelectionUserPersonaCollector.init(userPersonaSignal:)()
{
  v1 = type metadata accessor for SignalComputationContext();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMR);
  v7 = type metadata accessor for DomainUseCase();
  OUTLINED_FUNCTION_7(v7);
  v9 = v8;
  v11 = *(v10 + 72);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_424FD0;
  (*(v9 + 104))(v13 + v12, enum case for DomainUseCase.phoneCall(_:), v7);
  OUTLINED_FUNCTION_19_3();
  SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
  v14 = static DomainUserPersonaSignal.instances(context:)();
  (*(v4 + 8))(v0, v1);
  v15 = specialized _arrayForceCast<A, B>(_:)(v14);

  return v15;
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of SignalProviding(v4, v10);
      v5 = OUTLINED_FUNCTION_72();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals27AppSelectionSignalComponent_pMd, &_s11SiriSignals27AppSelectionSignalComponent_pMR);
      swift_dynamicCast();
      v12 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v2 = v12;
      }

      v2[2] = v8 + 1;
      outlined init with take of SPHConversation(&v11, &v2[5 * v8 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_69_0();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_43_5();
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v8 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v8;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(v0 + 8 * v3 + 32);
        }

        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        swift_dynamicCast();
        v8 = v4;
        v6 = v4[2];
        if (v6 >= v4[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v8;
        }

        ++v3;
        v4[2] = v6 + 1;
        outlined init with take of Any(&v7, &v4[4 * v6 + 4]);
      }

      while (v2 != v3);
    }
  }
}

{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_69_0();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_43_5();
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
LABEL_14:
    OUTLINED_FUNCTION_65();
    return;
  }

  v3 = OUTLINED_FUNCTION_55_5();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v4, v5);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v0 + 8 * v6 + 32);
      }

      v8 = type metadata accessor for SiriPhoneContactImpl(0);
      v9 = OUTLINED_FUNCTION_54_4(v8);
      if (v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
        v12 = v24[3];
      }

      else
      {
        v12 = v9;
      }

      ++v6;
      __swift_mutable_project_boxed_opaque_existential_1(v24, v12);
      OUTLINED_FUNCTION_44_0();
      v14 = *(v13 + 64);
      __chkstk_darwin(v15);
      OUTLINED_FUNCTION_4();
      v17 = OUTLINED_FUNCTION_53_4(v16);
      v18(v17);
      v19 = OUTLINED_FUNCTION_52_0();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v19, v20, v21, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    while (v2 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_69_0();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_43_5();
  }

  else
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v2)
  {
LABEL_14:
    OUTLINED_FUNCTION_65();
    return;
  }

  v3 = OUTLINED_FUNCTION_55_5();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v4, v5);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v0 + 8 * v6 + 32);
      }

      v8 = type metadata accessor for UsoEntity_common_Group();
      v9 = OUTLINED_FUNCTION_54_4(v8);
      if (v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
        v12 = v24[3];
      }

      else
      {
        v12 = v9;
      }

      ++v6;
      __swift_mutable_project_boxed_opaque_existential_1(v24, v12);
      OUTLINED_FUNCTION_44_0();
      v14 = *(v13 + 64);
      __chkstk_darwin(v15);
      OUTLINED_FUNCTION_4();
      v17 = OUTLINED_FUNCTION_53_4(v16);
      v18(v17);
      v19 = OUTLINED_FUNCTION_52_0();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v19, v20, v21, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    while (v2 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

id variable initialization expression of BiomeEventSender.discoverabilitySource()
{
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v1 = [v0 Signals];
  swift_unknownObjectRelease();
  v2 = [v1 source];

  return v2;
}

uint64_t variable initialization expression of CallingIntentBaseFlowStrategy.completionOutputManifest()
{
  OUTLINED_FUNCTION_29_7();
  v0 = type metadata accessor for DialogPhase();
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  static DialogPhase.completion.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t default argument 8 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_41_1(v1);
  result = ResponseFactory.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for ResponseFactory;
  *v0 = result;
  return result;
}

uint64_t variable initialization expression of CallingIntentConfirmationFlowStrategy.confirmationResponse()
{
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for ConfirmationResponse();
  v0 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id default argument 3 of CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)()
{
  v0 = objc_allocWithZone(AFDeviceStateConnection);

  return [v0 init];
}

double default argument 2 of ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for LabelTemplatesProvider;
  a1[4] = &protocol witness table for LabelTemplatesProvider;
  OUTLINED_FUNCTION_68_0();
  v2 = swift_allocObject();
  *a1 = v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

uint64_t default argument 9 of static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)()
{
  type metadata accessor for EmergencyContactResolution();
  OUTLINED_FUNCTION_39_6();

  return swift_allocObject();
}

uint64_t default argument 1 of CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  a4(0);
  static CATOption.defaultMode.getter();
  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t variable initialization expression of CallNotificationContextProvider.cache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMR);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_27_4();
  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, v0, 0, v1, v2, 30.0);
}

uint64_t variable initialization expression of CallStateNotificationManager.tasks()
{
  type metadata accessor for UUID();
  type metadata accessor for CallStateOneTimeTask();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t key path getter for SiriEnvironment.userIdentity : SiriEnvironment@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.userIdentity.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for SiriEnvironment.userIdentity : SiriEnvironment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriEnvironment.userIdentity.setter();
}

uint64_t variable initialization expression of CommunalDeviceEmergencyFlow._identifiedUser(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_41_1(v5);
  return SiriEnvironmentValue.init(_:)();
}

uint64_t key path getter for SiriEnvironment.currentRequest : SiriEnvironment@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.currentRequest.getter();
  *a2 = result;
  return result;
}

uint64_t key path setter for SiriEnvironment.currentRequest : SiriEnvironment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriEnvironment.currentRequest.setter();
}

uint64_t default argument 1 of EmergencyContactSlotResolver.init(sharedGlobals:medicalIDStore:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(HKHealthStore) init];
  v3 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v2];

  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  a1[3] = result;
  a1[4] = &protocol witness table for HKMedicalIDStore;
  *a1 = v3;
  return result;
}

uint64_t default argument 4 of CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_74_1();
  v9 = v8(v7);
  OUTLINED_FUNCTION_39_6();
  result = swift_allocObject();
  v5[3] = v9;
  v5[4] = a5;
  *v5 = result;
  return result;
}

uint64_t default argument 0 of PhoneCallFeatureManager.init(featureFlags:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  a1[3] = &type metadata for PhoneCallFeatureFlags;
  a1[4] = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = memcpy((v2 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  return OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, __dst[0]);
}

uint64_t default argument 4 of HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CallRegistrationManager();
  OUTLINED_FUNCTION_36_6(v0, &protocol witness table for CallRegistrationManager);
}

uint64_t variable initialization expression of IdiomKeyedHintHistory.idiomMap()
{
  swift_getTupleTypeMetadata2();
  static Array._allocateUninitialized(_:)();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of IncomingCallActionConfirmationStrategy.confirmationSynonymMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17FollowUpOfferTypeO_ShyAC0dE4VerbOGtGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17FollowUpOfferTypeO_ShyAC0dE4VerbOGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 32) = 2;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin0eF4VerbO_Tt0g5(&outlined read-only object #0 of variable initialization expression of IncomingCallActionConfirmationStrategy.confirmationSynonymMap);
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy27PhoneCallFlowDelegatePlugin0aB4VerbOGMd, &_sShy27PhoneCallFlowDelegatePlugin0aB4VerbOGMR);
  lazy protocol witness table accessor for type FollowUpOfferType and conformance FollowUpOfferType();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t default argument 2 of IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CallStateNotificationManager();
  OUTLINED_FUNCTION_36_6(v0, &protocol witness table for CallStateNotificationManager);
}

uint64_t variable initialization expression of LazyContainer.queue()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_0_10();
  v7 = type metadata accessor for DispatchQoS();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_1_17();
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  swift_getMetatypeMetadata();
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v4 + 104))(v0, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void variable initialization expression of NLTransformer.currentTransformation(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  OUTLINED_FUNCTION_63_2(a1, 0);
}

double default argument 0 of PhoneCallControlNLTransformer.init(cacheProvider:)()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for SingleIntentCacheProvider();
  v2 = swift_allocObject();
  result = NAN;
  *(v2 + 16) = xmmword_424FE0;
  v0[3] = v1;
  v0[4] = &protocol witness table for SingleIntentCacheProvider;
  *v0 = v2;
  return result;
}

uint64_t default argument 0 of FirstPartyAnnotatedAppStore.init(featureManager:appExistsPredicate:)()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v0 = OUTLINED_FUNCTION_67();
  v20 = &type metadata for PhoneCallFeatureFlags;
  v21 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_75(v1, v2, v3, v4, v5, v6, v7, v8, v18);
  v9 = outlined init with take of SPHConversation(&v18, v0 + 16);
  OUTLINED_FUNCTION_77_2(v9, v10, v11, v12, v13, v14, v15, v16, v18, *(&v18 + 1), v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, __dst[0]);
  return v0;
}

uint64_t default argument 1 of PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_36_6(v0, &protocol witness table for EligibleAppFinder);
}

id default argument 1 of PhoneAppResolutionLogger.init(sharedGlobals:messageStream:eligibleAppsFinder:)()
{
  v0 = [objc_opt_self() sharedAnalytics];
  v1 = [v0 defaultMessageStream];

  return v1;
}

uint64_t default argument 1 of TemplatingParallelizer.init(name:timeout:qos:)@<X0>(void *a1@<X8>)
{
  *a1 = 500;
  v2 = enum case for DispatchTimeInterval.milliseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = OUTLINED_FUNCTION_23_1(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t variable initialization expression of PhoneCallFeatureFlags._pommesGeoSearchFlag()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMd, &_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FF0;
  *(v0 + 56) = &type metadata for SiriPhoneFeature;
  *(v0 + 64) = lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature();
  *(v0 + 32) = 5;
  *(v0 + 96) = &type metadata for PommesFeature;
  *(v0 + 104) = lazy protocol witness table accessor for type PommesFeature and conformance PommesFeature();
  return v0;
}

uint64_t variable initialization expression of PhoneCallFeatureFlags._siriCallExperiencePhoneAppFlag(uint64_t a1, uint64_t (*a2)(void), char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMd, &_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_424FD0;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2();
  *(v6 + 32) = a3;
  return v6;
}

uint64_t variable initialization expression of PhoneCallFeatureFlags._siriInCallFlag(uint64_t a1, uint64_t (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMd, &_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2();
  return v4;
}

id default argument 4 of static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static BiomeEventSender.instance;
  a1[3] = &type metadata for BiomeEventSender;
  a1[4] = &protocol witness table for BiomeEventSender;
  *a1 = v2;

  return v2;
}

uint64_t default argument 4 of IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v6 = type metadata accessor for CATOption();
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = OUTLINED_FUNCTION_0_10();
  a3(v10);
  OUTLINED_FUNCTION_47_5();
  v11 = OUTLINED_FUNCTION_38_2();
  return a4(v11);
}

uint64_t default argument 5 of IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CATOption();
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = OUTLINED_FUNCTION_1_17();
  v11 = a1(v10);
  static CATOption.defaultMode.getter();
  result = CATWrapper.__allocating_init(options:globals:)();
  a3[3] = v11;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t default argument 10 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_74_1();
  v8 = v7(v6);
  OUTLINED_FUNCTION_39_6();
  result = swift_allocObject();
  v4[3] = v8;
  v4[4] = a4;
  *v4 = result;
  return result;
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.appNode()
{
  v0 = type metadata accessor for AppOntologyNode();
  OUTLINED_FUNCTION_41_1(v0);
  return AppOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.attributes()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_33_6();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.audioRoute()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_33_6();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.capability()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_33_6();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.preferredProvider()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_37_2();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.destinationType()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_37_2();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.contact()
{
  v0 = type metadata accessor for PhoneCallContactOntologyNode(0);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_37_2();
  return PhoneCallContactOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.message()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_37_2();
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.noun(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_41_1(v2);
  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.voiceMail()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FF0;
  if (one-time initialization token for voiceMailNoun != -1)
  {
    swift_once();
  }

  v1 = static VoiceMail.voiceMailNoun;
  v2 = OUTLINED_FUNCTION_72();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  *(v0 + 64) = OUTLINED_FUNCTION_30_4(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  v4 = one-time initialization token for voiceMailVerb;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static VoiceMail.voiceMailVerb;
  v6 = OUTLINED_FUNCTION_72();
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  *(v0 + 104) = OUTLINED_FUNCTION_30_4(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceMail.VoiceMailVerb> and conformance TerminalOntologyNode<A>);
  *(v0 + 72) = v5;
  v8 = type metadata accessor for NonTerminalOntologyNode();
  OUTLINED_FUNCTION_41_1(v8);

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

uint64_t variable initialization expression of PhoneCallNLv3Intent.smsGroup()
{
  v0 = type metadata accessor for SmsGroupOntologyNode(0);
  OUTLINED_FUNCTION_41_1(v0);
  return SmsGroupOntologyNode.init(name:multicardinal:)();
}

uint64_t default argument 3 of PhoneCallRecord.init(callRecord:options:appInfoBuilder:locale:)()
{
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_72();
  dispatch thunk of DeviceState.siriLocale.getter();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t default argument 3 of PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for AppInfoBuilder();
  OUTLINED_FUNCTION_39_6();
  result = swift_allocObject();
  v0[3] = v1;
  v0[4] = &protocol witness table for AppInfoBuilder;
  *v0 = result;
  return result;
}

uint64_t default argument 0 of PhoneContactResolver.init(configCache:queryCache:resolver:)()
{
  type metadata accessor for ContactResolverConfigHashable();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable, type metadata accessor for ContactResolverConfigHashable);
  OUTLINED_FUNCTION_71();

  return Dictionary.init(minimumCapacity:)();
}

uint64_t default argument 1 of PhoneContactResolver.init(configCache:queryCache:resolver:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference08ResolvedA10KitContactVGMd, &_sSay13SiriInference08ResolvedA10KitContactVGMR);
  lazy protocol witness table accessor for type [ContactQuery] and conformance <A> [A]();
  OUTLINED_FUNCTION_71();

  return Dictionary.init(minimumCapacity:)();
}

uint64_t default argument 4 of static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for CallStateProvider;
  a1[4] = &protocol witness table for CallStateProvider;
  OUTLINED_FUNCTION_70();
  v2 = swift_allocObject();
  *a1 = v2;

  return outlined init with copy of CallStateProvider(&static CallStateProvider.instance, v2 + 16);
}

uint64_t default argument 2 of static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = OUTLINED_FUNCTION_23_1(v5);
  v8 = *(v7 + 104);

  return v8(a3, v4, v6);
}

void variable initialization expression of PluginPrewarmProvider.queue()
{
  OUTLINED_FUNCTION_66();
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = OUTLINED_FUNCTION_7(v15);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_0_10();
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = OUTLINED_FUNCTION_23_1(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_1_17();
  v7 = type metadata accessor for DispatchQoS();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  OUTLINED_FUNCTION_9_5();
  lazy protocol witness table accessor for type UUID and conformance UUID(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  OUTLINED_FUNCTION_10_9(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  OUTLINED_FUNCTION_25_1();
  v13 = OUTLINED_FUNCTION_45_2();
  v14(v13);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_65();
}

void variable initialization expression of EligibleAppFinder.queue()
{
  OUTLINED_FUNCTION_66();
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = OUTLINED_FUNCTION_7(v15);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_0_10();
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = OUTLINED_FUNCTION_23_1(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_1_17();
  v7 = type metadata accessor for DispatchQoS();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  OUTLINED_FUNCTION_9_5();
  lazy protocol witness table accessor for type UUID and conformance UUID(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  OUTLINED_FUNCTION_10_9(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  OUTLINED_FUNCTION_25_1();
  v13 = OUTLINED_FUNCTION_45_2();
  v14(v13);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_65();
}

uint64_t variable initialization expression of ReaderNlIntent.traversableIntentNode()
{
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for NonTerminalIntentNode();
  v0 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t default argument 6 of StartCallCatTemplatingService.init(sharedGlobals:startCallCats:displayTextCats:phoneCallCommonCats:unsupportedFlowCats:appInfoBuilder:operationManager:)(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  a1(0);
  swift_allocObject();
  return a3();
}

uint64_t default argument 2 of AddCallParticipantHandleIntentFollowUpFlow.init(rchRecord:sharedGlobals:patterns:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CATOption();
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = OUTLINED_FUNCTION_1_17();
  v11 = a1(v10);
  static CATOption.defaultMode.getter();
  result = CATWrapper.__allocating_init(options:globals:)();
  a3[3] = v11;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t default argument 2 of ActionableCallControlFlow.init(sharedGlobals:action:phoneCallControlCATsSimple:)(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for CATOption();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = OUTLINED_FUNCTION_0_10();
  a1(v8);
  OUTLINED_FUNCTION_47_5();
  v9 = OUTLINED_FUNCTION_38_2();
  return a2(v9);
}

uint64_t default argument 3 of PhoneIncomingCall.init(intentResponse:siriLocale:options:appInfoBuilder:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_74_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_39_6();
  result = swift_allocObject();
  v2[3] = v6;
  v2[4] = a2;
  *v2 = result;
  return result;
}

uint64_t default argument 1 of SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)()
{
  v0 = [objc_opt_self() clientWithIdentifier:112];
  type metadata accessor for TrialSmartAppSelectionConfigProvider();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

id default argument 0 of TrialSmartAppSelectionConfigProvider.init(trialConfigSource:)()
{
  v0 = [objc_opt_self() clientWithIdentifier:112];

  return v0;
}

uint64_t variable initialization expression of SharedConfirmationRepromptContext.promptedTypes()
{
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_0_10();
  v5 = type metadata accessor for AppInfoBuilder();
  OUTLINED_FUNCTION_39_6();
  v6 = swift_allocObject();
  v0[3] = v5;
  v0[4] = &protocol witness table for AppInfoBuilder;
  *v0 = v6;
  type metadata accessor for SearchCallHistoryCATPatternsExecutor(0);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  v0[8] = v5;
  v0[9] = &protocol witness table for SearchCallHistoryCATPatternsExecutor;
  v0[5] = v7;
  v8 = type metadata accessor for ResponseFactory();
  v9 = OUTLINED_FUNCTION_41_1(v8);
  v10 = ResponseFactory.init()();
  v0[13] = v8;
  v0[14] = &protocol witness table for ResponseFactory;
  v0[10] = v10;
  type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  v0[19] = v9;
  v0[20] = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v0[16] = v12;
  type metadata accessor for CallHistoryPromptDialogProvider();
  OUTLINED_FUNCTION_68_0();
  swift_allocObject();
  v13 = CallHistoryPromptDialogProvider.init()();
  type metadata accessor for SearchCallHistoryCATs();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for SearchCallHistoryCATsSimple();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  v15 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  result = CATWrapperSimple.__allocating_init(options:globals:)();
  v0[15] = v11;
  v0[21] = v13;
  v0[22] = v14;
  v0[23] = v15;
  v0[24] = result;
  return result;
}

double variable initialization expression of SiriPhoneContactImpl.personName@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_425000;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t variable initialization expression of SiriPhoneContactImpl.backingContact()
{
  v0 = OUTLINED_FUNCTION_29_7();
  type metadata accessor for BackingContact(v0);
  v1 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

id variable initialization expression of SiriPhoneDefaults.userDefaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  OUTLINED_FUNCTION_37_2();
  return @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000014, v1);
}

uint64_t default argument 5 of static AnswerCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a1(0);
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return a3();
}

void variable initialization expression of TemplatingOperationManager.operationQueue()
{
  OUTLINED_FUNCTION_66();
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = OUTLINED_FUNCTION_7(v15);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_0_10();
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = OUTLINED_FUNCTION_23_1(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_1_17();
  v7 = type metadata accessor for DispatchQoS();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  OUTLINED_FUNCTION_9_5();
  lazy protocol witness table accessor for type UUID and conformance UUID(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  OUTLINED_FUNCTION_10_9(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  OUTLINED_FUNCTION_25_1();
  v13 = OUTLINED_FUNCTION_45_2();
  v14(v13);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_65();
}

uint64_t variable initialization expression of TemplatingOperationManager.templatingQueue()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_0_10();
  v11 = type metadata accessor for DispatchQoS();
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v4 + 104))(v0, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of TemplatingOperationManager.operations()
{
  type metadata accessor for TemplatingOperation();
  lazy protocol witness table accessor for type TemplatingOperationType and conformance TemplatingOperationType();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of ThirdPartyAnnotatedAppStore.cache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA12AnnotatedAppVGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA12AnnotatedAppVGMR);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_27_4();
  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, v0, 0, v1, v2, 1.0);
}

uint64_t variable initialization expression of UnsupportedFlowSearchCallHistoryParameters.nonDefaultAppName()
{
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for SpeakableString();
  v0 = OUTLINED_FUNCTION_11_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t protocol witness for SetAlgebra.init() in conformance INCallRecordTypeOptions@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of IdentifyIncomingCallerDirectAction.callerContactIdentifiers();
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance INCallRecordTypeOptions(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_14_11(a1);
  result = specialized OptionSet.intersection(_:)(v2, v3);
  *v1 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance INCallCapability()
{
  v1 = OUTLINED_FUNCTION_17_7();
  INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:)(v1);
  *v0 = v2;
}

NSString protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance INPersonHandleLabel@<X0>(void *a1@<X8>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo19INPersonHandleLabela_Tt1gq5();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TUCallStatus@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = TUCallStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance INAddCallParticipantParticipantUnsupportedReason(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  INAddCallParticipantParticipantUnsupportedReason.init(rawValue:)();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance INPersonHandleLabel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance INPersonHandleLabel@<X0>(uint64_t *a1@<X8>)
{
  result = INPersonHandleLabel.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance INPersonHandleLabel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type INPersonHandleLabel and conformance INPersonHandleLabel, type metadata accessor for INPersonHandleLabel);
  v3 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type INPersonHandleLabel and conformance INPersonHandleLabel, type metadata accessor for INPersonHandleLabel);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance INPersonHandleLabel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v15 = v6;
      do
      {
        v10 = *v6;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v11 = 0;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v11 = 1;
          }

          else
          {
            v11 = 2;
          }
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          break;
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          if (v11)
          {
            break;
          }
        }

        else if (v11 > 1)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v12 = *v6;
        *v6 = v6[1];
        v6[1] = v12;
        --v6;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v15 + 1;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    while (2)
    {
      v23 = a3;
      v7 = *(v4 + 8 * a3);
      v21 = v6;
      v22 = v5;
      while (1)
      {
        v8 = *v5;

        v9 = App.appIdentifier.getter();
        v11 = v10 ? v9 : 0;
        v12 = v10 ? v10 : 0xE000000000000000;
        v13 = App.appIdentifier.getter();
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0xE000000000000000;
        }

        if (v13 == v11 && v15 == v12)
        {
          break;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v18 = *v5;
          *v5 = v5[1];
          v5[1] = v18;
          --v5;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_23:
      a3 = v23 + 1;
      v5 = v22 + 1;
      v6 = v21 - 1;
      if (v23 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v121 = _swiftEmptyArrayStorage;
  v5 = a3[1];
  if (v5 < 1)
  {
    goto LABEL_122;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v8 = &_s2os0A4_log_3dso0B04type_ys12StaticStringV_SVSgSo03OS_a1_B0CSo0a1_b1_D2_tas7CVarArg_pdtF_ptr;
  v9 = &_s2os0A4_log_3dso0B04type_ys12StaticStringV_SVSgSo03OS_a1_B0CSo0a1_b1_D2_tas7CVarArg_pdtF_ptr;
  do
  {
    v10 = v6;
    v11 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_43;
    }

    v12 = *a3;
    v13 = v6 + 1;
    v14 = *(*a3 + 8 * v11);
    v15 = *(*a3 + 8 * v6);
    v16 = v8[155];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v117 = 0;
    }

    else
    {
      v17 = v9[173];
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      v19 = 1;
      if (!v18)
      {
        v19 = 2;
      }

      v117 = v19;
    }

    v109 = v7;
    v20 = v8[155];
    objc_opt_self();
    v21 = v13;
    if (swift_dynamicCastObjCClass())
    {
      v114 = 0;
    }

    else
    {
      v22 = v9[173];
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      v24 = 1;
      if (!v23)
      {
        v24 = 2;
      }

      v114 = v24;
    }

    v25 = v10 + 2;
    if (v5 > v10 + 2)
    {
      v25 = v5;
    }

    v107 = v25;
    v26 = v12 + 8 * v10;
    v111 = v10;
    v27 = 8 * v10;
    for (i = (v26 + 16); ; ++i)
    {
      if (v21 + 1 >= v5)
      {
        v11 = v107;
        goto LABEL_32;
      }

      v29 = *(i - 1);
      v30 = *i;
      v31 = v8[155];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v32 = 0;
      }

      else
      {
        v33 = v9[173];
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass() ? 1 : 2;
      }

      v34 = v8[155];
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      if (v117 < v114)
      {
        v11 = v21 + 1;
        goto LABEL_34;
      }

LABEL_30:
      ++v21;
    }

    v35 = v9[173];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (v117 < v114 == (v32 != 0))
      {
        v11 = v21 + 1;
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (v117 < v114 != v32 > 1)
    {
      goto LABEL_30;
    }

    v11 = v21 + 1;
LABEL_32:
    if (v117 >= v114)
    {
      v7 = v109;
LABEL_41:
      v10 = v111;
      goto LABEL_43;
    }

LABEL_34:
    v7 = v109;
    v36 = v111;
    if (v11 < v111)
    {
      goto LABEL_143;
    }

    if (v111 < v11)
    {
      v37 = 8 * v11 - 8;
      v38 = v11;
      do
      {
        if (v36 != --v38)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v40 = *(v39 + v27);
          *(v39 + v27) = *(v39 + v37);
          *(v39 + v37) = v40;
        }

        ++v36;
        v37 -= 8;
        v27 += 8;
      }

      while (v36 < v38);
      goto LABEL_41;
    }

    v10 = v111;
LABEL_43:
    v41 = a3[1];
    if (v11 < v41)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_142;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_144;
        }

        if (v10 + a4 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v10 + a4;
        }

        if (v42 >= v10)
        {
          if (v11 != v42)
          {
            v43 = v10;
            v44 = *a3;
            v45 = *a3 + 8 * v11 - 8;
            v110 = v7;
            v112 = v43;
            v46 = v43 - v11;
            v115 = v42;
            do
            {
              v118 = v11;
              v47 = *(v44 + 8 * v11);
              v48 = v46;
              v49 = v45;
              do
              {
                v50 = *v49;
                v51 = v8[155];
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v52 = 0;
                }

                else
                {
                  v53 = v9[173];
                  objc_opt_self();
                  v52 = swift_dynamicCastObjCClass() ? 1 : 2;
                }

                v54 = v8[155];
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  break;
                }

                v55 = v9[173];
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  if (v52)
                  {
                    break;
                  }
                }

                else if (v52 > 1)
                {
                  break;
                }

                if (!v44)
                {
                  goto LABEL_146;
                }

                v56 = *v49;
                *v49 = v49[1];
                v49[1] = v56;
                --v49;
              }

              while (!__CFADD__(v48++, 1));
              v11 = v118 + 1;
              v45 += 8;
              --v46;
            }

            while (v118 + 1 != v115);
            v11 = v115;
            v7 = v110;
            v10 = v112;
          }

          goto LABEL_69;
        }

LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        return;
      }
    }

LABEL_69:
    if (v11 < v10)
    {
      goto LABEL_141;
    }

    v119 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = v7[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v105;
    }

    v58 = v7[2];
    v59 = v58 + 1;
    if (v58 >= v7[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v106;
    }

    v7[2] = v59;
    v60 = v7 + 4;
    v61 = &v7[2 * v58 + 4];
    *v61 = v10;
    v61[1] = v119;
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    if (v58)
    {
      while (2)
      {
        v62 = v59 - 1;
        v63 = &v60[2 * v59 - 2];
        v64 = &v7[2 * v59];
        if (v59 >= 4)
        {
          v69 = &v60[2 * v59];
          v70 = *(v69 - 8);
          v71 = *(v69 - 7);
          v75 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          if (v75)
          {
            goto LABEL_129;
          }

          v74 = *(v69 - 6);
          v73 = *(v69 - 5);
          v75 = __OFSUB__(v73, v74);
          v67 = v73 - v74;
          v68 = v75;
          if (v75)
          {
            goto LABEL_130;
          }

          v76 = v64[1];
          v77 = v76 - *v64;
          if (__OFSUB__(v76, *v64))
          {
            goto LABEL_132;
          }

          v75 = __OFADD__(v67, v77);
          v78 = v67 + v77;
          if (v75)
          {
            goto LABEL_135;
          }

          if (v78 >= v72)
          {
            v92 = *v63;
            v91 = v63[1];
            v75 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v75)
            {
              goto LABEL_140;
            }

            if (v67 < v93)
            {
              v62 = v59 - 2;
            }
          }

          else
          {
LABEL_89:
            if (v68)
            {
              goto LABEL_131;
            }

            v80 = *v64;
            v79 = v64[1];
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_134;
            }

            v84 = v63[1];
            v85 = v84 - *v63;
            if (__OFSUB__(v84, *v63))
            {
              goto LABEL_137;
            }

            if (__OFADD__(v82, v85))
            {
              goto LABEL_139;
            }

            if (v82 + v85 < v67)
            {
              goto LABEL_104;
            }

            if (v67 < v85)
            {
              v62 = v59 - 2;
            }
          }
        }

        else
        {
          if (v59 == 3)
          {
            v65 = v7[4];
            v66 = v7[5];
            v75 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            v68 = v75;
            goto LABEL_89;
          }

          if (v59 < 2)
          {
            goto LABEL_133;
          }

          v87 = *v64;
          v86 = v64[1];
          v75 = __OFSUB__(v86, v87);
          v82 = v86 - v87;
          v83 = v75;
LABEL_104:
          if (v83)
          {
            goto LABEL_136;
          }

          v89 = *v63;
          v88 = v63[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_138;
          }

          if (v90 < v82)
          {
            break;
          }
        }

        if (v62 - 1 >= v59)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v94 = v8;
        v95 = v7;
        v96 = &v60[2 * v62 - 2];
        v97 = *v96;
        v98 = v62;
        v99 = &v60[2 * v62];
        v100 = v99[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v96), (*a3 + 8 * *v99), (*a3 + 8 * v100), v116);
        if (v4)
        {
          goto LABEL_124;
        }

        if (v100 < v97)
        {
          goto LABEL_126;
        }

        v101 = v60;
        v102 = v95[2];
        if (v98 > v102)
        {
          goto LABEL_127;
        }

        *v96 = v97;
        v96[1] = v100;
        if (v98 >= v102)
        {
          goto LABEL_128;
        }

        v59 = v102 - 1;
        memmove(v99, v99 + 2, 16 * (v102 - 1 - v98));
        v7 = v95;
        v95[2] = v102 - 1;
        v103 = v102 > 2;
        v8 = v94;
        v9 = &_s2os0A4_log_3dso0B04type_ys12StaticStringV_SVSgSo03OS_a1_B0CSo0a1_b1_D2_tas7CVarArg_pdtF_ptr;
        v60 = v101;
        if (!v103)
        {
          break;
        }

        continue;
      }
    }

    v6 = v119;
    v5 = a3[1];
  }

  while (v119 < v5);
  v121 = v7;
LABEL_122:
  if (!*a1)
  {
    goto LABEL_150;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v121, *a1, a3);
LABEL_124:
}

{
  v5 = a3[1];
  if (v5 < 1)
  {
    i = _swiftEmptyArrayStorage;
LABEL_130:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_171;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_132:
      v98 = i;
      v99 = (i + 16);
      for (i = *(i + 16); i >= 2; *v99 = i)
      {
        if (!*a3)
        {
          goto LABEL_168;
        }

        v100 = (v98 + 16 * i);
        v101 = *v100;
        v102 = &v99[2 * i];
        v103 = v102[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v100), (*a3 + 8 * *v102), (*a3 + 8 * v103), v4);
        if (v117)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_156;
        }

        if (i - 2 >= *v99)
        {
          goto LABEL_157;
        }

        *v100 = v101;
        v100[1] = v103;
        v104 = *v99 - i;
        if (*v99 < i)
        {
          goto LABEL_158;
        }

        v117 = 0;
        i = *v99 - 1;
        memmove(v102, v102 + 2, 16 * v104);
      }

LABEL_140:

      return;
    }

LABEL_165:
    i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
    goto LABEL_132;
  }

  v6 = 0;
  i = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = *a3;
      v118 = v6 + 1;
      v4 = *(*a3 + 8 * v9);
      v108 = v6;
      v11 = *(*a3 + 8 * v6);

      v12 = App.appIdentifier.getter();
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v16 = App.appIdentifier.getter();
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      if (v16 == v14 && v18 == v15)
      {
        v113 = 0;
      }

      else
      {
        v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v106 = i;

      v20 = (v10 + 8 * v8 + 16);
      v21 = 8 * v108 + 8;
      v9 = v118;
      v111 = v5;
      do
      {
        i = v9;
        v22 = v21;
        if (++v9 >= v5)
        {
          break;
        }

        v119 = v9;
        v23 = *(v20 - 1);
        v4 = *v20;

        v24 = App.appIdentifier.getter();
        v26 = v25 ? v24 : 0;
        v27 = v25 ? v25 : 0xE000000000000000;
        v28 = App.appIdentifier.getter();
        if (v29)
        {
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0xE000000000000000;
        }

        v31 = v28 == v26 && v30 == v27;
        v32 = v31 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v20;
        v21 = v22 + 8;
        v9 = v119;
        v5 = v111;
      }

      while (((v113 ^ v32) & 1) == 0);
      if (v113)
      {
        v8 = v108;
        if (v9 < v108)
        {
          goto LABEL_162;
        }

        if (v108 < v9)
        {
          v33 = v108;
          v34 = 8 * v108;
          do
          {
            if (v33 != i)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_169;
              }

              v36 = *(v35 + v34);
              *(v35 + v34) = *(v35 + v22);
              *(v35 + v22) = v36;
            }

            ++v33;
            v22 -= 8;
            v34 += 8;
          }

          while (v33 < i--);
        }

        i = v106;
      }

      else
      {
        i = v106;
        v8 = v108;
      }
    }

    v38 = a3[1];
    if (v9 < v38)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_161;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_78:
    if (v9 < v8)
    {
      goto LABEL_160;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = *(i + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = v96;
    }

    v55 = *(i + 16);
    v56 = v55 + 1;
    v121 = v9;
    if (v55 >= *(i + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = v97;
    }

    *(i + 16) = v56;
    v57 = i + 32;
    v58 = (i + 32 + 16 * v55);
    *v58 = v8;
    v58[1] = v9;
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_170;
    }

    if (v55)
    {
      while (1)
      {
        v59 = v56 - 1;
        v60 = (v57 + 16 * (v56 - 1));
        v61 = (i + 16 * v56);
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v62 = *(i + 32);
          v63 = *(i + 40);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_98:
          if (v65)
          {
            goto LABEL_147;
          }

          v77 = *v61;
          v76 = v61[1];
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_150;
          }

          v81 = v60[1];
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_153;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_155;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v56 - 2;
            }

            goto LABEL_120;
          }

          goto LABEL_113;
        }

        if (v56 < 2)
        {
          goto LABEL_149;
        }

        v84 = *v61;
        v83 = v61[1];
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_113:
        if (v80)
        {
          goto LABEL_152;
        }

        v86 = *v60;
        v85 = v60[1];
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_154;
        }

        if (v87 < v79)
        {
          goto LABEL_127;
        }

LABEL_120:
        if (v59 - 1 >= v56)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*a3)
        {
          goto LABEL_167;
        }

        v91 = i;
        v92 = (v57 + 16 * (v59 - 1));
        i = *v92;
        v93 = (v57 + 16 * v59);
        v94 = v93[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v92), (*a3 + 8 * *v93), (*a3 + 8 * v94), v115);
        if (v117)
        {
          goto LABEL_140;
        }

        if (v94 < i)
        {
          goto LABEL_142;
        }

        v4 = *(v91 + 16);
        if (v59 > v4)
        {
          goto LABEL_143;
        }

        *v92 = i;
        v92[1] = v94;
        if (v59 >= v4)
        {
          goto LABEL_144;
        }

        v117 = 0;
        v56 = v4 - 1;
        memmove((v57 + 16 * v59), v93 + 2, 16 * (v4 - v59 - 1));
        i = v91;
        *(v91 + 16) = v4 - 1;
        if (v4 <= 2)
        {
          goto LABEL_127;
        }
      }

      v66 = v57 + 16 * v56;
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_145;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_146;
      }

      v73 = v61[1];
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_148;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_151;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = v60[1];
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_159;
        }

        if (v64 < v90)
        {
          v59 = v56 - 2;
        }

        goto LABEL_120;
      }

      goto LABEL_98;
    }

LABEL_127:
    v5 = a3[1];
    v6 = v121;
    if (v121 >= v5)
    {
      goto LABEL_130;
    }
  }

  v39 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_163;
  }

  if (v39 >= v38)
  {
    v39 = a3[1];
  }

  if (v39 < v8)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v9 == v39)
  {
    goto LABEL_78;
  }

  v40 = *a3;
  v41 = (*a3 + 8 * v9 - 8);
  v109 = v8;
  v110 = v39;
  v42 = v8 - v9;
LABEL_56:
  v120 = v9;
  v43 = *(v40 + 8 * v9);
  v112 = v42;
  v114 = v41;
  while (1)
  {
    v44 = *v41;

    v45 = App.appIdentifier.getter();
    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0;
    }

    if (v46)
    {
      v4 = v46;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v48 = App.appIdentifier.getter();
    if (v49)
    {
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0xE000000000000000;
    }

    if (v48 == v47 && v50 == v4)
    {

LABEL_76:
      v9 = v120 + 1;
      v41 = v114 + 1;
      v42 = v112 - 1;
      if (v120 + 1 == v110)
      {
        v9 = v110;
        v8 = v109;
        goto LABEL_78;
      }

      goto LABEL_56;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
      goto LABEL_76;
    }

    if (!v40)
    {
      break;
    }

    v53 = *v41;
    *v41 = v41[1];
    v41[1] = v53;
    --v41;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v17 = v7;
        goto LABEL_46;
      }

      v12 = *v6;
      v13 = *v4;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v14 = 0;
      }

      else
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass() ? 1 : 2;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (v14)
        {
          break;
        }
      }

      else if (v14 > 1)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6++;
      if (!v16)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v7;
    }

    v15 = v4;
    v16 = v7 == v4++;
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v15;
    goto LABEL_15;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_24:
  v17 = v6--;
  for (--v5; v10 > v4 && v17 > v7; --v5)
  {
    v19 = *(v10 - 1);
    v20 = *v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v21 = 0;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (!v21)
        {
          goto LABEL_43;
        }
      }

      else if (v21 <= 1)
      {
LABEL_43:
        if (v5 + 1 != v17)
        {
          *v5 = *v6;
        }

        goto LABEL_24;
      }
    }

    if (v10 != v5 + 1)
    {
      *v5 = *(v10 - 1);
    }

    --v10;
  }

LABEL_46:
  v22 = v10 - v4;
  if (v17 != v4 || v17 >= &v4[v22])
  {
    memmove(v17, v4, 8 * v22);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v47 = v5;
    v49 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_56;
      }

      v12 = *v6;
      v13 = *v4;

      v14 = App.appIdentifier.getter();
      if (v15)
      {
        v16 = v14;
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

      v18 = App.appIdentifier.getter();
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
      }

      if (v18 == v16 && v20 == v17)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          v23 = v6;
          v24 = v7 == v6++;
          goto LABEL_24;
        }
      }

      v23 = v4;
      v24 = v7 == v4++;
LABEL_24:
      v5 = v47;
      v10 = v49;
      if (!v24)
      {
        *v7 = *v23;
      }

      ++v7;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v45 = v4;
  v46 = v7;
LABEL_28:
  v25 = v6 - 1;
  --v5;
  v48 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v50 = v10;
    v27 = v10 - 1;
    v28 = *(v10 - 1);
    v29 = v25;
    v30 = *v25;

    v31 = App.appIdentifier.getter();
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    v35 = App.appIdentifier.getter();
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    if (v35 == v33 && v37 == v34)
    {
      v39 = 0;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v40 = v5 + 1;
    if (v39)
    {
      v7 = v46;
      v41 = v29;
      v6 = v29;
      v10 = v50;
      v4 = v45;
      if (v40 != v48)
      {
        *v5 = *v41;
        v6 = v41;
      }

      goto LABEL_28;
    }

    v25 = v29;
    if (v50 != v40)
    {
      *v5 = *v27;
    }

    --v5;
    v10 = v27;
    v7 = v46;
    v6 = v48;
    v4 = v45;
  }

LABEL_56:
  v42 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v42])
  {
    memmove(v6, v4, 8 * v42);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type FollowUpOfferType and conformance FollowUpOfferType()
{
  result = lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType;
  if (!lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType;
  if (!lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FollowUpOfferType and conformance FollowUpOfferType);
  }

  return result;
}
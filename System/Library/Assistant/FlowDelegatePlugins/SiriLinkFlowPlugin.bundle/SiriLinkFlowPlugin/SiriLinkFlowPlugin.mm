uint64_t SiriLinkFlowProvisionalLinkActionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(SiriLinkFlowProvisionalLinkActionParameter);
        v24[0] = 0;
        v24[1] = 0;
        if (!PBReaderPlaceMark() || !SiriLinkFlowProvisionalLinkActionParameterReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addParameters:v21];
        }

        goto LABEL_34;
      }

      if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24[0] & 0x7F) << v14;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_40:
        [a1 setPresentationStyle:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = PBReaderReadString();
    [a1 setIdentifier:v21];
LABEL_34:

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkFlowProvisionalLinkActionParameterReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setName:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkFlowProvisionalLinkActionCompletionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setErrorDescription:v14];
          goto LABEL_38;
        }

        if (v13 == 3)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_40;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_40:
          [a1 setIsSuccess:v21];
          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setTargetBundle:v14];
LABEL_38:

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SiriLinkFlowProvisionalLinkAction);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !SiriLinkFlowProvisionalLinkActionReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setAction:v14];
          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkFlowProvisionalLinkActionConversionReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setOutcome:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_33:
      [a1 setIsSuccess:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkFlowProvisionalSiriLinkFlowClientEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 102)
      {
        v14 = objc_alloc_init(SiriLinkFlowProvisionalLinkActionConversion);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SiriLinkFlowProvisionalLinkActionConversionReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLinkActionConversion:v14];
        goto LABEL_29;
      }

      if (v13 == 101)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(FLOWSchemaFLOWEventMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWEventMetadataReadFrom())
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SiriLinkFlowProvisionalLinkActionCompletion);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SiriLinkFlowProvisionalLinkActionCompletionReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setLinkActionCompletion:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfoReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 3)
    {
      v15 = PBReaderReadString();
      [a1 setWfRunnerEventName:v15];
      goto LABEL_26;
    }

    if (v14 == 2)
    {
      v21 = 0;
      v16 = [a2 position] + 4;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v21 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v18) = v21;
      [a1 setClockSeconds:v18];
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setShortcutName:v15];
LABEL_26:

        continue;
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfoReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 101)
      {
        v14 = objc_alloc_init(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfoReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setEnded:v14];
        goto LABEL_29;
      }

      if (v13 == 100)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SISchemaUUID);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom())
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setContextId:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfoReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setStartedOrChanged:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSError.isPreflightError.getter()
{
  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  v5 = v5 && v0 == v4;
  if (v5)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_19();

    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ([v1 code] == &stru_658.reserved3)
  {
    return 1;
  }

LABEL_9:
  v6 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  if (v5 && v0 == v7)
  {

LABEL_16:
    if ([v1 code] != "ib")
    {
      goto LABEL_17;
    }

    return 1;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();

  if (v2)
  {
    goto LABEL_16;
  }

LABEL_17:
  v9 = [v1 userInfo];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v11, v12, v10, &v21);

  if (v22)
  {
    if (swift_dynamicCast())
    {
      v21 = v20;
      lazy protocol witness table accessor for type String and conformance String();
      v13 = OUTLINED_FUNCTION_24();

      if (v13)
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.voiceCommands);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v15, v16))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_25(&dword_0, v17, v18, "Error description indicates it is a preflight error");
          OUTLINED_FUNCTION_17();
        }

        return 1;
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v21, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_12(v5);

    outlined init with copy of Any(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
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

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_12(v4);

    outlined init with copy of Any(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  if (*(a2 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_12(v4);

    outlined init with copy of Any(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_7(v8);
    v10 = *(v9 + 72);
    outlined init with copy of DeviceState?();
    v11 = a4;
    v12 = 0;
    v13 = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v11 = OUTLINED_FUNCTION_8();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

{
  if (*(a3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v5)
    {
      v6 = (*(a3 + 56) + 32 * v4);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
    }
  }

  return OUTLINED_FUNCTION_22();
}

{
  if (*(a3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return OUTLINED_FUNCTION_22();
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t NSError.isUnsupportedInCarPlayError.getter()
{
  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  v5 = v5 && v0 == v4;
  if (v5)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_19();

    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ([v1 code] == stru_6F8.segname)
  {
    return 1;
  }

LABEL_9:
  v6 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  if (v5 && v0 == v7)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_19();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = [v1 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  LOBYTE(v9) = OUTLINED_FUNCTION_24();

  if (v9)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25(&dword_0, v13, v14, "Error description indicates it is an UnsupportedInCarPlay error");
      OUTLINED_FUNCTION_17();
    }

    return 1;
  }

  return 0;
}

BOOL NSError.isLinkUserCancelledError.getter()
{
  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  v5 = v5 && v0 == v4;
  if (v5)
  {

    return [v1 code] == &stru_798.nreloc + 3;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();

  result = 0;
  if (v2)
  {
    return [v1 code] == &stru_798.nreloc + 3;
  }

  return result;
}

uint64_t NSError.filteredLocalizedDescription.getter()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v5 = 136315650;
    v6 = [v2 domain];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v28);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2048;
    v11 = [v2 code];

    *(v5 + 14) = v11;
    *(v5 + 22) = 2080;
    v12 = [v2 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = Dictionary.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v28);

    *(v5 + 24) = v16;
    _os_log_impl(&dword_0, v3, v4, "#NSError:\n Domain:%s\n Code-%ld\n Underlying userInfo: %s", v5, 0x20u);
    swift_arrayDestroy();

    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  v17 = &off_291A78;
  v18 = 4;
  while (--v18)
  {
    v19 = v17 + 2;
    v21 = *(v17 - 1);
    v20 = *v17;

    v22 = [v2 domain];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v28[0] = v23;
    v28[1] = v25;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v22) = BidirectionalCollection<>.starts<A>(with:)();

    v17 = v19;
    if (v22)
    {
      return OUTLINED_FUNCTION_22();
    }
  }

  v26 = [v2 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return OUTLINED_FUNCTION_22();
}

id default argument 6 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)()
{
  v0 = objc_allocWithZone(AFPreferences);

  return [v0 init];
}

void *default argument 5 of AutoShortcutFirstRunFlow.init(autoShortcutInvocation:aceServiceInvoker:voiceShortcutsClient:outputPublisher:deviceState:userDefaults:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for UserDefaultsWrapper();
  swift_allocObject();
  result = UserDefaultsWrapper.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for UserDefaultsWrapper;
  *v0 = result;
  return result;
}

void *default argument 1 of static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:)()
{
  v0 = [objc_opt_self() standardClient];
  OUTLINED_FUNCTION_21();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = &_s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TATu;
  *(v2 + 24) = v1;
  return &_sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTATu;
}

void *default argument 0 of static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:)()
{
  v0 = type metadata accessor for CATOption();
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  static Device.current.getter();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v4 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10();
  v5 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v6 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  return WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v13, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t default argument 1 of CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6();
  }
}

uint64_t default argument 0 of static TemplatingResult.getBehaviorAfterSpeaking(behavior:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BehaviorAfterSpeaking.defaultBehavior(_:);
  v3 = type metadata accessor for BehaviorAfterSpeaking();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t variable initialization expression of VoiceCommandsAppPolicyHandler.appQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = type metadata accessor for DispatchQoS();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of CustomIntentExecutionFlow.input()
{
  OUTLINED_FUNCTION_9();
  type metadata accessor for Input();
  v0 = OUTLINED_FUNCTION_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
}

uint64_t default argument 7 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static VoiceCommandsAppPolicyHandler.instance;
  a1[3] = type metadata accessor for VoiceCommandsAppPolicyHandler();
  a1[4] = &protocol witness table for VoiceCommandsAppPolicyHandler;
  *a1 = v2;
}

uint64_t variable initialization expression of LinkActivityManager.storage()
{
  type metadata accessor for LinkActivityManager.AtomicSessionResult();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptyArrayStorage;
  return v0;
}

id default argument 4 of AutoShortcutFlow.init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for LinkMetadataProvider();
  OUTLINED_FUNCTION_21();
  v2 = swift_allocObject();
  result = [objc_allocWithZone(LNMetadataProvider) init];
  *(v2 + 16) = result;
  v0[3] = v1;
  v0[4] = &protocol witness table for LinkMetadataProvider;
  *v0 = v2;
  return result;
}

uint64_t variable initialization expression of ShortcutsHandoffFlow.state()
{
  OUTLINED_FUNCTION_9();
  type metadata accessor for Input();
  v0 = OUTLINED_FUNCTION_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, 2, v2);
}

id variable initialization expression of LinkMetadataProvider.wrappedProvider()
{
  v0 = objc_allocWithZone(LNMetadataProvider);

  return [v0 init];
}

uint64_t default argument 7 of CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)()
{
  v0 = type metadata accessor for ContinueInAppCATWrapperSimple();
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  outlined init with copy of DeviceState?();
  v3 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v5);
  outlined destroy of Any?(v6, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  return v3;
}

uint64_t default argument 3 of LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)()
{
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t variable initialization expression of AutoShortcutsSetEnablementFlow.contextProvider()
{
  type metadata accessor for WorkflowNLContextProvider();

  return swift_allocObject();
}

uint64_t default argument 5 of LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  result = CATWrapper.__allocating_init(options:globals:)();
  v0[3] = v5;
  v0[4] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  *v0 = result;
  return result;
}

uint64_t default argument 7 of CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

id default argument 1 of AutoShortcutInvocation.init(directInvocationData:provider:preferences:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for AutoShortcutProvider();
  OUTLINED_FUNCTION_21();
  v2 = swift_allocObject();
  result = [objc_allocWithZone(LNAutoShortcutsProvider) init];
  *(v2 + 16) = result;
  v0[3] = v1;
  v0[4] = &protocol witness table for AutoShortcutProvider;
  *v0 = v2;
  return result;
}

id default argument 8 of AutoShortcutsSetEnablementFlow.init(deviceState:outputPublisher:linkActionPatterns:autoShortcutCATs:autoShortcutCATsSimple:voiceShortcutsClient:provider:appNameResolver:preferences:userDefaults:)()
{
  v0 = [objc_opt_self() sharedPreferences];

  return v0;
}

uint64_t default argument 2 of CustomIntentRCHFlowStrategy.init(deviceState:intent:catWrapper:catWrapperSimple:)()
{
  OUTLINED_FUNCTION_23();
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v1(0);
  static CATOption.defaultMode.getter();
  return v0(v8, 0);
}

uint64_t default argument 2 of CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t variable initialization expression of RunLinkActionContinueInAppParameters.customDialog()
{
  OUTLINED_FUNCTION_9();
  type metadata accessor for SpeakableString();
  v0 = OUTLINED_FUNCTION_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
}

uint64_t default argument 11 of WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)@<X0>(uint64_t *a1@<X8>)
{
  static AceService.currentAsync.getter();
  v2 = type metadata accessor for LocationProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 0x3FA999999999999ALL;
  result = outlined init with take of AceServiceInvokerAsync(&v5, v3 + 24);
  a1[3] = v2;
  a1[4] = &protocol witness table for LocationProvider;
  *a1 = v3;
  return result;
}

uint64_t default argument 13 of WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a1(0);
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return a3();
}

SiriLinkFlowPlugin::CustomIntentDisambiguationItemContainer protocol witness for RawRepresentable.rawValue.getter in conformance _INIntentType()
{
  v1 = OUTLINED_FUNCTION_5();
  result.items._rawValue = CustomIntentDisambiguationItemContainer.init(items:)(v1).items._rawValue;
  v0->items._rawValue = result.items._rawValue;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONWritingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

NSString _sSo32WFContentItemListThumbnailOptionas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromF1Cyx01_F5CTypeQzSgFZTW_0@<X0>(void *a1@<X8>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo29WFSmartPromptButtonIdentifiera_Tt1gq5Tm();
  *a1 = result;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance LNMeasurementUnitType(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  LNMeasurementUnitType.init(rawValue:)();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WFSmartPromptButtonIdentifier()
{
  v1 = OUTLINED_FUNCTION_5();
  result = WFTextFieldKeyboardType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance LNActionModes@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LNValueTypeSpecificMetadataKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance WFContentItemListThumbnailOption(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type WFContentItemListThumbnailOption and conformance WFContentItemListThumbnailOption, type metadata accessor for WFContentItemListThumbnailOption);
  v3 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type WFContentItemListThumbnailOption and conformance WFContentItemListThumbnailOption, type metadata accessor for WFContentItemListThumbnailOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance WFSmartPromptButtonIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier, type metadata accessor for WFSmartPromptButtonIdentifier);
  v3 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier, type metadata accessor for WFSmartPromptButtonIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WFSmartPromptButtonIdentifier@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNValueTypeSpecificMetadataKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey, type metadata accessor for LNValueTypeSpecificMetadataKey);
  v3 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey, type metadata accessor for LNValueTypeSpecificMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
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
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

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
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
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
    if (v10 != a4 || &v13[v8] <= v12)
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
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined init with take of AceServiceInvokerAsync(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_AAFC()
{
  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TA()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TATQ0_;

  return _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_();
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TATQ0_(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_ACF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTA()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTATQ0_;

  return _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TR();
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_50_2();
    v5 = OUTLINED_FUNCTION_7_20();
  }

  return v5 & 1;
}

{
  OUTLINED_FUNCTION_48_7();
  if (v6)
  {
    v0 = 0xEC00000065636976;
  }

  else
  {
    v0 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_48_7();
  if (v6)
  {
    v0 = 0xEC00000065636976;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x656761507473616CLL;
    }

    else
    {
      v5 = 0x726F4D726566666FLL;
    }

    if (v4 == 1)
    {
      v0 = 0xE800000000000000;
    }

    else
    {
      v0 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_44_7(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x656761507473616CLL;
    }

    else
    {
      v3 = 0x726F4D726566666FLL;
    }

    if (v2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_48_7();
  if (v6)
  {
    v0 = 0xEB000000006D6172;
  }

  else
  {
    v0 = 0xEC0000006D617261;
  }

  OUTLINED_FUNCTION_10_22();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_45_6();
  switch(v2)
  {
    case 1:
      v0 = 0xEB00000000656D61;
      break;
    case 2:
      v0 = 0x800000000022EEA0;
      break;
    case 3:
      v0 = 0xE90000000000006FLL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_5();
  switch(v6)
  {
    case 1:
      v4 = 0x4E707041776F6873;
      v1 = 0xEB00000000656D61;
      break;
    case 2:
      v4 = 0xD000000000000013;
      v1 = (v5 - 32) | 0x8000000000000000;
      break;
    case 3:
      v4 = 0x72746E49776F6873;
      v1 = 0xE90000000000006FLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_48_7();
  if (v6)
  {
    v0 = 0xE600000000000000;
  }

  else
  {
    v0 = 0xEB00000000656D61;
  }

  OUTLINED_FUNCTION_10_22();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_49_4();
  if (v6)
  {
    v0 = 0xEC0000006E6F6974;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_45_6();
  switch(v2)
  {
    case 2:
      OUTLINED_FUNCTION_29_11();
      break;
    case 3:
      v0 = 0xE300000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_5();
  switch(v5)
  {
    case 1:
      v4 = 0x7265626D756ELL;
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1954047348;
      break;
    case 3:
      v1 = 0xE300000000000000;
      v4 = 7107189;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_45_6();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xEB00000000656D69;
      break;
    case 3:
      OUTLINED_FUNCTION_29_11();
      break;
    case 4:
      v0 = 0xE400000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_5();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1702125924;
      break;
    case 2:
      v4 = 0x54646E4165746164;
      v1 = 0xEB00000000656D69;
      break;
    case 3:
      v1 = 0xE400000000000000;
      v4 = 1954047348;
      break;
    case 4:
      v1 = 0xE400000000000000;
      v4 = 1701669236;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  v0 = 0xE900000000000065;
  OUTLINED_FUNCTION_41_6();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x66664F7470656BLL;
    }

    else
    {
      v5 = 0x6E4F7470656BLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = v3;
    v6 = 0xE900000000000065;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x66664F7470656BLL;
    }

    else
    {
      v3 = 0x6E4F7470656BLL;
    }

    if (v2 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_11();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_10_22();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

{
  OUTLINED_FUNCTION_49_4();
  if (v6)
  {
    v0 = 0xEC0000006E6F6974;
  }

  else
  {
    v0 = 0xEE0073656C706D61;
  }

  OUTLINED_FUNCTION_10_22();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_10_22();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

{
  OUTLINED_FUNCTION_45_6();
  switch(v2)
  {
    case 2:
      v0 = 0xE300000000000000;
      break;
    case 3:
      v0 = 0xE400000000000000;
      break;
    case 6:
      v0 = 0xE300000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_5();
  switch(v5)
  {
    case 1:
      v4 = 0x6C65636E6163;
      break;
    case 2:
      v1 = 0xE300000000000000;
      v4 = 7239026;
      break;
    case 3:
      v1 = 0xE400000000000000;
      v4 = 1684957542;
      break;
    case 4:
      v6 = 1634038371;
      goto LABEL_11;
    case 5:
      v6 = 1701602660;
LABEL_11:
      v4 = v6 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      v1 = 0xE300000000000000;
      v4 = 7827304;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_49_4();
  if (v6)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_49_4();
  if (v6)
  {
    v0 = 0xED00007070416E49;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_10_22();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_20();
  }

  return v7 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  if (v1)
  {
    OUTLINED_FUNCTION_28_8();
    if (v4)
    {
      v8 = 0x74706D6F7270;
    }

    else
    {
      v8 = 0x6341686372616573;
    }

    if (v4)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_7(v1, v2, v3);
  }

  if (v5)
  {
    OUTLINED_FUNCTION_28_8();
    if (v9)
    {
      v6 = 0x74706D6F7270;
    }

    else
    {
      v6 = 0x6341686372616573;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v6 && v0 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_20();
  }

  return v13 & 1;
}

{
  OUTLINED_FUNCTION_4_31();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x726F727265;
    }

    else
    {
      v5 = 0x6D617261506C696ELL;
    }

    if (v4 == 1)
    {
      v0 = 0xE500000000000000;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_44_7(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x726F727265;
    }

    else
    {
      v3 = 0x6D617261506C696ELL;
    }

    if (v2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_20();
  }

  return v8 & 1;
}

{
  OUTLINED_FUNCTION_88_0();
  type metadata accessor for InteractionType();
  lazy protocol witness table accessor for type WFInputTextFlow and conformance WFInputTextFlow(&lazy protocol witness table cache variable for type InteractionType and conformance InteractionType, 255, &type metadata accessor for InteractionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_19_11();
  }

  return v1 & 1;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo29WFSmartPromptButtonIdentifiera_Tt1gq5Tm()
{
  OUTLINED_FUNCTION_23();

  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo29WFSmartPromptButtonIdentifiera_Tt1gq5Tm()
{
  OUTLINED_FUNCTION_23();

  v2 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return v2 & 1;
}

NSString _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo29WFSmartPromptButtonIdentifiera_Tt1gq5Tm()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of DeviceState?()
{
  OUTLINED_FUNCTION_23();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
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

void type metadata accessor for LNInteractionMode(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_17()
{
}

uint64_t OUTLINED_FUNCTION_19()
{
}

void OUTLINED_FUNCTION_20()
{
}

uint64_t OUTLINED_FUNCTION_24()
{

  return StringProtocol.contains<A>(_:)();
}

void OUTLINED_FUNCTION_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t CustomIntentRCHFlowStrategy.__allocating_init(intent:deviceState:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  outlined init with copy of DeviceState(a2, v13);
  type metadata accessor for RunCustomIntentCATs();
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  v11 = (*(v2 + 104))(v13, a1, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t outlined init with copy of DeviceState(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_21_2(v3);
  (*v4)(a2);
  return a2;
}

uint64_t CustomIntentRCHFlowStrategy.__allocating_init(deviceState:intent:catWrapper:catWrapperSimple:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  CustomIntentRCHFlowStrategy.init(deviceState:intent:catWrapper:catWrapperSimple:)(a1, a2, a3, a4);
  return v8;
}

uint64_t CustomIntentRCHFlowStrategy.init(deviceState:intent:catWrapper:catWrapperSimple:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for CATOption();
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  outlined init with copy of DeviceState(a1, v5 + 16);
  *(v5 + 56) = a2;
  outlined init with copy of DeviceState(a1, v23);
  v14 = one-time initialization token for shared;
  v15 = a2;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static WFDialogState.shared;
  type metadata accessor for RunVoiceCommandCATs();

  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19 = type metadata accessor for AppNameResolver();
  v20 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v21 = swift_allocObject();
  *(v21 + 136) = v19;
  *(v21 + 144) = &protocol witness table for AppNameResolver;
  *(v21 + 112) = v20;
  *(v21 + 56) = v16;
  outlined init with take of AceServiceInvokerAsync(v23, v21 + 16);
  *(v21 + 64) = 0;
  *(v21 + 72) = 1;
  *(v21 + 80) = a3;
  *(v21 + 88) = a4;
  *(v21 + 96) = v17;
  *(v21 + 104) = v18;
  *(v5 + 64) = v21;
  return v5;
}

uint64_t CustomIntentRCHFlowStrategy.actionForInput(input:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  Input.parse.getter();
  if ((*(v1 + 88))(v5, v0) == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v1 + 96))(v5, v0);
    v6 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));
    v7 = Parse.ServerConversion.siriKitIntent.getter();
    v8 = [v7 _type];

    if (v8 == &dword_0 + 2)
    {
      static ActionForInput.handle()();
    }

    else
    {
      static ActionForInput.ignore()();
    }

    v14 = type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_0(v14);
    return (*(v15 + 8))(v5);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);
    v10 = static os_log_type_t.debug.getter();
    v11 = Logger.logObject.getter();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v11, v10, "Parse type not yet supported.", v12, 2u);
      OUTLINED_FUNCTION_11_0();
    }

    static ActionForInput.ignore()();
    return (*(v1 + 8))(v5, v0);
  }
}

uint64_t CustomIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t CustomIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[3];
  if (static FlowStrategyUtils.makeIntentFromParse(parse:currentIntent:)(v0[2]))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    lazy protocol witness table accessor for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_6_0();

    return v5();
  }
}

uint64_t CustomIntentRCHFlowStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[36] = OUTLINED_FUNCTION_27();
  v1[37] = swift_task_alloc();
  v7 = type metadata accessor for DialogPhase();
  v1[38] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[39] = v8;
  v10 = *(v9 + 64);
  v1[40] = OUTLINED_FUNCTION_27();
  v1[41] = swift_task_alloc();
  v11 = type metadata accessor for OutputGenerationManifest();
  v1[42] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[43] = v12;
  v14 = *(v13 + 64) + 15;
  v1[44] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v15);
  v17 = *(v16 + 64);
  v1[45] = OUTLINED_FUNCTION_27();
  v1[46] = swift_task_alloc();
  v18 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64) + 15;
  v1[47] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_14_0();
  *(v0 + 224) = *(v0 + 272);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CommandFailure();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v27 = *(v0 + 376);
    v28 = *(v0 + 360);
    type metadata accessor for RunLinkActionCATsSimple();
    static CATOption.defaultMode.getter();
    v29 = CATWrapperSimple.__allocating_init(options:globals:)();
    *(v0 + 496) = v29;
    v30 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v30);
    v31 = *(*v29 + class metadata base offset for RunLinkActionCATsSimple + 80);
    v39 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 504) = v33;
    *v33 = v0;
    v33[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:);
    v18 = *(v0 + 360);
    v17 = 0;
    v19 = v39;

    return v19(v18, v17);
  }

  *(v0 + 384) = *(v0 + 232);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 392) = __swift_project_value_buffer(v1, static Logger.voiceCommands);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = CommandFailure.errorCode.getter();

    _os_log_impl(&dword_0, v2, v3, "voice command error code: %ld", v4, 0xCu);
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  if (CommandFailure.errorCode.getter() == 1307)
  {
    v6 = *(v0 + 368);
    v5 = *(v0 + 376);
    v7 = *(v0 + 280);
    type metadata accessor for RunCustomIntentCATsSimple();
    static CATOption.defaultMode.getter();
    v8 = CATWrapperSimple.__allocating_init(options:globals:)();
    *(v0 + 400) = v8;
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
    __swift_project_boxed_opaque_existential_1((v7 + 16), v9);
    v11 = DeviceState.asSiriKitDeviceState()(v9, v10);
    *(v0 + 408) = v11;
    v12 = [*(v7 + 56) _title];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    SpeakableString.init(print:speak:)();
    v13 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
    v14 = *(*v8 + class metadata base offset for RunCustomIntentCATsSimple + 144);
    v38 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 416) = v16;
    *v16 = v0;
    v16[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:);
    v17 = *(v0 + 368);
    v18 = v11;
    v19 = v38;

    return v19(v18, v17);
  }

  if ((CustomIntentRCHFlowStrategy.isPreflightError(commandFailure:)() & 1) == 0)
  {

    goto LABEL_15;
  }

  v21 = *(v0 + 280);
  outlined init with copy of DeviceState(v21 + 16, v0 + 72);
  type metadata accessor for WorkflowSnippetProvider();
  inited = swift_initStackObject();
  *(v0 + 464) = inited;
  outlined init with take of AceServiceInvokerAsync((v0 + 72), inited + 16);
  v23 = [*(v21 + 56) launchId];
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v34 = *(v0 + 280);
    v35 = *(v34 + 48);
    __swift_project_boxed_opaque_existential_1((v21 + 16), *(v34 + 40));
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      v26 = 0x800000000022F8D0;
    }

    else
    {
      v26 = 0x800000000022F740;
    }
  }

  *(v0 + 472) = v26;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 480) = v36;
  *v36 = v37;
  v36[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:);

  return WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = v2[52];
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v9 + 424) = v8;
  *(v9 + 432) = v0;

  v10 = v2[51];
  outlined destroy of SpeakableString?(v2[46], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[57];
  v3 = v1[56];
  v4 = v1[55];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *(v2 + 480);
  *v4 = *v1;
  *(v3 + 488) = v0;

  v6 = *(v2 + 472);

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *(v2 + 504);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v9 + 512) = v8;
  *(v9 + 520) = v0;

  outlined destroy of SpeakableString?(*(v2 + 360), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[68];
  v3 = v1[67];
  v4 = v1[66];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v22 = v0;
  v1 = v0[62];

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[65];
  v3 = v0[36];
  v4 = v0[37];
  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, static Logger.voiceCommands);
  _StringGuts.grow(_:)(56);
  v7._object = 0x800000000022F800;
  v7._countAndFlagsBits = 0xD000000000000036;
  String.append(_:)(v7);
  swift_getErrorValue();
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[21];
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  v12 = *(v5 - 8);
  (*(v12 + 16))(v4, v6, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  outlined init with copy of Logger?(v4, v3);
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v3, 1, v5);

  v13 = v0[36];
  if (v3 == 1)
  {
    outlined destroy of SpeakableString?(v0[36], &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v16 = 136315650;
      v17 = StaticString.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2048;
      *(v16 + 14) = 116;
      *(v16 + 22) = 2080;
      *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v21);
      _os_log_impl(&dword_0, v14, v15, "FatalError at %s:%lu - %s", v16, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_0();
    }

    (*(v12 + 8))(v0[36], v5);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

{
  v22 = v0;
  v1 = v0[54];
  v2 = v0[49];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[54];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[27];
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_25_0(&dword_0, v14, v15, "Unable to generate default error dialog due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0();
  }

  v16 = v0[54];
  v17 = v0[50];
  v18 = v0[48];
  lazy protocol witness table accessor for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError();
  swift_allocError();
  swift_willThrow();

  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_6_0();

  return v19();
}

{
  v22 = v0;
  v1 = v0[61];
  v2 = v0[49];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[61];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[24];
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_25_0(&dword_0, v14, v15, "Unable to generate default error dialog due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0();
  }

  v16 = v0[61];
  v17 = v0[58];
  v18 = v0[48];
  lazy protocol witness table accessor for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError();
  swift_allocError();
  swift_willThrow();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v17 + 16));
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_6_0();

  return v19();
}

uint64_t CustomIntentRCHFlowStrategy.makeErrorResponse(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[49];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v14, v15, "Generated failure dialog runCustomIntent#extensionTimedOut");
    OUTLINED_FUNCTION_15_0();
  }

  v16 = v10[53];
  v17 = v10[44];
  v19 = v10[40];
  v18 = v10[41];
  v20 = v10[38];
  v21 = v10[39];

  static DialogPhase.error.getter();
  v22 = OUTLINED_FUNCTION_7_0(v21);
  v23(v22);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v21 + 8))(v18, v20);
  v24 = type metadata accessor for ResponseFactory();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v10[55] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  v10[56] = v27;
  *(v27 + 16) = xmmword_216010;
  *(v27 + 32) = v16;
  v28 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  OUTLINED_FUNCTION_16_0(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v29 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v10[57] = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_13_0(v30);
  OUTLINED_FUNCTION_21_0();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[53];
  v12 = v10[50];
  v13 = v10[48];
  v15 = v10[43];
  v14 = v10[44];
  v16 = v10[42];

  (*(v15 + 8))(v14, v16);
  OUTLINED_FUNCTION_10_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 464);
  v12 = *(v10 + 384);
  v13 = *(v10 + 264);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));

  outlined init with take of AceServiceInvokerAsync((v10 + 112), v13);
  OUTLINED_FUNCTION_10_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v14, v15, "Generated generic failure dialog");
    OUTLINED_FUNCTION_15_0();
  }

  v16 = v10[64];
  v17 = v10[44];
  v19 = v10[40];
  v18 = v10[41];
  v20 = v10[38];
  v21 = v10[39];

  static DialogPhase.error.getter();
  v22 = OUTLINED_FUNCTION_7_0(v21);
  v23(v22);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v21 + 8))(v18, v20);
  v24 = type metadata accessor for ResponseFactory();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v10[66] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  v10[67] = v27;
  *(v27 + 16) = xmmword_216010;
  *(v27 + 32) = v16;
  v28 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  OUTLINED_FUNCTION_16_0(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v29 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v10[68] = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_13_0(v30);
  OUTLINED_FUNCTION_21_0();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[64];
  v12 = v10[62];
  v14 = v10[43];
  v13 = v10[44];
  v15 = v10[42];

  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_10_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v11 = (v6 + *v6);
  v7 = v6[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v3 + 16) = v8;
  *v8 = v9;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v11(a1, a2);
}

uint64_t CustomIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for DialogPhase();
  v1[7] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_27();
  v1[10] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[11] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[12] = v11;
  v13 = *(v12 + 64) + 15;
  v1[13] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(**(v0[6] + 64) + 352);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = CustomIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return v8(v6, v4, v5);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[13];
    v14 = v5 + 9;
    v13 = v5[9];
    v12 = v14[1];

    OUTLINED_FUNCTION_6_0();

    return v15();
  }

  else
  {
    v5[15] = v3;
    v17 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v17, v18, v19);
  }
}

{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  static DialogPhase.error.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = OUTLINED_FUNCTION_7_0(v6);
  v9(v8);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v3, v5);
  v10 = type metadata accessor for ResponseFactory();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[16] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  v0[17] = v13;
  *(v13 + 16) = xmmword_216010;
  *(v13 + 32) = v1;
  v14 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  OUTLINED_FUNCTION_16_0(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v15 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[18] = v16;
  *v16 = v17;
  v16[1] = CustomIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v18 = v0[13];
  v19 = v0[2];

  return v21(v19, v13, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[16];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t CustomIntentRCHFlowStrategy.isPreflightError(commandFailure:)()
{
  if (CommandFailure.errorCode.getter() == 3006)
  {
    return 1;
  }

  result = CommandFailure.underlyingError.getter();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NSError();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v1 = [v9 domain];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    v8 = [v9 code];

    return v8 == &stru_BA0.segname[14];
  }

  return result;
}

Swift::Int CustomIntentsDialogTemplatingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError()
{
  Hasher.init(_seed:)();
  CustomIntentsDialogTemplatingError.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CustomIntentRCHFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 64);

  return v0;
}

uint64_t CustomIntentRCHFlowStrategy.__deallocating_deinit()
{
  CustomIntentRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CustomIntentRCHFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CustomIntentRCHFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CustomIntentRCHFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v10(a1, a2);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentRCHFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentRCHFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentRCHFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 136);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 144);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentRCHFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

unint64_t lazy protocol witness table accessor for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors()
{
  result = lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors;
  if (!lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors;
  if (!lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors);
  }

  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError()
{
  result = lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError;
  if (!lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError;
  if (!lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CustomIntentRCHFlowStrategy and conformance CustomIntentRCHFlowStrategy(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CustomIntentRCHFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentRCHFlowStrategy.CustomIntentRCHError(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for CustomIntentRCHFlowStrategy.CustomIntentRCHError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0xF438);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[36];
  v8 = v0[37];
}

uint64_t OUTLINED_FUNCTION_11_0()
{
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 352);
  return *(v2 + 264);
}

uint64_t OUTLINED_FUNCTION_15_0()
{
}

uint64_t OUTLINED_FUNCTION_24_0()
{
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[36];
  v8 = v0[37];
}

void OUTLINED_FUNCTION_25_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_task_alloc();
}

void AutoShortcutFlow.state.didset()
{
  v1 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v10 = *(v1 + 272);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, oslog, v3, "#AutoShortcutFlow transitioned to state=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
  }
}

id closure #1 in variable initialization expression of static AutoShortcutFlow.defaultRunner(const void *a1)
{
  v74 = a1;
  v71 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v1 = OUTLINED_FUNCTION_7(v71);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v72 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMd, &_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMR);
  OUTLINED_FUNCTION_13_1();
  v67 = v7;
  v68 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v66 = &v58 - v10;
  v11 = type metadata accessor for DateTimeResolver();
  OUTLINED_FUNCTION_13_1();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = type metadata accessor for CATOption();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v24 = static WFDialogState.shared;
  static AceService.currentAsync.getter();
  static Device.current.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v65 = CATWrapper.__allocating_init(options:globals:)();
  v60 = type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v64 = CATWrapper.__allocating_init(options:globals:)();
  v59 = type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v25 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v63 = CATWrapper.__allocating_init(options:globals:)();
  static AceService.currentAsync.getter();
  v26 = type metadata accessor for LocationProvider();
  v27 = swift_allocObject();
  *(v27 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync(&v78, v27 + 24);
  DateTimeResolver.init()();
  v61 = type metadata accessor for WorkflowRunnerFlow(0);
  v28 = objc_allocWithZone(v61);
  v86[3] = v26;
  v86[4] = &protocol witness table for LocationProvider;
  v85[3] = &type metadata for DefaultTCCTemplatesCATWrapper;
  v85[4] = &protocol witness table for DefaultTCCTemplatesCATWrapper;
  v86[0] = v27;
  v84[3] = v11;
  v84[4] = &protocol witness table for DateTimeResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
  v69 = v19;
  v70 = v13;
  v30 = *(v13 + 16);
  v73 = v11;
  v30(boxed_opaque_existential_1, v19, v11);
  v83[3] = &type metadata for DefaultLinkHandlingFlowFactory;
  v83[4] = &protocol witness table for DefaultLinkHandlingFlowFactory;
  v31 = v74;
  memcpy(&v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput], v74, 0x41uLL);
  outlined init with copy of DeviceState(v89, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker]);
  outlined init with copy of DeviceState(v88, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState]);
  *&v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState] = v24;
  outlined init with copy of DeviceState(v87, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher]);
  outlined init with copy of DeviceState(v86, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationProvider]);
  outlined init with copy of DeviceState(v84, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dateTimeResolver]);
  outlined init with copy of DeviceState(v83, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkHandlingFlowFactory]);
  *&v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_runVoiceCommandsCatWrapperSimple] = v25;
  v32 = &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationGuardFlowProvider];
  *v32 = closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow;
  v32[1] = 0;
  outlined init with copy of DeviceState(v85, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_tccTemplatesCATWrapper]);
  outlined init with copy of DeviceState(v88, &v81);
  type metadata accessor for RunLinkActionCATs();
  outlined init with copy of SiriWorkflowRunnerInput(v31, &v78);
  v62 = v24;

  v75 = v25;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v33 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v34 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v35 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v36 = v59;
  v37 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v38 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  v39 = swift_allocObject();
  v39[14] = v36;
  v39[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v39[11] = v38;
  outlined init with take of AceServiceInvokerAsync(&v81, (v39 + 2));
  v39[7] = v33;
  v39[8] = v34;
  v39[9] = v35;
  v39[10] = v37;
  *&v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkActionDialogTemplate] = v39;
  outlined init with copy of UUID?(v90, &v81, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  if (v82)
  {
    outlined init with take of AceServiceInvokerAsync(&v81, &v78);
    outlined init with take of AceServiceInvokerAsync(&v78, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner]);
  }

  else
  {
    outlined destroy of Any?(&v81, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
    outlined init with copy of DeviceState(v88, &v81);
    outlined init with copy of DeviceState(v89, v77);
    v40 = type metadata accessor for SiriWorkflowRunner();
    swift_allocObject();
    v41 = v74;
    outlined init with copy of SiriWorkflowRunnerInput(v74, &v78);
    v42 = SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)(v41, &v81, v77);
    v43 = &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner];
    *(v43 + 3) = v40;
    *(v43 + 4) = &protocol witness table for SiriWorkflowRunner;
    *v43 = v42;
  }

  outlined init with copy of DeviceState(v88, &v78);
  type metadata accessor for WorkflowRunnerCATs();
  v44 = v62;

  v45 = v65;

  v46 = v64;

  v47 = v63;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v48 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v49 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v50 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *&v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogTemplating] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(&v78, v44, v48, v49, v45, v50, v46, v75, v47);
  outlined init with copy of DeviceState(&v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], &v78);
  v51 = v79;
  v52 = v80;
  __swift_project_boxed_opaque_existential_1(&v78, v79);
  v53 = v66;
  (*(v52 + 8))(v51, v52);
  __swift_destroy_boxed_opaque_existential_1Tm(&v78);
  v54 = v72;
  v55 = v68;
  AsyncStream.makeAsyncIterator()();
  (*(v67 + 8))(v53, v55);
  swift_storeEnumTagMultiPayload();
  outlined init with take of AutoShortcutInvocation(v54, &v28[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state], type metadata accessor for WorkflowRunnerFlow.State);
  v76.receiver = v28;
  v76.super_class = v61;
  v56 = objc_msgSendSuper2(&v76, "init");

  (*(v70 + 8))(v69, v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  outlined destroy of Any?(v90, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  return v56;
}

Swift::Int VoiceCommandsParityError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoShortcutFlow.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  VoiceCommandsParityError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t AutoShortcutFlow.__allocating_init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = a1[3];
  v15 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
  OUTLINED_FUNCTION_13_1();
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v24 = a10(v22, a2, a3, a4, a5, a6, a7, a8, a9, v10, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v24;
}

BOOL AutoShortcutFlow.on(input:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = *(v3 + 272);
  if (*(v3 + 272))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.voiceCommands);
    (*(v7 + 16))(v13, a1, v5);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_48();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136315138;
      OUTLINED_FUNCTION_9_1();
      lazy protocol witness table accessor for type Input and conformance Input(v22, 255, v23);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v7 + 8))(v13, v5);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v40);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_0, v18, v19, "#AutoShortcutFlow onInput - ignoring unexpected input=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {

      (*(v7 + 8))(v13, v5);
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.voiceCommands);
    (*(v7 + 16))(v15, a1, v5);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_48();
      v39 = OUTLINED_FUNCTION_33();
      v40 = v39;
      *v2 = 136315138;
      OUTLINED_FUNCTION_9_1();
      lazy protocol witness table accessor for type Input and conformance Input(v31, 255, v32);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v16;
      v36 = v35;
      (*(v7 + 8))(v15, v5);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, &v40);
      v16 = v34;

      *(v2 + 4) = v37;
      _os_log_impl(&dword_0, v29, v30, "#AutoShortcutFlow onInput - initial input=%s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    else
    {

      (*(v7 + 8))(v15, v5);
    }

    *(v3 + 272) = 1;
    AutoShortcutFlow.state.didset();
  }

  return v16 == 0;
}

uint64_t AutoShortcutFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AutoShortcutFlow and conformance AutoShortcutFlow, a2, type metadata accessor for AutoShortcutFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AutoShortcutFlow.executeAppShortcut(invocation:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for UUID();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v3[18] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(AutoShortcutFlow.executeAppShortcut(invocation:), 0, 0);
}

uint64_t AutoShortcutFlow.executeAppShortcut(invocation:)()
{
  v1 = v0[13];
  v2 = v0[14];
  v0[22] = *(v1 + 32);
  v0[23] = *(v1 + 40);
  static InstrumentationUtils.emitAutoShortcutUsedInstrumentation(autoShortcutTemplate:)();
  v3 = v2[5];
  v4 = v2[6];
  OUTLINED_FUNCTION_47(v2 + 2);
  v5 = *(v4 + 8);
  OUTLINED_FUNCTION_16_1();
  v12 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_38(v9);

  return v12(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;
  v3[26] = v0;

  if (v0)
  {
    v9 = v3[20];
    v8 = v3[21];
    v10 = v3[19];
    v11 = v3[17];

    OUTLINED_FUNCTION_6_0();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 224);
  *v2 = *v0;
  *(v1 + 232) = v5;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = specialized Array.count.getter(*(v0 + 232));
  v2 = *(v0 + 232);
  if (v1)
  {
    v3 = v2 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if (v3)
    {
      goto LABEL_41;
    }

    v4 = *(*(v0 + 232) + 32);
LABEL_4:

    v5 = [v4 orderedPhrases];

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase, LNAutoShortcutLocalizedPhrase_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = specialized Array.count.getter(v6);
    if (v73)
    {
      v7 = 0;
      v8 = *(v0 + 128);
      v69 = v6;
      v71 = v6 & 0xC000000000000001;
      v63 = (v8 + 32);
      v67 = v6 & 0xFFFFFFFFFFFFFF8;
      v68 = *(v0 + 144);
      v66 = (v8 + 8);
      do
      {
        if (v71)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v67 + 16))
          {
            goto LABEL_40;
          }

          v9 = *(v6 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v62 = *(v0 + 232);
          goto LABEL_4;
        }

        v13 = *(v0 + 176);
        v12 = *(v0 + 184);
        v14 = [v9 basePhraseTemplate];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v15 == v13 && v17 == v12)
        {
        }

        else
        {
          v19 = *(v0 + 176);
          v20 = *(v0 + 184);
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {

            goto LABEL_29;
          }
        }

        v22 = [v10 parameterIdentifier];
        if (v22)
        {
          v23 = v22;
          v24 = *(v0 + 168);
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = 0;
        }

        else
        {
          v25 = 1;
        }

        v26 = *(v0 + 168);
        v27 = *(v0 + 152);
        v28 = *(v0 + 120);
        v29 = *(v0 + 104);
        __swift_storeEnumTagSinglePayload(v26, v25, 1, v28);
        v30 = *(type metadata accessor for AutoShortcutInvocation() + 28);
        v31 = *(v68 + 48);
        outlined init with copy of UUID?(v26, v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined init with copy of UUID?(v29 + v30, v27 + v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
        {
          v32 = *(v0 + 120);
          outlined destroy of Any?(*(v0 + 168), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v6 = v69;
          if (__swift_getEnumTagSinglePayload(v27 + v31, 1, v32) == 1)
          {
            v59 = *(v0 + 152);

            outlined destroy of Any?(v59, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_38:
            v60 = [v10 localizedPhrase];
            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v61;

            goto LABEL_33;
          }

          goto LABEL_26;
        }

        v33 = *(v0 + 120);
        outlined init with copy of UUID?(*(v0 + 152), *(v0 + 160), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27 + v31, 1, v33);
        v35 = *(v0 + 160);
        v36 = *(v0 + 168);
        if (EnumTagSinglePayload == 1)
        {
          v37 = *(v0 + 120);

          outlined destroy of Any?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*v66)(v35, v37);
          v6 = v69;
LABEL_26:
          outlined destroy of Any?(*(v0 + 152), &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
          goto LABEL_29;
        }

        v65 = *(v0 + 152);
        v38 = *(v0 + 136);
        v39 = *(v0 + 120);
        (*v63)(v38, v27 + v31, v39);
        lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
        v64 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *v66;
        (*v66)(v38, v39);
        outlined destroy of Any?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v40(v35, v39);
        outlined destroy of Any?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v64)
        {

          goto LABEL_38;
        }

        v6 = v69;
LABEL_29:
        ++v7;
      }

      while (v11 != v73);
    }
  }

  else
  {
    v41 = *(v0 + 232);
  }

  v42 = 0;
  v43 = 0;
LABEL_33:
  v44 = *(v0 + 216);
  v45 = *(v0 + 200);
  v70 = *(v0 + 168);
  v72 = *(v0 + 160);
  v74 = *(v0 + 152);
  v75 = *(v0 + 136);
  v47 = *(v0 + 96);
  v46 = *(v0 + 104);
  v48 = v46[3];
  v49 = *v46;
  v50 = v46[1];
  *(v0 + 16) = v46[2];
  v51 = *(v0 + 112);
  *(v0 + 24) = v48;
  *(v0 + 32) = v49;
  *(v0 + 40) = v50;
  *(v0 + 48) = v45;
  *(v0 + 56) = v44;
  *(v0 + 64) = v42;
  *(v0 + 72) = v43;
  *(v0 + 80) = 1;
  v53 = *(v51 + 256);
  v52 = *(v51 + 264);

  v54 = v53(v0 + 16);
  *(v0 + 88) = v54;
  type metadata accessor for WorkflowRunnerFlow(0);
  OUTLINED_FUNCTION_10_1();
  lazy protocol witness table accessor for type Input and conformance Input(v55, 255, v56);
  OUTLINED_FUNCTION_20_1();
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_6_0();

  return v57();
}

uint64_t AutoShortcutFlow.executeAppShortcut(invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[25];
  v15 = v14[26];
  v17 = v14[14];
  v18 = v17[30];
  v19 = v17[31];
  __swift_project_boxed_opaque_existential_1(v17 + 27, v18);
  v20 = v17[5];
  v21 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v20);
  OUTLINED_FUNCTION_37(v21);
  v23 = v22(v20, v21);
  v25 = v24;
  v26 = [v16 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v14[27] = (*(v19 + 8))(v23, v25, v27, v29, v18, v19);
  if (v15)
  {
    v30 = v14[25];

    v32 = v14[20];
    v31 = v14[21];
    v33 = v14[19];
    v34 = v14[17];

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_1();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v44 = v14[14];

    v45 = v44[5];
    v46 = v44[6];
    OUTLINED_FUNCTION_47(v44 + 2);
    v47 = *(v46 + 16);
    OUTLINED_FUNCTION_16_1();
    v60 = v48 + *v48;
    v50 = *(v49 + 4);
    v51 = swift_task_alloc();
    v14[28] = v51;
    *v51 = v14;
    OUTLINED_FUNCTION_38(v51);
    OUTLINED_FUNCTION_6_1();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, v46 + 16, v60, a11, a12, a13, a14);
  }
}

uint64_t AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return _swift_task_switch(AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:), 0, 0);
}

uint64_t AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[13];
  v16 = v15[10];
  v17 = v15[11];
  OUTLINED_FUNCTION_47(v15 + 7);
  v14[15] = v15[5];
  v14[16] = v15[6];
  v14[17] = v15[1];
  v14[18] = v15[2];
  v14[19] = v15[3];
  v14[20] = v15[4];
  v18 = *(v17 + 32);
  OUTLINED_FUNCTION_16_1();
  v34 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v14[21] = v22;
  *v22 = v14;
  v22[1] = AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:);
  OUTLINED_FUNCTION_6_1();

  return v31(v23, v24, v25, v26, v27, v28, v29, v30, a9, v17 + 32, v34, a12, a13, a14);
}

uint64_t AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v1;
  *(v2 + 176) = v6;
  *(v2 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = *(v14 + 176);
  v15 = *(v14 + 184);
  v17 = *(v14 + 112);
  v18 = v17[30];
  v19 = v17[31];
  __swift_project_boxed_opaque_existential_1(v17 + 27, v18);
  v20 = v17[5];
  v21 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v20);
  OUTLINED_FUNCTION_37(v21);
  v23 = v22(v20, v21);
  v25 = v24;
  v26 = [v16 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = (*(v19 + 8))(v23, v25, v27, v29, v18, v19);
  v31 = *(v14 + 176);
  if (v15)
  {

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v32 = *(v14 + 160);
    v33 = *(v14 + 144);
    a9 = *(v14 + 136);
    v58 = *(v14 + 152);
    v34 = *(v14 + 120);
    v35 = *(v14 + 128);
    v36 = *(v14 + 112);
    v37 = v30;

    *(v14 + 16) = v34;
    *(v14 + 24) = v35;
    *(v14 + 32) = a9;
    *(v14 + 40) = v33;
    *(v14 + 48) = v58;
    *(v14 + 56) = v32;
    a10 = v37;
    *(v14 + 64) = v37;
    *(v14 + 72) = v31;
    *(v14 + 80) = 2;
    v39 = *(v36 + 256);
    v38 = *(v36 + 264);

    v40 = v39(v14 + 16);
    v41 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed) init];
    if (v41)
    {
      v42 = v41;
      outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed.appShortcutId.setter(*(v14 + 136), *(v14 + 144), v41);
      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedC_Tt1g5(v42, 0);
    }

    v43 = *(v14 + 176);
    v44 = *(v14 + 144);
    v45 = *(v14 + 128);
    v46 = *(v14 + 96);
    *(v14 + 88) = v40;
    type metadata accessor for WorkflowRunnerFlow(0);
    OUTLINED_FUNCTION_10_1();
    lazy protocol witness table accessor for type Input and conformance Input(v47, 255, v48);
    static ExecuteResponse.complete<A>(next:)();

    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_6_1();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t AutoShortcutFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[125] = v0;
  v1[124] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[126] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for AceOutput();
  v1[127] = v6;
  v7 = *(v6 - 8);
  OUTLINED_FUNCTION_16_1();
  v1[128] = v8;
  v10 = *(v9 + 64);
  v1[129] = OUTLINED_FUNCTION_28();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 64);
  v1[130] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for TemplatingResult();
  v1[131] = v14;
  v15 = *(v14 - 8);
  OUTLINED_FUNCTION_16_1();
  v1[132] = v16;
  v18 = *(v17 + 64);
  v1[133] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for FlowUnhandledReason();
  v1[134] = v19;
  v20 = *(v19 - 8);
  OUTLINED_FUNCTION_16_1();
  v1[135] = v21;
  v23 = *(v22 + 64);
  v1[136] = OUTLINED_FUNCTION_28();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMd, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMR);
  OUTLINED_FUNCTION_14(v24);
  v26 = *(v25 + 64);
  v1[137] = OUTLINED_FUNCTION_28();
  v27 = type metadata accessor for AutoShortcutInvocation();
  v1[138] = v27;
  OUTLINED_FUNCTION_14(v27);
  v29 = *(v28 + 64);
  v1[139] = OUTLINED_FUNCTION_28();
  v30 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v30);
  v32 = *(v31 + 64);
  v1[140] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v33, v34, v35);
}

{
  v1 = *(v0 + 1000);
  switch(*(v1 + 272))
  {
    case 1:
      goto LABEL_3;
    case 2:
      v11 = *(v0 + 1104);
      v12 = *(v0 + 1096);
      outlined init with copy of DeviceState(v1 + 16, v0 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin19AppShortcutInvoking_pMd, &_s18SiriLinkFlowPlugin19AppShortcutInvoking_pMR);
      if (swift_dynamicCast())
      {
        v13 = *(v0 + 1112);
        v14 = *(v0 + 1096);
        __swift_storeEnumTagSinglePayload(v14, 0, 1, *(v0 + 1104));
        outlined init with take of AutoShortcutInvocation(v14, v13, type metadata accessor for AutoShortcutInvocation);
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        *(v0 + 1128) = v15;
        *v15 = v16;
        v15[1] = AutoShortcutFlow.execute();
        v17 = *(v0 + 1112);
        v18 = *(v0 + 1000);
        v19 = *(v0 + 992);
        OUTLINED_FUNCTION_27_0();

        return AutoShortcutFlow.executeAppShortcut(invocation:)(v20, v21);
      }

      else
      {
        v27 = *(v0 + 1104);
        v28 = *(v0 + 1096);
        v29 = OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v29, v30, 1, v31);
        outlined destroy of Any?(v28, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMd, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMR);
        outlined init with copy of DeviceState(v1 + 16, v0 + 248);
        if (!swift_dynamicCast())
        {
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
          outlined destroy of Any?(v0 + 16, &_s18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationVSgMd, &_s18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationVSgMR);
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, static Logger.voiceCommands);
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_0, v40, v41, "Unsupported invocation type", v42, 2u);
            OUTLINED_FUNCTION_15_0();
          }

          v43 = *(v0 + 1088);
          v44 = *(v0 + 1080);
          v45 = *(v0 + 1072);
          v46 = *(v0 + 992);

          (*(v44 + 104))(v43, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v45);
          static ExecuteResponse.unhandled(reason:isComplete:)();
          (*(v44 + 8))(v43, v45);
LABEL_9:
          OUTLINED_FUNCTION_0_0();

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_27_0();

          __asm { BRAA            X1, X16 }
        }

        memcpy((v0 + 112), (v0 + 16), 0x60uLL);
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        *(v0 + 1144) = v32;
        *v32 = v33;
        v32[1] = AutoShortcutFlow.execute();
        v34 = *(v0 + 1000);
        v35 = *(v0 + 992);
        OUTLINED_FUNCTION_27_0();

        return AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)(v36, v37);
      }

    case 3:
      v24 = *(v0 + 992);
      static ExecuteResponse.complete()();
      goto LABEL_9;
    default:
      *(v1 + 272) = 1;
      AutoShortcutFlow.state.didset();
      v1 = *(v0 + 1000);
LABEL_3:
      v2 = *(v0 + 1120);
      v47 = *(v0 + 992);
      outlined init with copy of DeviceState(v1 + 16, v0 + 648);
      outlined init with copy of DeviceState(v1 + 56, v0 + 688);
      outlined init with copy of DeviceState(v1 + 176, v0 + 728);
      outlined init with copy of DeviceState(v1 + 136, v0 + 768);
      outlined init with copy of DeviceState(v1 + 96, v0 + 808);
      v3 = type metadata accessor for UserDefaultsWrapper();
      OUTLINED_FUNCTION_32();
      swift_allocObject();
      v4 = UserDefaultsWrapper.init()();
      type metadata accessor for AutoShortcutFirstRunFlow();
      v5 = swift_allocObject();
      *(v0 + 872) = v3;
      *(v0 + 880) = &protocol witness table for UserDefaultsWrapper;
      *(v0 + 848) = v4;
      outlined init with copy of DeviceState(v0 + 648, v5 + 16);
      outlined init with copy of DeviceState(v0 + 688, v5 + 56);
      outlined init with copy of DeviceState(v0 + 728, v5 + 232);
      outlined init with copy of DeviceState(v0 + 808, v5 + 96);
      outlined init with copy of DeviceState(v0 + 768, v5 + 136);
      type metadata accessor for WorkflowNLContextProvider();
      *(v5 + 184) = swift_allocObject();
      outlined init with copy of DeviceState(v0 + 808, v0 + 888);
      type metadata accessor for AutoShortcutCATs();

      static CATOption.defaultMode.getter();
      v6 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for AutoShortcutCATsSimple();
      static CATOption.defaultMode.getter();
      v7 = CATWrapperSimple.__allocating_init(options:globals:)();
      v8 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
      static CATOption.defaultMode.getter();
      v9 = CATWrapper.__allocating_init(options:globals:)();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 728));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 688));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
      type metadata accessor for AutoShortcutDialogTemplating();
      v10 = swift_allocObject();
      *(v0 + 952) = v8;
      *(v0 + 960) = &protocol witness table for RunLinkActionCATPatternsExecutor;

      *(v0 + 928) = v9;
      outlined init with take of AceServiceInvokerAsync((v0 + 888), v10 + 16);
      *(v10 + 56) = v6;
      *(v10 + 64) = v7;
      outlined init with take of AceServiceInvokerAsync((v0 + 928), v10 + 72);
      *(v5 + 176) = v10;
      outlined init with take of AceServiceInvokerAsync((v0 + 848), v5 + 192);
      *(v5 + 272) = 0x80;
      *(v0 + 984) = v5;
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow, 255, type metadata accessor for AutoShortcutFirstRunFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_9;
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1128);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 1136) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1144);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 1152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v2 + 1176);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined init with take of AceServiceInvokerAsync((v0 + 568), v0 + 528);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  OUTLINED_FUNCTION_47((v0 + 608));
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 1192) = v4;
  *v4 = v5;
  v4[1] = AutoShortcutFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 528, v1, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 1192);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = v4[152];
  v6 = v4[151];
  v7 = v4[150];
  v8 = v4[130];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v11 + 1224) = v0;

  outlined destroy of Any?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  static Device.current.getter();
  static Device.current.getter();
  v6 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  *(v0 + 400) = 0;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v0 + 368, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Any?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 288));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v8 = *(v0 + 440);
  __swift_project_boxed_opaque_existential_1((v0 + 408), *(v0 + 432));
  *(v0 + 472) = v4;
  *(v0 + 480) = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 448));
  (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
  v10 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 1232) = v11;
  *v11 = v12;
  v11[1] = AutoShortcutFlow.execute();
  OUTLINED_FUNCTION_27_0();

  return dispatch thunk of OutputPublisherAsync.publish(output:)();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 1232);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 448));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_22_1();

  v6 = *(v5 + 8);
  v7 = OUTLINED_FUNCTION_20_1();
  v8(v7);
  (*(v4 + 8))(v1, v0);
  v9 = *(v2 + 968);

  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  return _swift_unexpectedError(*(v0 + 1224), "SiriLinkFlowPlugin/AutoShortcutFlow.swift", 41, 1, 157);
}

{
  OUTLINED_FUNCTION_14_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 448));
  OUTLINED_FUNCTION_22_1();

  v6 = *(v5 + 8);
  v7 = OUTLINED_FUNCTION_20_1();
  v8(v7);
  (*(v4 + 8))(v1, v0);
  v9 = *(v2 + 968);

  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t AutoShortcutFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  outlined destroy of AutoShortcutInvocation(*(v10 + 1112));
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  outlined destroy of AppShortcutGeneralizedInvocation(v10 + 112);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  *(v10 + 600) = 0;
  *(v10 + 568) = 0u;
  *(v10 + 584) = 0u;
  outlined destroy of Any?(v10 + 568, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  v11 = *(v10 + 1168);
  v12 = *(v10 + 1160);
  v13 = *(v10 + 992);
  static ExecuteResponse.complete()();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));
  OUTLINED_FUNCTION_32();
  swift_deallocClassInstance();
  v14 = *(v10 + 968);

  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 66);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 76);
  v11 = v10[146];
  v12 = v10[145];
  v13 = v10[124];
  static ExecuteResponse.complete()();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));
  OUTLINED_FUNCTION_32();
  swift_deallocClassInstance();
  v14 = v10[121];

  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void closure #1 in AutoShortcutFlow.execute()(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  *(a2 + 272) = v2;
  AutoShortcutFlow.state.didset();
}

uint64_t *AutoShortcutFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  v1 = v0[33];

  return v0;
}

uint64_t AutoShortcutFlow.__deallocating_deinit()
{
  AutoShortcutFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AutoShortcutFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance AutoShortcutFlow()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return AutoShortcutFlow.execute()();
}

uint64_t specialized AutoShortcutFlow.__allocating_init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a8;
  v25 = a7;
  v23 = a5;
  v24 = a6;
  v16 = *(a11 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(a10);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v16 + 16))(v19, a1, a11);
  v21 = specialized AutoShortcutFlow.init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)(v19, a2, a3, a4, v23, v24, v25, v26, a9, v20, a11, a12);
  (*(v16 + 8))(a1, a11);
  return v21;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t specialized AutoShortcutFlow.init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a10 + 40) = a11;
  *(a10 + 48) = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a10 + 16));
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a1, a11);
  outlined init with take of AceServiceInvokerAsync(a2, a10 + 56);
  outlined init with take of AceServiceInvokerAsync(a3, a10 + 136);
  outlined init with take of AceServiceInvokerAsync(a4, a10 + 176);
  outlined init with take of AceServiceInvokerAsync(a5, a10 + 216);
  outlined init with take of AceServiceInvokerAsync(a6, a10 + 96);
  *(a10 + 272) = a7;
  *(a10 + 256) = a8;
  *(a10 + 264) = a9;
  return a10;
}

uint64_t outlined destroy of AutoShortcutInvocation(uint64_t a1)
{
  v2 = type metadata accessor for AutoShortcutInvocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutFlow.State and conformance AutoShortcutFlow.State()
{
  result = lazy protocol witness table cache variable for type AutoShortcutFlow.State and conformance AutoShortcutFlow.State;
  if (!lazy protocol witness table cache variable for type AutoShortcutFlow.State and conformance AutoShortcutFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutFlow.State and conformance AutoShortcutFlow.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x14128);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for NSError(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t outlined init with take of AutoShortcutInvocation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[133];
  v7 = v0[130];
  v8 = v0[129];
  v9 = v0[126];
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1)
{
  *(a1 + 8) = AutoShortcutFlow.execute();
  result = *(v1 + 1064);
  v3 = *(v1 + 1040);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_0()
{
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  v1 = v0[145];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[127];
  v8 = v0[124];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  return static ExecuteResponse.complete()();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{
  *(v1 + 1200) = a1;
  v3 = v2[15];
  v4 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v3);

  return DeviceState.asSiriKitDeviceState()(v3, v4);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_39()
{
  v3 = v1[136];
  v4 = v1[135];
  v5 = v1[134];
  v6 = v1[124];
}

void OUTLINED_FUNCTION_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_41()
{
}

uint64_t OUTLINED_FUNCTION_43()
{
  v2 = v0[140];
  v3 = v0[130];
  v4 = v0[125];

  return type metadata accessor for RunVoiceCommandCATs();
}

uint64_t OUTLINED_FUNCTION_44()
{
}

void OUTLINED_FUNCTION_46(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_slowAlloc();
}

BOOL EncoreConstants.IntentIdentifier.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EncoreConstants.IntentIdentifier.init(rawValue:), v2);

  return v3 != 0;
}

unint64_t lazy protocol witness table accessor for type EncoreConstants.IntentIdentifier and conformance EncoreConstants.IntentIdentifier()
{
  result = lazy protocol witness table cache variable for type EncoreConstants.IntentIdentifier and conformance EncoreConstants.IntentIdentifier;
  if (!lazy protocol witness table cache variable for type EncoreConstants.IntentIdentifier and conformance EncoreConstants.IntentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncoreConstants.IntentIdentifier and conformance EncoreConstants.IntentIdentifier);
  }

  return result;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance EncoreConstants.IntentIdentifier@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = EncoreConstants.IntentIdentifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EncoreConstants.IntentIdentifier(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x148A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.__allocating_init(request:appBundleId:actionMetadata:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v14 = swift_allocObject();
  ShortcutsLinkPromptForMultiChoiceFlowStrategy.init(request:appBundleId:actionMetadata:deviceState:serviceInvoker:outputPublisher:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *ShortcutsLinkPromptForMultiChoiceFlowStrategy.init(request:appBundleId:actionMetadata:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[15] = a4;
  outlined init with take of AceServiceInvokerAsync(a5, (v7 + 5));
  outlined init with take of AceServiceInvokerAsync(a6, (v7 + 10));
  outlined init with take of AceServiceInvokerAsync(a7, (v7 + 16));
  return v7;
}

void ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = type metadata accessor for Parse.DirectInvocation();
  v2 = OUTLINED_FUNCTION_7_1(v1);
  v34 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for Parse();
  v10 = OUTLINED_FUNCTION_7_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v21);
  v23 = &v33 - v22;
  v24 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  Input.parse.getter();
  v26 = (*(v12 + 88))(v17, v9);
  if (v26 == enum case for Parse.NLv3IntentOnly(_:))
  {
    static ActionForInput.handle()();
    v27 = *(v12 + 8);
LABEL_17:
    v27(v17, v9);
    goto LABEL_18;
  }

  if (v26 != enum case for Parse.directInvocation(_:))
  {
    v32 = (v12 + 8);
    if (v26 == enum case for Parse.uso(_:))
    {
      static ActionForInput.handle()();
    }

    else
    {
      static ActionForInput.ignore()();
    }

    v27 = *v32;
    goto LABEL_17;
  }

  (*(v12 + 96))(v17, v9);
  v28 = v34;
  (*(v34 + 32))(v8, v17, v1);
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000040 && 0x800000000022FA70 == v29)
  {

    goto LABEL_13;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
LABEL_13:
    static ActionForInput.handle()();
    goto LABEL_14;
  }

  static ActionForInput.ignore()();
LABEL_14:
  (*(v28 + 8))(v8, v1);
LABEL_18:
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_6_2();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy submitting empty output to clear screen and prevent double-taps");
    OUTLINED_FUNCTION_15_1();
  }

  v7 = v0[12];

  outlined init with copy of DeviceState(v7 + 128, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  OUTLINED_FUNCTION_47(v0 + 2);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  v10 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v11;
  *v11 = v12;
  v11[1] = closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  if (v0)
  {
    v9 = closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:);
  }

  else
  {
    v9 = closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[15];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy failed to submit empty output to clear screen", v5, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t sub_15138()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_2(v6);
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:)(v2, v3, v4, v5);
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_28_0(v13, v21);
  v14 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_21_2(v14);
    (*(v16 + 8))(v0, v14);
  }

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_26_1();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_26_1();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  swift_task_create();

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_sScPSgMd, &_sScPSgMR);

LABEL_9:
  OUTLINED_FUNCTION_42();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_28_0(v13, v21);
  v14 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_21_2(v14);
    (*(v16 + 8))(v0, v14);
  }

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_26_1();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_26_1();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  swift_task_create();

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_sScPSgMd, &_sScPSgMR);

LABEL_9:
  OUTLINED_FUNCTION_42();
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for USOParse();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for Parse.DirectInvocation();
  v1[7] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for NLIntent();
  v1[10] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Parse();
  v1[13] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for Input();
  v1[16] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[17] = v20;
  v22 = *(v21 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v23 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v23, v24, v25);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = v0 + 15;
  v1 = v0[15];
  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[2];
  Input.parse.getter();
  v6 = (*(v3 + 88))(v1, v4);
  if (v6 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v2 = v0 + 12;
    v7 = v0[12];
    v8 = v0[14];
    v9 = v0[15];
    v10 = v0[13];
    OUTLINED_FUNCTION_32_0();
    v11 = v0[3];
    (*(v12 + 96))(v9);
    v13 = OUTLINED_FUNCTION_30_0();
    v14(v13);
    v15 = ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(nlIntent:)(v7);
LABEL_5:
    v24 = v15;
LABEL_6:
    (*(v0[14] + 8))(*v2, v0[13]);
    goto LABEL_7;
  }

  if (v6 == enum case for Parse.directInvocation(_:))
  {
    v2 = v0 + 9;
    v16 = v0[9];
    v17 = v0[14];
    v18 = v0[15];
    v19 = v0[13];
    OUTLINED_FUNCTION_32_0();
    v20 = v0[3];
    (*(v21 + 96))(v18);
    v22 = OUTLINED_FUNCTION_30_0();
    v23(v22);
    v15 = ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(directInvocation:)(v16);
    goto LABEL_5;
  }

  if (v6 != enum case for Parse.uso(_:))
  {
    v37 = v0[19];
    v38 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v39 = OUTLINED_FUNCTION_6_2();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_18_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v41, v42, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy unexpected input type");
      OUTLINED_FUNCTION_15_1();
    }

    v24 = 0;
    goto LABEL_6;
  }

  v32 = v0[15];
  v34 = v0[5];
  v33 = v0[6];
  v35 = v0[3];
  v36 = v0[4];
  (*(v0[14] + 96))(v32, v0[13]);
  (*(v34 + 32))(v33, v32, v36);
  v24 = ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(parse:)(v33);
  (*(v34 + 8))(v33, v36);
LABEL_7:
  v25 = v0[18];
  v26 = v0[15];
  v27 = v0[12];
  v28 = v0[9];
  v29 = v0[6];

  v30 = v0[1];

  return v30(v24);
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.parseValueResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v24 = v20[17];
  v23 = v20[18];
  v25 = v20[16];
  v26 = v20[2];
  v27 = type metadata accessor for Logger();
  v20[19] = __swift_project_value_buffer(v27, static Logger.voiceCommands);
  (*(v24 + 16))(v23, v26, v25);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v20[17];
  v31 = v20[18];
  v33 = v20[16];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a9 = v35;
    *v34 = 136315138;
    v36 = Input.description.getter();
    v38 = v37;
    (*(v32 + 8))(v31, v33);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &a9);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v28, v29, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy: received %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

  v40 = [*(v20[3] + 120) systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v20[20] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v20[21] = v41;
  *v41 = v42;
  v41[1] = ShortcutsLinkPromptForMultiChoiceFlowStrategy.parseValueResponse(input:);
  OUTLINED_FUNCTION_27_0();

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v43, v44, v45);
}

id *ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(nlIntent:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VoiceCommandsNLIntent(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NLIntent();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = static InputUtils.getText(from:)();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v37 = v7;
    v2 = [v2[2] options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = specialized Array.count.getter(v13);
    v15 = 0;
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v39 = v13 & 0xC000000000000001;
    for (i = &off_2B4000; ; i = v7)
    {
      if (v14 == v15)
      {

        v30 = v37;
LABEL_40:
        outlined destroy of VoiceCommandsNLIntent(v30);
        return 0;
      }

      if (v39)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v38 + 16))
        {
          goto LABEL_44;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      v2 = v17;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v17 i[307]]);
      if (v19)
      {
        if (v18 == v11 && v19 == v12)
        {
LABEL_25:

LABEL_27:

          outlined destroy of VoiceCommandsNLIntent(v37);
          return v2;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_26;
        }
      }

      v7 = i;
      v22 = [v2 i[307]];
      v23 = [v22 key];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v24 == v11 && v12 == v26)
      {
        goto LABEL_25;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
LABEL_26:

        goto LABEL_27;
      }

      ++v15;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (one-time initialization token for voiceCommandConfirmationNode != -1)
  {
LABEL_47:
    swift_once();
  }

  lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  switch(v40)
  {
    case 2:

      goto LABEL_30;
    case 3:
      goto LABEL_24;
    default:
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
LABEL_24:
        v30 = v7;
        goto LABEL_40;
      }

LABEL_30:
      v31 = v7;
      v2 = [v2[2] options];
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = specialized Array.count.getter(v32);
      v34 = 0;
      v7 = (v32 & 0xC000000000000001);
      break;
  }

  while (1)
  {
    if (v33 == v34)
    {

      v30 = v31;
      goto LABEL_40;
    }

    if (v7)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v34 >= *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_46;
      }

      v35 = *(v32 + 8 * v34 + 32);
    }

    v2 = v35;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_45;
    }

    if ([v35 style] == &dword_0 + 1)
    {
      break;
    }

    ++v34;
  }

  outlined destroy of VoiceCommandsNLIntent(v31);

  return v2;
}

void *ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(directInvocation:)(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UUID();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Parse.DirectInvocation.userData.getter();
  if (!v13)
  {
    v40 = 0u;
    v41 = 0u;
    goto LABEL_18;
  }

  specialized Dictionary.subscript.getter(0x65756C6176, 0xE500000000000000, v13, &v40);

  if (!*(&v41 + 1))
  {
LABEL_18:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(&v40, &_sypSgMd, &_sypSgMR);
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v8 = v38;
    v4 = v39;
    a1 = [*(v2 + 16) options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = specialized Array.count.getter(v14);
    v16 = 0;
    v35 = v14 & 0xFFFFFFFFFFFFFF8;
    v36 = v14 & 0xC000000000000001;
    v17 = (v9 + 8);
    while (1)
    {
      if (v15 == v16)
      {

        return 0;
      }

      if (v36)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v35 + 16))
        {
          goto LABEL_32;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v18 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = UUID.uuidString.getter();
      a1 = v22;
      (*v17)(v12, v37);
      if (v21 == v8 && a1 == v4)
      {

LABEL_30:

        return v19;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v5)
      {

        goto LABEL_30;
      }

      ++v16;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_19:
  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_33:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.voiceCommands);
  (*(v5 + 16))(v8, a1, v4);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v40 = v28;
    *v27 = 136315138;
    if (!Parse.DirectInvocation.userData.getter())
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v29 = Dictionary.description.getter();
    v31 = v30;

    (*(v5 + 8))(v8, v4);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v40);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_0, v25, v26, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy could not get value from direct invocation. %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

void *ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(parse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  v7 = &v77 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v77 - v17;
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v20 = OUTLINED_FUNCTION_7_1(v19);
  v83 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3();
  v26 = (v25 - v24);
  v81 = a1;
  USOParse.userParse.getter();
  v27 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v28 = *(v11 + 8);
  v28(v18, v8);
  specialized Collection.first.getter(v27, &type metadata accessor for Siri_Nlu_External_UserDialogAct, v7);

  v29 = &unk_2B7000;
  if (__swift_getEnumTagSinglePayload(v7, 1, v19) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for voiceCommands == -1)
    {
LABEL_3:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.voiceCommands);
      v31 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v32 = OUTLINED_FUNCTION_6_2();
      if (os_log_type_enabled(v32, v33))
      {
        OUTLINED_FUNCTION_18_1();
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_0, v31, v29, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy: missing UDA", v34, 2u);
        OUTLINED_FUNCTION_15_1();
      }

      return 0;
    }

LABEL_57:
    OUTLINED_FUNCTION_0_1();
    swift_once();
    goto LABEL_3;
  }

  v36 = *(v83 + 32);
  v79 = v26;
  v77 = v19;
  v36(v26, v7, v19);
  USOParse.userParse.getter();
  v37 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v28(v16, v8);
  v38 = *(v37 + 16);

  if (v38 >= 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.voiceCommands);
    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_6_2();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_18_1();
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v40, v37, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy: more than one task found in UDA", v43, 2u);
      OUTLINED_FUNCTION_15_1();
    }
  }

  v35 = v79;
  v44 = v82;
  v45 = Siri_Nlu_External_UserDialogAct.stringValue.getter();
  if (v44)
  {
    OUTLINED_FUNCTION_34_0();
    v47(v35, v77);
    return v35;
  }

  v49 = v46;
  if (v46)
  {
    v50 = v45;
    v82 = 0;
    v29 = [*(v80 + 16) options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = specialized Array.count.getter(v51);
    v53 = 0;
    v80 = v51 & 0xC000000000000001;
    v81 = v52;
    v78 = v51 & 0xFFFFFFFFFFFFFF8;
    for (i = &off_2B4000; ; i = v60)
    {
      if (v81 == v53)
      {

        v35 = 0;
        goto LABEL_50;
      }

      if (v80)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v53 >= *(v78 + 16))
        {
          goto LABEL_54;
        }

        v55 = *(v51 + 8 * v53 + 32);
      }

      v35 = v55;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      v56 = outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v55 i[307]]);
      if (v57)
      {
        if (v56 == v50 && v57 == v49)
        {
LABEL_45:

          goto LABEL_47;
        }

        v59 = OUTLINED_FUNCTION_39_0();

        if (v59)
        {
          goto LABEL_46;
        }
      }

      v60 = i;
      v61 = [v35 i[307]];
      v62 = [v61 key];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v64;

      if (v63 == v50 && v49 == v29)
      {
        goto LABEL_45;
      }

      v66 = OUTLINED_FUNCTION_39_0();

      if (v66)
      {
LABEL_46:

LABEL_47:

LABEL_50:
        OUTLINED_FUNCTION_34_0();
        v75(v79, v77);
        return v35;
      }

      ++v53;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
  {
    v67 = [*(v80 + 16) options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
    v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = specialized Array.count.getter(v68);
    v70 = 0;
    v29 = (v68 & 0xC000000000000001);
    v71 = v77;
    while (1)
    {
      v72 = v83;
      if (v69 == v70)
      {

        (*(v72 + 8))(v79, v71);
        return 0;
      }

      if (v29)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v70 >= *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_56;
        }

        v73 = *(v68 + 8 * v70 + 32);
      }

      v35 = v73;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_55;
      }

      if ([v73 style] == &dword_0 + 1)
      {
        break;
      }

      ++v70;
    }

    OUTLINED_FUNCTION_34_0();
    v76(v79, v71);
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    v74(v35, v77);
    return 0;
  }

  return v35;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Collection.first.getter(a1, &type metadata accessor for Siri_Nlu_External_UserDialogAct, a2);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for Location, a2);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for ContactHandle, a2);
}

{
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  v5 = v4;
  if (v3)
  {
    OUTLINED_FUNCTION_21_2(v4);
    v7 = *(v6 + 16);
    v8 = *(v6 + 80);
    v9 = OUTLINED_FUNCTION_25_1();
    v10(v9);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v5);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for Contact, a2);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for TemplatingSection, a2);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for UsoIdentifier, a2);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a2(0);
  v6 = v5;
  if (v4)
  {
    OUTLINED_FUNCTION_21_2(v5);
    v8 = *(v7 + 16);
    v9 = *(v7 + 80);
    v10 = OUTLINED_FUNCTION_25_1();
    v11(v10);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v12, 1, v6);
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of CustomIntentDisambiguationItem(a1 + 32, a2);
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of Any(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[9] = *v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[8];
  v2 = v1[2];
  v3 = [v2 options];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
  v0[11] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of DeviceState((v1 + 5), (v0 + 2));
  v4 = v1[3];
  v5 = v1[4];
  v0[12] = [v2 dialog];
  v6 = [v2 viewSnippet];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 viewData];

    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v0[13] = v9;
  v0[14] = v11;
  v13 = v0[9];
  v12 = v0[10];
  type metadata accessor for RunLinkActionCATsSimple();
  static CATOption.defaultMode.getter();
  v0[15] = CATWrapperSimple.__allocating_init(options:globals:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[16] = v14;
  *v14 = v15;
  v14[1] = ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForValue();
  v16 = v0[7];
  OUTLINED_FUNCTION_27_0();

  return static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:)();
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = v5[13];
  v10 = v5[12];
  v11 = v5[11];
  v12 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v13 = v12;
  v3[17] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);

  outlined consume of Data?(v9, v8);

  if (v0)
  {

    return _swift_task_switch(ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForValue(), 0, 0);
  }

  else
  {
    v14 = v3[10];

    v15 = *(v12 + 8);

    return v15();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[38] = v32;
  v1[39] = v0;
  v1[36] = v2;
  v1[37] = v3;
  v1[34] = v4;
  v1[35] = v5;
  v1[32] = v6;
  v1[33] = v7;
  v1[30] = v8;
  v1[31] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  v1[40] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64);
  v1[41] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for OutputGenerationManifest();
  v1[42] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[43] = v17;
  v19 = *(v18 + 64);
  v1[44] = OUTLINED_FUNCTION_28();
  v20 = type metadata accessor for SpeakableString();
  v1[45] = v20;
  OUTLINED_FUNCTION_5_0(v20);
  v1[46] = v21;
  v23 = *(v22 + 64);
  v1[47] = OUTLINED_FUNCTION_28();
  v24 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v24);
  v26 = *(v25 + 64);
  v1[48] = OUTLINED_FUNCTION_28();
  v27 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v27, v28, v29);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v5[52] = v0;

  if (v0)
  {
    v11 = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:);
  }

  else
  {
    v12 = v5[50];

    v5[53] = v3;
    v11 = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:);
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  v1 = v0[53];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[31];
  type metadata accessor for ShortcutsLinkNLContextProvider();
  v0[54] = swift_initStackObject();
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  ShortcutsLinkNLContextProvider.makeContextForMakeChoice(options:)(v5);
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  OutputGenerationManifest.nlContextUpdate.setter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  v0[55] = v8;
  *(v8 + 16) = xmmword_216010;
  *(v8 + 32) = v1;
  v9 = type metadata accessor for ResponseFactory();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v1;
  v13 = ResponseFactory.init()();
  v0[26] = v9;
  v0[27] = &protocol witness table for ResponseFactory;
  v0[23] = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[56] = v14;
  *v14 = v15;
  v14[1] = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:);
  v16 = v0[44];
  v17 = v0[39];
  v18 = v0[36];
  v19 = v0[33];
  v20 = v0[34];
  v22 = v0[31];
  v21 = v0[32];
  v23 = v0[30];
  v26 = v0[37];

  return static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:)(v23, v8, v21, v16, v19, v20, v22, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 440);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 184));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];

  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_6_0();
  v9 = v0[52];

  return v8();
}

void static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_6_2();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy make prompt for multi choice item");
    OUTLINED_FUNCTION_15_1();
  }

  v7 = *(v0 + 384);
  v8 = *(v0 + 304);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);

  outlined init with copy of DeviceState(v10, v0 + 144);
  type metadata accessor for RunLinkActionCATs();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v0 + 392) = inited;
  inited[14] = v2;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v14;
  outlined init with take of AceServiceInvokerAsync((v0 + 144), (inited + 2));
  inited[7] = v11;
  inited[8] = v8;
  inited[9] = v12;
  inited[10] = v13;
  v16 = specialized Array.count.getter(v9);
  v17 = *(v0 + 304);
  if (v16)
  {

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v16 < 0)
    {
      __break(1u);
      return;
    }

    v40 = v0;
    v18 = 0;
    v19 = *(v0 + 368);
    v20 = *(v0 + 248);
    v21 = v20 & 0xC000000000000001;
    v41 = v20 + 32;
    v22 = v19 + 32;
    v23 = &off_2B4000;
    do
    {
      if (v21)
      {
        v24 = *(v0 + 248);
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v41 + 8 * v18);
      }

      v26 = v25;
      outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v25 v23[307]]);
      if (!v27)
      {
        v28 = [v26 v23[307]];
        v29 = v19;
        v30 = v22;
        v31 = v21;
        v32 = v16;
        v33 = [v28 key];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v32;
        v21 = v31;
        v22 = v30;
        v19 = v29;
        v0 = v40;
      }

      v34 = *(v0 + 376);
      SpeakableString.init(print:speak:)();

      v35 = *(&_swiftEmptyArrayStorage + 2);
      if (v35 >= *(&_swiftEmptyArrayStorage + 3) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v36 = *(v0 + 376);
      v37 = *(v0 + 360);
      ++v18;
      *(&_swiftEmptyArrayStorage + 2) = v35 + 1;
      (*(v19 + 32))(&_swiftEmptyArrayStorage + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v35, v36, v37);
      v23 = &off_2B4000;
    }

    while (v16 != v18);
  }

  else
  {
  }

  *(v0 + 400) = &_swiftEmptyArrayStorage;
  v38 = swift_task_alloc();
  *(v0 + 408) = v38;
  *v38 = v0;
  v38[1] = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:);
  v39 = *(v0 + 280);

  LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)();
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[53];
  v14 = v12[48];
  v15 = v12[49];
  v16 = v12[47];
  v18 = v12[43];
  v17 = v12[44];
  v20 = v12[41];
  v19 = v12[42];
  v21 = v12[40];
  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  (*(v18 + 8))(v17, v19);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = v10;
  v8[58] = v11;
  v8[55] = a7;
  v8[56] = a8;
  v8[53] = a5;
  v8[54] = a6;
  v8[51] = a3;
  v8[52] = a4;
  v8[49] = a1;
  v8[50] = a2;
  return _swift_task_switch(static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:), 0, 0);
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[51];
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_47(v13);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v16 = v12[58];
    v17 = v16[3];
    v18 = v16[4];
    OUTLINED_FUNCTION_47(v16);
    v19 = *(&async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[60] = v20;
    *v20 = v21;
    v20[1] = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:);
    v22 = v12[52];
    v23 = v12[49];
    v24 = v12[50];
    OUTLINED_FUNCTION_27_0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    v33 = v12[53];
    v34 = v12[54];
    v36 = v12[50];
    v35 = v12[51];
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v37 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v35, 2);
    v39 = v38;

    if (specialized Array.count.getter(v36))
    {
      v40 = v12[50];
      v41 = v40 & 0xC000000000000001;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v40 & 0xC000000000000001) == 0, v40);
      if (v41)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v12[50] + 32);
      }

      v43 = v42;
      v44 = DialogExecutionResult.firstDialogFullPrint()();
      countAndFlagsBits = v44.value._countAndFlagsBits;
      object = v44.value._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v47 = 0xE000000000000000;
    if (v39)
    {
      v47 = v39;
      v48 = v37;
    }

    else
    {
      v48 = 0;
    }

    v50 = v12[57];
    v49 = v12[58];
    v51 = v12[55];
    v52 = v12[56];
    v53 = v12[54];
    v12[24] = v12[53];
    v12[25] = v53;
    v12[26] = v48;
    v12[27] = v47;
    v12[28] = countAndFlagsBits;
    v12[29] = object;
    v12[30] = v52;
    v12[32] = 0;
    v12[33] = 0;
    v12[31] = v50;
    memcpy(v12 + 2, v12 + 24, 0x50uLL);
    v12[12] = v51;
    v54 = v49[3];
    v71 = v49[4];
    OUTLINED_FUNCTION_47(v49);
    v12[47] = type metadata accessor for WorkflowDataModels(0);
    v12[48] = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, type metadata accessor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 44);
    memcpy(boxed_opaque_existential_1, v12 + 2, 0x58uLL);
    swift_storeEnumTagMultiPayload();

    outlined copy of Data?(v52, v50);
    outlined init with copy of WorkflowDataModels.LinkActionModel((v12 + 24), (v12 + 34));

    outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel((v12 + 2), (v12 + 13));
    v56 = *(&async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[59] = v57;
    *v57 = v58;
    v57[1] = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:);
    v59 = v12[52];
    v60 = v12[49];
    v61 = v12[50];
    OUTLINED_FUNCTION_27_0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v62, v63, v64, v65, v66, v67, v68, v69, v71, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 352));
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.LinkMultiChoiceModel(v0 + 16);
  outlined destroy of WorkflowDataModels.LinkActionModel(v0 + 192);
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  return v0;
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkPromptForMultiChoiceFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy;

  return ShortcutsLinkPromptForMultiChoiceFlowStrategy.parseValueResponse(input:)();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForValue()();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, v7, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForValueFlowStrategyAsync.makeErrorResponse(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForValueFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin26DisambiguationItemProtocol_pGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin26DisambiguationItemProtocol_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin26DisambiguationItemProtocol_pMd, &_s18SiriLinkFlowPlugin26DisambiguationItemProtocol_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_Sd5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_Sd5valuetGMR);
      v11 = OUTLINED_FUNCTION_43_0();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_35_0(v12);
      if (a1)
      {
LABEL_12:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Sd5valuetMd, &_sSS3key_Sd5valuetMR);
    OUTLINED_FUNCTION_38_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_SS5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_SS5valuetGMR);
      v11 = OUTLINED_FUNCTION_43_0();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_35_0(v12);
      if (a1)
      {
LABEL_12:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_SS5valuetMd, &_sSi3key_SS5valuetMR);
    OUTLINED_FUNCTION_38_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDys11AnyHashableVypGGMd, &_ss23_ContiguousArrayStorageCySDys11AnyHashableVypGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVGGMd, &_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVGMd, &_sSay11SiriKitFlow11DisplayHintVGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_33_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 16);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = &_swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_41_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_40_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_11_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_27_1();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_2();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_5_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(v6(0) - 8);
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v4(v8 + v26, v15, v22 + v26);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_42();
}

{
  OUTLINED_FUNCTION_33_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 56);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_41_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter(void *a1)
{
  v2 = [a1 defaultValue];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  *v6 = *(v2 + 32);
  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t sub_1A2FC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_1(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_17()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_1(v1);

  return v4(v3);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}
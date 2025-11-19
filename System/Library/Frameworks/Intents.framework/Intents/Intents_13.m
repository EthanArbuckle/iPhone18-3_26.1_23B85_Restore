unint64_t INMediaDestinationTypeGetBackingType(unint64_t result)
{
  if (result >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INMediaDestinationTypeGetFacadeType(int a1, int a2)
{
  v2 = a2 == 1;
  if (a2 == 2)
  {
    v2 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INMediaDestinationTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"playlist";
  }

  if (a1 == 1)
  {
    return @"library";
  }

  else
  {
    return v1;
  }
}

uint64_t INMediaDestinationTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"library"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"playlist"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaDestinationTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"playlist";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"library";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

unint64_t INPlaybackQueueLocationGetBackingType(unint64_t result)
{
  if (result >= 4)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INPlaybackQueueLocationGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 3) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INPlaybackQueueLocationGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286878[a1 - 1];
  }
}

uint64_t INPlaybackQueueLocationWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"now"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"next"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"later"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPlaybackQueueLocationGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"later";
      goto LABEL_7;
    case 2:
      v4 = @"next";
      goto LABEL_7;
    case 1:
      v4 = @"now";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t INEventParticipantStatusGetBackingType(unint64_t a1)
{
  if (a1 < 8)
  {
    return (a1 + 1);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INEventParticipantStatusGetFacadeType(unsigned __int8 a1, int a2)
{
  if ((((a2 - 2) < 7) & a1) != 0)
  {
    return (a2 - 1);
  }

  else
  {
    return 0;
  }
}

__CFString *INEventParticipantStatusGetName(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286890[a1 - 1];
  }
}

uint64_t INEventParticipantStatusWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"pending"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"accepted"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"declined"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"tentative"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"delegated"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"completed"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"inProcess"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INEventParticipantStatusGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v5 = @"pending";
        break;
      case 2:
        v5 = @"accepted";
        break;
      case 3:
        v5 = @"declined";
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v5 = @"completed";
    }

    else
    {
      if (a1 != 7)
      {
        goto LABEL_17;
      }

      v5 = @"in process";
    }
  }

  else if (a1 == 4)
  {
    v5 = @"tentative";
  }

  else
  {
    v5 = @"delegated";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_17:

  return v4;
}

uint64_t _INPBMediaDestinationReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(_INPBString);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPlaylistName:v20];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setMediaDestinationType:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INVoiceCommandStepInfo *INIntentSlotValueTransformFromVoiceCommandStepInfo(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INVoiceCommandStepInfo alloc];
    v3 = [v1 applicationIdentifier];
    v4 = [v1 hasCategory];
    v5 = [v1 category];
    if (v4 && (v5 - 1) <= 0x14)
    {
      v6 = qword_18EE5F3F0[v5 - 1];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v1 name];

    v8 = [(INVoiceCommandStepInfo *)v2 initWithApplicationIdentifier:v3 category:v6 name:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBVoiceCommandStepInfo *INIntentSlotValueTransformToVoiceCommandStepInfo(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBVoiceCommandStepInfo);
    v3 = [v1 applicationIdentifier];
    [(_INPBVoiceCommandStepInfo *)v2 setApplicationIdentifier:v3];

    v4 = [v1 category] - 1;
    if (v4 > 0x13)
    {
      v5 = 0x7FFFFFFFLL;
    }

    else
    {
      v5 = dword_18EE5F3A0[v4];
    }

    [(_INPBVoiceCommandStepInfo *)v2 setCategory:v5];
    v6 = [v1 name];

    [(_INPBVoiceCommandStepInfo *)v2 setName:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromVoiceCommandStepInfos(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromVoiceCommandStepInfo(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToVoiceCommandStepInfos(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToVoiceCommandStepInfo(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBVoiceCommandStepInfoReadFrom(void *a1, void *a2)
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
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v22 = PBReaderReadString();
      [a1 setApplicationIdentifier:v22];
      goto LABEL_32;
    }

    if (v14 == 3)
    {
      v22 = PBReaderReadString();
      [a1 setName:v22];
LABEL_32:

      continue;
    }

    if (v14 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v25 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v25 & 0x7F) << v15;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_38;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_38:
      [a1 setCategory:v21];
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

uint64_t INMessageEffectTypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 0xD)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INMessageEffectTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 0xD) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INMessageEffectTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286988[a1 - 1];
  }
}

uint64_t INMessageEffectTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"happyBirthday"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"confetti"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"lasers"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"fireworks"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"shootingStar"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"invisibleInk"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"gentle"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"loud"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"impact"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"sparkles"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"heart"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"echo"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"spotlight"])
  {
    v2 = 13;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMessageEffectTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"happy birthday";
      goto LABEL_16;
    case 2:
      v4 = @"confetti";
      goto LABEL_16;
    case 3:
      v4 = @"lasers";
      goto LABEL_16;
    case 4:
      v4 = @"fireworks";
      goto LABEL_16;
    case 5:
      v4 = @"shooting star";
      goto LABEL_16;
    case 6:
      v4 = @"invisible ink";
      goto LABEL_16;
    case 7:
      v4 = @"gentle";
      goto LABEL_16;
    case 8:
      v4 = @"loud";
      goto LABEL_16;
    case 9:
      v4 = @"impact";
      goto LABEL_16;
    case 10:
      v4 = @"sparkles";
      goto LABEL_16;
    case 11:
      v4 = @"heart";
      goto LABEL_16;
    case 12:
      v4 = @"echo";
      goto LABEL_16;
    case 13:
      v4 = @"spotlight";
LABEL_16:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t _INPBHomeEntityResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBHomeEntity);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeEntityReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setEntity:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBHomeUserTaskResponse);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBHomeUserTaskResponseReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addTaskResponses:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBHomeUserTaskResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(_INPBHomeUserTask);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeUserTaskReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setUserTask:v20];
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setTaskOutcome:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBHomeUserTaskReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = objc_alloc_init(_INPBHomeAttributeValue);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeAttributeValueReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValue:v28];
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_46:
        [a1 setAttribute:v27];
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
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

LABEL_50:
        [a1 setTaskType:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INHomeUserTask *INIntentSlotValueTransformFromHomeUserTask(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INHomeUserTask alloc];
    v3 = [v1 hasTaskType];
    v4 = [v1 taskType];
    if (((v4 - 1 < 6) & v3) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 hasAttribute];
    v7 = [v1 attribute];
    if (((v7 < 0x42) & v6) != 0)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v1 value];

    v10 = INIntentSlotValueTransformFromHomeAttributeValue(v9);
    v11 = [(INHomeUserTask *)v2 initWithTaskType:v5 attribute:v8 value:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBHomeUserTask *INIntentSlotValueTransformToHomeUserTask(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBHomeUserTask);
    v3 = [v1 taskType] - 1;
    if (v3 < 6)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 0x7FFFFFFFLL;
    }

    [(_INPBHomeUserTask *)v2 setTaskType:v4];
    v5 = [v1 attribute] - 1;
    if (v5 >= 0x42)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = v5;
    }

    [(_INPBHomeUserTask *)v2 setAttribute:v6];
    v7 = [v1 value];

    v8 = INIntentSlotValueTransformToHomeAttributeValue(v7);
    [(_INPBHomeUserTask *)v2 setValue:v8];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeUserTasks(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromHomeUserTask(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToHomeUserTasks(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToHomeUserTask(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

INHomeEntityResponse *INIntentSlotValueTransformFromHomeEntityResponse(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INHomeEntityResponse alloc];
    v3 = [v1 entity];
    v4 = INIntentSlotValueTransformFromHomeEntity(v3);
    v5 = [v1 taskResponses];

    v6 = INIntentSlotValueTransformFromHomeUserTaskResponses(v5);
    v7 = [(INHomeEntityResponse *)v2 initWithEntity:v4 taskResponses:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBHomeEntityResponse *INIntentSlotValueTransformToHomeEntityResponse(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBHomeEntityResponse);
    v3 = [v1 entity];
    v4 = INIntentSlotValueTransformToHomeEntity(v3);
    [(_INPBHomeEntityResponse *)v2 setEntity:v4];

    v5 = [v1 taskResponses];

    v6 = INIntentSlotValueTransformToHomeUserTaskResponses(v5);
    [(_INPBHomeEntityResponse *)v2 setTaskResponses:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeEntityResponses(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromHomeEntityResponse(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToHomeEntityResponses(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToHomeEntityResponse(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

INHomeUserTaskResponse *INIntentSlotValueTransformFromHomeUserTaskResponse(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INHomeUserTaskResponse alloc];
    v3 = [v1 userTask];
    v4 = INIntentSlotValueTransformFromHomeUserTask(v3);
    v5 = [v1 hasTaskOutcome];
    v6 = [v1 taskOutcome];

    if (((v6 - 1 < 0x17) & v5) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(INHomeUserTaskResponse *)v2 initWithUserTask:v4 taskOutcome:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBHomeUserTaskResponse *INIntentSlotValueTransformToHomeUserTaskResponse(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBHomeUserTaskResponse);
    v3 = [v1 userTask];
    v4 = INIntentSlotValueTransformToHomeUserTask(v3);
    [(_INPBHomeUserTaskResponse *)v2 setUserTask:v4];

    v5 = [v1 taskOutcome];
    if ((v5 - 1) < 0x17)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    [(_INPBHomeUserTaskResponse *)v2 setTaskOutcome:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeUserTaskResponses(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromHomeUserTaskResponse(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToHomeUserTaskResponses(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToHomeUserTaskResponse(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t INHomeTaskOutcomeGetBackingType(uint64_t result)
{
  if ((result - 1) < 0x17)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INHomeTaskOutcomeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 0x17) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeTaskOutcomeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x16)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286CE8[a1 - 1];
  }
}

uint64_t INHomeTaskOutcomeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"success"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"unsupportedAttribute"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"readOnly"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"alreadyAtMaxValue"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"alreadyAtMinValue"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"unreachable"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"failure"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"setToMaxValue"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"setToMinValue"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"largerThanMaxValue"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"smallerThanMinValue"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"noRemoteAccess"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"noMatchingAttribute"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"bluetoothIsOff"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"wifiIsOff"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"bridgedAccessoryUnreachable"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"inProgress"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"sceneNotSetUp"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"securingFailure"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"bluetoothWakeup"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"unlockRequired"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"securedAccessDenied"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"calibrationInProgress"])
  {
    v2 = 23;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeTaskOutcomeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"success";
      goto LABEL_25;
    case 2:
      v4 = @"unsupported attribute";
      goto LABEL_25;
    case 3:
      v4 = @"read only";
      goto LABEL_25;
    case 4:
      v4 = @"already at max value";
      goto LABEL_25;
    case 5:
      v4 = @"already at min value";
      goto LABEL_25;
    case 6:
      v4 = @"unreachable";
      goto LABEL_25;
    case 7:
      v4 = @"failure";
      goto LABEL_25;
    case 8:
      v4 = @"set to max value";
      goto LABEL_25;
    case 9:
      v4 = @"set to min value";
      goto LABEL_25;
    case 10:
      v4 = @"larger than max value";
      goto LABEL_25;
    case 11:
      v4 = @"smaller than min value";
      goto LABEL_25;
    case 12:
      v4 = @"no remote access";
      goto LABEL_25;
    case 13:
      v4 = @"no matching attribute";
      goto LABEL_25;
    case 14:
      v4 = @"bluetooth is off";
      goto LABEL_25;
    case 15:
      v4 = @"wifi is off";
      goto LABEL_25;
    case 16:
      v4 = @"bridged accessory unreachable";
      goto LABEL_25;
    case 17:
      v4 = @"in progress";
      goto LABEL_25;
    case 18:
      v4 = @"scene not set up";
      goto LABEL_25;
    case 19:
      v4 = @"securing failure";
      goto LABEL_25;
    case 20:
      v4 = @"bluetooth wakeup";
      goto LABEL_25;
    case 21:
      v4 = @"unlock required";
      goto LABEL_25;
    case 22:
      v4 = @"secured access denied";
      goto LABEL_25;
    case 23:
      v4 = @"calibration in progress";
LABEL_25:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t INHomeUserTaskTypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 6)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INHomeUserTaskTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 6) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeUserTaskTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286DA0[a1 - 1];
  }
}

uint64_t INHomeUserTaskTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"set"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"increase"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"decrease"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"get"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"getTarget"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"toggle"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeUserTaskTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v5 = @"get";
        break;
      case 5:
        v5 = @"get target";
        break;
      case 6:
        v5 = @"toggle";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v5 = @"set";
        break;
      case 2:
        v5 = @"increase";
        break;
      case 3:
        v5 = @"decrease";
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_15:

  return v4;
}

uint64_t INHomeAttributeLimitGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t INHomeAttributeLimitGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 2);
  if (a2 == 1)
  {
    v2 = 1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeAttributeLimitGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"max";
  }

  if (a1 == 1)
  {
    return @"min";
  }

  else
  {
    return v1;
  }
}

uint64_t INHomeAttributeLimitWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"min"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"max"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeAttributeLimitGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"max";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"min";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t INHomeAttributeUnitGetBackingType(uint64_t result)
{
  if ((result - 1) < 5)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INHomeAttributeUnitGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 5) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeAttributeUnitGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286DD0[a1 - 1];
  }
}

uint64_t INHomeAttributeUnitWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"percent"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"fahrenheit"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"celsius"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"lux"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"seconds"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeAttributeUnitGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"percent";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"fahrenheit";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"celsius";
        break;
      case 4:
        v5 = @"lux";
        break;
      case 5:
        v5 = @"seconds";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

uint64_t _INPBAnswerCallIntentReadFrom(void *a1, void *a2)
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
        v21 = PBReaderReadString();
        [a1 setCallIdentifier:v21];
LABEL_33:

        goto LABEL_40;
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
            goto LABEL_39;
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

LABEL_39:
        [a1 setAudioRoute:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_33;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INIdentifyIncomingCallerIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7286E38[a1];
  }
}

uint64_t _INPBIdentifyIncomingCallerIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(_INPBCallRecordValue);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBCallRecordValueReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addCallRecords:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_38:
        [a1 setStatusCode:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIdentifyIncomingCallerIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INAnswerCallIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7286E70[a1];
  }
}

uint64_t _INPBAnswerCallIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(_INPBCallRecordValue);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBCallRecordValueReadFrom(v21, a2))
        {
          goto LABEL_46;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addCallRecords:v21];
        }

LABEL_36:

        goto LABEL_43;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24) = 0;
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
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_42;
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

LABEL_42:
        [a1 setStatusCode:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBConnectedCall);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBConnectedCallReadFrom(v21, a2))
    {
LABEL_46:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setAnsweredCall:v21];
    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBCreateEventIntentResponseReadFrom(void *a1, void *a2)
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

      if (v13 == 2)
      {
        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addConflictingEventIdentifiers:v21];
        }

LABEL_34:

        goto LABEL_41;
      }

      if (v13 == 3)
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
        [a1 setConfirmationReason:v20];
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

    v21 = objc_alloc_init(_INPBCalendarEvent);
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBCalendarEventReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setCreatedEvent:v21];
    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INHangUpCallIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7286F80[a1];
  }
}

uint64_t _INPBHangUpCallIntentResponseReadFrom(void *a1, void *a2)
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
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
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

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setHungUpCallType:v20];
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

id __INExtensionIdentifiersForApplicationRecord_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 extensionPointRecord];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"com.apple.intents-service"];

  if (v5)
  {
    v6 = [v2 bundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _INPBHangUpCallIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = PBReaderReadString();
        [a1 setCallIdentifier:v13];
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBIntentMetadata);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBUpdateEventIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v21 = PBReaderReadString();
            [a1 setSetTitle:v21];
            goto LABEL_57;
          }

          if (v13 == 4)
          {
            v21 = objc_alloc_init(_INPBDateTimeRangeValue);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v21, a2))
            {
LABEL_77:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setSetDateTimeRange:v21];
            goto LABEL_57;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v21 = objc_alloc_init(_INPBIntentMetadata);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
            {
              goto LABEL_77;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v21];
            goto LABEL_57;
          }

          if (v13 == 2)
          {
            v21 = PBReaderReadString();
            [a1 setTargetEventIdentifier:v21];
LABEL_57:

            goto LABEL_58;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v21 = objc_alloc_init(_INPBLocation);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v21, a2))
          {
            goto LABEL_77;
          }

          PBReaderRecallMark();
          [a1 setSetLocation:v21];
          goto LABEL_57;
        }

        if (v13 == 6)
        {
          v21 = objc_alloc_init(_INPBContact);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
          {
            goto LABEL_77;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addAddParticipants:v21];
          }

          goto LABEL_57;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v21 = objc_alloc_init(_INPBContact);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
            {
              goto LABEL_77;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addRemoveParticipants:v21];
            }

            goto LABEL_57;
          case 9:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v31 & 0x7F) << v23;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_74;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_74:
            [a1 setRemoveLocation:v29];
            goto LABEL_58;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v31 & 0x7F) << v14;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_72;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_72:
            [a1 setUpdateAllOccurrences:v20];
            goto LABEL_58;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_58:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INIntentExecutionResult *INIntentSlotValueTransformFromIntentExecutionResult(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasEncodedIntent])
    {
      v3 = [v2 encodedIntent];
      v4 = [v3 dataUsingEncoding:4];
      v5 = INIntentCreate(0, v4);
    }

    else
    {
      v5 = 0;
    }

    if ([v2 hasEncodedIntentResponse])
    {
      v7 = [v2 encodedIntentResponse];
      v8 = [v7 dataUsingEncoding:4];
      v9 = INIntentResponseCreate(0, v8);
    }

    else
    {
      v9 = 0;
    }

    v6 = [[INIntentExecutionResult alloc] initWithIntent:v5 response:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

_INPBIntentExecutionResult *INIntentSlotValueTransformToIntentExecutionResult(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBIntentExecutionResult);
    v3 = [v1 intent];

    if (v3)
    {
      v4 = [v1 intent];
      v5 = [v4 _JSONDictionaryRepresentation];
      v6 = [v5 if_JSONStringRepresentation];
      [(_INPBIntentExecutionResult *)v2 setEncodedIntent:v6];
    }

    v7 = [v1 intentResponse];

    if (v7)
    {
      v8 = [v1 intentResponse];
      v9 = [v8 _JSONDictionaryRepresentation];
      v10 = [v9 if_JSONStringRepresentation];
      [(_INPBIntentExecutionResult *)v2 setEncodedIntentResponse:v10];
    }

    [(_INPBIntentExecutionResult *)v2 setEncodingFormat:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromIntentExecutionResults(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromIntentExecutionResult(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToIntentExecutionResults(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToIntentExecutionResult(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

__CFString *INStartCallIntentResponseCodeGetName(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      result = @"INStartCallIntentResponseCodeUnspecified";
      break;
    case 1:
      result = @"INStartCallIntentResponseCodeReady";
      break;
    case 2:
      result = @"INStartCallIntentResponseCodeContinueInApp";
      break;
    case 3:
      result = @"INStartCallIntentResponseCodeUserConfirmationRequired";
      break;
    case 4:
      result = @"INStartCallIntentResponseCodeFailure";
      break;
    case 5:
      result = @"INStartCallIntentResponseCodeFailureRequiringAppLaunch";
      break;
    case 6:
      result = @"INStartCallIntentResponseCodeFailureCallingServiceNotAvailable";
      break;
    case 7:
      result = @"INStartCallIntentResponseCodeFailureContactNotSupportedByApp";
      break;
    case 8:
      result = @"INStartCallIntentResponseCodeFailureAirplaneModeEnabled";
      break;
    case 9:
      result = @"INStartCallIntentResponseCodeFailureUnableToHandOff";
      break;
    case 10:
      result = @"INStartCallIntentResponseCodeFailureAppConfigurationRequired";
      break;
    case 11:
      result = @"INStartCallIntentResponseCodeFailureCallInProgress";
      break;
    case 12:
      result = @"INStartCallIntentResponseCodeFailureCallRinging";
      break;
    case 13:
      result = @"INStartCallIntentResponseCodeFailureRequiringInAppAuthentication";
      break;
    default:
      v2 = @"INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled";
      if (a1 != 1001)
      {
        v2 = 0;
      }

      if (a1 == 1000)
      {
        result = @"INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled";
      }

      else
      {
        result = v2;
      }

      break;
  }

  return result;
}

uint64_t _INPBStartCallIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
        if (v13 == 3)
        {
          v21 = objc_alloc_init(_INPBConnectedCall);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBConnectedCallReadFrom(v21, a2))
          {
LABEL_59:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setStartedCall:v21];
          goto LABEL_49;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(_INPBContactValue);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v21, a2))
          {
            goto LABEL_59;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addRestrictedContacts:v21];
          }

LABEL_49:

          goto LABEL_56;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31 & 0x7F) << v22;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_55;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_55:
          [a1 setShouldDoEmergencyCountdown:v28];
          goto LABEL_56;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31 & 0x7F) << v14;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_53;
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

LABEL_53:
          [a1 setConfirmationReason:v20];
          goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromSendMessageAttachment(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_27;
  }

  v3 = [v1 speechDataURL];

  if (v3)
  {
    v4 = [v2 speechDataURL];
    v5 = INIntentSlotValueTransformFromURLValue(v4);
    v6 = [INSendMessageAttachment attachmentWithSpeechDataURL:v5];
LABEL_6:
    v8 = v6;

LABEL_7:
    goto LABEL_28;
  }

  v7 = [v2 sharedLink];

  if (v7)
  {
    v4 = [v2 sharedLink];
    v5 = INIntentSlotValueTransformFromURLValue(v4);
    v6 = [INSendMessageAttachment attachmentWithSharedLink:v5];
    goto LABEL_6;
  }

  if ([v2 currentLocation])
  {
    v8 = +[INSendMessageAttachment attachmentWithCurrentLocation];
    goto LABEL_28;
  }

  v9 = [v2 audioMessageFileURL];

  if (v9)
  {
    v10 = [v2 audioMessageFileURL];
    v11 = INIntentSlotValueTransformFromURLValue(v10);
    v12 = [v2 typeIdentifier];
    v4 = [INFile fileWithFileURL:v11 filename:0 typeIdentifier:v12];
    goto LABEL_14;
  }

  v13 = [v2 audioMessageFile];

  if (v13)
  {
    v10 = [v2 audioMessageFile];
    v11 = [v10 data];
    v12 = [v2 audioMessageFile];
    v14 = [v12 fileName];
    v15 = [v2 typeIdentifier];
    v4 = [INFile fileWithData:v11 filename:v14 typeIdentifier:v15];

LABEL_14:
    if (v4)
    {
      v16 = [INSendMessageAttachment attachmentWithAudioMessageFile:v4];
LABEL_16:
      v8 = v16;
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v17 = [v2 phAssetId];

  if (v17)
  {
    v4 = [v2 phAssetId];
    if (v4)
    {
      v16 = [INSendMessageAttachment attachmentWithPHAssetId:v4];
      goto LABEL_16;
    }

LABEL_20:
    v8 = 0;
    goto LABEL_7;
  }

  v18 = [v2 fileURL];

  if (v18)
  {
    v19 = [v2 fileURL];
    v20 = INIntentSlotValueTransformFromURLValue(v19);
    v21 = [v2 typeIdentifier];
    v22 = [INFile fileWithFileURL:v20 filename:0 typeIdentifier:v21];
  }

  else
  {
    v8 = [v2 file];

    if (!v8)
    {
      goto LABEL_28;
    }

    v19 = [v2 file];
    v20 = [v19 data];
    v21 = [v2 file];
    v23 = [v21 fileName];
    v24 = [v2 typeIdentifier];
    v22 = [INFile fileWithData:v20 filename:v23 typeIdentifier:v24];
  }

  if (v22)
  {
    v8 = [INSendMessageAttachment attachmentWithFile:v22];
  }

  else
  {
LABEL_27:
    v8 = 0;
  }

LABEL_28:

  return v8;
}

_INPBSendMessageAttachment *INIntentSlotValueTransformToSendMessageAttachment(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_9;
  }

  v2 = objc_alloc_init(_INPBSendMessageAttachment);
  v3 = [v1 speechDataURL];

  if (v3)
  {
    v4 = [v1 speechDataURL];
    v5 = INIntentSlotValueTransformToURLValue(v4);
    [(_INPBSendMessageAttachment *)v2 setSpeechDataURL:v5];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v6 = [v1 sharedLink];

  if (v6)
  {
    v4 = [v1 sharedLink];
    v5 = INIntentSlotValueTransformToURLValue(v4);
    [(_INPBSendMessageAttachment *)v2 setSharedLink:v5];
    goto LABEL_7;
  }

  if (![v1 currentLocation])
  {
    v8 = [v1 audioMessageFile];

    if (v8)
    {
      v4 = [v1 audioMessageFile];
      if ([v4 _isFileURLBased])
      {
        v9 = [v4 fileURL];
        v10 = INIntentSlotValueTransformToURLValue(v9);
        [(_INPBSendMessageAttachment *)v2 setAudioMessageFileURL:v10];
LABEL_17:

        v5 = [v4 typeIdentifier];
        [(_INPBSendMessageAttachment *)v2 setTypeIdentifier:v5];
        goto LABEL_7;
      }

      v5 = objc_alloc_init(_INPBFileDataAttachment);
      v12 = [v4 data];
      [(_INPBFileDataAttachment *)v5 setData:v12];

      v13 = [v4 filename];
      [(_INPBFileDataAttachment *)v5 setFileName:v13];

      [(_INPBSendMessageAttachment *)v2 setAudioMessageFile:v5];
    }

    else
    {
      v11 = [v1 phAssetId];

      if (v11)
      {
        v4 = [v1 phAssetId];
        [(_INPBSendMessageAttachment *)v2 setPhAssetId:v4];
        goto LABEL_8;
      }

      v4 = [v1 file];
      if ([v4 _isFileURLBased])
      {
        v9 = [v4 fileURL];
        v10 = INIntentSlotValueTransformToURLValue(v9);
        [(_INPBSendMessageAttachment *)v2 setFileURL:v10];
        goto LABEL_17;
      }

      v5 = objc_alloc_init(_INPBFileDataAttachment);
      v15 = [v4 data];
      [(_INPBFileDataAttachment *)v5 setData:v15];

      v16 = [v4 filename];
      [(_INPBFileDataAttachment *)v5 setFileName:v16];

      [(_INPBSendMessageAttachment *)v2 setFile:v5];
    }

    v14 = [v4 typeIdentifier];
    [(_INPBSendMessageAttachment *)v2 setTypeIdentifier:v14];

    goto LABEL_7;
  }

  [(_INPBSendMessageAttachment *)v2 setCurrentLocation:1];
LABEL_9:

  return v2;
}

INSeat *INIntentSlotValueTransformFromSeat(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INSeat alloc];
    v3 = [v1 seatSection];
    v4 = [v1 seatRow];
    v5 = [v1 seatNumber];
    v6 = [v1 seatingType];

    v7 = [(INSeat *)v2 initWithSeatSection:v3 seatRow:v4 seatNumber:v5 seatingType:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBSeat *INIntentSlotValueTransformToSeat(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBSeat);
    v3 = [v1 seatSection];
    [(_INPBSeat *)v2 setSeatSection:v3];

    v4 = [v1 seatRow];
    [(_INPBSeat *)v2 setSeatRow:v4];

    v5 = [v1 seatNumber];
    [(_INPBSeat *)v2 setSeatNumber:v5];

    v6 = [v1 seatingType];

    [(_INPBSeat *)v2 setSeatingType:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromSeats(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromSeat(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToSeats(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToSeat(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBSeatReadFrom(void *a1, void *a2)
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
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
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
    if ((v13 >> 3) > 2)
    {
      if (v14 == 4)
      {
        v15 = PBReaderReadString();
        [a1 setSeatingType:v15];
        goto LABEL_29;
      }

      if (v14 == 3)
      {
        v15 = PBReaderReadString();
        [a1 setSeatNumber:v15];
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setSeatSection:v15];
        goto LABEL_29;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setSeatRow:v15];
LABEL_29:

        continue;
      }
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

INAirport *INIntentSlotValueTransformFromAirport(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INAirport alloc];
    v3 = [v1 name];
    v4 = [v1 iataCode];
    v5 = [v1 icaoCode];

    v6 = [(INAirport *)v2 initWithName:v3 iataCode:v4 icaoCode:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

_INPBAirport *INIntentSlotValueTransformToAirport(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBAirport);
    v3 = [v1 name];
    [(_INPBAirport *)v2 setName:v3];

    v4 = [v1 iataCode];
    [(_INPBAirport *)v2 setIataCode:v4];

    v5 = [v1 icaoCode];

    [(_INPBAirport *)v2 setIcaoCode:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromAirports(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromAirport(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToAirports(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToAirport(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBAirportReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
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
      return [a2 hasError] ^ 1;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v15 = PBReaderReadString();
      [a1 setName:v15];
      goto LABEL_24;
    }

    if (v14 == 3)
    {
      v15 = PBReaderReadString();
      [a1 setIcaoCode:v15];
      goto LABEL_24;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setIataCode:v15];
LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t INReservationStatusGetBackingType(unint64_t a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INReservationStatusGetFacadeType(unsigned __int8 a1, int a2)
{
  if ((((a2 - 2) < 4) & a1) != 0)
  {
    return (a2 - 1);
  }

  else
  {
    return 0;
  }
}

__CFString *INReservationStatusGetName(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7287080 + a1 - 1);
  }
}

uint64_t INReservationStatusWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"canceled"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"pending"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"hold"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"confirmed"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INReservationStatusGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"hold";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_11;
      }

      v5 = @"confirmed";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"canceled";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    v5 = @"pending";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_11:

  return v4;
}

uint64_t _INPBFlightReservationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        v14 = objc_alloc_init(_INPBReservation);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBReservationReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setReservation:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = objc_alloc_init(_INPBFlight);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBFlightReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setFlight:v14];
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

    v14 = objc_alloc_init(_INPBSeat);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBSeatReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setReservedSeat:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

INFlight *INIntentSlotValueTransformFromFlight(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v14 = [INFlight alloc];
    v15 = [v1 airline];
    v13 = INIntentSlotValueTransformFromAirline(v15);
    v2 = [v1 flightNumber];
    v3 = [v1 boardingTime];
    v4 = INIntentSlotValueTransformFromDateTimeRange(v3);
    v5 = [v1 flightDuration];
    v6 = INIntentSlotValueTransformFromDateTimeRange(v5);
    v7 = [v1 departureAirportGate];
    v8 = INIntentSlotValueTransformFromAirportGate(v7);
    v9 = [v1 arrivalAirportGate];

    v10 = INIntentSlotValueTransformFromAirportGate(v9);
    v11 = [(INFlight *)v14 initWithAirline:v13 flightNumber:v2 boardingTime:v4 flightDuration:v6 departureAirportGate:v8 arrivalAirportGate:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBFlight *INIntentSlotValueTransformToFlight(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBFlight);
    v3 = [v1 airline];
    v4 = INIntentSlotValueTransformToAirline(v3);
    [(_INPBFlight *)v2 setAirline:v4];

    v5 = [v1 flightNumber];
    [(_INPBFlight *)v2 setFlightNumber:v5];

    v6 = [v1 boardingTime];
    v7 = INIntentSlotValueTransformToDateTimeRange(v6);
    [(_INPBFlight *)v2 setBoardingTime:v7];

    v8 = [v1 flightDuration];
    v9 = INIntentSlotValueTransformToDateTimeRange(v8);
    [(_INPBFlight *)v2 setFlightDuration:v9];

    v10 = [v1 departureAirportGate];
    v11 = INIntentSlotValueTransformToAirportGate(v10);
    [(_INPBFlight *)v2 setDepartureAirportGate:v11];

    v12 = [v1 arrivalAirportGate];

    v13 = INIntentSlotValueTransformToAirportGate(v12);
    [(_INPBFlight *)v2 setArrivalAirportGate:v13];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromFlights(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromFlight(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToFlights(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToFlight(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBFlightReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
LABEL_46:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setFlightDuration:v14];
            goto LABEL_42;
          case 5:
            v14 = objc_alloc_init(_INPBAirportGate);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBAirportGateReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setDepartureAirportGate:v14];
            goto LABEL_42;
          case 6:
            v14 = objc_alloc_init(_INPBAirportGate);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBAirportGateReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setArrivalAirportGate:v14];
            goto LABEL_42;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBAirline);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBAirlineReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setAirline:v14];
            goto LABEL_42;
          case 2:
            v14 = PBReaderReadString();
            [a1 setFlightNumber:v14];
LABEL_42:

            goto LABEL_43;
          case 3:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setBoardingTime:v14];
            goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INAirline *INIntentSlotValueTransformFromAirline(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INAirline alloc];
    v3 = [v1 name];
    v4 = [v1 iataCode];
    v5 = [v1 icaoCode];

    v6 = [(INAirline *)v2 initWithName:v3 iataCode:v4 icaoCode:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

_INPBAirline *INIntentSlotValueTransformToAirline(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBAirline);
    v3 = [v1 name];
    [(_INPBAirline *)v2 setName:v3];

    v4 = [v1 iataCode];
    [(_INPBAirline *)v2 setIataCode:v4];

    v5 = [v1 icaoCode];

    [(_INPBAirline *)v2 setIcaoCode:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromAirlines(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromAirline(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToAirlines(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToAirline(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBAirlineReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
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
      return [a2 hasError] ^ 1;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v15 = PBReaderReadString();
      [a1 setName:v15];
      goto LABEL_24;
    }

    if (v14 == 3)
    {
      v15 = PBReaderReadString();
      [a1 setIcaoCode:v15];
      goto LABEL_24;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setIataCode:v15];
LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t _INPBReservationReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
LABEL_61:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setItemReference:v14];
            goto LABEL_52;
          case 2:
            v14 = PBReaderReadString();
            [a1 setReservationNumber:v14];
            goto LABEL_52;
          case 3:
            v14 = objc_alloc_init(_INPBTimestamp);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBTimestampReadFrom(v14, a2))
            {
              goto LABEL_61;
            }

            PBReaderRecallMark();
            [a1 setBookingTime:v14];
            goto LABEL_52;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_INPBReservationAction);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBReservationActionReadFrom(v14, a2))
          {
            goto LABEL_61;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addActions:v14];
          }

          goto LABEL_52;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_INPBURLValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v14, a2))
          {
            goto LABEL_61;
          }

          PBReaderRecallMark();
          [a1 setUrl:v14];
          goto LABEL_52;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_58:
          [a1 setReservationStatus:v21];
          goto LABEL_53;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          [a1 setReservationHolderName:v14];
LABEL_52:

          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INMediaItem *INIntentSlotValueTransformFromMediaItemValue(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    v4 = [v2 topics];

    if (v4)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "topicsCount")}];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v5 = [v2 topics];
      v6 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v43;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v43 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v42 + 1) + 8 * i);
            v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "score")}];
            v12 = [v10 value];
            [v4 setObject:v11 forKey:v12];
          }

          v7 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v7);
      }
    }

    v13 = [v2 namedEntities];

    if (v13)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "namedEntitiesCount")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v14 = [v2 namedEntities];
      v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v39;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v38 + 1) + 8 * j);
            v20 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v19, "score")}];
            v21 = [v19 value];
            [v13 setObject:v20 forKey:v21];
          }

          v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v16);
      }
    }

    v37 = [INMediaItem alloc];
    v22 = [v2 identifier];
    v36 = v22;
    v23 = [v2 title];
    v24 = [v2 hasType];
    v25 = [v2 type];
    if (((v25 - 1 < 0x14) & v24) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v35 = v26;
    v27 = [v2 artwork];
    v28 = INIntentSlotValueTransformFromImageValue(v27);
    v29 = [v2 artist];
    v30 = [v2 privateMediaItemValueData];
    v31 = INIntentSlotValueTransformFromPrivateMediaItemValueData(v30);
    v32 = [(INMediaItem *)v37 initWithIdentifier:v22 title:v23 type:v35 artwork:v28 artist:v29 topics:v4 namedEntities:v13 privateMediaItemValueData:v31];
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

_INPBMediaItemValue *INIntentSlotValueTransformToMediaItemValue(void *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBMediaItemValue);
    v3 = [v1 identifier];
    [(_INPBMediaItemValue *)v2 setIdentifier:v3];

    v4 = [v1 title];
    [(_INPBMediaItemValue *)v2 setTitle:v4];

    v5 = [v1 type];
    if (v5 >= 0x15)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = v5;
    }

    [(_INPBMediaItemValue *)v2 setType:v6];
    v7 = [v1 artwork];
    v8 = INIntentSlotValueTransformToImageValue(v7);
    [(_INPBMediaItemValue *)v2 setArtwork:v8];

    v9 = [v1 artist];
    [(_INPBMediaItemValue *)v2 setArtist:v9];

    v10 = [v1 topics];

    v38 = v2;
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E695DF70]);
      v12 = [v1 topics];
      v10 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v13 = [v1 topics];
      v14 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v44;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            v19 = objc_alloc_init(_INPBScoredValue);
            [(_INPBScoredValue *)v19 setValue:v18];
            v20 = [v1 topics];
            v21 = [v20 objectForKey:v18];
            -[_INPBScoredValue setScore:](v19, "setScore:", [v21 integerValue]);

            [v10 addObject:v19];
          }

          v15 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v15);
      }

      v2 = v38;
    }

    [(_INPBMediaItemValue *)v2 setTopics:v10];

    v22 = [v1 namedEntities];

    if (v22)
    {
      v23 = objc_alloc(MEMORY[0x1E695DF70]);
      v24 = [v1 namedEntities];
      v22 = [v23 initWithCapacity:{objc_msgSend(v24, "count")}];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = [v1 namedEntities];
      v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v39 + 1) + 8 * j);
            v31 = objc_alloc_init(_INPBScoredValue);
            [(_INPBScoredValue *)v31 setValue:v30];
            v32 = [v1 namedEntities];
            v33 = [v32 objectForKey:v30];
            -[_INPBScoredValue setScore:](v31, "setScore:", [v33 integerValue]);

            [v22 addObject:v31];
          }

          v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v27);
      }

      v2 = v38;
    }

    [(_INPBMediaItemValue *)v2 setNamedEntities:v22];

    v34 = [v1 privateMediaItemValueData];
    v35 = INIntentSlotValueTransformToPrivateMediaItemValueData(v34);
    [(_INPBMediaItemValue *)v2 setPrivateMediaItemValueData:v35];
  }

  else
  {
    v2 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSlotValueTransformToMediaItemValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToMediaItemValue(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

_INPBMediaItemValue *INIntentSlotValueRedactedMediaItemValueFromMediaItemValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 valueMetadata];
  v8 = INPrivacyEntitlementOptionsForValueMetadata(v7);

  if ((v8 & a2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(_INPBMediaItemValue);
    v10 = [v5 identifier];
    [(_INPBMediaItemValue *)v9 setIdentifier:v10];

    v11 = [v5 title];
    [(_INPBMediaItemValue *)v9 setTitle:v11];

    -[_INPBMediaItemValue setType:](v9, "setType:", [v5 type]);
    v12 = [v5 artwork];
    v13 = INIntentSlotValueRedactedImageValueFromImageValue(v12, a2);
    [(_INPBMediaItemValue *)v9 setArtwork:v13];

    v14 = [v5 artist];
    [(_INPBMediaItemValue *)v9 setArtist:v14];

    v15 = [v5 topics];
    [(_INPBMediaItemValue *)v9 setTopics:v15];

    v16 = [v5 namedEntities];
    [(_INPBMediaItemValue *)v9 setNamedEntities:v16];

    v17 = [v5 privateMediaItemValueData];
    [(_INPBMediaItemValue *)v9 setPrivateMediaItemValueData:v17];
  }

  return v9;
}

uint64_t INHomeSceneTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INHomeSceneTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 5) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeSceneTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E72870C8 + a1 - 1);
  }
}

uint64_t INHomeSceneTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"userDefined"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"goodMorning"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"imLeaving"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"imHome"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"goodNight"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeSceneTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"user defined";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"good morning";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"im leaving";
        break;
      case 4:
        v5 = @"im home";
        break;
      case 5:
        v5 = @"good night";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

uint64_t INShowHomeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72870F0 + a1);
  }
}

uint64_t _INPBShowHomeIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBShowHomeIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {
LABEL_35:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
        goto LABEL_30;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBHomeFilter);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeFilterReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addFilters:v14];
        }

LABEL_30:

        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBDateTimeRange);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
    {
      goto LABEL_35;
    }

    PBReaderRecallMark();
    [a1 setTime:v14];
    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBScoredValueReadFrom(void *a1, void *a2)
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
      [a1 setValue:v21];
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
          goto LABEL_35;
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

LABEL_35:
      [a1 setScore:v20];
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

uint64_t _INPBContactEventTriggerReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBContact);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTriggerContact:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INTaskReferenceGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INTaskReferenceGetFacadeType(uint64_t result, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *INTaskReferenceGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"currentActivity";
  }

  else
  {
    return @"unknown";
  }
}

id INTaskReferenceGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"current activity", @"current activity", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_18ECF4870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWFOnScreenContentServiceOptionsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary_123610)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __VoiceShortcutClientLibraryCore_block_invoke_123611;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7287120;
    v7 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary_123610 = _sl_dlopen();
    v2 = v5[0];
    if (VoiceShortcutClientLibraryCore_frameworkLibrary_123610)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("WFOnScreenContentServiceOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getWFOnScreenContentServiceOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke_123611(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary_123610 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t INMobileSpaceGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t INMobileSpaceGetFacadeType(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFString *INMobileSpaceGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"car";
  }

  else
  {
    return @"unknown";
  }
}

id INMobileSpaceGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"car", @"car", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_18ECF4FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCHSWidgetDescriptorProviderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary_123687)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ChronoServicesLibraryCore_block_invoke_123688;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72871B0;
    v7 = 0;
    ChronoServicesLibraryCore_frameworkLibrary_123687 = _sl_dlopen();
    v2 = v5[0];
    if (ChronoServicesLibraryCore_frameworkLibrary_123687)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CHSWidgetDescriptorProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCHSWidgetDescriptorProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke_123688(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary_123687 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

INContactEventTrigger *INIntentSlotValueTransformFromContactEventTrigger(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INContactEventTrigger alloc];
    v3 = [v1 triggerContact];

    v4 = INIntentSlotValueTransformFromContact(v3);
    v5 = [(INContactEventTrigger *)v2 initWithTriggerContact:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBContactEventTrigger *INIntentSlotValueTransformToContactEventTrigger(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBContactEventTrigger);
    v3 = [v1 triggerContact];

    v4 = INIntentSlotValueTransformToContact(v3);
    [(_INPBContactEventTrigger *)v2 setTriggerContact:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromContactEventTriggers(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromContactEventTrigger(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToContactEventTriggers(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToContactEventTrigger(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t INIncomingCallStatusCodeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t INIncomingCallStatusCodeGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 2);
  if (a2 == 1)
  {
    v2 = 1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INIncomingCallStatusCodeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"incomingCall";
  }

  if (a1 == 1)
  {
    return @"noIncomingCall";
  }

  else
  {
    return v1;
  }
}

uint64_t INIncomingCallStatusCodeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"noIncomingCall"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"incomingCall"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIncomingCallStatusCodeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"incoming call";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"no incoming call";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBTrainTripReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = PBReaderReadString();
            [a1 setTrainNumber:v14];
            goto LABEL_46;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(_INPBDateTime);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
            {
LABEL_53:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setOnlineCheckInTime:v14];
            goto LABEL_46;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            [a1 setProvider:v14];
            goto LABEL_46;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            [a1 setTrainName:v14];
            goto LABEL_46;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBDateTimeRange);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
          {
            goto LABEL_53;
          }

          PBReaderRecallMark();
          [a1 setTripDuration:v14];
          goto LABEL_46;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(_INPBLocationValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
          {
            goto LABEL_53;
          }

          PBReaderRecallMark();
          [a1 setDepartureStationLocation:v14];
          goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setDeparturePlatform:v14];
            goto LABEL_46;
          case 8:
            v14 = objc_alloc_init(_INPBLocationValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
            {
              goto LABEL_53;
            }

            PBReaderRecallMark();
            [a1 setArrivalStationLocation:v14];
            goto LABEL_46;
          case 9:
            v14 = PBReaderReadString();
            [a1 setArrivalPlatform:v14];
LABEL_46:

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBRentalCarReservationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBReservation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBReservationReadFrom(v14, a2))
          {
LABEL_45:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setReservation:v14];
          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBRentalCar);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBRentalCarReadFrom(v14, a2))
          {
            goto LABEL_45;
          }

          PBReaderRecallMark();
          [a1 setRentalCar:v14];
          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setRentalDuration:v14];
            goto LABEL_38;
          case 4:
            v14 = objc_alloc_init(_INPBLocationValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setPickupLocation:v14];
            goto LABEL_38;
          case 5:
            v14 = objc_alloc_init(_INPBLocationValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setDropOffLocation:v14];
LABEL_38:

            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBTicketedEventReservationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        v14 = objc_alloc_init(_INPBReservation);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBReservationReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setReservation:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = objc_alloc_init(_INPBTicketedEvent);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBTicketedEventReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setEvent:v14];
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

    v14 = objc_alloc_init(_INPBSeat);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBSeatReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setReservedSeat:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBTrainReservationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(_INPBTrainTrip);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBTrainTripReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTrainTrip:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBReservation);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBReservationReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setReservation:v14];
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

    v14 = objc_alloc_init(_INPBSeat);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBSeatReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setReservedSeat:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBLodgingReservationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBReservation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBReservationReadFrom(v14, a2))
          {
LABEL_45:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setReservation:v14];
          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBLocation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
          {
            goto LABEL_45;
          }

          PBReaderRecallMark();
          [a1 setLodgingBusinessLocation:v14];
          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setReservationDuration:v14];
            goto LABEL_38;
          case 4:
            v14 = objc_alloc_init(_INPBInteger);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setNumberOfAdults:v14];
            goto LABEL_38;
          case 5:
            v14 = objc_alloc_init(_INPBInteger);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setNumberOfChildren:v14];
LABEL_38:

            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBTicketedEventReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBDateTimeRange);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setEventDuration:v14];
          goto LABEL_40;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBLocationValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setLocation:v14];
          goto LABEL_40;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_44:
          [a1 setCategory:v21];
          goto LABEL_45;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setName:v14];
LABEL_40:

          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBRentalCarReadFrom(void *a1, void *a2)
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
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
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
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setRentalCompanyName:v15];
        goto LABEL_29;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setType:v15];
        goto LABEL_29;
      }
    }

    else
    {
      switch(v14)
      {
        case 5:
          v15 = PBReaderReadString();
          [a1 setRentalCarDescription:v15];
          goto LABEL_29;
        case 4:
          v15 = PBReaderReadString();
          [a1 setModel:v15];
          goto LABEL_29;
        case 3:
          v15 = PBReaderReadString();
          [a1 setMake:v15];
LABEL_29:

          continue;
      }
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromEnergy(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromEnergyValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromEnergyValue(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    if (![v2 hasUnit])
    {
      goto LABEL_16;
    }

    v4 = [v2 unit];
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        v5 = [MEMORY[0x1E696B030] kilojoules];
      }

      else
      {
        if (v4 != 2)
        {
          goto LABEL_16;
        }

        v5 = [MEMORY[0x1E696B030] joules];
      }
    }

    else
    {
      switch(v4)
      {
        case 3:
          v5 = [MEMORY[0x1E696B030] kilocalories];
          break;
        case 4:
          v5 = [MEMORY[0x1E696B030] calories];
          break;
        case 5:
          v5 = [MEMORY[0x1E696B030] kilowattHours];
          break;
        default:
LABEL_16:
          v9 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            v12 = 136315138;
            v13 = "INIntentSlotValueTransformFromEnergyValue";
            _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s _INPBEnergyValue must contain a unit. Otherwise ambiguous magnitude for NSMeasurement", &v12, 0xCu);
          }

          goto LABEL_18;
      }
    }

    v6 = v5;
    if (v5)
    {
      v7 = objc_alloc(MEMORY[0x1E696AD28]);
      [v2 magnitude];
      v8 = [v7 initWithDoubleValue:v6 unit:?];

      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_18:
  v8 = 0;
LABEL_19:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

_INPBEnergy *INIntentSlotValueTransformToEnergy(void *a1)
{
  v1 = INIntentSlotValueTransformToEnergyValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBEnergy);
    [(_INPBEnergy *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBEnergyValue *INIntentSlotValueTransformToEnergyValue(void *a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_15;
  }

  v1 = a1;
  v2 = objc_alloc_init(_INPBEnergyValue);
  v3 = [v1 unit];
  [v1 doubleValue];
  v5 = v4;

  [(_INPBEnergyValue *)v2 setMagnitude:v5];
  v6 = [MEMORY[0x1E696B030] calories];
  v7 = [v3 isEqual:v6];

  if (v7)
  {
    v8 = 4;
LABEL_13:
    [(_INPBEnergyValue *)v2 setUnit:v8];
    goto LABEL_14;
  }

  v9 = [MEMORY[0x1E696B030] joules];
  v10 = [v3 isEqual:v9];

  if (v10)
  {
    v8 = 2;
    goto LABEL_13;
  }

  v11 = [MEMORY[0x1E696B030] kilocalories];
  v12 = [v3 isEqual:v11];

  if (v12)
  {
    v8 = 3;
    goto LABEL_13;
  }

  v13 = [MEMORY[0x1E696B030] kilojoules];
  v14 = [v3 isEqual:v13];

  if (v14)
  {
    v8 = 1;
    goto LABEL_13;
  }

  v15 = [MEMORY[0x1E696B030] kilowattHours];
  v16 = [v3 isEqual:v15];

  if (v16)
  {
    v8 = 5;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:

  return v2;
}

id INIntentSlotValueTransformFromEnergyValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromEnergyValue(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformFromEnergies(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromEnergy(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToEnergyValues(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToEnergyValue(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSlotValueTransformToEnergies(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToEnergy(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSlotValueRedactedValueFromEnergyValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 valueMetadata];
  v5 = INPrivacyEntitlementOptionsForValueMetadata(v4);

  if ((v5 & a2) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 copy];
  }

  return v6;
}

_INPBEnergy *INIntentSlotValueRedactedEnergyFromEnergy(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBEnergy);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v5 values];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = INIntentSlotValueRedactedValueFromEnergyValue(*(*(&v16 + 1) + 8 * i), a2);
          if (v13)
          {
            [(_INPBEnergy *)v7 addValue:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueRedactedEnergiesFromEnergies(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = INIntentSlotValueRedactedEnergyFromEnergy(*(*(&v17 + 1) + 8 * i), a2, v6);
        [v7 addObject:{v13, v17}];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

INCalendarEvent *INIntentSlotValueTransformFromCalendarEvent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v13 = [INCalendarEvent alloc];
    v2 = [v1 eventIdentifier];
    v3 = [v1 title];
    v14 = [v1 dateTimeRange];
    v4 = INIntentSlotValueTransformFromDateTimeRangeValue(v14);
    v5 = [v1 participants];
    v6 = INIntentSlotValueTransformFromEventParticipants(v5);
    v7 = [v1 location];
    v8 = INIntentSlotValueTransformFromLocation(v7);
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "isContactBirthday")}];
    v10 = [v1 calendarPunchoutURI];

    v11 = [(INCalendarEvent *)v13 initWithEventIdentifier:v2 title:v3 dateTimeRange:v4 participants:v6 location:v8 isContactBirthday:v9 calendarPunchoutURI:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBCalendarEvent *INIntentSlotValueTransformToCalendarEvent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCalendarEvent);
    v3 = [v1 eventIdentifier];
    [(_INPBCalendarEvent *)v2 setEventIdentifier:v3];

    v4 = [v1 title];
    [(_INPBCalendarEvent *)v2 setTitle:v4];

    v5 = [v1 dateTimeRange];
    v6 = INIntentSlotValueTransformToDateTimeRangeValue(v5);
    [(_INPBCalendarEvent *)v2 setDateTimeRange:v6];

    v7 = [v1 participants];
    v8 = INIntentSlotValueTransformToEventParticipants(v7);
    [(_INPBCalendarEvent *)v2 setParticipants:v8];

    v9 = [v1 location];
    v10 = INIntentSlotValueTransformToLocation(v9);
    [(_INPBCalendarEvent *)v2 setLocation:v10];

    v11 = [v1 isContactBirthday];
    -[_INPBCalendarEvent setIsContactBirthday:](v2, "setIsContactBirthday:", [v11 BOOLValue]);

    v12 = [v1 calendarPunchoutURI];

    [(_INPBCalendarEvent *)v2 setCalendarPunchoutURI:v12];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCalendarEvents(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromCalendarEvent(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToCalendarEvents(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToCalendarEvent(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformFromMediaItemGroup(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "valuesCount")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [v1 values];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromMediaItemValue(*(*(&v11 + 1) + 8 * i));
          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

_INPBMediaItemGroup *INIntentSlotValueTransformToMediaItemGroup(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBMediaItemGroup);
    v3 = INIntentSlotValueTransformToMediaItemValues(v1);

    [(_INPBMediaItemGroup *)v2 setValues:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromMediaItemGroups(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromMediaItemGroup(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToMediaItemGroups(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToMediaItemGroup(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

_INPBMediaItemGroup *INIntentSlotValueRedactedMediaItemGroupFromMediaItemGroup(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(_INPBMediaItemGroup);
    v8 = [v5 values];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = INIntentSlotValueRedactedMediaItemValueFromMediaItemValue(*(*(&v16 + 1) + 8 * i), 0, v6);
          [(_INPBMediaItemGroup *)v7 addValues:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t _INPBRestaurantReservationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBLocation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setRestaurantLocation:v14];
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBInteger);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setPartySize:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBReservation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBReservationReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setReservation:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBDateTimeRange);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setReservationDuration:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INTrainTrip *INIntentSlotValueTransformFromTrainTrip(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v14 = [INTrainTrip alloc];
    v13 = [v1 provider];
    v12 = [v1 trainName];
    v2 = [v1 trainNumber];
    v15 = [v1 tripDuration];
    v3 = INIntentSlotValueTransformFromDateTimeRange(v15);
    v4 = [v1 departureStationLocation];
    v5 = INIntentSlotValueTransformFromLocationValue(v4);
    v6 = [v1 departurePlatform];
    v7 = [v1 arrivalStationLocation];
    v8 = INIntentSlotValueTransformFromLocationValue(v7);
    v9 = [v1 arrivalPlatform];

    v10 = [(INTrainTrip *)v14 initWithProvider:v13 trainName:v12 trainNumber:v2 tripDuration:v3 departureStationLocation:v5 departurePlatform:v6 arrivalStationLocation:v8 arrivalPlatform:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBTrainTrip *INIntentSlotValueTransformToTrainTrip(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBTrainTrip);
    v3 = [v1 provider];
    [(_INPBTrainTrip *)v2 setProvider:v3];

    v4 = [v1 trainName];
    [(_INPBTrainTrip *)v2 setTrainName:v4];

    v5 = [v1 trainNumber];
    [(_INPBTrainTrip *)v2 setTrainNumber:v5];

    v6 = [v1 tripDuration];
    v7 = INIntentSlotValueTransformToDateTimeRange(v6);
    [(_INPBTrainTrip *)v2 setTripDuration:v7];

    v8 = [v1 departureStationLocation];
    v9 = INIntentSlotValueTransformToLocationValue(v8);
    [(_INPBTrainTrip *)v2 setDepartureStationLocation:v9];

    v10 = [v1 departurePlatform];
    [(_INPBTrainTrip *)v2 setDeparturePlatform:v10];

    v11 = [v1 arrivalStationLocation];
    v12 = INIntentSlotValueTransformToLocationValue(v11);
    [(_INPBTrainTrip *)v2 setArrivalStationLocation:v12];

    v13 = [v1 arrivalPlatform];

    [(_INPBTrainTrip *)v2 setArrivalPlatform:v13];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromTrainTrips(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromTrainTrip(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToTrainTrips(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToTrainTrip(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}
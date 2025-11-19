uint64_t INSpatialEventWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"arrive"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"depart"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSpatialEventGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"depart";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"arrive";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBSetMessageAttributeIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBPayloadNeedsDisambiguationReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBSelectionItem);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBSelectionItemReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addDisambiguationItems:v13];
        }
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

__CFString *INSendMessageIntentResponseCodeGetName(uint64_t a1)
{
  if (a1 > 6)
  {
    v1 = @"INSendMessageIntentResponseCodeFailureMessageLocationAuthorizationNotDetermined";
    v9 = @"INSendMessageIntentResponseCodeFailureMessagePreciseLocationNotAuthorized";
    if (a1 != 1005)
    {
      v9 = 0;
    }

    if (a1 != 1004)
    {
      v1 = v9;
    }

    v10 = @"INSendMessageIntentResponseCodeFailureScreenTimeRestrictionEnabled";
    v11 = @"INSendMessageIntentResponseCodeFailureNotAMemberOfConversation";
    if (a1 != 1003)
    {
      v11 = 0;
    }

    if (a1 != 1002)
    {
      v10 = v11;
    }

    if (a1 <= 1003)
    {
      v1 = v10;
    }

    v5 = @"INSendMessageIntentResponseCodeFailureRequiringInAppAuthentication";
    v12 = @"INSendMessageIntentResponseCodeFailureMessageAttachmentError";
    v13 = @"INSendMessageIntentResponseCodeFailureMessageLocationNotAllowed";
    if (a1 != 1001)
    {
      v13 = 0;
    }

    if (a1 != 1000)
    {
      v12 = v13;
    }

    if (a1 != 7)
    {
      v5 = v12;
    }

    v8 = a1 <= 1001;
  }

  else
  {
    v1 = @"INSendMessageIntentResponseCodeFailureRequiringAppLaunch";
    v2 = @"INSendMessageIntentResponseCodeFailureMessageServiceNotAvailable";
    if (a1 != 6)
    {
      v2 = 0;
    }

    if (a1 != 5)
    {
      v1 = v2;
    }

    v3 = @"INSendMessageIntentResponseCodeSuccess";
    v4 = @"INSendMessageIntentResponseCodeFailure";
    if (a1 != 4)
    {
      v4 = 0;
    }

    if (a1 != 3)
    {
      v3 = v4;
    }

    if (a1 <= 4)
    {
      v1 = v3;
    }

    v5 = @"INSendMessageIntentResponseCodeUnspecified";
    v6 = @"INSendMessageIntentResponseCodeReady";
    v7 = @"INSendMessageIntentResponseCodeInProgress";
    if (a1 != 2)
    {
      v7 = 0;
    }

    if (a1 != 1)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = v6;
    }

    v8 = a1 <= 2;
  }

  if (v8)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

INTicketedEventReservation *INIntentSlotValueTransformFromTicketedEventReservation(INTicketedEventReservation *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [(INTicketedEventReservation *)v2 reservation];
    v4 = [INTicketedEventReservation alloc];
    v23 = [v3 itemReference];
    v24 = INIntentSlotValueTransformFromDataString(v23);
    v21 = [v3 reservationNumber];
    v22 = [v3 bookingTime];
    v19 = INIntentSlotValueTransformFromTimestamp(v22);
    v5 = [v3 hasReservationStatus];
    v6 = [v3 reservationStatus];
    if ((((v6 - 2) < 4) & v5) != 0)
    {
      v7 = (v6 - 1);
    }

    else
    {
      v7 = 0;
    }

    v16 = v7;
    v15 = [v3 reservationHolderName];
    v20 = [v3 actions];
    v8 = INIntentSlotValueTransformFromReservationActions(v20);
    v18 = [v3 url];
    v9 = INIntentSlotValueTransformFromURLValue(v18);
    v10 = [(INTicketedEventReservation *)v2 reservedSeat];
    v11 = INIntentSlotValueTransformFromSeat(v10);
    v12 = [(INTicketedEventReservation *)v2 event];

    v13 = INIntentSlotValueTransformFromTicketedEvent(v12);
    v17 = [(INTicketedEventReservation *)v4 initWithItemReference:v24 reservationNumber:v21 bookingTime:v19 reservationStatus:v16 reservationHolderName:v15 actions:v8 URL:v9 reservedSeat:v11 event:v13];

    a1 = v17;
    v1 = vars8;
  }

  return a1;
}

_INPBTicketedEventReservation *INIntentSlotValueTransformToTicketedEventReservation(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBReservation);
    v3 = [v1 itemReference];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBReservation *)v2 setItemReference:v4];

    v5 = [v1 reservationNumber];
    [(_INPBReservation *)v2 setReservationNumber:v5];

    v6 = [v1 bookingTime];
    v7 = INIntentSlotValueTransformToTimestamp(v6);
    [(_INPBReservation *)v2 setBookingTime:v7];

    v8 = [v1 reservationStatus];
    if (v8 < 5)
    {
      v9 = (v8 + 1);
    }

    else
    {
      v9 = 0x7FFFFFFFLL;
    }

    [(_INPBReservation *)v2 setReservationStatus:v9];
    v10 = [v1 reservationHolderName];
    [(_INPBReservation *)v2 setReservationHolderName:v10];

    v11 = [v1 actions];
    v12 = INIntentSlotValueTransformToReservationActions(v11);
    [(_INPBReservation *)v2 setActions:v12];

    v13 = [v1 URL];
    v14 = INIntentSlotValueTransformToURLValue(v13);
    [(_INPBReservation *)v2 setUrl:v14];

    v15 = objc_alloc_init(_INPBTicketedEventReservation);
    [(_INPBTicketedEventReservation *)v15 setReservation:v2];
    v16 = [v1 event];
    v17 = INIntentSlotValueTransformToTicketedEvent(v16);
    [(_INPBTicketedEventReservation *)v15 setEvent:v17];

    v18 = [v1 reservedSeat];

    v19 = INIntentSlotValueTransformToSeat(v18);
    [(_INPBTicketedEventReservation *)v15 setReservedSeat:v19];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromTicketedEventReservations(void *a1)
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

          v8 = INIntentSlotValueTransformFromTicketedEventReservation(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToTicketedEventReservations(void *a1)
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

          v8 = INIntentSlotValueTransformToTicketedEventReservation(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBStartAudioCallIntentResponseReadFrom(void *a1, void *a2)
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
        if (v13 == 1000)
        {
          v14 = objc_alloc_init(_INPBCallMetrics);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBCallMetricsReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setMetrics:v14];
          goto LABEL_39;
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
              goto LABEL_43;
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

LABEL_43:
          [a1 setAudioRoute:v21];
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setStatus:v14];
LABEL_39:

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTargetContacts:v14];
          }

          goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INDeleteEventIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7281FB8[a1];
  }
}

uint64_t _INPBCreateNoteIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBNote);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBNoteReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCreatedNote:v13];
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

uint64_t _INPBHomeAttributeReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_INPBHomeAttributeValue);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeAttributeValueReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setAttributeValue:v20];
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
        [a1 setAttributeType:v19];
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

uint64_t __Block_byref_object_copy__65246(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _INPBGetCarPowerLevelStatusIntentReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBDataString);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setCarName:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBIntentMetadata);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPlayMediaIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v55) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (LOBYTE(v55) & 0x7F) << v5;
      if ((LOBYTE(v55) & 0x80) == 0)
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
    switch((v12 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
        goto LABEL_123;
      case 2u:
        v14 = objc_alloc_init(_INPBMediaItemValue);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addMediaItems:v14];
        }

        goto LABEL_123;
      case 3u:
        v14 = objc_alloc_init(_INPBMediaItemValue);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setMediaContainer:v14];
        goto LABEL_123;
      case 4u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v55) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (LOBYTE(v55) & 0x7F) << v29;
          if ((LOBYTE(v55) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_137;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_137:
        [a1 setPlayShuffled:v35];
        goto LABEL_124;
      case 5u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v55) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (LOBYTE(v55) & 0x7F) << v15;
          if ((LOBYTE(v55) & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_131;
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

LABEL_131:
        [a1 setPlaybackRepeatMode:v21];
        goto LABEL_124;
      case 6u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v55) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (LOBYTE(v55) & 0x7F) << v36;
          if ((LOBYTE(v55) & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v42 = 0;
            goto LABEL_139;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_139:
        [a1 setResumePlayback:v42];
        goto LABEL_124;
      case 7u:
        v14 = objc_alloc_init(_INPBTimestamp);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimestampReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setExpirationDate:v14];
        goto LABEL_123;
      case 8u:
        v14 = objc_alloc_init(_INPBDataString);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addBucket:v14];
        }

        goto LABEL_123;
      case 9u:
        v14 = PBReaderReadString();
        [a1 setRecoID:v14];
        goto LABEL_123;
      case 0xAu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v55) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (LOBYTE(v55) & 0x7F) << v22;
          if ((LOBYTE(v55) & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_135;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_135:
        [a1 setPlaybackQueueLocation:v28];
        goto LABEL_124;
      case 0xBu:
        v55 = 0.0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setPlaybackSpeed:v55];
        goto LABEL_124;
      case 0xCu:
        v14 = objc_alloc_init(_INPBMediaSearch);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBMediaSearchReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setMediaSearch:v14];
        goto LABEL_123;
      case 0xDu:
        v14 = objc_alloc_init(_INPBString);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addHashedRouteUIDs:v14];
        }

        goto LABEL_123;
      case 0xEu:
        v14 = objc_alloc_init(_INPBString);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setPlaylistTitle:v14];
        goto LABEL_123;
      case 0xFu:
        v14 = objc_alloc_init(_INPBString);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setMusicArtistName:v14];
        goto LABEL_123;
      case 0x10u:
        v14 = objc_alloc_init(_INPBString);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setAudiobookTitle:v14];
        goto LABEL_123;
      case 0x11u:
        v14 = objc_alloc_init(_INPBString);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setAudiobookAuthor:v14];
        goto LABEL_123;
      case 0x12u:
        v14 = objc_alloc_init(_INPBString);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setShowTitle:v14];
        goto LABEL_123;
      case 0x13u:
        v14 = objc_alloc_init(_INPBString);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        [a1 setMediaUserContext:v14];
        goto LABEL_123;
      case 0x14u:
        v14 = objc_alloc_init(_INPBMediaItemGroup);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBMediaItemGroupReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addAudioSearchResults:v14];
        }

        goto LABEL_123;
      case 0x15u:
        v14 = objc_alloc_init(_INPBMediaItemGroup);
        v55 = 0.0;
        v56 = 0;
        if (!PBReaderPlaceMark() || !_INPBMediaItemGroupReadFrom(v14, a2))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addAlternativeResults:v14];
        }

        goto LABEL_123;
      case 0x16u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v55) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (LOBYTE(v55) & 0x7F) << v43;
          if ((LOBYTE(v55) & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v49 = 0;
            goto LABEL_143;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v45;
        }

LABEL_143:
        [a1 setParsecCategory:v49];
        goto LABEL_124;
      default:
        if (v13 == 100)
        {
          v14 = PBReaderReadString();
          [a1 setProxiedBundleIdentifier:v14];
          goto LABEL_123;
        }

        if (v13 != 110)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

LABEL_124:
          v52 = [a2 position];
          if (v52 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        v14 = objc_alloc_init(_INPBPrivatePlayMediaIntentData);
        v55 = 0.0;
        v56 = 0;
        if (PBReaderPlaceMark() && _INPBPrivatePlayMediaIntentDataReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setPrivatePlayMediaIntentData:v14];
LABEL_123:

          goto LABEL_124;
        }

LABEL_148:

        return 0;
    }
  }
}

__CFString *INSendRideFeedbackIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E72822D0[a1];
  }
}

unint64_t INVisualCodeTypeGetBackingType(unint64_t result)
{
  if (result >= 7)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INVisualCodeTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INVisualCodeTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72822F0[a1 - 1];
  }
}

uint64_t INVisualCodeTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"contact"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"requestPayment"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"sendPayment"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"transit"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"bus"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"subway"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INVisualCodeTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v5 = @"transit";
        break;
      case 5:
        v5 = @"bus";
        break;
      case 6:
        v5 = @"subway";
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
        v5 = @"contact";
        break;
      case 2:
        v5 = @"request payment";
        break;
      case 3:
        v5 = @"send payment";
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_15:

  return v4;
}

uint64_t _INPBRideCompletionStatusReadFrom(void *a1, void *a2)
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
        LOBYTE(v65) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65 & 0x7F) << v5;
        if ((v65 & 0x80) == 0)
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
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v65) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v65 & 0x7F) << v36;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_109;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_109:
            [a1 setCanceled:v42];
            goto LABEL_124;
          }

          if (v13 == 4)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v65) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v65 & 0x7F) << v22;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_105;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_105:
            [a1 setMissedPickup:v28];
            goto LABEL_124;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(_INPBUserActivity);
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !_INPBUserActivityReadFrom(v14, a2))
            {
LABEL_127:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setCompletionUserActivity:v14];
            goto LABEL_84;
          }

          if (v13 == 2)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v65) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v65 & 0x7F) << v15;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_103;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_103:
            [a1 setCompleted:v21];
            goto LABEL_124;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBCurrencyAmountValue);
          v65 = 0;
          v66 = 0;
          if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v14, a2))
          {
            goto LABEL_127;
          }

          PBReaderRecallMark();
          [a1 setPaymentAmount:v14];
          goto LABEL_84;
        }

        if (v13 == 6)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v65) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v65 & 0x7F) << v29;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_107;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_107:
          [a1 setOutstanding:v35];
          goto LABEL_124;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v65) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v65 & 0x7F) << v43;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_111;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_111:
            [a1 setCanceledByService:v49];
            goto LABEL_124;
          case 8:
            if ((v12 & 7) == 2)
            {
              v65 = 0;
              v66 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v51 = [a2 position];
                if (v51 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v52 = 0;
                v53 = 0;
                v54 = 0;
                while (1)
                {
                  v67 = 0;
                  v55 = [a2 position] + 1;
                  if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                  {
                    v57 = [a2 data];
                    [v57 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v54 |= (v67 & 0x7F) << v52;
                  if ((v67 & 0x80) == 0)
                  {
                    break;
                  }

                  v52 += 7;
                  v11 = v53++ >= 9;
                  if (v11)
                  {
                    goto LABEL_99;
                  }
                }

                [a2 hasError];
LABEL_99:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v58 = 0;
              v59 = 0;
              v60 = 0;
              while (1)
              {
                LOBYTE(v65) = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v65 & 0x7F) << v58;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  goto LABEL_123;
                }
              }

              [a2 hasError];
LABEL_123:
              PBRepeatedInt32Add();
            }

            goto LABEL_124;
          case 9:
            v14 = objc_alloc_init(_INPBCurrencyAmountValue);
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v14, a2))
            {
              goto LABEL_127;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addDefaultTippingOptions:v14];
            }

LABEL_84:

            goto LABEL_124;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_124:
      v64 = [a2 position];
    }

    while (v64 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBResetTimerIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBTimer);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addResetTimers:v13];
        }
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

void sub_18EB8EF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACXDeviceConnectionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppConduitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppConduitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7282398;
    v7 = 0;
    AppConduitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AppConduitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("ACXDeviceConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getACXDeviceConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppConduitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppConduitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _INPBMessageReactionReadFrom(void *a1, void *a2)
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
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          [a1 setEmoji:v14];
          goto LABEL_38;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBSticker);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBStickerReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setSticker:v14];
          goto LABEL_38;
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
              goto LABEL_42;
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

LABEL_42:
          [a1 setReactionType:v21];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setReactionDescription:v14];
LABEL_38:

          goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INMessagePlaybackStateGetBackingType(unint64_t a1)
{
  if (a1 < 3)
  {
    return (a1 + 1);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INMessagePlaybackStateGetFacadeType(int a1, int a2)
{
  v2 = a2 == 2;
  if (a2 == 3)
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

__CFString *INMessagePlaybackStateGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"playing";
  }

  if (a1 == 1)
  {
    return @"stopped";
  }

  else
  {
    return v1;
  }
}

uint64_t INMessagePlaybackStateWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"stopped"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"playing"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMessagePlaybackStateGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"playing";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"stopped";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBCompressFileIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(_INPBString);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setEntityName:v21];
LABEL_35:

        goto LABEL_42;
      }

      if (v13 == 2)
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
            goto LABEL_41;
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

LABEL_41:
        [a1 setEntityType:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {
LABEL_45:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPayloadUnsupportedReadFrom(void *a1, void *a2)
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
        LOBYTE(v332[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v332[0] & 0x7F) << v5;
        if ((v332[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 1302)
      {
        break;
      }

      if (v13 > 1106)
      {
        if (v13 > 1200)
        {
          if (v13 > 1299)
          {
            switch(v13)
            {
              case 0x514:
                v260 = 0;
                v261 = 0;
                v262 = 0;
                while (1)
                {
                  LOBYTE(v332[0]) = 0;
                  v263 = [a2 position] + 1;
                  if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 1, v264 <= objc_msgSend(a2, "length")))
                  {
                    v265 = [a2 data];
                    [v265 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v262 |= (v332[0] & 0x7F) << v260;
                  if ((v332[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v260 += 7;
                  v11 = v261++ >= 9;
                  if (v11)
                  {
                    v266 = 0;
                    goto LABEL_629;
                  }
                }

                if ([a2 hasError])
                {
                  v266 = 0;
                }

                else
                {
                  v266 = v262;
                }

LABEL_629:
                [a1 setStartCallIntentContactsUnsupportedReason:v266];
                goto LABEL_666;
              case 0x515:
                v316 = 0;
                v317 = 0;
                v318 = 0;
                while (1)
                {
                  LOBYTE(v332[0]) = 0;
                  v319 = [a2 position] + 1;
                  if (v319 >= [a2 position] && (v320 = objc_msgSend(a2, "position") + 1, v320 <= objc_msgSend(a2, "length")))
                  {
                    v321 = [a2 data];
                    [v321 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v318 |= (v332[0] & 0x7F) << v316;
                  if ((v332[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v316 += 7;
                  v11 = v317++ >= 9;
                  if (v11)
                  {
                    v322 = 0;
                    goto LABEL_661;
                  }
                }

                if ([a2 hasError])
                {
                  v322 = 0;
                }

                else
                {
                  v322 = v318;
                }

LABEL_661:
                [a1 setStartCallIntentCallCapabilityUnsupportedReason:v322];
                goto LABEL_666;
              case 0x516:
                v98 = 0;
                v99 = 0;
                v100 = 0;
                while (1)
                {
                  LOBYTE(v332[0]) = 0;
                  v101 = [a2 position] + 1;
                  if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
                  {
                    v103 = [a2 data];
                    [v103 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v100 |= (v332[0] & 0x7F) << v98;
                  if ((v332[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v98 += 7;
                  v11 = v99++ >= 9;
                  if (v11)
                  {
                    v104 = 0;
                    goto LABEL_597;
                  }
                }

                if ([a2 hasError])
                {
                  v104 = 0;
                }

                else
                {
                  v104 = v100;
                }

LABEL_597:
                [a1 setStartCallIntentPreferredCallProviderUnsupportedReason:v104];
                goto LABEL_666;
            }
          }

          else
          {
            switch(v13)
            {
              case 0x4B1:
                v232 = 0;
                v233 = 0;
                v234 = 0;
                while (1)
                {
                  LOBYTE(v332[0]) = 0;
                  v235 = [a2 position] + 1;
                  if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 1, v236 <= objc_msgSend(a2, "length")))
                  {
                    v237 = [a2 data];
                    [v237 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v234 |= (v332[0] & 0x7F) << v232;
                  if ((v332[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v232 += 7;
                  v11 = v233++ >= 9;
                  if (v11)
                  {
                    v238 = 0;
                    goto LABEL_613;
                  }
                }

                if ([a2 hasError])
                {
                  v238 = 0;
                }

                else
                {
                  v238 = v234;
                }

LABEL_613:
                [a1 setStopShareETAIntentRecipientUnsupportedReason:v238];
                goto LABEL_666;
              case 0x4B2:
                v288 = 0;
                v289 = 0;
                v290 = 0;
                while (1)
                {
                  LOBYTE(v332[0]) = 0;
                  v291 = [a2 position] + 1;
                  if (v291 >= [a2 position] && (v292 = objc_msgSend(a2, "position") + 1, v292 <= objc_msgSend(a2, "length")))
                  {
                    v293 = [a2 data];
                    [v293 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v290 |= (v332[0] & 0x7F) << v288;
                  if ((v332[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v288 += 7;
                  v11 = v289++ >= 9;
                  if (v11)
                  {
                    v294 = 0;
                    goto LABEL_645;
                  }
                }

                if ([a2 hasError])
                {
                  v294 = 0;
                }

                else
                {
                  v294 = v290;
                }

LABEL_645:
                [a1 setShareETAIntentRecipientUnsupportedReason:v294];
                goto LABEL_666;
              case 0x4B3:
                v42 = 0;
                v43 = 0;
                v44 = 0;
                while (1)
                {
                  LOBYTE(v332[0]) = 0;
                  v45 = [a2 position] + 1;
                  if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                  {
                    v47 = [a2 data];
                    [v47 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v44 |= (v332[0] & 0x7F) << v42;
                  if ((v332[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v42 += 7;
                  v11 = v43++ >= 9;
                  if (v11)
                  {
                    v48 = 0;
                    goto LABEL_581;
                  }
                }

                if ([a2 hasError])
                {
                  v48 = 0;
                }

                else
                {
                  v48 = v44;
                }

LABEL_581:
                [a1 setReportIncidentIntentIncidentTypeUnsupportedReason:v48];
                goto LABEL_666;
            }
          }
        }

        else if (v13 > 1149)
        {
          switch(v13)
          {
            case 0x47E:
              v246 = 0;
              v247 = 0;
              v248 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v249 = [a2 position] + 1;
                if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
                {
                  v251 = [a2 data];
                  [v251 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v248 |= (v332[0] & 0x7F) << v246;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v246 += 7;
                v11 = v247++ >= 9;
                if (v11)
                {
                  v252 = 0;
                  goto LABEL_621;
                }
              }

              if ([a2 hasError])
              {
                v252 = 0;
              }

              else
              {
                v252 = v248;
              }

LABEL_621:
              [a1 setCreateTimerIntentLabelUnsupportedReason:v252];
              goto LABEL_666;
            case 0x47F:
              v302 = 0;
              v303 = 0;
              v304 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v305 = [a2 position] + 1;
                if (v305 >= [a2 position] && (v306 = objc_msgSend(a2, "position") + 1, v306 <= objc_msgSend(a2, "length")))
                {
                  v307 = [a2 data];
                  [v307 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v304 |= (v332[0] & 0x7F) << v302;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v302 += 7;
                v11 = v303++ >= 9;
                if (v11)
                {
                  v308 = 0;
                  goto LABEL_653;
                }
              }

              if ([a2 hasError])
              {
                v308 = 0;
              }

              else
              {
                v308 = v304;
              }

LABEL_653:
              [a1 setSetTimerAttributeIntentTargetTimerUnsupportedReason:v308];
              goto LABEL_666;
            case 0x4B0:
              v84 = 0;
              v85 = 0;
              v86 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v87 = [a2 position] + 1;
                if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
                {
                  v89 = [a2 data];
                  [v89 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v86 |= (v332[0] & 0x7F) << v84;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                v11 = v85++ >= 9;
                if (v11)
                {
                  v90 = 0;
                  goto LABEL_589;
                }
              }

              if ([a2 hasError])
              {
                v90 = 0;
              }

              else
              {
                v90 = v86;
              }

LABEL_589:
              [a1 setRunWorkflowIntentWorkflowUnsupportedReason:v90];
              goto LABEL_666;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x453:
              v218 = 0;
              v219 = 0;
              v220 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v221 = [a2 position] + 1;
                if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
                {
                  v223 = [a2 data];
                  [v223 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v220 |= (v332[0] & 0x7F) << v218;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v218 += 7;
                v11 = v219++ >= 9;
                if (v11)
                {
                  v224 = 0;
                  goto LABEL_605;
                }
              }

              if ([a2 hasError])
              {
                v224 = 0;
              }

              else
              {
                v224 = v220;
              }

LABEL_605:
              [a1 setAddMediaIntentMediaItemsUnsupportedReason:v224];
              goto LABEL_666;
            case 0x454:
              v274 = 0;
              v275 = 0;
              v276 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v277 = [a2 position] + 1;
                if (v277 >= [a2 position] && (v278 = objc_msgSend(a2, "position") + 1, v278 <= objc_msgSend(a2, "length")))
                {
                  v279 = [a2 data];
                  [v279 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v276 |= (v332[0] & 0x7F) << v274;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v274 += 7;
                v11 = v275++ >= 9;
                if (v11)
                {
                  v280 = 0;
                  goto LABEL_637;
                }
              }

              if ([a2 hasError])
              {
                v280 = 0;
              }

              else
              {
                v280 = v276;
              }

LABEL_637:
              [a1 setAddMediaIntentMediaDestinationUnsupportedReason:v280];
              goto LABEL_666;
            case 0x455:
              v14 = 0;
              v15 = 0;
              v16 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v332[0] & 0x7F) << v14;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_573;
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

LABEL_573:
              [a1 setUpdateMediaAffinityIntentMediaItemsUnsupportedReason:v20];
              goto LABEL_666;
          }
        }

        goto LABEL_484;
      }

      if (v13 > 1100)
      {
        if (v13 > 1103)
        {
          if (v13 == 1104)
          {
            v134 = 0;
            v135 = 0;
            v136 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v137 = [a2 position] + 1;
              if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
              {
                v139 = [a2 data];
                [v139 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v136 |= (v332[0] & 0x7F) << v134;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v134 += 7;
              v11 = v135++ >= 9;
              if (v11)
              {
                v140 = 0;
                goto LABEL_517;
              }
            }

            if ([a2 hasError])
            {
              v140 = 0;
            }

            else
            {
              v140 = v136;
            }

LABEL_517:
            [a1 setPlayMediaIntentMediaItemsUnsupportedReason:v140];
          }

          else if (v13 == 1105)
          {
            v190 = 0;
            v191 = 0;
            v192 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v193 = [a2 position] + 1;
              if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
              {
                v195 = [a2 data];
                [v195 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v192 |= (v332[0] & 0x7F) << v190;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v190 += 7;
              v11 = v191++ >= 9;
              if (v11)
              {
                v196 = 0;
                goto LABEL_557;
              }
            }

            if ([a2 hasError])
            {
              v196 = 0;
            }

            else
            {
              v196 = v192;
            }

LABEL_557:
            [a1 setPlayMediaIntentPlaybackSpeedUnsupportedReason:v196];
          }

          else
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v73 = [a2 position] + 1;
              if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
              {
                v75 = [a2 data];
                [v75 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v72 |= (v332[0] & 0x7F) << v70;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v11 = v71++ >= 9;
              if (v11)
              {
                v76 = 0;
                goto LABEL_501;
              }
            }

            if ([a2 hasError])
            {
              v76 = 0;
            }

            else
            {
              v76 = v72;
            }

LABEL_501:
            [a1 setSearchForMediaIntentMediaItemsUnsupportedReason:v76];
          }
        }

        else if (v13 == 1101)
        {
          v120 = 0;
          v121 = 0;
          v122 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v123 = [a2 position] + 1;
            if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
            {
              v125 = [a2 data];
              [v125 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v122 |= (v332[0] & 0x7F) << v120;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v120 += 7;
            v11 = v121++ >= 9;
            if (v11)
            {
              v126 = 0;
              goto LABEL_509;
            }
          }

          if ([a2 hasError])
          {
            v126 = 0;
          }

          else
          {
            v126 = v122;
          }

LABEL_509:
          [a1 setSendPaymentIntentCurrencyAmountUnsupportedReason:v126];
        }

        else if (v13 == 1102)
        {
          v176 = 0;
          v177 = 0;
          v178 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v179 = [a2 position] + 1;
            if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
            {
              v181 = [a2 data];
              [v181 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v178 |= (v332[0] & 0x7F) << v176;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v176 += 7;
            v11 = v177++ >= 9;
            if (v11)
            {
              v182 = 0;
              goto LABEL_549;
            }
          }

          if ([a2 hasError])
          {
            v182 = 0;
          }

          else
          {
            v182 = v178;
          }

LABEL_549:
          [a1 setRequestPaymentIntentPayerUnsupportedReason:v182];
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v332[0] & 0x7F) << v28;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_493;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_493:
          [a1 setRequestPaymentIntentCurrencyAmountUnsupportedReason:v34];
        }

        goto LABEL_666;
      }

      if (v13 > 999)
      {
        switch(v13)
        {
          case 0x3E8:
            v162 = 0;
            v163 = 0;
            v164 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v165 = [a2 position] + 1;
              if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
              {
                v167 = [a2 data];
                [v167 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v164 |= (v332[0] & 0x7F) << v162;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v162 += 7;
              v11 = v163++ >= 9;
              if (v11)
              {
                v168 = 0;
                goto LABEL_541;
              }
            }

            if ([a2 hasError])
            {
              v168 = 0;
            }

            else
            {
              v168 = v164;
            }

LABEL_541:
            [a1 setSendMessageIntentRecipientUnsupportedReason:v168];
            goto LABEL_666;
          case 0x3F2:
            v204 = 0;
            v205 = 0;
            v206 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v207 = [a2 position] + 1;
              if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
              {
                v209 = [a2 data];
                [v209 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v206 |= (v332[0] & 0x7F) << v204;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v204 += 7;
              v11 = v205++ >= 9;
              if (v11)
              {
                v210 = 0;
                goto LABEL_565;
              }
            }

            if ([a2 hasError])
            {
              v210 = 0;
            }

            else
            {
              v210 = v206;
            }

LABEL_565:
            [a1 setSaveHealthSampleIntentRecordDateUnsupportedReason:v210];
            goto LABEL_666;
          case 0x44C:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v332[0] & 0x7F) << v56;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                v62 = 0;
                goto LABEL_533;
              }
            }

            if ([a2 hasError])
            {
              v62 = 0;
            }

            else
            {
              v62 = v58;
            }

LABEL_533:
            [a1 setSendPaymentIntentPayeeUnsupportedReason:v62];
            goto LABEL_666;
        }

        goto LABEL_484;
      }

      if (v13 == 1)
      {
        v148 = 0;
        v149 = 0;
        v150 = 0;
        while (1)
        {
          LOBYTE(v332[0]) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v332[0] & 0x7F) << v148;
          if ((v332[0] & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v11 = v149++ >= 9;
          if (v11)
          {
            v154 = 0;
            goto LABEL_525;
          }
        }

        if ([a2 hasError])
        {
          v154 = 0;
        }

        else
        {
          v154 = v150;
        }

LABEL_525:
        [a1 setReason:v154];
        goto LABEL_666;
      }

      if (v13 != 2)
      {
        goto LABEL_484;
      }

      v112 = objc_alloc_init(_INPBConflictingParameter);
      v332[0] = 0;
      v332[1] = 0;
      if (!PBReaderPlaceMark() || !_INPBConflictingParameterReadFrom(v112, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      if (v112)
      {
        [a1 addConflictingParameters:v112];
      }

LABEL_666:
      v330 = [a2 position];
      if (v330 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 1554)
    {
      if (v13 <= 1401)
      {
        if (v13 <= 1304)
        {
          if (v13 == 1303)
          {
            v155 = 0;
            v156 = 0;
            v157 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v158 = [a2 position] + 1;
              if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
              {
                v160 = [a2 data];
                [v160 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v157 |= (v332[0] & 0x7F) << v155;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v155 += 7;
              v11 = v156++ >= 9;
              if (v11)
              {
                v161 = 0;
                goto LABEL_529;
              }
            }

            if ([a2 hasError])
            {
              v161 = 0;
            }

            else
            {
              v161 = v157;
            }

LABEL_529:
            [a1 setStartCallIntentCallRecordToCallBackUnsupportedReason:v161];
            goto LABEL_666;
          }

          if (v13 == 1304)
          {
            v113 = 0;
            v114 = 0;
            v115 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v116 = [a2 position] + 1;
              if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
              {
                v118 = [a2 data];
                [v118 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v115 |= (v332[0] & 0x7F) << v113;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v113 += 7;
              v11 = v114++ >= 9;
              if (v11)
              {
                v119 = 0;
                goto LABEL_489;
              }
            }

            if ([a2 hasError])
            {
              v119 = 0;
            }

            else
            {
              v119 = v115;
            }

LABEL_489:
            [a1 setJoinCallIntentGroupConversationUnsupportedReason:v119];
            goto LABEL_666;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x519:
              v169 = 0;
              v170 = 0;
              v171 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v172 = [a2 position] + 1;
                if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
                {
                  v174 = [a2 data];
                  [v174 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v171 |= (v332[0] & 0x7F) << v169;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v169 += 7;
                v11 = v170++ >= 9;
                if (v11)
                {
                  v175 = 0;
                  goto LABEL_545;
                }
              }

              if ([a2 hasError])
              {
                v175 = 0;
              }

              else
              {
                v175 = v171;
              }

LABEL_545:
              [a1 setAddCallParticipantIntentParticipantsUnsupportedReason:v175];
              goto LABEL_666;
            case 0x578:
              v211 = 0;
              v212 = 0;
              v213 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v214 = [a2 position] + 1;
                if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
                {
                  v216 = [a2 data];
                  [v216 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v213 |= (v332[0] & 0x7F) << v211;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v211 += 7;
                v11 = v212++ >= 9;
                if (v11)
                {
                  v217 = 0;
                  goto LABEL_569;
                }
              }

              if ([a2 hasError])
              {
                v217 = 0;
              }

              else
              {
                v217 = v213;
              }

LABEL_569:
              [a1 setDateTimeRangeUnsupportedReason:v217];
              goto LABEL_666;
            case 0x579:
              v63 = 0;
              v64 = 0;
              v65 = 0;
              while (1)
              {
                LOBYTE(v332[0]) = 0;
                v66 = [a2 position] + 1;
                if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
                {
                  v68 = [a2 data];
                  [v68 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v65 |= (v332[0] & 0x7F) << v63;
                if ((v332[0] & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v11 = v64++ >= 9;
                if (v11)
                {
                  v69 = 0;
                  goto LABEL_537;
                }
              }

              if ([a2 hasError])
              {
                v69 = 0;
              }

              else
              {
                v69 = v65;
              }

LABEL_537:
              [a1 setParticipantUnsupportedReason:v69];
              goto LABEL_666;
          }
        }
      }

      else
      {
        if (v13 > 1551)
        {
          if (v13 == 1552)
          {
            v141 = 0;
            v142 = 0;
            v143 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v144 = [a2 position] + 1;
              if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
              {
                v146 = [a2 data];
                [v146 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v143 |= (v332[0] & 0x7F) << v141;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v141 += 7;
              v11 = v142++ >= 9;
              if (v11)
              {
                v147 = 0;
                goto LABEL_521;
              }
            }

            if ([a2 hasError])
            {
              v147 = 0;
            }

            else
            {
              v147 = v143;
            }

LABEL_521:
            [a1 setDeleteTasksIntentTaskListUnsupportedReason:v147];
          }

          else if (v13 == 1553)
          {
            v197 = 0;
            v198 = 0;
            v199 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v200 = [a2 position] + 1;
              if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
              {
                v202 = [a2 data];
                [v202 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v199 |= (v332[0] & 0x7F) << v197;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v197 += 7;
              v11 = v198++ >= 9;
              if (v11)
              {
                v203 = 0;
                goto LABEL_561;
              }
            }

            if ([a2 hasError])
            {
              v203 = 0;
            }

            else
            {
              v203 = v199;
            }

LABEL_561:
            [a1 setAddTasksIntentTemporalEventTriggerUnsupportedReason:v203];
          }

          else
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v80 = [a2 position] + 1;
              if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
              {
                v82 = [a2 data];
                [v82 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v79 |= (v332[0] & 0x7F) << v77;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v11 = v78++ >= 9;
              if (v11)
              {
                v83 = 0;
                goto LABEL_505;
              }
            }

            if ([a2 hasError])
            {
              v83 = 0;
            }

            else
            {
              v83 = v79;
            }

LABEL_505:
            [a1 setAddTasksIntentContactEventTriggerUnsupportedReason:v83];
          }

          goto LABEL_666;
        }

        switch(v13)
        {
          case 0x57A:
            v127 = 0;
            v128 = 0;
            v129 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v130 = [a2 position] + 1;
              if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
              {
                v132 = [a2 data];
                [v132 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v129 |= (v332[0] & 0x7F) << v127;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v127 += 7;
              v11 = v128++ >= 9;
              if (v11)
              {
                v133 = 0;
                goto LABEL_513;
              }
            }

            if ([a2 hasError])
            {
              v133 = 0;
            }

            else
            {
              v133 = v129;
            }

LABEL_513:
            [a1 setTargetEventUnsupportedReason:v133];
            goto LABEL_666;
          case 0x5DC:
            v183 = 0;
            v184 = 0;
            v185 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v186 = [a2 position] + 1;
              if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
              {
                v188 = [a2 data];
                [v188 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v185 |= (v332[0] & 0x7F) << v183;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v183 += 7;
              v11 = v184++ >= 9;
              if (v11)
              {
                v189 = 0;
                goto LABEL_553;
              }
            }

            if ([a2 hasError])
            {
              v189 = 0;
            }

            else
            {
              v189 = v185;
            }

LABEL_553:
            [a1 setSnoozeTasksIntentTaskUnsupportedReason:v189];
            goto LABEL_666;
          case 0x60F:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            while (1)
            {
              LOBYTE(v332[0]) = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v332[0] & 0x7F) << v35;
              if ((v332[0] & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                v41 = 0;
                goto LABEL_497;
              }
            }

            if ([a2 hasError])
            {
              v41 = 0;
            }

            else
            {
              v41 = v37;
            }

LABEL_497:
            [a1 setDeleteTasksIntentTaskUnsupportedReason:v41];
            goto LABEL_666;
        }
      }
    }

    else if (v13 > 1621)
    {
      if (v13 <= 1624)
      {
        if (v13 == 1622)
        {
          v239 = 0;
          v240 = 0;
          v241 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v242 = [a2 position] + 1;
            if (v242 >= [a2 position] && (v243 = objc_msgSend(a2, "position") + 1, v243 <= objc_msgSend(a2, "length")))
            {
              v244 = [a2 data];
              [v244 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v241 |= (v332[0] & 0x7F) << v239;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v239 += 7;
            v11 = v240++ >= 9;
            if (v11)
            {
              v245 = 0;
              goto LABEL_617;
            }
          }

          if ([a2 hasError])
          {
            v245 = 0;
          }

          else
          {
            v245 = v241;
          }

LABEL_617:
          [a1 setUpdateAlarmIntentAlarmUnsupportedReason:v245];
        }

        else if (v13 == 1623)
        {
          v295 = 0;
          v296 = 0;
          v297 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v298 = [a2 position] + 1;
            if (v298 >= [a2 position] && (v299 = objc_msgSend(a2, "position") + 1, v299 <= objc_msgSend(a2, "length")))
            {
              v300 = [a2 data];
              [v300 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v297 |= (v332[0] & 0x7F) << v295;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v295 += 7;
            v11 = v296++ >= 9;
            if (v11)
            {
              v301 = 0;
              goto LABEL_649;
            }
          }

          if ([a2 hasError])
          {
            v301 = 0;
          }

          else
          {
            v301 = v297;
          }

LABEL_649:
          [a1 setDeleteAlarmIntentAlarmsUnsupportedReason:v301];
        }

        else
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v332[0] & 0x7F) << v49;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v55 = 0;
              goto LABEL_585;
            }
          }

          if ([a2 hasError])
          {
            v55 = 0;
          }

          else
          {
            v55 = v51;
          }

LABEL_585:
          [a1 setSnoozeAlarmIntentAlarmsUnsupportedReason:v55];
        }

        goto LABEL_666;
      }

      switch(v13)
      {
        case 0x659:
          v267 = 0;
          v268 = 0;
          v269 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v270 = [a2 position] + 1;
            if (v270 >= [a2 position] && (v271 = objc_msgSend(a2, "position") + 1, v271 <= objc_msgSend(a2, "length")))
            {
              v272 = [a2 data];
              [v272 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v269 |= (v332[0] & 0x7F) << v267;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v267 += 7;
            v11 = v268++ >= 9;
            if (v11)
            {
              v273 = 0;
              goto LABEL_633;
            }
          }

          if ([a2 hasError])
          {
            v273 = 0;
          }

          else
          {
            v273 = v269;
          }

LABEL_633:
          [a1 setSearchAlarmIntentAlarmsUnsupportedReason:v273];
          goto LABEL_666;
        case 0x672:
          v323 = 0;
          v324 = 0;
          v325 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v326 = [a2 position] + 1;
            if (v326 >= [a2 position] && (v327 = objc_msgSend(a2, "position") + 1, v327 <= objc_msgSend(a2, "length")))
            {
              v328 = [a2 data];
              [v328 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v325 |= (v332[0] & 0x7F) << v323;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v323 += 7;
            v11 = v324++ >= 9;
            if (v11)
            {
              v329 = 0;
              goto LABEL_665;
            }
          }

          if ([a2 hasError])
          {
            v329 = 0;
          }

          else
          {
            v329 = v325;
          }

LABEL_665:
          [a1 setFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:v329];
          goto LABEL_666;
        case 0x7D0:
          v105 = 0;
          v106 = 0;
          v107 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v108 = [a2 position] + 1;
            if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
            {
              v110 = [a2 data];
              [v110 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v107 |= (v332[0] & 0x7F) << v105;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v105 += 7;
            v11 = v106++ >= 9;
            if (v11)
            {
              v111 = 0;
              goto LABEL_601;
            }
          }

          if ([a2 hasError])
          {
            v111 = 0;
          }

          else
          {
            v111 = v107;
          }

LABEL_601:
          [a1 setCustomUnsupportedReason:v111];
          goto LABEL_666;
      }
    }

    else if (v13 > 1599)
    {
      switch(v13)
      {
        case 0x640:
          v253 = 0;
          v254 = 0;
          v255 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v256 = [a2 position] + 1;
            if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
            {
              v258 = [a2 data];
              [v258 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v255 |= (v332[0] & 0x7F) << v253;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v253 += 7;
            v11 = v254++ >= 9;
            if (v11)
            {
              v259 = 0;
              goto LABEL_625;
            }
          }

          if ([a2 hasError])
          {
            v259 = 0;
          }

          else
          {
            v259 = v255;
          }

LABEL_625:
          [a1 setSendAnnouncementIntentRecipientsUnsupportedReason:v259];
          goto LABEL_666;
        case 0x641:
          v309 = 0;
          v310 = 0;
          v311 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v312 = [a2 position] + 1;
            if (v312 >= [a2 position] && (v313 = objc_msgSend(a2, "position") + 1, v313 <= objc_msgSend(a2, "length")))
            {
              v314 = [a2 data];
              [v314 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v311 |= (v332[0] & 0x7F) << v309;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v309 += 7;
            v11 = v310++ >= 9;
            if (v11)
            {
              v315 = 0;
              goto LABEL_657;
            }
          }

          if ([a2 hasError])
          {
            v315 = 0;
          }

          else
          {
            v315 = v311;
          }

LABEL_657:
          [a1 setSendAnnouncementIntentAnnouncementUnsupportedReason:v315];
          goto LABEL_666;
        case 0x655:
          v91 = 0;
          v92 = 0;
          v93 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v94 = [a2 position] + 1;
            if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
            {
              v96 = [a2 data];
              [v96 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v93 |= (v332[0] & 0x7F) << v91;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            v11 = v92++ >= 9;
            if (v11)
            {
              v97 = 0;
              goto LABEL_593;
            }
          }

          if ([a2 hasError])
          {
            v97 = 0;
          }

          else
          {
            v97 = v93;
          }

LABEL_593:
          [a1 setChangeAlarmStatusIntentAlarmsUnsupportedReason:v97];
          goto LABEL_666;
      }
    }

    else
    {
      switch(v13)
      {
        case 0x613:
          v225 = 0;
          v226 = 0;
          v227 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v228 = [a2 position] + 1;
            if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
            {
              v230 = [a2 data];
              [v230 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v227 |= (v332[0] & 0x7F) << v225;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v225 += 7;
            v11 = v226++ >= 9;
            if (v11)
            {
              v231 = 0;
              goto LABEL_609;
            }
          }

          if ([a2 hasError])
          {
            v231 = 0;
          }

          else
          {
            v231 = v227;
          }

LABEL_609:
          [a1 setAddTasksIntentTargetTaskListMembersUnsupportedReason:v231];
          goto LABEL_666;
        case 0x614:
          v281 = 0;
          v282 = 0;
          v283 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v284 = [a2 position] + 1;
            if (v284 >= [a2 position] && (v285 = objc_msgSend(a2, "position") + 1, v285 <= objc_msgSend(a2, "length")))
            {
              v286 = [a2 data];
              [v286 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v283 |= (v332[0] & 0x7F) << v281;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v281 += 7;
            v11 = v282++ >= 9;
            if (v11)
            {
              v287 = 0;
              goto LABEL_641;
            }
          }

          if ([a2 hasError])
          {
            v287 = 0;
          }

          else
          {
            v287 = v283;
          }

LABEL_641:
          [a1 setSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:v287];
          goto LABEL_666;
        case 0x615:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v332[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v332 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v332[0] & 0x7F) << v21;
            if ((v332[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_577;
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

LABEL_577:
          [a1 setSetTaskAttributeIntentContactEventTriggerUnsupportedReason:v27];
          goto LABEL_666;
      }
    }

LABEL_484:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_666;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INCarDefrosterGetBackingType(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INCarDefrosterGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INCarDefrosterGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7282658[a1 - 1];
  }
}

uint64_t INCarDefrosterWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"front"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"rear"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"all"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCarDefrosterGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"all";
      goto LABEL_7;
    case 2:
      v4 = @"rear";
      goto LABEL_7;
    case 1:
      v4 = @"front";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBTemporalEventTriggerReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBDateTimeRangeValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setDateTime:v13];
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

uint64_t _INPBActivityReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBString);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addActivityDescriptors:v13];
        }

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

    v13 = objc_alloc_init(_INPBString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setActivityType:v13];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBAppNamesReadFrom(void *a1, void *a2)
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
      if (v14 == 3)
      {
        v15 = PBReaderReadString();
        [a1 setSpotlightName:v15];
        goto LABEL_29;
      }

      if (v14 == 4)
      {
        v15 = PBReaderReadString();
        [a1 setAxSpokenName:v15];
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setAppName:v15];
        goto LABEL_29;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setDisplayName:v15];
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

void sub_18EBA19A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68261(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18EBA1C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18EBA1F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

id _INSchemasByIdentifierWithSchemaURLsByIdentifier(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = v1;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v34;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v34 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v33 + 1) + 8 * i);
          v9 = [v3 objectForKeyedSubscript:v8];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v30 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                [*(*(&v29 + 1) + 8 * j) startAccessingSecurityScopedResource];
              }

              v11 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
            }

            while (v11);
          }

          if ([v9 count])
          {
            v14 = [v9 allObjects];
            v15 = [INSchema _schemaWithIntentDefinitionURLs:v14 bundleIdentifier:v8 mainBundleIdentifier:v8 contentOptions:31];
            [v2 setObject:v15 forKeyedSubscript:v8];
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = v9;
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v25 + 1) + 8 * k) stopAccessingSecurityScopedResource];
              }

              v18 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
            }

            while (v18);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v5);
    }

    if ([v2 count])
    {
      v21 = [v2 copy];
    }

    else
    {
      v21 = 0;
    }

    v1 = v24;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void sub_18EBA3964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t _INPBMoveFileIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v44) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v22 = objc_alloc_init(_INPBString);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v22, a2))
            {
LABEL_89:

              return 0;
            }

            PBReaderRecallMark();
            if (v22)
            {
              [a1 addEntityName:v22];
            }

            goto LABEL_69;
          case 5:
            v22 = objc_alloc_init(_INPBString);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v22, a2))
            {
              goto LABEL_89;
            }

            PBReaderRecallMark();
            [a1 setSourceName:v22];
            goto LABEL_69;
          case 6:
            v22 = objc_alloc_init(_INPBString);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v22, a2))
            {
              goto LABEL_89;
            }

            PBReaderRecallMark();
            [a1 setDestinationName:v22];
LABEL_69:

            goto LABEL_86;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v44) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v44 & 0x7F) << v23;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_71;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_71:
            [a1 setOverwrite:v29];
            goto LABEL_86;
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            while (1)
            {
              LOBYTE(v44) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v44 & 0x7F) << v30;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_73;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_73:
            [a1 setSuccess:v36];
            goto LABEL_86;
          case 3:
            if ((v12 & 7) == 2)
            {
              v44 = 0;
              v45 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v15 = [a2 position];
                if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v16 = 0;
                v17 = 0;
                v18 = 0;
                while (1)
                {
                  v46 = 0;
                  v19 = [a2 position] + 1;
                  if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                  {
                    v21 = [a2 data];
                    [v21 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v18 |= (v46 & 0x7F) << v16;
                  if ((v46 & 0x80) == 0)
                  {
                    break;
                  }

                  v16 += 7;
                  v11 = v17++ >= 9;
                  if (v11)
                  {
                    goto LABEL_35;
                  }
                }

                [a2 hasError];
LABEL_35:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v37 = 0;
              v38 = 0;
              v39 = 0;
              while (1)
              {
                LOBYTE(v44) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v44 & 0x7F) << v37;
                if ((v44 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  goto LABEL_85;
                }
              }

              [a2 hasError];
LABEL_85:
              PBRepeatedInt32Add();
            }

            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_86:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INPaymentRecord *INIntentSlotValueTransformFromPaymentRecord(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INPaymentRecord alloc];
    v19 = [v1 payee];
    v3 = INIntentSlotValueTransformFromContact(v19);
    v18 = [v1 payer];
    v4 = INIntentSlotValueTransformFromContact(v18);
    v17 = [v1 currencyAmount];
    v15 = INIntentSlotValueTransformFromCurrencyAmount(v17);
    v16 = [v1 paymentMethod];
    v5 = INIntentSlotValueTransformFromPaymentMethodValue(v16);
    v6 = [v1 note];
    v7 = INIntentSlotValueTransformFromString(v6);
    v8 = [v1 hasStatus];
    v9 = [v1 status];
    if (((v9 - 1 < 5) & v8) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v1 feeAmount];

    v12 = INIntentSlotValueTransformFromCurrencyAmount(v11);
    v13 = [(INPaymentRecord *)v2 initWithPayee:v3 payer:v4 currencyAmount:v15 paymentMethod:v5 note:v7 status:v10 feeAmount:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

_INPBPaymentRecord *INIntentSlotValueTransformToPaymentRecord(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPaymentRecord);
    v3 = [v1 payee];
    v4 = INIntentSlotValueTransformToContact(v3);
    [(_INPBPaymentRecord *)v2 setPayee:v4];

    v5 = [v1 payer];
    v6 = INIntentSlotValueTransformToContact(v5);
    [(_INPBPaymentRecord *)v2 setPayer:v6];

    v7 = [v1 currencyAmount];
    v8 = INIntentSlotValueTransformToCurrencyAmount(v7);
    [(_INPBPaymentRecord *)v2 setCurrencyAmount:v8];

    v9 = [v1 note];
    v10 = INIntentSlotValueTransformToString(v9);
    [(_INPBPaymentRecord *)v2 setNote:v10];

    v11 = [v1 status] - 1;
    if (v11 < 5)
    {
      v12 = (v11 + 1);
    }

    else
    {
      v12 = 0x7FFFFFFFLL;
    }

    [(_INPBPaymentRecord *)v2 setStatus:v12];
    v13 = [v1 paymentMethod];
    v14 = INIntentSlotValueTransformToPaymentMethodValue(v13);
    [(_INPBPaymentRecord *)v2 setPaymentMethod:v14];

    v15 = [v1 feeAmount];

    v16 = INIntentSlotValueTransformToCurrencyAmount(v15);
    [(_INPBPaymentRecord *)v2 setFeeAmount:v16];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromPaymentRecords(void *a1)
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

          v8 = INIntentSlotValueTransformFromPaymentRecord(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPaymentRecords(void *a1)
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

          v8 = INIntentSlotValueTransformToPaymentRecord(*(*(&v12 + 1) + 8 * i));
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

uint64_t __Block_byref_object_copy__69070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _INPBSearchCallHistoryIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v78) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v78 & 0x7F) << v5;
        if ((v78 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v14 <= 7)
        {
          if (v14 == 6)
          {
            v15 = objc_alloc_init(_INPBContact);
            v78 = 0;
            v79 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v15, a2))
            {
LABEL_160:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setRecipient:v15];
            goto LABEL_75;
          }

          if (v14 == 7)
          {
            if (v13 != 2)
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              while (1)
              {
                LOBYTE(v78) = 0;
                v62 = [a2 position] + 1;
                if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                {
                  v64 = [a2 data];
                  [v64 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v61 |= (v78 & 0x7F) << v59;
                if ((v78 & 0x80) == 0)
                {
                  goto LABEL_155;
                }

                v59 += 7;
                v11 = v60++ >= 9;
                if (v11)
                {
                  goto LABEL_156;
                }
              }
            }

            v78 = 0;
            v79 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v31 = [a2 position];
              if (v31 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v32 = 0;
              v33 = 0;
              v34 = 0;
              while (1)
              {
                v80 = 0;
                v35 = [a2 position] + 1;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                {
                  v37 = [a2 data];
                  [v37 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v34 |= (v80 & 0x7F) << v32;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v11 = v33++ >= 9;
                if (v11)
                {
                  goto LABEL_65;
                }
              }

              [a2 hasError];
LABEL_65:
              PBRepeatedInt32Add();
            }

LABEL_106:
            PBReaderRecallMark();
            goto LABEL_157;
          }
        }

        else
        {
          switch(v14)
          {
            case 8:
              if (v13 != 2)
              {
                v65 = 0;
                v66 = 0;
                v67 = 0;
                while (1)
                {
                  LOBYTE(v78) = 0;
                  v68 = [a2 position] + 1;
                  if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                  {
                    v70 = [a2 data];
                    [v70 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v67 |= (v78 & 0x7F) << v65;
                  if ((v78 & 0x80) == 0)
                  {
                    break;
                  }

                  v65 += 7;
                  v11 = v66++ >= 9;
                  if (v11)
                  {
                    goto LABEL_156;
                  }
                }

LABEL_155:
                [a2 hasError];
LABEL_156:
                PBRepeatedInt32Add();
                goto LABEL_157;
              }

              v78 = 0;
              v79 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v38 = [a2 position];
                if (v38 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  goto LABEL_106;
                }

                v39 = 0;
                v40 = 0;
                v41 = 0;
                while (1)
                {
                  v80 = 0;
                  v42 = [a2 position] + 1;
                  if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                  {
                    v44 = [a2 data];
                    [v44 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v41 |= (v80 & 0x7F) << v39;
                  if ((v80 & 0x80) == 0)
                  {
                    break;
                  }

                  v39 += 7;
                  v11 = v40++ >= 9;
                  if (v11)
                  {
                    goto LABEL_90;
                  }
                }

                [a2 hasError];
LABEL_90:
                PBRepeatedInt32Add();
              }

            case 9:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              while (1)
              {
                LOBYTE(v78) = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v78 & 0x7F) << v52;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v58 = 0;
                  goto LABEL_127;
                }
              }

              if ([a2 hasError])
              {
                v58 = 0;
              }

              else
              {
                v58 = v54;
              }

LABEL_127:
              [a1 setPreferredCallProvider:v58];
              goto LABEL_157;
            case 0xA:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                LOBYTE(v78) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v78 & 0x7F) << v16;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_123;
                }
              }

              v22 = (v18 != 0) & ~[a2 hasError];
LABEL_123:
              [a1 setUnseen:v22];
              goto LABEL_157;
          }
        }
      }

      else if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v15 = objc_alloc_init(_INPBIntentMetadata);
          v78 = 0;
          v79 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v15, a2))
          {
            goto LABEL_160;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v15];
          goto LABEL_75;
        }

        if (v14 == 2)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v78) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v78 & 0x7F) << v23;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_121;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_121:
          [a1 setCallType:v29];
          goto LABEL_157;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            v15 = objc_alloc_init(_INPBContact);
            v78 = 0;
            v79 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v15, a2))
            {
              goto LABEL_160;
            }

            PBReaderRecallMark();
            [a1 setTargetContact:v15];
            goto LABEL_75;
          case 4:
            if (v13 != 2)
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              while (1)
              {
                LOBYTE(v78) = 0;
                v74 = [a2 position] + 1;
                if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
                {
                  v76 = [a2 data];
                  [v76 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v73 |= (v78 & 0x7F) << v71;
                if ((v78 & 0x80) == 0)
                {
                  goto LABEL_155;
                }

                v71 += 7;
                v11 = v72++ >= 9;
                if (v11)
                {
                  goto LABEL_156;
                }
              }
            }

            v78 = 0;
            v79 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v45 = [a2 position];
              if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_106;
              }

              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                v80 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v80 & 0x7F) << v46;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  goto LABEL_105;
                }
              }

              [a2 hasError];
LABEL_105:
              PBRepeatedInt32Add();
            }

          case 5:
            v15 = objc_alloc_init(_INPBDateTimeRange);
            v78 = 0;
            v79 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v15, a2))
            {
              goto LABEL_160;
            }

            PBReaderRecallMark();
            [a1 setDateCreated:v15];
LABEL_75:

            goto LABEL_157;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_157:
      v77 = [a2 position];
    }

    while (v77 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBShareDestinationReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_INPBContact);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setContact:v20];
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
        [a1 setDeviceType:v19];
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

uint64_t _INPBCopyFileIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v35 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v35, a2))
            {
LABEL_90:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDestinationName:v35];
            goto LABEL_71;
          }

          if (v13 == 8)
          {
            v35 = objc_alloc_init(_INPBFileProperty);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBFilePropertyReadFrom(v35, a2))
            {
              goto LABEL_90;
            }

            PBReaderRecallMark();
            if (v35)
            {
              [a1 addProperties:v35];
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v35 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v35, a2))
            {
              goto LABEL_90;
            }

            PBReaderRecallMark();
            [a1 setSourceName:v35];
            goto LABEL_71;
          }

          if (v13 == 6)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v38 & 0x7F) << v21;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_83;
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

LABEL_83:
            [a1 setDestinationType:v27];
            goto LABEL_72;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v35 = objc_alloc_init(_INPBString);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v35, a2))
          {
            goto LABEL_90;
          }

          PBReaderRecallMark();
          [a1 setEntityName:v35];
          goto LABEL_71;
        }

        if (v13 == 4)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v38 & 0x7F) << v28;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_87:
          [a1 setSourceType:v34];
          goto LABEL_72;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v35 = objc_alloc_init(_INPBIntentMetadata);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v35, a2))
          {
            goto LABEL_90;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v35];
LABEL_71:

          goto LABEL_72;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38 & 0x7F) << v14;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_79;
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

LABEL_79:
          [a1 setEntityType:v20];
          goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INCallAudioRouteGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    v1 = 3;
  }

  if (a1 == 1000)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t INCallAudioRouteGetFacadeType(int a1, int a2)
{
  if (a1 && (a2 - 2) <= 2)
  {
    return qword_18EE5EFD0[a2 - 2];
  }

  else
  {
    return 0;
  }
}

__CFString *INCallAudioRouteGetName(uint64_t a1)
{
  v1 = @"heySiriAudioRoute";
  v2 = @"unknown";
  if (a1 == 2)
  {
    v2 = @"bluetoothAudioRoute";
  }

  if (a1 != 1000)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return @"speakerphoneAudioRoute";
  }

  else
  {
    return v1;
  }
}

uint64_t INCallAudioRouteWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"speakerphoneAudioRoute"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"bluetoothAudioRoute"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"heySiriAudioRoute"])
  {
    v2 = 1000;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCallAudioRouteGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1000:
      v4 = @"hey siri audio route";
      goto LABEL_7;
    case 2:
      v4 = @"bluetooth audio route";
      goto LABEL_7;
    case 1:
      v4 = @"speakerphone audio route";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

__CFString *INScanVisualCodeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7282AE0[a1];
  }
}

uint64_t _INPBAppendToNoteIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBNote);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBNoteReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setNote:v13];
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

uint64_t _INPBPauseTimerIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(_INPBTimer);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

        PBReaderRecallMark();
        [a1 setTargetTimer:v21];
LABEL_35:

        goto LABEL_40;
      }

      if (v13 == 2)
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
            goto LABEL_39;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_39:
        [a1 setPauseMultiple:v20];
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
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBArchivedObjectReadFrom(void *a1, void *a2)
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
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setTypeName:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadData();
      [a1 setMessageData:v14];
LABEL_22:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

unint64_t INTimerTypeGetBackingType(unint64_t result)
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

uint64_t INTimerTypeGetFacadeType(int a1, int a2)
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

__CFString *INTimerTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"sleepTimer";
  }

  if (a1 == 1)
  {
    return @"defaultType";
  }

  else
  {
    return v1;
  }
}

uint64_t INTimerTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"defaultType"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"sleepTimer"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTimerTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"sleep timer";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"default type";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBResumeWorkoutIntentReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBDataString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setWorkoutName:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__71931(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void INAppResolverLogInitIfNeeded()
{
  if (INAppResolverLogInitIfNeeded_once != -1)
  {
    dispatch_once(&INAppResolverLogInitIfNeeded_once, &__block_literal_global_6_72047);
  }
}

uint64_t __INAppResolverLogInitIfNeeded_block_invoke()
{
  v0 = os_log_create(INLogShortcutsSubsystem, INLogCategoryAppResolver);
  v1 = INLogContextAppResolver;
  INLogContextAppResolver = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *INPersonHandleLabelGetFacadeObject(int a1, unsigned int a2)
{
  result = 0;
  if (a2 <= 9)
  {
    if (a1)
    {
      return off_1E7282BF8[a2];
    }
  }

  return result;
}

uint64_t INPersonHandleLabelGetBackingType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"com.apple.intents.PersonHandleLabel.Home"])
    {
      v3 = 0;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.Work"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.iPhone"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.Mobile"])
    {
      v3 = 3;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.Main"])
    {
      v3 = 4;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.Home_Fax"])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.Work_Fax"])
    {
      v3 = 6;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.Pager"])
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.Other"])
    {
      v3 = 8;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.PersonHandleLabel.School"])
    {
      v3 = 9;
    }

    else
    {
      v3 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFLL;
  }

  return v3;
}

__CFString *INPersonHandleLabelValueAsString(__CFString *a1)
{
  if (a1)
  {
    BackingType = INPersonHandleLabelGetBackingType(a1);
    if (BackingType >= 0xA)
    {
      a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", BackingType];
    }

    else
    {
      a1 = off_1E7282C48[BackingType];
    }

    v1 = vars8;
  }

  return a1;
}

uint64_t _INPBSaveHealthSampleIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v21 = objc_alloc_init(_INPBWellnessValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBWellnessValueReadFrom(v21, a2))
            {
LABEL_61:

              return 0;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addValues:v21];
            }

            goto LABEL_52;
          case 5:
            v21 = objc_alloc_init(_INPBWellnessUnitType);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBWellnessUnitTypeReadFrom(v21, a2))
            {
              goto LABEL_61;
            }

            PBReaderRecallMark();
            [a1 setUnit:v21];
            goto LABEL_52;
          case 6:
            v21 = objc_alloc_init(_INPBWellnessMetadataPair);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBWellnessMetadataPairReadFrom(v21, a2))
            {
              goto LABEL_61;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addSampleMetadata:v21];
            }

            goto LABEL_52;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_INPBIntentMetadata);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
            {
              goto LABEL_61;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v21];
            goto LABEL_52;
          case 2:
            v21 = objc_alloc_init(_INPBDateTimeRange);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v21, a2))
            {
              goto LABEL_61;
            }

            PBReaderRecallMark();
            [a1 setRecordDate:v21];
LABEL_52:

            goto LABEL_53;
          case 3:
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
                goto LABEL_58;
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

LABEL_58:
            [a1 setObjectType:v20];
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

INWellnessMetadataPair *INIntentSlotValueTransformFromWellnessMetadataPair(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![v1 hasKey])
  {
    v11 = 0;
    goto LABEL_15;
  }

  v3 = [v2 key];
  v4 = INIntentSlotValueTransformFromString(v3);

  if (![v2 hasValue])
  {
    goto LABEL_13;
  }

  v5 = [v2 value];
  v6 = [v5 hasPbDoubleValue];

  v7 = [v2 value];
  v8 = v7;
  if (!v6)
  {
    v12 = [v7 hasOrdinalValue];

    v13 = [v2 value];
    v8 = v13;
    if (v12)
    {
      v9 = [v13 ordinalValue];
      v10 = INIntentSlotValueTransformFromInteger(v9);
      goto LABEL_9;
    }

    v16 = [v13 hasPbStringValue];

    if (v16)
    {
      v17 = [v2 value];
      v18 = [v17 pbStringValue];
      v14 = INIntentSlotValueTransformFromString(v18);

      v15 = [[INWellnessMetadataPair alloc] initWithString:v14 key:v4];
      goto LABEL_10;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v9 = [v7 pbDoubleValue];
  v10 = INIntentSlotValueTransformFromDouble(v9);
LABEL_9:
  v14 = v10;

  v15 = [[INWellnessMetadataPair alloc] initWithNumber:v14 key:v4];
LABEL_10:
  v11 = v15;

LABEL_14:
LABEL_15:

  return v11;
}

_INPBWellnessMetadataPair *INIntentSlotValueTransformToWellnessMetadataPair(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_10;
  }

  v2 = objc_alloc_init(_INPBWellnessMetadataPair);
  v3 = [v1 key];
  v4 = INIntentSlotValueTransformToString(v3);
  [(_INPBWellnessMetadataPair *)v2 setKey:v4];

  v5 = objc_alloc_init(_INPBWellnessMetadataValue);
  [(_INPBWellnessMetadataPair *)v2 setValue:v5];

  v6 = [v1 stringValue];

  if (v6)
  {
    v7 = [(_INPBWellnessMetadataPair *)v2 value];
    v8 = [v1 stringValue];
    v9 = INIntentSlotValueTransformToString(v8);
    [v7 setPbStringValue:v9];
  }

  else
  {
    v10 = [v1 numberValue];

    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = [v1 numberValue];
    Type = CFNumberGetType(v11);

    if (Type <= kCFNumberDoubleType && ((1 << Type) & 0x3060) != 0)
    {
      v7 = [(_INPBWellnessMetadataPair *)v2 value];
      v8 = [v1 numberValue];
      v9 = INIntentSlotValueTransformToDouble(v8);
      [v7 setPbDoubleValue:v9];
    }

    else
    {
      v7 = [(_INPBWellnessMetadataPair *)v2 value];
      v8 = [v1 numberValue];
      v9 = INIntentSlotValueTransformToInteger(v8);
      [v7 setOrdinalValue:v9];
    }
  }

LABEL_10:

  return v2;
}

id INIntentSlotValueTransformFromWellnessMetadataPairs(void *a1)
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

          v8 = INIntentSlotValueTransformFromWellnessMetadataPair(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToWellnessMetadataPairs(void *a1)
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

          v8 = INIntentSlotValueTransformToWellnessMetadataPair(*(*(&v12 + 1) + 8 * i));
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

void INCallCapabilityOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v4 = v3;
    if (a1)
    {
      (*(v3 + 2))(v3, 1);
      v3 = v4;
    }

    if ((a1 & 2) != 0)
    {
      (*(v3 + 2))(v4, 2);
      v3 = v4;
    }
  }
}

uint64_t INCallCapabilityOptionsContainsBackingType(unint64_t a1, int a2)
{
  v2 = (a1 >> 1) & 1;
  if (a2 == 1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (a2 != 2)
  {
    LOBYTE(v2) = v3;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INCallCapabilityOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 == 1)
    {
      v2 = *result | 1;
    }

    if (a2 == 2)
    {
      v2 = *result | 2;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INCallCapabilityOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (a2 == 1)
    {
      v2 = *result & 0xFFFFFFFFFFFFFFFELL;
    }

    if (a2 == 2)
    {
      v2 = *result & 0xFFFFFFFFFFFFFFFDLL;
    }

    *result = v2;
  }

  return result;
}

id INCallCapabilityOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"audioCall"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"videoCall"];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

uint64_t INCallCapabilityOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v4 |= [v7 isEqualToString:@"audioCall"];
        if ([v7 isEqualToString:@"videoCall"])
        {
          v4 |= 2uLL;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

id INCallCapabilityOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v5 = INLocalizedStringWithLocalizer(@"audio call", @"audio call", v3);
      [v4 addObject:v5];
    }

    if ((a1 & 2) != 0)
    {
      v6 = INLocalizedStringWithLocalizer(@"video call", @"video call", v3);
      [v4 addObject:v6];
    }

    v7 = [v4 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

__CFString *INPlayVoicemailIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7282EF0[a1];
  }
}

uint64_t _INPBPlaceReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
LABEL_51:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPlaceDescriptors:v14];
          }

          goto LABEL_43;
        }

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
              goto LABEL_47;
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

LABEL_47:
          [a1 setPersonalPlaceType:v21];
          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setPlaceType:v14];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setPlaceSubType:v14];
LABEL_43:

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t INWellnessQuestionTypeGetBackingType(unint64_t result)
{
  if (result >= 8)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INWellnessQuestionTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 7) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INWellnessQuestionTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7282F30[a1 - 1];
  }
}

uint64_t INWellnessQuestionTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"verification"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"quantification"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"temporal"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"comparison"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"quality"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"speedRate"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"instanceCount"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWellnessQuestionTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v5 = @"verification";
        break;
      case 2:
        v5 = @"quantification";
        break;
      case 3:
        v5 = @"temporal";
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v5 = @"speed rate";
    }

    else
    {
      if (a1 != 7)
      {
        goto LABEL_17;
      }

      v5 = @"instance count";
    }
  }

  else if (a1 == 4)
  {
    v5 = @"comparison";
  }

  else
  {
    v5 = @"quality";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_17:

  return v4;
}

id INIntentSlotValueTransformFromNulls(void *a1)
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
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v7 = [MEMORY[0x1E695DFB0] null];
      if (v7)
      {
        [v2 addObject:v7];
      }

      if (!--v5)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  v8 = [v2 copy];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

_INPBEmpty *INIntentSlotValueTransformToNull()
{
  v0 = objc_alloc_init(_INPBEmpty);

  return v0;
}

id INIntentSlotValueTransformToNulls(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v7 = objc_alloc_init(_INPBEmpty);
      if (v7)
      {
        [v2 addObject:{v7, v10}];
      }

      if (!--v5)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t _INPBSearchForAccountsIntentResponseReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBFinancialAccountValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBFinancialAccountValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addAccounts:v13];
        }
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

uint64_t _INPBCreateTaskListIntentReadFrom(void *a1, void *a2)
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
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
LABEL_41:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addTaskTitles:v14];
          }

          goto LABEL_37;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
            goto LABEL_41;
          }

          PBReaderRecallMark();
          [a1 setGroupName:v14];
          goto LABEL_37;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_41;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
            goto LABEL_41;
          }

          PBReaderRecallMark();
          [a1 setTitle:v14];
LABEL_37:

          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INWellnessObjectResultValue *INIntentSlotValueTransformFromWellnessObjectResultValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 unit];
    v3 = INIntentSlotValueTransformFromString(v2);

    v4 = [v1 recordDate];
    v5 = INIntentSlotValueTransformFromDateTimeRange(v4);

    LOBYTE(v4) = [v1 hasResultType];
    v6 = [v1 resultType];
    if (((v6 - 1 < 9) & v4) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v1 values];

    v9 = INIntentSlotValueTransformFromWellnessValues(v8);

    v10 = [[INWellnessObjectResultValue alloc] initWithRecordDate:v5 unit:v3 values:v9 resultType:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBWellnessObjectResultValue *INIntentSlotValueTransformToWellnessObjectResultValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBWellnessObjectResultValue);
    v3 = [v1 unit];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBWellnessObjectResultValue *)v2 setUnit:v4];

    v5 = [v1 recordDate];
    v6 = INIntentSlotValueTransformToDateTimeRange(v5);
    [(_INPBWellnessObjectResultValue *)v2 setRecordDate:v6];

    v7 = [v1 values];
    v8 = INIntentSlotValueTransformToWellnessValues(v7);
    [(_INPBWellnessObjectResultValue *)v2 setValues:v8];

    v9 = [v1 resultType];
    if (v9 >= 0xA)
    {
      v10 = 0x7FFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    [(_INPBWellnessObjectResultValue *)v2 setResultType:v10];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromWellnessObjectResultValues(void *a1)
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

          v8 = INIntentSlotValueTransformFromWellnessObjectResultValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToWellnessObjectResultValues(void *a1)
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

          v8 = INIntentSlotValueTransformToWellnessObjectResultValue(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBCurrencyAmountValueReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBValueMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v14];
        goto LABEL_27;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBDecimalNumberValue);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBDecimalNumberValueReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

        PBReaderRecallMark();
        [a1 setAmount:v14];
        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    [a1 setCurrencyCode:v14];
LABEL_27:

    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}
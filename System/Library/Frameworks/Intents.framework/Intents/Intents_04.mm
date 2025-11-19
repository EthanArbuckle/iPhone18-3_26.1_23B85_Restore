__CFString *INUpdateEventConfirmationReasonGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"updateAllRecurrences";
  }

  if (a1 == 1)
  {
    return @"scheduleConflict";
  }

  else
  {
    return v1;
  }
}

uint64_t INUpdateEventConfirmationReasonWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"scheduleConflict"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"updateAllRecurrences"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INUpdateEventConfirmationReasonGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"update all recurrences";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"schedule conflict";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t INSaveHealthSampleIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_1E727E6E8 + a1);
  }
}

uint64_t _INPBActivateCarSignalIntentReadFrom(void *a1, void *a2)
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
        LOBYTE(v30) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
        if ((v12 & 7) == 2)
        {
          v30 = 0;
          v31 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v32 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v32 & 0x7F) << v17;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_37;
              }
            }

            [a2 hasError];
LABEL_37:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v30) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v30 & 0x7F) << v23;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              goto LABEL_55;
            }
          }

          [a2 hasError];
LABEL_55:
          PBRepeatedInt32Add();
        }

        goto LABEL_56;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBDataString);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
        {
          goto LABEL_59;
        }

        PBReaderRecallMark();
        [a1 setCarName:v14];
LABEL_41:

        goto LABEL_56;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBIntentMetadata);
    v30 = 0;
    v31 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
    {
LABEL_59:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v14];
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

INLodgingReservation *INIntentSlotValueTransformFromLodgingReservation(INLodgingReservation *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [(INLodgingReservation *)v2 reservation];
    v21 = [INLodgingReservation alloc];
    v26 = [v3 itemReference];
    v28 = INIntentSlotValueTransformFromDataString(v26);
    v27 = [v3 reservationNumber];
    v25 = [v3 bookingTime];
    v18 = INIntentSlotValueTransformFromTimestamp(v25);
    v4 = [v3 hasReservationStatus];
    v5 = [v3 reservationStatus];
    if ((((v5 - 2) < 4) & v4) != 0)
    {
      v6 = (v5 - 1);
    }

    else
    {
      v6 = 0;
    }

    v19 = v6;
    v17 = [v3 reservationHolderName];
    v24 = [v3 actions];
    v16 = INIntentSlotValueTransformFromReservationActions(v24);
    v23 = [v3 url];
    v15 = INIntentSlotValueTransformFromURLValue(v23);
    v20 = [(INLodgingReservation *)v2 lodgingBusinessLocation];
    v14 = INIntentSlotValueTransformFromLocation(v20);
    v7 = [(INLodgingReservation *)v2 reservationDuration];
    v8 = INIntentSlotValueTransformFromDateTimeRange(v7);
    v9 = [(INLodgingReservation *)v2 numberOfAdults];
    v10 = INIntentSlotValueTransformFromInteger(v9);
    v11 = [(INLodgingReservation *)v2 numberOfChildren];

    v12 = INIntentSlotValueTransformFromInteger(v11);
    v22 = [(INLodgingReservation *)v21 initWithItemReference:v28 reservationNumber:v27 bookingTime:v18 reservationStatus:v19 reservationHolderName:v17 actions:v16 URL:v15 lodgingBusinessLocation:v14 reservationDuration:v8 numberOfAdults:v10 numberOfChildren:v12];

    a1 = v22;
    v1 = vars8;
  }

  return a1;
}

_INPBLodgingReservation *INIntentSlotValueTransformToLodgingReservation(void *a1)
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

    v15 = objc_alloc_init(_INPBLodgingReservation);
    [(_INPBLodgingReservation *)v15 setReservation:v2];
    v16 = [v1 lodgingBusinessLocation];
    v17 = INIntentSlotValueTransformToLocation(v16);
    [(_INPBLodgingReservation *)v15 setLodgingBusinessLocation:v17];

    v18 = [v1 reservationDuration];
    v19 = INIntentSlotValueTransformToDateTimeRange(v18);
    [(_INPBLodgingReservation *)v15 setReservationDuration:v19];

    v20 = [v1 numberOfAdults];
    v21 = INIntentSlotValueTransformToInteger(v20);
    [(_INPBLodgingReservation *)v15 setNumberOfAdults:v21];

    v22 = [v1 numberOfChildren];

    v23 = INIntentSlotValueTransformToInteger(v22);
    [(_INPBLodgingReservation *)v15 setNumberOfChildren:v23];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromLodgingReservations(void *a1)
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

          v8 = INIntentSlotValueTransformFromLodgingReservation(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToLodgingReservations(void *a1)
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

          v8 = INIntentSlotValueTransformToLodgingReservation(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromStringValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromStringValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToStringValues(void *a1)
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

        v8 = INIntentSlotValueTransformToStringValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueRedactedValueFromStringValue(void *a1, uint64_t a2)
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
    v6 = v3;
  }

  return v6;
}

_INPBString *INIntentSlotValueRedactedStringFromString(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBString);
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

          v13 = INIntentSlotValueRedactedValueFromStringValue(*(*(&v16 + 1) + 8 * i), a2);
          if (v13)
          {
            [(_INPBString *)v7 addValue:v13];
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

id INIntentSlotValueRedactedStringsFromStrings(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedStringFromString(*(*(&v17 + 1) + 8 * i), a2, v6);
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

uint64_t _INPBGeographicalFeatureReadFrom(void *a1, void *a2)
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
          [a1 addGeographicalFeatureDescriptors:v13];
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
    [a1 setGeographicalFeatureType:v13];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBGetVisualCodeIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBImageValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setVisualCodeImage:v13];
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

uint64_t INPaymentStatusGetBackingType(uint64_t result)
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

uint64_t INPaymentStatusGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INPaymentStatusGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E727E730 + a1 - 1);
  }
}

uint64_t INPaymentStatusWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"pending"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"completed"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"canceled"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"failed"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"unpaid"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPaymentStatusGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"pending";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"completed";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v5 = @"canceled";
        break;
      case 4:
        v5 = @"failed";
        break;
      case 5:
        v5 = @"unpaid";
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_13:

  return v4;
}

uint64_t _INPBAppIdReadFrom(void *a1, void *a2)
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
      [a1 setBundleId:v14];
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

uint64_t _INPBGetCarLockStatusIntentReadFrom(void *a1, void *a2)
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

id getCNPostalAddressFormatterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNPostalAddressFormatterClass_softClass;
  v7 = getCNPostalAddressFormatterClass_softClass;
  if (!getCNPostalAddressFormatterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNPostalAddressFormatterClass_block_invoke;
    v3[3] = &unk_1E72888B8;
    v3[4] = &v4;
    __getCNPostalAddressFormatterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18EA44634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNPostalAddressFormatterClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ContactsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727E758;
    v7 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (ContactsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CNPostalAddressFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCNPostalAddressFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t INWorkoutLocationTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t INWorkoutLocationTypeGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 1);
  if (!a2)
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

__CFString *INWorkoutLocationTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"indoor";
  }

  if (a1 == 1)
  {
    return @"outdoor";
  }

  else
  {
    return v1;
  }
}

uint64_t INWorkoutLocationTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"outdoor"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"indoor"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWorkoutLocationTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"indoor";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"outdoor";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBGetVisualCodeIntentReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_INPBIntentMetadata);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v20];
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
        [a1 setVisualCodeType:v19];
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

INHomeEntity *INIntentSlotValueTransformFromHomeEntity(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    if ([v1 deviceTypesCount])
    {
      v3 = 0;
      do
      {
        v4 = MEMORY[0x1E696AD98];
        v5 = [v1 deviceTypesAtIndex:v3];
        if (v5 > 0x31)
        {
          v6 = 0;
        }

        else
        {
          v6 = qword_18EE5EB80[v5];
        }

        v7 = [v4 numberWithInteger:v6];
        [v2 addObject:v7];

        ++v3;
      }

      while (v3 < [v1 deviceTypesCount]);
    }

    v8 = [INHomeEntity alloc];
    v9 = [v1 entityName];
    v10 = INIntentSlotValueTransformFromDataString(v9);
    v11 = [v1 hasEntityType];
    v12 = [v1 entityType];
    v13 = 0;
    v29 = v10;
    v30 = v9;
    if (v12 <= 6 && v11)
    {
      v13 = qword_18EE5E8B0[v12];
    }

    v27 = [v1 entityIdentifier];
    v14 = [v1 hasSceneType];
    v15 = [v1 sceneType];
    if (((v15 < 5) & v14) != 0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    v25 = v16;
    v28 = [v1 room];
    v24 = INIntentSlotValueTransformFromDataString(v28);
    v26 = [v1 home];
    v17 = INIntentSlotValueTransformFromDataString(v26);
    v18 = [v1 group];
    v19 = INIntentSlotValueTransformFromDataString(v18);
    v20 = [v1 zones];
    v21 = INIntentSlotValueTransformFromDataStrings(v20);
    v22 = [(INHomeEntity *)v8 initWithEntityName:v10 type:v13 entityIdentifier:v27 deviceTypes:v2 sceneType:v25 room:v24 home:v17 group:v19 zones:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

_INPBHomeEntity *INIntentSlotValueTransformToHomeEntity(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBHomeEntity);
    v3 = [v1 entityName];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBHomeEntity *)v2 setEntityName:v4];

    v5 = [v1 type] - 1;
    if (v5 > 9)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = dword_18EE5E888[v5];
    }

    [(_INPBHomeEntity *)v2 setEntityType:v6];
    v7 = [v1 entityIdentifier];
    [(_INPBHomeEntity *)v2 setEntityIdentifier:v7];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [v1 deviceTypes];
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v27 + 1) + 8 * i) integerValue] - 1;
          if (v13 > 0x2C)
          {
            v14 = 0x7FFFFFFFLL;
          }

          else
          {
            v14 = dword_18EE5EAC8[v13];
          }

          [(_INPBHomeEntity *)v2 addDeviceTypes:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v15 = [v1 sceneType] - 1;
    if (v15 >= 5)
    {
      v16 = 0x7FFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    [(_INPBHomeEntity *)v2 setSceneType:v16];
    v17 = [v1 room];
    v18 = INIntentSlotValueTransformToDataString(v17);
    [(_INPBHomeEntity *)v2 setRoom:v18];

    v19 = [v1 home];
    v20 = INIntentSlotValueTransformToDataString(v19);
    [(_INPBHomeEntity *)v2 setHome:v20];

    v21 = [v1 group];
    v22 = INIntentSlotValueTransformToDataString(v21);
    [(_INPBHomeEntity *)v2 setGroup:v22];

    v23 = [v1 zones];
    v24 = INIntentSlotValueTransformToDataStrings(v23);
    [(_INPBHomeEntity *)v2 setZones:v24];
  }

  else
  {
    v2 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSlotValueTransformFromHomeEntities(void *a1)
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

          v8 = INIntentSlotValueTransformFromHomeEntity(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToHomeEntities(void *a1)
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

          v8 = INIntentSlotValueTransformToHomeEntity(*(*(&v12 + 1) + 8 * i));
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

uint64_t INPlayAudioMessageIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_1E727E950 + a1);
  }
}

uint64_t _INPBRideFareLineItemReadFrom(void *a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBDecimalNumberValue);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDecimalNumberValueReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPrice:v14];
        goto LABEL_25;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        [a1 setCurrencyCode:v14];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    [a1 setTitle:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id getAVSystemControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass;
  v7 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVSystemControllerClass_block_invoke;
    v3[3] = &unk_1E72888B8;
    v3[4] = &v4;
    __getAVSystemControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18EA4C194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr;
  v8 = getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr;
  if (!getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr)
  {
    v1 = MediaExperienceLibrary();
    v6[3] = dlsym(v1, "AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute");
    getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t MediaExperienceLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaExperienceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E727E990;
    v6 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = MediaExperienceLibraryCore_frameworkLibrary;
    if (MediaExperienceLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = MediaExperienceLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  MediaExperienceLibrary();
  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(INShareFocusStatusIntent *)v3 _intents_backgroundHandlingAssertionForBundleIdentifier:v4 context:v5 error:v6, v7];
  }

  return result;
}

uint64_t INConfigureHomeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E727E9A8 + a1);
  }
}

uint64_t _INPBStartPhotoPlaybackIntentResponseReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 2)
      {
        break;
      }

      if (v13 == 4)
      {
        v21 = PBReaderReadString();
        [a1 setAlbumName:v21];
LABEL_33:

        goto LABEL_40;
      }

      if (v13 == 7)
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
        [a1 setSearchResultsCount:v20];
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

    v21 = objc_alloc_init(_INPBLocation);
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setLocationCreated:v21];
    goto LABEL_33;
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromTemperature(void *a1)
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

        v6 = INIntentSlotValueTransformFromTemperatureValue(*(*(&v10 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromTemperatureValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_22;
  }

  v3 = [v1 valueMetadata];
  INPrivacyEntitlementValidateValueMetadata(v3);

  if (![v2 hasUnit])
  {
    goto LABEL_11;
  }

  v4 = [v2 unit];
  switch(v4)
  {
    case 3:
      v5 = [MEMORY[0x1E696B080] kelvin];
      break;
    case 2:
      v5 = [MEMORY[0x1E696B080] fahrenheit];
      break;
    case 1:
      v5 = [MEMORY[0x1E696B080] celsius];
      break;
    default:
      goto LABEL_11;
  }

  v7 = v5;
  if (!v5)
  {
LABEL_11:
    v8 = [MEMORY[0x1E695DF58] currentLocale];
    v9 = [v8 objectForKey:*MEMORY[0x1E695D9F0]];
    if ([v9 isEqualToString:*MEMORY[0x1E695D9F8]])
    {
      v10 = [MEMORY[0x1E696B080] celsius];
    }

    else
    {
      if (![v9 isEqualToString:*MEMORY[0x1E695DA00]])
      {
        goto LABEL_16;
      }

      v10 = [MEMORY[0x1E696B080] fahrenheit];
    }

    v7 = v10;
    if (v10)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_16:
    v11 = [v8 objectForKey:*MEMORY[0x1E695DA08]];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      [MEMORY[0x1E696B080] celsius];
    }

    else
    {
      [MEMORY[0x1E696B080] fahrenheit];
    }
    v7 = ;
    goto LABEL_20;
  }

LABEL_21:
  v13 = objc_alloc(MEMORY[0x1E696AD28]);
  [v2 magnitude];
  v6 = [v13 initWithDoubleValue:v7 unit:?];

LABEL_22:

  return v6;
}

_INPBTemperature *INIntentSlotValueTransformToTemperature(void *a1)
{
  v1 = INIntentSlotValueTransformToTemperatureValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBTemperature);
    [(_INPBTemperature *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBTemperatureValue *INIntentSlotValueTransformToTemperatureValue(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_18;
  }

  v2 = objc_alloc_init(_INPBTemperatureValue);
  v3 = [v1 unit];
  [v1 doubleValue];
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [MEMORY[0x1E696B080] kelvin];
  v7 = [v3 isEqual:v6];

  if (!v7)
  {
    v10 = [v3 symbol];
    v11 = [v10 isEqualToString:@"°C"];

    if (v11)
    {
      v8 = v2;
      v9 = 1;
      goto LABEL_10;
    }

    v12 = [v3 symbol];
    v13 = [v12 isEqualToString:@"°F"];

    if (v13)
    {
      v8 = v2;
      v9 = 2;
      goto LABEL_10;
    }

LABEL_11:
    v14 = [MEMORY[0x1E695DF58] currentLocale];
    v15 = [v14 objectForKey:*MEMORY[0x1E695D9F0]];
    if ([v15 isEqualToString:*MEMORY[0x1E695D9F8]] || !objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E695DA00]) && (objc_msgSend(v14, "objectForKey:", *MEMORY[0x1E695DA08]), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v18))
    {
      [(_INPBTemperatureValue *)v2 setUnit:1];
      v16 = [MEMORY[0x1E696B080] celsius];
    }

    else
    {
      [(_INPBTemperatureValue *)v2 setUnit:2];
      v16 = [MEMORY[0x1E696B080] fahrenheit];
    }

    v19 = v16;
    v20 = [v1 measurementByConvertingToUnit:v16];
    [v20 doubleValue];
    [(_INPBTemperatureValue *)v2 setMagnitude:?];

    goto LABEL_17;
  }

  v8 = v2;
  v9 = 3;
LABEL_10:
  [(_INPBTemperatureValue *)v8 setUnit:v9];
  [(_INPBTemperatureValue *)v2 setMagnitude:v5];
LABEL_17:

LABEL_18:

  return v2;
}

id INIntentSlotValueTransformFromTemperatureValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromTemperatureValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromTemperatures(void *a1)
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

        v8 = INIntentSlotValueTransformFromTemperature(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToTemperatureValues(void *a1)
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

        v8 = INIntentSlotValueTransformToTemperatureValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueTransformToTemperatures(void *a1)
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

        v8 = INIntentSlotValueTransformToTemperature(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueRedactedValueFromTemperatureValue(void *a1, uint64_t a2)
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

_INPBTemperature *INIntentSlotValueRedactedTemperatureFromTemperature(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBTemperature);
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

          v13 = INIntentSlotValueRedactedValueFromTemperatureValue(*(*(&v16 + 1) + 8 * i), a2);
          if (v13)
          {
            [(_INPBTemperature *)v7 addValue:v13];
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

id INIntentSlotValueRedactedTemperaturesFromTemperatures(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedTemperatureFromTemperature(*(*(&v17 + 1) + 8 * i), a2, v6);
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

void sub_18EA4ED80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPHAssetClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PhotosLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E727E9D8;
    v7 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PhotosLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18EA509AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11851(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id INSyncedSchemaWithBundleID(void *a1)
{
  v1 = a1;
  v2 = [_INVCIntentDefinitionManagerClass() intentDefinitionURLsForBundleID:v1];
  if ([v2 count])
  {
    v3 = [[INSchema alloc] _initWithContentsOfURLs:v2 bundleIdentifier:v1 mainBundleIdentifier:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INSchemaWithApplicationProxy(void *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v2 siriActionDefinitionURLs];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = INSchemaFileExtensions();
        v12 = [v10 pathExtension];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v14 = [INSchema alloc];
    v15 = [v2 bundleIdentifier];
    v16 = [v2 bundleIdentifier];
    v17 = [(INSchema *)v14 _initWithContentsOfURLs:v3 bundleIdentifier:v15 mainBundleIdentifier:v16];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    v17 = +[INSchema systemSchema];
  }

LABEL_16:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id INSchemaURLsWithBundleURL(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v3 = Unique;
    v4 = INSchemaURLsWithCFBundle(Unique);
    CFRelease(v3);
  }

  else
  {
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "INSchemaURLsWithBundleURL";
      v10 = 2114;
      v11 = v1;
      _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Unable to create bundle with URL %{public}@", &v8, 0x16u);
    }

    v4 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

id INSchemaURLsWithCFBundle(__CFBundle *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = INSchemaFileExtensions();
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

          v8 = CFBundleCopyResourceURLsOfType(a1, *(*(&v11 + 1) + 8 * i), 0);
          [v2 addObjectsFromArray:{v8, v11}];
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

__CFString *INTransferMoneyIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E727EA60[a1];
  }
}

uint64_t _INPBQueryHealthSampleIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_INPBIntentMetadata);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
            {
LABEL_85:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v21];
            goto LABEL_60;
          case 2:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v38 & 0x7F) << v29;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v31;
            }

LABEL_81:
            [a1 setObjectType:v35];
            goto LABEL_82;
          case 3:
            v21 = objc_alloc_init(_INPBDateTimeRange);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v21, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addRecordDate:v21];
            }

            goto LABEL_60;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v21 = objc_alloc_init(_INPBWellnessValue);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_INPBWellnessValueReadFrom(v21, a2))
          {
            goto LABEL_85;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addThresholdValues:v21];
          }

          goto LABEL_60;
        }

        if (v13 == 7)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v38 & 0x7F) << v22;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_77;
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

LABEL_77:
          [a1 setExpectedResultType:v28];
          goto LABEL_82;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v21 = objc_alloc_init(_INPBWellnessUnitType);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_INPBWellnessUnitTypeReadFrom(v21, a2))
          {
            goto LABEL_85;
          }

          PBReaderRecallMark();
          [a1 setUnit:v21];
LABEL_60:

          goto LABEL_82;
        }

        if (v13 == 5)
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
              goto LABEL_73;
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

LABEL_73:
          [a1 setQuestionType:v20];
          goto LABEL_82;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INCallCapabilityGetBackingType(uint64_t a1)
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

uint64_t INCallCapabilityGetFacadeType(int a1, int a2)
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

__CFString *INCallCapabilityGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"videoCall";
  }

  if (a1 == 1)
  {
    return @"audioCall";
  }

  else
  {
    return v1;
  }
}

uint64_t INCallCapabilityWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"audioCall"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"videoCall"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCallCapabilityGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"video call";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"audio call";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBGetCarPowerLevelStatusIntentResponseReadFrom(void *a1, void *a2)
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
      LOBYTE(v30) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v30 & 0x7F) << v5;
      if ((v30 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(_INPBDouble);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDoubleReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setFuelPercentRemaining:v13];
        goto LABEL_84;
      case 2u:
        v13 = objc_alloc_init(_INPBDouble);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDoubleReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setChargePercentRemaining:v13];
        goto LABEL_84;
      case 3u:
        v13 = objc_alloc_init(_INPBDistance);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDistanceReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setDistanceRemaining:v13];
        goto LABEL_84;
      case 4u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v30) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_88;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_88:
        [a1 setCharging:v20];
        goto LABEL_85;
      case 5u:
        v13 = objc_alloc_init(_INPBInteger);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setMinutesToFull:v13];
        goto LABEL_84;
      case 6u:
        v13 = objc_alloc_init(_INPBDistance);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDistanceReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setMaximumDistance:v13];
        goto LABEL_84;
      case 7u:
        v13 = objc_alloc_init(_INPBDistance);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDistanceReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setDistanceRemainingElectric:v13];
        goto LABEL_84;
      case 8u:
        v13 = objc_alloc_init(_INPBDistance);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDistanceReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setMaximumDistanceElectric:v13];
        goto LABEL_84;
      case 9u:
        v13 = objc_alloc_init(_INPBDistance);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDistanceReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setDistanceRemainingFuel:v13];
        goto LABEL_84;
      case 0xAu:
        v13 = objc_alloc_init(_INPBDistance);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDistanceReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setMaximumDistanceFuel:v13];
        goto LABEL_84;
      case 0xFu:
        v13 = objc_alloc_init(_INPBJSONDictionary);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBJSONDictionaryReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setConsumptionFormulaArguments:v13];
        goto LABEL_84;
      case 0x10u:
        v13 = objc_alloc_init(_INPBJSONDictionary);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBJSONDictionaryReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setChargingFormulaArguments:v13];
        goto LABEL_84;
      case 0x11u:
        v13 = PBReaderReadString();
        [a1 setCarIdentifier:v13];
        goto LABEL_84;
      case 0x12u:
        v13 = objc_alloc_init(_INPBDateTime);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setDateOfLastStateUpdate:v13];
        goto LABEL_84;
      case 0x13u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v30) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v30 & 0x7F) << v21;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_92;
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

LABEL_92:
        [a1 setActiveConnector:v27];
        goto LABEL_85;
      case 0x14u:
        v13 = objc_alloc_init(_INPBEnergy);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBEnergyReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setMaximumBatteryCapacity:v13];
        goto LABEL_84;
      case 0x15u:
        v13 = objc_alloc_init(_INPBEnergy);
        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !_INPBEnergyReadFrom(v13, a2))
        {
          goto LABEL_95;
        }

        PBReaderRecallMark();
        [a1 setCurrentBatteryCapacity:v13];
        goto LABEL_84;
      case 0x16u:
        v13 = objc_alloc_init(_INPBEnergy);
        v30 = 0;
        v31 = 0;
        if (PBReaderPlaceMark() && _INPBEnergyReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setMinimumBatteryCapacity:v13];
LABEL_84:

LABEL_85:
          v28 = [a2 position];
          if (v28 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_95:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_85;
    }
  }
}

id INIntentSlotValueTransformFromDecimalNumberValue(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x1E696AB90];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 mantissa];
    v6 = [v3 exponent];
    v7 = [v3 isNegative];

    a1 = [v4 initWithMantissa:v5 exponent:v6 isNegative:v7];
    v1 = vars8;
  }

  return a1;
}

_INPBDecimalNumberValue *INIntentSlotValueTransformToDecimalNumberValue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBDecimalNumberValue);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    [v1 decimalValue];
    [(_INPBDecimalNumberValue *)v2 setMantissa:0];
    [(_INPBDecimalNumberValue *)v2 setExponent:0];
    [(_INPBDecimalNumberValue *)v2 setIsNegative:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueRedactedValueFromDecimalNumberValue(void *a1, uint64_t a2)
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
    v6 = v3;
  }

  return v6;
}

void sub_18EA5A8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13079(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18EA5AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _INPBTaskListReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setIdentifier:v14];
LABEL_43:

            goto LABEL_44;
          case 6:
            v14 = objc_alloc_init(_INPBDateTime);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
            {
LABEL_47:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setModifiedDateTime:v14];
            goto LABEL_43;
          case 5:
            v14 = objc_alloc_init(_INPBDateTime);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            PBReaderRecallMark();
            [a1 setCreatedDateTime:v14];
            goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBDataString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            PBReaderRecallMark();
            [a1 setTitle:v14];
            goto LABEL_43;
          case 2:
            v14 = objc_alloc_init(_INPBTask);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addTasks:v14];
            }

            goto LABEL_43;
          case 3:
            v14 = objc_alloc_init(_INPBDataString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            PBReaderRecallMark();
            [a1 setGroupName:v14];
            goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INEndWorkoutIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E727EEA0[a1];
  }
}

uint64_t _INPBCreateNoteIntentReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setGroupName:v14];
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBNoteContent);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBNoteContentReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setContent:v14];
          goto LABEL_36;
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
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setTitle:v14];
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

__CFString *INControlHomeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return off_1E727EEE0[a1];
  }
}

uint64_t INRecurrenceFrequencyGetBackingType(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return dword_18EE5E5E0[a1];
  }
}

uint64_t INRecurrenceFrequencyGetFacadeType(int a1, int a2)
{
  v2 = 4;
  v3 = 5;
  v4 = 6;
  if (a2 != 110)
  {
    v4 = 0;
  }

  if (a2 != 80)
  {
    v3 = v4;
  }

  if (a2 != 60)
  {
    v2 = v3;
  }

  v5 = 1;
  v6 = 2;
  v7 = 3;
  if (a2 != 50)
  {
    v7 = 0;
  }

  if (a2 != 40)
  {
    v6 = v7;
  }

  if (a2 != 30)
  {
    v5 = v6;
  }

  if (a2 <= 59)
  {
    v2 = v5;
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

__CFString *INRecurrenceFrequencyGetName(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727EF78[a1 - 1];
  }
}

uint64_t INRecurrenceFrequencyWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"minute"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"hourly"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"daily"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"weekly"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"monthly"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"yearly"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INRecurrenceFrequencyGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v5 = @"weekly";
        break;
      case 5:
        v5 = @"monthly";
        break;
      case 6:
        v5 = @"yearly";
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
        v5 = @"minute";
        break;
      case 2:
        v5 = @"hourly";
        break;
      case 3:
        v5 = @"daily";
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_15:

  return v4;
}

uint64_t _INPBGetRideStatusIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBRideStatus);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBRideStatusReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setRideStatus:v13];
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

uint64_t _INPBIntentSlotVocabularyConceptReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(_INPBIntentSlotVocabularyValue);
        v24[0] = 0;
        v24[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentSlotVocabularyValueReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addSynonyms:v21];
        }

        goto LABEL_34;
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
            goto LABEL_38;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_38:
        [a1 setRequiresUserIdentification:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = PBReaderReadString();
    [a1 setIdentifier:v21];
LABEL_34:

    goto LABEL_39;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchCallHistoryIntentResponseReadFrom(void *a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          [a1 setStatus:v14];
          goto LABEL_31;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(_INPBCallRecordValue);
          v17[0] = 0;
          v17[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBCallRecordValueReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addCallRecords:v14];
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setTargetContact:v14];
          goto LABEL_31;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setDateCreated:v14];
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchForFilesIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBIntentMetadata);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
            {
LABEL_75:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v14];
            goto LABEL_53;
          case 2:
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
                goto LABEL_72;
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

LABEL_72:
            [a1 setEntityType:v29];
            goto LABEL_54;
          case 3:
            v14 = objc_alloc_init(_INPBString);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            PBReaderRecallMark();
            [a1 setEntityName:v14];
            goto LABEL_53;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 7)
        {
          v14 = objc_alloc_init(_INPBString);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          PBReaderRecallMark();
          [a1 setScopeEntityName:v14];
          goto LABEL_53;
        }

        if (v13 == 6)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31 & 0x7F) << v15;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_68;
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

LABEL_68:
          [a1 setScope:v21];
          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBString);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          PBReaderRecallMark();
          [a1 setAppId:v14];
          goto LABEL_53;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBFileProperty);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBFilePropertyReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addProperties:v14];
          }

LABEL_53:

          goto LABEL_54;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INCarSeatGetBackingType(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return dword_18EE5E5FC[a1 - 1];
  }
}

uint64_t INCarSeatGetFacadeType(int a1, int a2)
{
  if (a1 && (a2 - 1) <= 0x15)
  {
    return qword_18EE5E630[a2 - 1];
  }

  else
  {
    return 0;
  }
}

__CFString *INCarSeatGetName(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727EFE0[a1 - 1];
  }
}

uint64_t INCarSeatWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"driver"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"passenger"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"frontLeft"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"frontRight"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"front"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"rearLeft"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"rearRight"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"rear"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"thirdRowLeft"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"thirdRowRight"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"thirdRow"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"all"])
  {
    v2 = 12;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCarSeatGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          v5 = @"third row right";
          break;
        case 11:
          v5 = @"third row";
          break;
        case 12:
          v5 = @"all";
          break;
        default:
          goto LABEL_27;
      }
    }

    else if (a1 == 7)
    {
      v5 = @"rear right";
    }

    else if (a1 == 8)
    {
      v5 = @"rear";
    }

    else
    {
      v5 = @"third row left";
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      v5 = @"front right";
    }

    else if (a1 == 5)
    {
      v5 = @"front";
    }

    else
    {
      v5 = @"rear left";
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v5 = @"driver";
        break;
      case 2:
        v5 = @"passenger";
        break;
      case 3:
        v5 = @"front left";
        break;
      default:
        goto LABEL_27;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_27:

  return v4;
}

__CFString *INResumeWorkoutIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E727F040[a1];
  }
}

uint64_t INHomeAttributeTypeHasBackingType(uint64_t a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
      result = 1;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t INHomeAttributeTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 0x42)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INHomeAttributeTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 0x42) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeAttributeTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x41)
  {
    return @"unknown";
  }

  else
  {
    return off_1E727F080[a1 - 1];
  }
}

uint64_t INHomeAttributeTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"enabled"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"brightness"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"hue"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"saturation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"colorValue"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"temperature"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"humidity"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"lock"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"position"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"raise"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"rotationSpeed"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"rotationDirection"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"securitySystemState"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"heatingCoolingMode"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"heaterCoolerMode"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"controlLock"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"coolingThreshold"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"fanOperatingMode"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"heatingThreshold"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"humidifierDehumidifierMode"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"slatOperatingMode"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"swingMode"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"humidifierThreshold"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"dehumidifierThreshold"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"programMode"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"duration"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"power"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"airQualityRating"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"airParticulateDensity"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"airParticulateSize"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"smokeDetected"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"carbonMonoxideDetected"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"carbonMonoxideLevel"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"carbonMonoxidePeakLevel"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"carbonDioxideDetected"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"carbonDioxideLevel"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"carbonDioxidePeakLevel"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"contactDetected"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"occupancyDetected"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"leakDetected"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"motionDetected"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"ambientLightLevel"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"batteryLevel"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"chargingState"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"lowBattery"])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:@"inUse"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"airPurifierOperatingMode"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"filterChange"])
  {
    v2 = 48;
  }

  else if ([v1 isEqualToString:@"filterLife"])
  {
    v2 = 49;
  }

  else if ([v1 isEqualToString:@"waterLevel"])
  {
    v2 = 50;
  }

  else if ([v1 isEqualToString:@"remainingDuration"])
  {
    v2 = 51;
  }

  else if ([v1 isEqualToString:@"statusFault"])
  {
    v2 = 52;
  }

  else if ([v1 isEqualToString:@"sulphurDioxideDensity"])
  {
    v2 = 53;
  }

  else if ([v1 isEqualToString:@"nitrogenDioxideDensity"])
  {
    v2 = 54;
  }

  else if ([v1 isEqualToString:@"particulateMatter25Density"])
  {
    v2 = 55;
  }

  else if ([v1 isEqualToString:@"particulateMatter10Density"])
  {
    v2 = 56;
  }

  else if ([v1 isEqualToString:@"volatileOrganicCompoundDensity"])
  {
    v2 = 57;
  }

  else if ([v1 isEqualToString:@"ozoneDensity"])
  {
    v2 = 58;
  }

  else if ([v1 isEqualToString:@"colorTemperature"])
  {
    v2 = 59;
  }

  else if ([v1 isEqualToString:@"count"])
  {
    v2 = 60;
  }

  else if ([v1 isEqualToString:@"location"])
  {
    v2 = 61;
  }

  else if ([v1 isEqualToString:@"inventory"])
  {
    v2 = 62;
  }

  else if ([v1 isEqualToString:@"capabilities"])
  {
    v2 = 63;
  }

  else if ([v1 isEqualToString:@"open"])
  {
    v2 = 64;
  }

  else if ([v1 isEqualToString:@"media"])
  {
    v2 = 65;
  }

  else if ([v1 isEqualToString:@"adaptiveLighting"])
  {
    v2 = 66;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeAttributeTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"enabled";
      goto LABEL_68;
    case 2:
      v4 = @"brightness";
      goto LABEL_68;
    case 3:
      v4 = @"hue";
      goto LABEL_68;
    case 4:
      v4 = @"saturation";
      goto LABEL_68;
    case 5:
      v4 = @"color value";
      goto LABEL_68;
    case 6:
      v4 = @"temperature";
      goto LABEL_68;
    case 7:
      v4 = @"humidity";
      goto LABEL_68;
    case 8:
      v4 = @"lock";
      goto LABEL_68;
    case 9:
      v4 = @"position";
      goto LABEL_68;
    case 10:
      v4 = @"raise";
      goto LABEL_68;
    case 11:
      v4 = @"rotation speed";
      goto LABEL_68;
    case 12:
      v4 = @"rotation direction";
      goto LABEL_68;
    case 13:
      v4 = @"security system state";
      goto LABEL_68;
    case 14:
      v4 = @"heating cooling mode";
      goto LABEL_68;
    case 15:
      v4 = @"heater cooler mode";
      goto LABEL_68;
    case 16:
      v4 = @"control lock";
      goto LABEL_68;
    case 17:
      v4 = @"cooling threshold";
      goto LABEL_68;
    case 18:
      v4 = @"fan operating mode";
      goto LABEL_68;
    case 19:
      v4 = @"heating threshold";
      goto LABEL_68;
    case 20:
      v4 = @"humidifier dehumidifier mode";
      goto LABEL_68;
    case 21:
      v4 = @"slat operating mode";
      goto LABEL_68;
    case 22:
      v4 = @"swing mode";
      goto LABEL_68;
    case 23:
      v4 = @"humidifier threshold";
      goto LABEL_68;
    case 24:
      v4 = @"dehumidifier threshold";
      goto LABEL_68;
    case 25:
      v4 = @"program mode";
      goto LABEL_68;
    case 26:
      v4 = @"duration";
      goto LABEL_68;
    case 27:
      v4 = @"power";
      goto LABEL_68;
    case 28:
      v4 = @"air quality rating";
      goto LABEL_68;
    case 29:
      v4 = @"air particulate density";
      goto LABEL_68;
    case 30:
      v4 = @"air particulate size";
      goto LABEL_68;
    case 31:
      v4 = @"smoke detected";
      goto LABEL_68;
    case 32:
      v4 = @"carbon monoxide detected";
      goto LABEL_68;
    case 33:
      v4 = @"carbon monoxide level";
      goto LABEL_68;
    case 34:
      v4 = @"carbon monoxide peak level";
      goto LABEL_68;
    case 35:
      v4 = @"carbon dioxide detected";
      goto LABEL_68;
    case 36:
      v4 = @"carbon dioxide level";
      goto LABEL_68;
    case 37:
      v4 = @"carbon dioxide peak level";
      goto LABEL_68;
    case 38:
      v4 = @"contact detected";
      goto LABEL_68;
    case 39:
      v4 = @"occupancy detected";
      goto LABEL_68;
    case 40:
      v4 = @"leak detected";
      goto LABEL_68;
    case 41:
      v4 = @"motion detected";
      goto LABEL_68;
    case 42:
      v4 = @"ambient light level";
      goto LABEL_68;
    case 43:
      v4 = @"battery level";
      goto LABEL_68;
    case 44:
      v4 = @"charging state";
      goto LABEL_68;
    case 45:
      v4 = @"low battery";
      goto LABEL_68;
    case 46:
      v4 = @"in use";
      goto LABEL_68;
    case 47:
      v4 = @"air purifier operating mode";
      goto LABEL_68;
    case 48:
      v4 = @"filter change";
      goto LABEL_68;
    case 49:
      v4 = @"filter life";
      goto LABEL_68;
    case 50:
      v4 = @"water level";
      goto LABEL_68;
    case 51:
      v4 = @"remaining duration";
      goto LABEL_68;
    case 52:
      v4 = @"status fault";
      goto LABEL_68;
    case 53:
      v4 = @"sulphur dioxide density";
      goto LABEL_68;
    case 54:
      v4 = @"nitrogen dioxide density";
      goto LABEL_68;
    case 55:
      v4 = @"particulate matter25 density";
      goto LABEL_68;
    case 56:
      v4 = @"particulate matter10 density";
      goto LABEL_68;
    case 57:
      v4 = @"volatile organic compound density";
      goto LABEL_68;
    case 58:
      v4 = @"ozone density";
      goto LABEL_68;
    case 59:
      v4 = @"color temperature";
      goto LABEL_68;
    case 60:
      v4 = @"count";
      goto LABEL_68;
    case 61:
      v4 = @"location";
      goto LABEL_68;
    case 62:
      v4 = @"inventory";
      goto LABEL_68;
    case 63:
      v4 = @"capabilities";
      goto LABEL_68;
    case 64:
      v4 = @"open";
      goto LABEL_68;
    case 65:
      v4 = @"media";
      goto LABEL_68;
    case 66:
      v4 = @"adaptive lighting";
LABEL_68:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t _INPBLocalizedProjectReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBLanguageTag);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBLanguageTagReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLanguage:v14];
        goto LABEL_29;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBAppNames);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBAppNamesReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setAppNames:v14];
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

    v14 = objc_alloc_init(_INPBIntentVocabulary);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentVocabularyReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setIntentVocabulary:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

INHomeAttribute *INIntentSlotValueTransformFromHomeAttribute(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 hasAttributeType];
    v4 = [v2 attributeType];
    if (((v4 < 0x42) & v3) != 0)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    if ([v2 hasAttributeValue])
    {
      v6 = [v2 attributeValue];
      v7 = [v6 hasValueType];
      v8 = [v6 valueType];
      if (((v8 < 6) & v7) != 0)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = 0;
      }

      if ([v6 hasBooleanValue])
      {
        v10 = [v6 BOOLeanValue];
      }

      else
      {
        v10 = 0;
      }

      v13 = 0.0;
      if ([v6 hasDoubleValue])
      {
        [v6 doubleValue];
        v13 = v14;
      }

      if ([v6 hasStringValue])
      {
        v12 = [v6 stringValue];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v13 = 0.0;
    }

    v11 = [[INHomeAttribute alloc] initWithType:v5 valueType:v9 BOOLValue:v10 doubleValue:v12 stringValue:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBHomeAttribute *INIntentSlotValueTransformToHomeAttribute(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBHomeAttribute);
    if (INHomeAttributeTypeHasBackingType([v1 type]))
    {
      v3 = [v1 type] - 1;
      if (v3 >= 0x42)
      {
        v4 = 0x7FFFFFFFLL;
      }

      else
      {
        v4 = v3;
      }

      [(_INPBHomeAttribute *)v2 setAttributeType:v4];
    }

    v5 = objc_alloc_init(_INPBHomeAttributeValue);
    v6 = [v1 valueType];
    if (v6 <= 6 && ((0x7Eu >> v6) & 1) != 0)
    {
      v7 = [v1 valueType] - 1;
      if (v7 >= 6)
      {
        v8 = 0x7FFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      [(_INPBHomeAttributeValue *)v5 setValueType:v8];
    }

    v9 = [v1 valueType];
    switch(v9)
    {
      case 3:
        v10 = [v1 stringValue];
        [(_INPBHomeAttributeValue *)v5 setStringValue:v10];

        break;
      case 2:
        [v1 doubleValue];
        [(_INPBHomeAttributeValue *)v5 setDoubleValue:?];
        break;
      case 1:
        -[_INPBHomeAttributeValue setBooleanValue:](v5, "setBooleanValue:", [v1 BOOLValue]);
        break;
    }

    [(_INPBHomeAttribute *)v2 setAttributeValue:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeAttributes(void *a1)
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

          v8 = INIntentSlotValueTransformFromHomeAttribute(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToHomeAttributes(void *a1)
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

          v8 = INIntentSlotValueTransformToHomeAttribute(*(*(&v12 + 1) + 8 * i));
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

void INRideFeedbackTypeOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
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

uint64_t INRideFeedbackTypeOptionsContainsBackingType(unint64_t a1, int a2)
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

uint64_t *INRideFeedbackTypeOptionsAddBackingType(uint64_t *result, int a2)
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

unint64_t *INRideFeedbackTypeOptionsRemoveBackingType(unint64_t *result, int a2)
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

id INRideFeedbackTypeOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"rate"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"tip"];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

uint64_t INRideFeedbackTypeOptionsWithNames(void *a1)
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
        v4 |= [v7 isEqualToString:@"rate"];
        if ([v7 isEqualToString:@"tip"])
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

id INRideFeedbackTypeOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v5 = INLocalizedStringWithLocalizer(@"rate", @"rate", v3);
      [v4 addObject:v5];
    }

    if ((a1 & 2) != 0)
    {
      v6 = INLocalizedStringWithLocalizer(@"tip", @"tip", v3);
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

uint64_t _INPBDeleteTimerIntentResponseReadFrom(void *a1, void *a2)
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
          [a1 addDeletedTimers:v13];
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

uint64_t _INPBGetCarLockStatusIntentResponseReadFrom(void *a1, void *a2)
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
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setLocked:v20];
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

uint64_t INTriggerMethodGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (10 * (a1 - 1));
  }
}

uint64_t INTriggerMethodGetFacadeType(int a1, int a2)
{
  v2 = 3;
  v3 = 4;
  if (a2 != 30)
  {
    v3 = 0;
  }

  if (a2 != 20)
  {
    v2 = v3;
  }

  v4 = 1;
  v5 = 2;
  if (a2 != 10)
  {
    v5 = 0;
  }

  if (a2)
  {
    v4 = v5;
  }

  if (a2 <= 19)
  {
    v2 = v4;
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

__CFString *INTriggerMethodGetName(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E727F310 + a1 - 1);
  }
}

uint64_t INTriggerMethodWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"other"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"homeButton"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"remoteButton"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"voiceTrigger"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTriggerMethodGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"remote button";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_11;
      }

      v5 = @"voice trigger";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"other";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    v5 = @"home button";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_11:

  return v4;
}

uint64_t _INPBSendPaymentIntentReadFrom(void *a1, void *a2)
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
        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setNote:v14];
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBCurrencyAmount);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBCurrencyAmountReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setCurrencyAmount:v14];
          goto LABEL_36;
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
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBContact);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setPayee:v14];
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

uint64_t _INPBCallGroupReadFrom(void *a1, void *a2)
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
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setGroupId:v13];
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

    v13 = objc_alloc_init(_INPBString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setGroupName:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromPower(void *a1)
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

        v6 = INIntentSlotValueTransformFromPowerValue(*(*(&v10 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromPowerValue(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (![v1 hasUnit])
    {
      v5 = 0;
      v6 = 0;
LABEL_30:
      v8 = v5;

      goto LABEL_34;
    }

    v3 = [v2 unit];
    if (v3 <= 5)
    {
      if (v3 > 2)
      {
        if (v3 != 3)
        {
          if (v3 == 4)
          {
            [MEMORY[0x1E696B068] kilowatts];
          }

          else
          {
            [MEMORY[0x1E696B068] watts];
          }

          goto LABEL_8;
        }

        v4 = [MEMORY[0x1E696B068] megawatts];
LABEL_28:
        v6 = v4;
        if (v4)
        {
          v7 = objc_alloc(MEMORY[0x1E696AD28]);
          [v2 magnitude];
          v5 = [v7 initWithDoubleValue:v6 unit:?];
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (v3 == 1)
      {
        v4 = [MEMORY[0x1E696B068] terawatts];
        goto LABEL_28;
      }

      if (v3 == 2)
      {
        v4 = [MEMORY[0x1E696B068] gigawatts];
        goto LABEL_28;
      }
    }

    else
    {
      if (v3 <= 8)
      {
        if (v3 != 6)
        {
          if (v3 == 7)
          {
            [MEMORY[0x1E696B068] microwatts];
          }

          else
          {
            [MEMORY[0x1E696B068] nanowatts];
          }

          v4 = LABEL_8:;
          goto LABEL_28;
        }

        v4 = [MEMORY[0x1E696B068] milliwatts];
        goto LABEL_28;
      }

      switch(v3)
      {
        case 9:
          v4 = [MEMORY[0x1E696B068] picowatts];
          goto LABEL_28;
        case 10:
          v4 = [MEMORY[0x1E696B068] femtowatts];
          goto LABEL_28;
        case 11:
          v4 = [MEMORY[0x1E696B068] horsepower];
          goto LABEL_28;
      }
    }

LABEL_31:
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "INIntentSlotValueTransformFromPowerValue";
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s _INPBPowerValue must contain a unit. Otherwise ambiguous magnitude for NSMeasurement", &v12, 0xCu);
    }
  }

  v8 = 0;
LABEL_34:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

_INPBPower *INIntentSlotValueTransformToPower(void *a1)
{
  v1 = INIntentSlotValueTransformToPowerValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBPower);
    [(_INPBPower *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBPowerValue *INIntentSlotValueTransformToPowerValue(void *a1)
{
  if (!a1)
  {
    v3 = 0;
    goto LABEL_27;
  }

  v1 = a1;
  v2 = [v1 unit];
  v3 = objc_alloc_init(_INPBPowerValue);
  [v1 doubleValue];
  v5 = v4;

  [(_INPBPowerValue *)v3 setMagnitude:v5];
  v6 = [MEMORY[0x1E696B068] terawatts];
  v7 = [v2 isEqual:v6];

  if (v7)
  {
    v8 = 1;
LABEL_25:
    [(_INPBPowerValue *)v3 setUnit:v8];
    goto LABEL_26;
  }

  v9 = [MEMORY[0x1E696B068] gigawatts];
  v10 = [v2 isEqual:v9];

  if (v10)
  {
    v8 = 2;
    goto LABEL_25;
  }

  v11 = [MEMORY[0x1E696B068] megawatts];
  v12 = [v2 isEqual:v11];

  if (v12)
  {
    v8 = 3;
    goto LABEL_25;
  }

  v13 = [MEMORY[0x1E696B068] kilowatts];
  v14 = [v2 isEqual:v13];

  if (v14)
  {
    v8 = 4;
    goto LABEL_25;
  }

  v15 = [MEMORY[0x1E696B068] watts];
  v16 = [v2 isEqual:v15];

  if (v16)
  {
    v8 = 5;
    goto LABEL_25;
  }

  v17 = [MEMORY[0x1E696B068] milliwatts];
  v18 = [v2 isEqual:v17];

  if (v18)
  {
    v8 = 6;
    goto LABEL_25;
  }

  v19 = [MEMORY[0x1E696B068] microwatts];
  v20 = [v2 isEqual:v19];

  if (v20)
  {
    v8 = 7;
    goto LABEL_25;
  }

  v21 = [MEMORY[0x1E696B068] nanowatts];
  v22 = [v2 isEqual:v21];

  if (v22)
  {
    v8 = 8;
    goto LABEL_25;
  }

  v23 = [MEMORY[0x1E696B068] picowatts];
  v24 = [v2 isEqual:v23];

  if (v24)
  {
    v8 = 9;
    goto LABEL_25;
  }

  v25 = [MEMORY[0x1E696B068] femtowatts];
  v26 = [v2 isEqual:v25];

  if (v26)
  {
    v8 = 10;
    goto LABEL_25;
  }

  v27 = [MEMORY[0x1E696B068] horsepower];
  v28 = [v2 isEqual:v27];

  if (v28)
  {
    v8 = 11;
    goto LABEL_25;
  }

LABEL_26:

LABEL_27:

  return v3;
}

id INIntentSlotValueTransformFromPowerValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromPowerValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromPowers(void *a1)
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

        v8 = INIntentSlotValueTransformFromPower(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPowerValues(void *a1)
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

        v8 = INIntentSlotValueTransformToPowerValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueTransformToPowers(void *a1)
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

        v8 = INIntentSlotValueTransformToPower(*(*(&v11 + 1) + 8 * i));
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

uint64_t _INPBQueryHealthSampleIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBWellnessObjectResultValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBWellnessObjectResultValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addResultValues:v13];
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

uint64_t _INPBTransferMoneyIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(_INPBPaymentAmountValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBPaymentAmountValueReadFrom(v14, a2))
            {
LABEL_46:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTransactionAmount:v14];
            goto LABEL_42;
          case 7:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setTransactionScheduledDate:v14];
            goto LABEL_42;
          case 8:
            v14 = PBReaderReadString();
            [a1 setTransactionNote:v14];
LABEL_42:

            goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBIntentMetadata);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v14];
            goto LABEL_42;
          case 4:
            v14 = objc_alloc_init(_INPBFinancialAccountValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBFinancialAccountValueReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setFromAccount:v14];
            goto LABEL_42;
          case 5:
            v14 = objc_alloc_init(_INPBFinancialAccountValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBFinancialAccountValueReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setToAccount:v14];
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

id INPersonToCSPerson(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v35 = a1;
  v1 = [v35 personHandle];
  v2 = [v1 value];
  if (![v2 length])
  {
    v3 = [v35 customIdentifier];

    v2 = v3;
  }

  if (![v2 length])
  {
    v18 = 0;
    goto LABEL_41;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v2, 0}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [v35 aliases];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v6)
  {
    v7 = *v37;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = [v9 type];
        if (v10 == [v1 type])
        {
          v11 = [v9 value];
          v12 = [v11 length] == 0;

          if (!v12)
          {
            v13 = [v9 value];
            [v4 addObject:v13];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v6);
  }

  v14 = [v1 type];
  switch(v14)
  {
    case 0:
      v21 = getCNContactInstantMessageAddressesKey();
      goto LABEL_27;
    case 2:
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v15 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
      v48 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
      if (!getCNContactPhoneNumbersKeySymbolLoc_ptr)
      {
        v40 = MEMORY[0x1E69E9820];
        v41 = 3221225472;
        v42 = __getCNContactPhoneNumbersKeySymbolLoc_block_invoke;
        v43 = &unk_1E72888B8;
        v44 = &v45;
        v19 = ContactsLibrary();
        v20 = dlsym(v19, "CNContactPhoneNumbersKey");
        *(v44[1] + 24) = v20;
        getCNContactPhoneNumbersKeySymbolLoc_ptr = *(v44[1] + 24);
        v15 = v46[3];
      }

      _Block_object_dispose(&v45, 8);
      if (!v15)
      {
LABEL_44:
        dlerror();
        abort_report_np();
        __break(1u);
      }

      goto LABEL_25;
    case 1:
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v15 = getCNContactEmailAddressesKeySymbolLoc_ptr;
      v48 = getCNContactEmailAddressesKeySymbolLoc_ptr;
      if (!getCNContactEmailAddressesKeySymbolLoc_ptr)
      {
        v40 = MEMORY[0x1E69E9820];
        v41 = 3221225472;
        v42 = __getCNContactEmailAddressesKeySymbolLoc_block_invoke;
        v43 = &unk_1E72888B8;
        v44 = &v45;
        v16 = ContactsLibrary();
        v17 = dlsym(v16, "CNContactEmailAddressesKey");
        *(v44[1] + 24) = v17;
        getCNContactEmailAddressesKeySymbolLoc_ptr = *(v44[1] + 24);
        v15 = v46[3];
      }

      _Block_object_dispose(&v45, 8);
      if (!v15)
      {
        goto LABEL_44;
      }

LABEL_25:
      v21 = *v15;
LABEL_27:
      v22 = v21;
      goto LABEL_29;
  }

  v22 = 0;
LABEL_29:
  if ([v1 type] == 104)
  {
    v23 = getCNContactInstantMessageAddressesKey();
  }

  else
  {
    if ([v1 type] != 103)
    {
      v27 = v22;
      goto LABEL_38;
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v24 = getCNContactUrlAddressesKeySymbolLoc_ptr;
    v48 = getCNContactUrlAddressesKeySymbolLoc_ptr;
    if (!getCNContactUrlAddressesKeySymbolLoc_ptr)
    {
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __getCNContactUrlAddressesKeySymbolLoc_block_invoke;
      v43 = &unk_1E72888B8;
      v44 = &v45;
      v25 = ContactsLibrary();
      v26 = dlsym(v25, "CNContactUrlAddressesKey");
      *(v44[1] + 24) = v26;
      getCNContactUrlAddressesKeySymbolLoc_ptr = *(v44[1] + 24);
      v24 = v46[3];
    }

    _Block_object_dispose(&v45, 8);
    if (!v24)
    {
      goto LABEL_44;
    }

    v23 = *v24;
  }

  v27 = v23;

LABEL_38:
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v28 = getCSPersonClass_softClass;
  v48 = getCSPersonClass_softClass;
  if (!getCSPersonClass_softClass)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getCSPersonClass_block_invoke;
    v43 = &unk_1E72888B8;
    v44 = &v45;
    __getCSPersonClass_block_invoke(&v40);
    v28 = v46[3];
  }

  v29 = v28;
  _Block_object_dispose(&v45, 8);
  v30 = [v28 alloc];
  v31 = [v35 displayName];
  v18 = [v30 initWithDisplayName:v31 handles:v4 handleIdentifier:v27];

  v32 = [v35 contactIdentifier];
  [v18 setContactIdentifier:v32];

LABEL_41:
  v33 = *MEMORY[0x1E69E9840];

  return v18;
}

void sub_18EA7AC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_19411)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_19412;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E727F350;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_19411 = _sl_dlopen();
    v1 = v4[0];
    v0 = ContactsLibraryCore_frameworkLibrary_19411;
    if (ContactsLibraryCore_frameworkLibrary_19411)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = ContactsLibraryCore_frameworkLibrary_19411;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNContactInstantMessageAddressesKey()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr;
  v8 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr;
  if (!getCNContactInstantMessageAddressesKeySymbolLoc_ptr)
  {
    v1 = ContactsLibrary();
    v6[3] = dlsym(v1, "CNContactInstantMessageAddressesKey");
    getCNContactInstantMessageAddressesKeySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *__getCNContactUrlAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactUrlAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactUrlAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getCSPersonClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_19404();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSPerson");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSPersonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    CoreSpotlightLibrary_19404();
  }
}

void CoreSpotlightLibrary_19404()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_19407)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreSpotlightLibraryCore_block_invoke_19408;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E727F368;
    v4 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_19407 = _sl_dlopen();
    v0 = v2[0];
    if (CoreSpotlightLibraryCore_frameworkLibrary_19407)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_19408(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_19407 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCNContactInstantMessageAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactInstantMessageAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactInstantMessageAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_19412(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_19411 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id INCSLocalizedString(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 localizations];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        CFBundleGetBundleWithIdentifier([v5 bundleIdentifier]);
        v12 = CFBundleCopyLocalizedStringForLocalization();
        if ([v4 length])
        {
          [v6 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v13 languageCode];

  if ([v4 length])
  {
    v15 = [v6 objectForKey:v14];
    v16 = v15 == 0;

    if (v16)
    {
      [v6 setObject:v4 forKeyedSubscript:v14];
    }
  }

  if ([v6 count])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v17 = getCSLocalizedStringClass_softClass;
    v30 = getCSLocalizedStringClass_softClass;
    if (!getCSLocalizedStringClass_softClass)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __getCSLocalizedStringClass_block_invoke;
      v26[3] = &unk_1E72888B8;
      v26[4] = &v27;
      __getCSLocalizedStringClass_block_invoke(v26);
      v17 = v28[3];
    }

    v18 = v17;
    _Block_object_dispose(&v27, 8);
    v19 = [[v17 alloc] initWithLocalizedStrings:v6];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void sub_18EA7B4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSLocalizedStringClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_19404();
  result = objc_getClass("CSLocalizedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSLocalizedStringClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return INPersonHandleLabelForCNLabeledValueWithLanguages(v3, v4);
  }

  return result;
}

id INPersonHandleLabelForCNLabeledValueWithLanguages(void *a1, void *a2)
{
  v76[10] = *MEMORY[0x1E69E9840];
  v48 = a1;
  v49 = a2;
  v54 = [v48 label];
  if (v54)
  {
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v3 = getCNLabelHomeSymbolLoc_ptr;
    v71 = getCNLabelHomeSymbolLoc_ptr;
    if (!getCNLabelHomeSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelHomeSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v4 = ContactsLibrary_19423();
      v69[3] = dlsym(v4, "CNLabelHome");
      getCNLabelHomeSymbolLoc_ptr = *(v67[1] + 24);
      v3 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v3)
    {
      goto LABEL_59;
    }

    v5 = *v3;
    v74[0] = v5;
    v76[0] = @"com.apple.intents.PersonHandleLabel.Home";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v6 = getCNLabelWorkSymbolLoc_ptr;
    v71 = getCNLabelWorkSymbolLoc_ptr;
    if (!getCNLabelWorkSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelWorkSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v7 = ContactsLibrary_19423();
      v69[3] = dlsym(v7, "CNLabelWork");
      getCNLabelWorkSymbolLoc_ptr = *(v67[1] + 24);
      v6 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v6)
    {
      goto LABEL_59;
    }

    v8 = *v6;
    v74[1] = v8;
    v76[1] = @"com.apple.intents.PersonHandleLabel.Work";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v9 = getCNLabelOtherSymbolLoc_ptr;
    v71 = getCNLabelOtherSymbolLoc_ptr;
    if (!getCNLabelOtherSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelOtherSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v10 = ContactsLibrary_19423();
      v69[3] = dlsym(v10, "CNLabelOther");
      getCNLabelOtherSymbolLoc_ptr = *(v67[1] + 24);
      v9 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v9)
    {
      goto LABEL_59;
    }

    v11 = *v9;
    v74[2] = v11;
    v76[2] = @"com.apple.intents.PersonHandleLabel.Other";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v12 = getCNLabelSchoolSymbolLoc_ptr;
    v71 = getCNLabelSchoolSymbolLoc_ptr;
    if (!getCNLabelSchoolSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelSchoolSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v13 = ContactsLibrary_19423();
      v69[3] = dlsym(v13, "CNLabelSchool");
      getCNLabelSchoolSymbolLoc_ptr = *(v67[1] + 24);
      v12 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v12)
    {
      goto LABEL_59;
    }

    v14 = *v12;
    v74[3] = v14;
    v76[3] = @"com.apple.intents.PersonHandleLabel.School";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v15 = getCNLabelPhoneNumberiPhoneSymbolLoc_ptr;
    v71 = getCNLabelPhoneNumberiPhoneSymbolLoc_ptr;
    if (!getCNLabelPhoneNumberiPhoneSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelPhoneNumberiPhoneSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v16 = ContactsLibrary_19423();
      v69[3] = dlsym(v16, "CNLabelPhoneNumberiPhone");
      getCNLabelPhoneNumberiPhoneSymbolLoc_ptr = *(v67[1] + 24);
      v15 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v15)
    {
      goto LABEL_59;
    }

    v17 = *v15;
    v74[4] = v17;
    v76[4] = @"com.apple.intents.PersonHandleLabel.iPhone";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v18 = getCNLabelPhoneNumberMobileSymbolLoc_ptr;
    v71 = getCNLabelPhoneNumberMobileSymbolLoc_ptr;
    if (!getCNLabelPhoneNumberMobileSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelPhoneNumberMobileSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v19 = ContactsLibrary_19423();
      v69[3] = dlsym(v19, "CNLabelPhoneNumberMobile");
      getCNLabelPhoneNumberMobileSymbolLoc_ptr = *(v67[1] + 24);
      v18 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v18)
    {
      goto LABEL_59;
    }

    v20 = *v18;
    v74[5] = v20;
    v76[5] = @"com.apple.intents.PersonHandleLabel.Mobile";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v21 = getCNLabelPhoneNumberMainSymbolLoc_ptr;
    v71 = getCNLabelPhoneNumberMainSymbolLoc_ptr;
    if (!getCNLabelPhoneNumberMainSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelPhoneNumberMainSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v22 = ContactsLibrary_19423();
      v69[3] = dlsym(v22, "CNLabelPhoneNumberMain");
      getCNLabelPhoneNumberMainSymbolLoc_ptr = *(v67[1] + 24);
      v21 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v21)
    {
      goto LABEL_59;
    }

    v51 = v8;
    v23 = *v21;
    v74[6] = v23;
    v76[6] = @"com.apple.intents.PersonHandleLabel.Main";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v24 = getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr;
    v71 = getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr;
    if (!getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelPhoneNumberHomeFaxSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v25 = ContactsLibrary_19423();
      v69[3] = dlsym(v25, "CNLabelPhoneNumberHomeFax");
      getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr = *(v67[1] + 24);
      v24 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v24)
    {
      goto LABEL_59;
    }

    v26 = *v24;
    v74[7] = v26;
    v76[7] = @"com.apple.intents.PersonHandleLabel.Home_Fax";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v27 = getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr;
    v71 = getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr;
    if (!getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelPhoneNumberWorkFaxSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v28 = ContactsLibrary_19423();
      v69[3] = dlsym(v28, "CNLabelPhoneNumberWorkFax");
      getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr = *(v67[1] + 24);
      v27 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v27)
    {
      goto LABEL_59;
    }

    v29 = *v27;
    v74[8] = v29;
    v76[8] = @"com.apple.intents.PersonHandleLabel.Work_Fax";
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v30 = getCNLabelPhoneNumberPagerSymbolLoc_ptr;
    v71 = getCNLabelPhoneNumberPagerSymbolLoc_ptr;
    if (!getCNLabelPhoneNumberPagerSymbolLoc_ptr)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getCNLabelPhoneNumberPagerSymbolLoc_block_invoke;
      v66 = &unk_1E72888B8;
      v67 = &v68;
      v31 = ContactsLibrary_19423();
      v69[3] = dlsym(v31, "CNLabelPhoneNumberPager");
      getCNLabelPhoneNumberPagerSymbolLoc_ptr = *(v67[1] + 24);
      v30 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (!v30)
    {
LABEL_59:
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v32 = v5;
    v75 = *v30;
    v76[9] = @"com.apple.intents.PersonHandleLabel.Pager";
    v33 = MEMORY[0x1E695DF20];
    v34 = v75;
    v53 = [v33 dictionaryWithObjects:v76 forKeys:v74 count:10];

    v35 = [v53 objectForKey:v54];
    if (!v35)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v49;
      v36 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
      if (v36)
      {
        v52 = *v60;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v60 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v59 + 1) + 8 * i);
            v39 = INLocalizedStringForContactLabelAndLanguage(v54, v38);
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v40 = v53;
            v41 = [v40 countByEnumeratingWithState:&v55 objects:v72 count:16];
            if (v41)
            {
              v42 = *v56;
LABEL_40:
              v43 = 0;
              while (1)
              {
                if (*v56 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v55 + 1) + 8 * v43);
                v45 = INLocalizedStringForContactLabelAndLanguage(v44, v38);
                if (![v39 caseInsensitiveCompare:v45])
                {
                  break;
                }

                if (v41 == ++v43)
                {
                  v41 = [v40 countByEnumeratingWithState:&v55 objects:v72 count:16];
                  if (v41)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_46;
                }
              }

              v35 = [v40 objectForKey:v44];

              if (v35)
              {
                goto LABEL_52;
              }
            }

            else
            {
LABEL_46:
            }
          }

          v36 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v36);
      }

      if ([obj count])
      {
        obj = [obj firstObject];
        v35 = INLocalizedStringForContactLabelAndLanguage(v54, obj);
LABEL_52:
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    v35 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v35;
}

void *__getCNLabelHomeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelHome");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelHomeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary_19423()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_19437)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_19438;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E727F380;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_19437 = _sl_dlopen();
    v1 = v4[0];
    v0 = ContactsLibraryCore_frameworkLibrary_19437;
    if (ContactsLibraryCore_frameworkLibrary_19437)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = ContactsLibraryCore_frameworkLibrary_19437;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *__getCNLabelWorkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelWork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelWorkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelOtherSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelOther");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelOtherSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelSchoolSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelSchool");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelSchoolSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberiPhoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelPhoneNumberiPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberiPhoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberMobileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelPhoneNumberMobile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberMobileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberMainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelPhoneNumberMain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberMainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberHomeFaxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelPhoneNumberHomeFax");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberHomeFaxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberWorkFaxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelPhoneNumberWorkFax");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberWorkFaxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNLabelPhoneNumberPagerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_19423();
  result = dlsym(v2, "CNLabelPhoneNumberPager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberPagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *INLocalizedStringForContactLabelAndLanguage(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  CNLabeledValueClass = getCNLabeledValueClass();
  v6 = NSStringFromClass(CNLabeledValueClass);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:getCNLabeledValueClass()];
  v8 = [v7 _cfBundle];

  v9 = [INStringLocalizer localizerForLanguage:v3];

  v10 = INLocalizedStringFromBundle(v4, 0, v6, v9, v8, 0);

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;

  return v11;
}

id getCNLabeledValueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLabeledValueClass_softClass;
  v7 = getCNLabeledValueClass_softClass;
  if (!getCNLabeledValueClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNLabeledValueClass_block_invoke;
    v3[3] = &unk_1E72888B8;
    v3[4] = &v4;
    __getCNLabeledValueClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18EA7C74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNLabeledValueClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_19423();
  result = objc_getClass("CNLabeledValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLabeledValueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __ContactsLibraryCore_block_invoke_19438(v3);
  }

  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_19438(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_19437 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id INPersonHandleLabelForCNLabeledValue(void *a1)
{
  v1 = a1;
  v2 = INPersonHandleLabelUtilsLanguageCodes();
  v3 = INPersonHandleLabelForCNLabeledValueWithLanguages(v1, v2);

  return v3;
}

id INPersonHandleLabelUtilsLanguageCodes()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v1 = +[INPreferences sharedPreferences];
  v2 = [v1 _cachedSiriLanguageCode];

  v3 = INSiriLogContextIntents;
  if (v2)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "INPersonHandleLabelUtilsLanguageCodes";
      _os_log_debug_impl(&dword_18E991000, v3, OS_LOG_TYPE_DEBUG, "%s _cachedSiriLanguageCode is set", &v13, 0xCu);
    }

    v4 = +[INPreferences sharedPreferences];
    v5 = [v4 _cachedSiriLanguageCode];

    if ([v5 length])
    {
      [v0 addObject:v5];
    }

    else
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "INPersonHandleLabelUtilsLanguageCodes";
        _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s siriLanguageCode is nil", &v13, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "INPersonHandleLabelUtilsLanguageCodes";
    _os_log_error_impl(&dword_18E991000, v3, OS_LOG_TYPE_ERROR, "%s _cachedSiriLanguageCode is not set, using deviceLocale only", &v13, 0xCu);
  }

  v7 = _CFLocaleCopyPreferred();
  v8 = [v7 languageIdentifier];
  if ([v8 length])
  {
    [v0 addObject:v8];
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "INPersonHandleLabelUtilsLanguageCodes";
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s deviceLocale is nil", &v13, 0xCu);
    }
  }

  v10 = [v0 array];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t INPersonHandleLabelEqualsCNLabeledValueWithLanguages(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = INPersonHandleLabelForCNLabeledValueWithLanguages(v6, v7);
  if ([v5 caseInsensitiveCompare:v8])
  {
    v9 = [v6 label];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v18 = v8;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = INLocalizedStringForContactLabelAndLanguage(v9, *(*(&v19 + 1) + 8 * i));
          v15 = [v5 caseInsensitiveCompare:v14];

          if (!v15)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v8 = v18;
    }
  }

  else
  {
    v11 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t INPersonHandleLabelEqualsCNLabeledValue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = INPersonHandleLabelUtilsLanguageCodes();
  v6 = INPersonHandleLabelEqualsCNLabeledValueWithLanguages(v4, v3, v5);

  return v6;
}

uint64_t _INPBFilePropertyValueReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBContact);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
          {
LABEL_54:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setPerson:v21];
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBDateTimeRange);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v21, a2))
          {
            goto LABEL_54;
          }

          PBReaderRecallMark();
          [a1 setDateTime:v21];
          goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_INPBString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            PBReaderRecallMark();
            [a1 setValue:v21];
            goto LABEL_44;
          case 5:
            v21 = objc_alloc_init(_INPBLong);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBLongReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            PBReaderRecallMark();
            [a1 setQuantity:v21];
LABEL_44:

            goto LABEL_51;
          case 4:
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
            [a1 setFileType:v20];
            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPlayAudioMessageIntentResponseReadFrom(uint64_t a1, void *a2)
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

__CFString *INRequestRideIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E727F3F0[a1];
  }
}

uint64_t _INPBCallMetricsValueReadFrom(void *a1, void *a2)
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
      LOBYTE(v21) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v21) & 0x7F) << v6;
      if ((LOBYTE(v21) & 0x80) == 0)
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
      v21 = 0.0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v21 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setTimeToEstablish:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v21 = 0.0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v19 = [a2 data];
        [v19 getBytes:&v21 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setCallDuration:v21];
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

uint64_t _INPBUncompressFileIntentResponseReadFrom(void *a1, void *a2)
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
        [a1 setEntityName:v20];
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
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        [a1 setSuccess:v19];
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

uint64_t _INPBPaymentRecordReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 6)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_INPBContact);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
            {
LABEL_64:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setPayee:v21];
            goto LABEL_55;
          case 3:
            v21 = objc_alloc_init(_INPBContact);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setPayer:v21];
            goto LABEL_55;
          case 5:
            v21 = objc_alloc_init(_INPBCurrencyAmount);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBCurrencyAmountReadFrom(v21, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setCurrencyAmount:v21];
            goto LABEL_55;
        }
      }

      else if (v13 > 8)
      {
        if (v13 == 9)
        {
          v21 = objc_alloc_init(_INPBPaymentMethodValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBPaymentMethodValueReadFrom(v21, a2))
          {
            goto LABEL_64;
          }

          PBReaderRecallMark();
          [a1 setPaymentMethod:v21];
          goto LABEL_55;
        }

        if (v13 == 10)
        {
          v21 = objc_alloc_init(_INPBCurrencyAmount);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBCurrencyAmountReadFrom(v21, a2))
          {
            goto LABEL_64;
          }

          PBReaderRecallMark();
          [a1 setFeeAmount:v21];
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 7)
        {
          v21 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v21, a2))
          {
            goto LABEL_64;
          }

          PBReaderRecallMark();
          [a1 setNote:v21];
LABEL_55:

          goto LABEL_56;
        }

        if (v13 == 8)
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
              goto LABEL_61;
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

LABEL_61:
          [a1 setStatus:v20];
          goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}
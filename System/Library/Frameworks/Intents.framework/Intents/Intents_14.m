INTicketedEvent *INIntentSlotValueTransformFromTicketedEvent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INTicketedEvent alloc];
    v3 = [v1 hasCategory];
    if ([v1 category] == 2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = [v1 name];
    v6 = [v1 eventDuration];
    v7 = INIntentSlotValueTransformFromDateTimeRange(v6);
    v8 = [v1 location];

    v9 = INIntentSlotValueTransformFromLocationValue(v8);
    v10 = [(INTicketedEvent *)v2 initWithCategory:v4 name:v5 eventDuration:v7 location:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

_INPBTicketedEvent *INIntentSlotValueTransformToTicketedEvent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBTicketedEvent);
    v3 = [v1 category];
    if (v3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0x7FFFFFFF;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    [(_INPBTicketedEvent *)v2 setCategory:v5];
    v6 = [v1 name];
    [(_INPBTicketedEvent *)v2 setName:v6];

    v7 = [v1 eventDuration];
    v8 = INIntentSlotValueTransformToDateTimeRange(v7);
    [(_INPBTicketedEvent *)v2 setEventDuration:v8];

    v9 = [v1 location];

    v10 = INIntentSlotValueTransformToLocationValue(v9);
    [(_INPBTicketedEvent *)v2 setLocation:v10];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromTicketedEvents(void *a1)
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

          v8 = INIntentSlotValueTransformFromTicketedEvent(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToTicketedEvents(void *a1)
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

          v8 = INIntentSlotValueTransformToTicketedEvent(*(*(&v12 + 1) + 8 * i));
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

INRentalCar *INIntentSlotValueTransformFromRentalCar(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INRentalCar alloc];
    v3 = [v1 rentalCompanyName];
    v4 = [v1 type];
    v5 = [v1 make];
    v6 = [v1 model];
    v7 = [v1 rentalCarDescription];

    v8 = [(INRentalCar *)v2 initWithRentalCompanyName:v3 type:v4 make:v5 model:v6 rentalCarDescription:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBRentalCar *INIntentSlotValueTransformToRentalCar(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBRentalCar);
    v3 = [v1 rentalCompanyName];
    [(_INPBRentalCar *)v2 setRentalCompanyName:v3];

    v4 = [v1 type];
    [(_INPBRentalCar *)v2 setType:v4];

    v5 = [v1 make];
    [(_INPBRentalCar *)v2 setMake:v5];

    v6 = [v1 model];
    [(_INPBRentalCar *)v2 setModel:v6];

    v7 = [v1 rentalCarDescription];

    [(_INPBRentalCar *)v2 setRentalCarDescription:v7];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromRentalCars(void *a1)
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

          v8 = INIntentSlotValueTransformFromRentalCar(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToRentalCars(void *a1)
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

          v8 = INIntentSlotValueTransformToRentalCar(*(*(&v12 + 1) + 8 * i));
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

void INTemporalEventTriggerTypeOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v4 = v3;
    if (a1)
    {
      (*(v3 + 2))(v3, 1);
      v3 = v4;
      if ((a1 & 2) == 0)
      {
LABEL_5:
        if ((a1 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

    (*(v3 + 2))(v4, 2);
    v3 = v4;
    if ((a1 & 4) != 0)
    {
LABEL_6:
      (*(v3 + 2))(v4, 3);
      v3 = v4;
    }
  }

LABEL_7:
}

uint64_t INTemporalEventTriggerTypeOptionsContainsBackingType(unint64_t a1, int a2)
{
  v2 = (a1 >> 2) & 1;
  v3 = (a1 >> 1) & 1;
  if (a2 == 1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (a2 != 2)
  {
    LOBYTE(v3) = v4;
  }

  if (a2 != 3)
  {
    LOBYTE(v2) = v3;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INTemporalEventTriggerTypeOptionsAddBackingType(uint64_t *result, int a2)
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

    if (a2 == 3)
    {
      v2 = *result | 4;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INTemporalEventTriggerTypeOptionsRemoveBackingType(unint64_t *result, int a2)
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

    if (a2 == 3)
    {
      v2 = *result & 0xFFFFFFFFFFFFFFFBLL;
    }

    *result = v2;
  }

  return result;
}

id INTemporalEventTriggerTypeOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"notScheduled"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
LABEL_6:
          v4 = [v3 copy];

          goto LABEL_8;
        }

LABEL_5:
        [v3 addObject:@"scheduledRecurring"];
        goto LABEL_6;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"scheduledNonRecurring"];
    if ((v1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v4;
}

uint64_t INTemporalEventTriggerTypeOptionsWithNames(void *a1)
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
        v4 |= [v7 isEqualToString:@"notScheduled"];
        if ([v7 isEqualToString:@"scheduledNonRecurring"])
        {
          v4 |= 2uLL;
        }

        if ([v7 isEqualToString:@"scheduledRecurring"])
        {
          v4 |= 4uLL;
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

id INTemporalEventTriggerTypeOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"not scheduled", @"not scheduled", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
LABEL_6:
          v6 = [v4 copy];

          goto LABEL_8;
        }

LABEL_5:
        v5 = INLocalizedStringWithLocalizer(@"scheduled recurring", @"scheduled recurring", v3);
        [v4 addObject:v5];

        goto LABEL_6;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"scheduled non recurring", @"scheduled non recurring", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v6;
}

unint64_t INTaskPriorityGetBackingType(unint64_t result)
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

uint64_t INTaskPriorityGetFacadeType(int a1, int a2)
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

__CFString *INTaskPriorityGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"flagged";
  }

  if (a1 == 1)
  {
    return @"notFlagged";
  }

  else
  {
    return v1;
  }
}

uint64_t INTaskPriorityWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"notFlagged"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"flagged"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTaskPriorityGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"flagged";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"not flagged";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBAppIdentifierReadFrom(void *a1, void *a2)
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
      [a1 setBundleIdentifier:v15];
      goto LABEL_24;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setBundleVersion:v15];
      goto LABEL_24;
    }

    if (v14 == 3)
    {
      v15 = PBReaderReadString();
      [a1 setAppName:v15];
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

uint64_t _INPBPayloadNeedsExecuteIntentReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBIntentExecutionRequest);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentExecutionRequestReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentExecution:v13];
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

uint64_t _INPBIntentExecutionRequestReadFrom(void *a1, void *a2)
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
          [a1 setEncodedIntent:v14];
          goto LABEL_38;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setEncodedIntentDefinition:v14];
LABEL_38:

          goto LABEL_43;
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
          [a1 setEncodingFormat:v21];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBAppIdentifier);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBAppIdentifierReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setAppIdentifier:v14];
          goto LABEL_38;
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

uint64_t _INPBSnoozeTasksIntentReadFrom(void *a1, void *a2)
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
LABEL_49:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setNextTriggerTime:v14];
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
              goto LABEL_45;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_45:
          [a1 setAll:v21];
          goto LABEL_46;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBTask);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addTasks:v14];
          }

LABEL_43:

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDeleteTasksIntentReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBTask);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v14, a2))
          {
LABEL_49:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addTasks:v14];
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
              goto LABEL_45;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_45:
          [a1 setAll:v21];
          goto LABEL_46;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBTaskList);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBTaskListReadFrom(v14, a2))
          {
            goto LABEL_49;
          }

          PBReaderRecallMark();
          [a1 setTaskList:v14];
LABEL_43:

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INSnoozeTasksIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E72871F0[a1];
  }
}

uint64_t _INPBSnoozeTasksIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBTask);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addSnoozedTasks:v13];
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

__CFString *INDeleteTasksIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7287220[a1];
  }
}

uint64_t _INPBDeleteTasksIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBTask);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addDeletedTasks:v13];
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

uint64_t _INPBFileDataAttachmentReadFrom(void *a1, void *a2)
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
      [a1 setFileName:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadData();
      [a1 setData:v14];
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

void sub_18ED0D20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak(v40);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void INFileURLSetAssociatedAuditToken(void *a1, _OWORD *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a1;
  v5 = [v3 defaultManager];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  [v5 if_setAuditToken:v8 forExtendedAttributeNamed:@"INFileURLAssociatedAuditToken" ofItemAtURL:v4];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  [v7 if_setBool:1 forExtendedAttributeNamed:@"INFileURLHasAssociatedAuditToken" ofItemAtURL:v4];
}

void INFileURLGetAssociatedAuditToken(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1;
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = v3;
  if (v3)
  {
    [v3 if_auditTokenForExtendedAttributeNamed:@"INFileURLAssociatedAuditToken" ofItemAtURL:v5];
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }
}

void INFileURLSetMarkedForDeletionOnDeallocation(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a1;
  v5 = [v3 defaultManager];
  [v5 if_setBool:a2 forExtendedAttributeNamed:@"INFileURLIsMarkedForDeletionOnDeallocation" ofItemAtURL:v4];
}

uint64_t INFileURLHasAssociatedAuditToken(void *a1)
{
  v1 = MEMORY[0x1E696AC08];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = [v3 if_BOOLForExtendedAttributeName:@"INFileURLHasAssociatedAuditToken" ofItemAtURL:v2];

  return v4;
}

void INFileURLRemoveAssociatedAuditToken(void *a1)
{
  v1 = MEMORY[0x1E696AC08];
  v2 = a1;
  v3 = [v1 defaultManager];
  [v3 if_removeExtendedAttributeName:@"INFileURLAssociatedAuditToken" ofItemAtURL:v2];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 if_removeExtendedAttributeName:@"INFileURLHasAssociatedAuditToken" ofItemAtURL:v2];
}

BOOL INFileURLAuditTokenEquals(void *a1, void *a2)
{
  v7 = 0u;
  v8 = 0u;
  INFileURLGetAssociatedAuditToken(a1, &v7);
  return v7 == *a2 && *(&v7 + 1) == a2[1] && v8 == a2[2] && *(&v8 + 1) == a2[3];
}

uint64_t INOutgoingMessageTypeGetBackingType(uint64_t a1)
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

uint64_t INOutgoingMessageTypeGetFacadeType(int a1, int a2)
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

__CFString *INOutgoingMessageTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"outgoingMessageAudio";
  }

  if (a1 == 1)
  {
    return @"outgoingMessageText";
  }

  else
  {
    return v1;
  }
}

uint64_t INOutgoingMessageTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"outgoingMessageText"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"outgoingMessageAudio"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INOutgoingMessageTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"outgoing message audio";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"outgoing message text";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBFileReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            [a1 setTypeIdentifier:v14];
            goto LABEL_42;
          case 5:
            v14 = PBReaderReadData();
            [a1 setBookmarkData:v14];
            goto LABEL_42;
          case 6:
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
                goto LABEL_46;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_46:
            [a1 setRemovedOnCompletion:v21];
            goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            [a1 setFilename:v14];
LABEL_42:

            goto LABEL_43;
          case 2:
            v14 = PBReaderReadData();
            [a1 setData:v14];
            goto LABEL_42;
          case 3:
            v14 = objc_alloc_init(_INPBURLValue);
            v24[0] = 0;
            v24[1] = 0;
            if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setFileURL:v14];
            goto LABEL_42;
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

uint64_t _INPBIntentExecutionResultReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) == 3)
    {
      v22 = PBReaderReadString();
      [a1 setEncodedIntentResponse:v22];
      goto LABEL_32;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setEncodedIntent:v22];
LABEL_32:

      continue;
    }

    if (v14 == 1)
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
      [a1 setEncodingFormat:v21];
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

uint64_t _INPBIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBAppIdentifier);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBAppIdentifierReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setAppIdentifier:v14];
          goto LABEL_38;
        }

        if (v13 == 2)
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
          [a1 setEncodingFormat:v21];
          goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            [a1 setEncodedIntent:v14];
            goto LABEL_38;
          case 4:
            v14 = PBReaderReadString();
            [a1 setEncodedIntentDefinition:v14];
            goto LABEL_38;
          case 5:
            v14 = PBReaderReadString();
            [a1 setIntentTypeName:v14];
LABEL_38:

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

uint64_t _INPBEnergyValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v27[0]) & 0x7F) << v5;
        if ((LOBYTE(v27[0]) & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v23 = objc_alloc_init(_INPBValueMetadata);
        v27[0] = 0.0;
        v27[1] = 0.0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v23];
      }

      else if (v13 == 2)
      {
        v27[0] = 0.0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setMagnitude:v27[0]];
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v27[0]) & 0x7F) << v14;
          if ((LOBYTE(v27[0]) & 0x80) == 0)
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
        [a1 setUnit:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBVolumeReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBVolumeValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBVolumeValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
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

uint64_t _INPBModifyNicknameReadFrom(void *a1, void *a2)
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
        [a1 setTargetNickname:v20];
      }

      else if ((v12 >> 3) == 3)
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
        [a1 setIsRemoval:v19];
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

uint64_t INDeleteEventConfirmationReasonGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INDeleteEventConfirmationReasonGetFacadeType(uint64_t result, int a2)
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

__CFString *INDeleteEventConfirmationReasonGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"deleteAllRecurrences";
  }

  else
  {
    return @"unknown";
  }
}

id INDeleteEventConfirmationReasonGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"delete all recurrences", @"delete all recurrences", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _INPBSpeedReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBSpeedValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBSpeedValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
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

uint64_t _INPBMassValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v27[0]) & 0x7F) << v5;
        if ((LOBYTE(v27[0]) & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v23 = objc_alloc_init(_INPBValueMetadata);
        v27[0] = 0.0;
        v27[1] = 0.0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v23];
      }

      else if (v13 == 2)
      {
        v27[0] = 0.0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setMagnitude:v27[0]];
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v27[0]) & 0x7F) << v14;
          if ((LOBYTE(v27[0]) & 0x80) == 0)
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
        [a1 setUnit:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBMassReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBMassValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBMassValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
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

uint64_t _INPBVolumeValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v27[0]) & 0x7F) << v5;
        if ((LOBYTE(v27[0]) & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v23 = objc_alloc_init(_INPBValueMetadata);
        v27[0] = 0.0;
        v27[1] = 0.0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v23];
      }

      else if (v13 == 2)
      {
        v27[0] = 0.0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setMagnitude:v27[0]];
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v27[0]) & 0x7F) << v14;
          if ((LOBYTE(v27[0]) & 0x80) == 0)
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
        [a1 setUnit:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBEnergyReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBEnergyValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBEnergyValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
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

uint64_t _INPBSpeedValueReadFrom(void *a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v27[0]) & 0x7F) << v5;
        if ((LOBYTE(v27[0]) & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v23 = objc_alloc_init(_INPBValueMetadata);
        v27[0] = 0.0;
        v27[1] = 0.0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v23];
      }

      else if (v13 == 2)
      {
        v27[0] = 0.0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setMagnitude:v27[0]];
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v27[0]) & 0x7F) << v14;
          if ((LOBYTE(v27[0]) & 0x80) == 0)
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
        [a1 setUnit:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBReservationWrapperReadFrom(void *a1, void *a2)
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
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = objc_alloc_init(_INPBBusReservation);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBBusReservationReadFrom(v14, a2))
            {
LABEL_59:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setBusReservation:v14];
            goto LABEL_52;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(_INPBBoatReservation);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBBoatReservationReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setBoatReservation:v14];
            goto LABEL_52;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(_INPBRestaurantReservation);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBRestaurantReservationReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setRestaurantReservation:v14];
            goto LABEL_52;
          }

          if (v13 == 6)
          {
            v14 = objc_alloc_init(_INPBTicketedEventReservation);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBTicketedEventReservationReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setTicketedEventReservation:v14];
            goto LABEL_52;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBRentalCarReservation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBRentalCarReservationReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          PBReaderRecallMark();
          [a1 setRentalCarReservation:v14];
          goto LABEL_52;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBLodgingReservation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBLodgingReservationReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          PBReaderRecallMark();
          [a1 setLodgingReservation:v14];
          goto LABEL_52;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBFlightReservation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBFlightReservationReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          PBReaderRecallMark();
          [a1 setFlightReservation:v14];
          goto LABEL_52;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBTrainReservation);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBTrainReservationReadFrom(v14, a2))
          {
            goto LABEL_59;
          }

          PBReaderRecallMark();
          [a1 setTrainReservation:v14];
LABEL_52:

          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBGetReservationDetailsIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBReservationWrapper);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBReservationWrapperReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addReservations:v13];
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

uint64_t _INPBGetReservationDetailsIntentReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBDataString);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
        {
LABEL_35:

          return 0;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addReservationItemReferences:v14];
        }

        goto LABEL_30;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBIntentMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
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

    v14 = objc_alloc_init(_INPBDataString);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
    {
      goto LABEL_35;
    }

    PBReaderRecallMark();
    [a1 setReservationContainerReference:v14];
    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromReservationWrapper(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasFlightReservation])
    {
      v3 = [v2 flightReservation];
      v4 = INIntentSlotValueTransformFromFlightReservation(v3);
LABEL_18:
      v5 = v4;

      goto LABEL_20;
    }

    if ([v2 hasTrainReservation])
    {
      v3 = [v2 trainReservation];
      v4 = INIntentSlotValueTransformFromTrainReservation(v3);
      goto LABEL_18;
    }

    if ([v2 hasRentalCarReservation])
    {
      v3 = [v2 rentalCarReservation];
      v4 = INIntentSlotValueTransformFromRentalCarReservation(v3);
      goto LABEL_18;
    }

    if ([v2 hasLodgingReservation])
    {
      v3 = [v2 lodgingReservation];
      v4 = INIntentSlotValueTransformFromLodgingReservation(v3);
      goto LABEL_18;
    }

    if ([v2 hasRestaurantReservation])
    {
      v3 = [v2 restaurantReservation];
      v4 = INIntentSlotValueTransformFromRestaurantReservation(v3);
      goto LABEL_18;
    }

    if ([v2 hasTicketedEventReservation])
    {
      v3 = [v2 ticketedEventReservation];
      v4 = INIntentSlotValueTransformFromTicketedEventReservation(v3);
      goto LABEL_18;
    }

    if ([v2 hasBusReservation])
    {
      v3 = [v2 busReservation];
      v4 = INIntentSlotValueTransformFromBusReservation(v3);
      goto LABEL_18;
    }

    if ([v2 hasBoatReservation])
    {
      v3 = [v2 boatReservation];
      v4 = INIntentSlotValueTransformFromBoatReservation(v3);
      goto LABEL_18;
    }
  }

  v5 = 0;
LABEL_20:

  return v5;
}

_INPBReservationWrapper *INIntentSlotValueTransformToReservationWrapper(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_20;
  }

  v2 = objc_alloc_init(_INPBReservationWrapper);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = INIntentSlotValueTransformToFlightReservation(v1);
    [(_INPBReservationWrapper *)v2 setFlightReservation:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = INIntentSlotValueTransformToTrainReservation(v1);
      [(_INPBReservationWrapper *)v2 setTrainReservation:v3];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = INIntentSlotValueTransformToRentalCarReservation(v1);
        [(_INPBReservationWrapper *)v2 setRentalCarReservation:v3];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = INIntentSlotValueTransformToLodgingReservation(v1);
          [(_INPBReservationWrapper *)v2 setLodgingReservation:v3];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v3 = INIntentSlotValueTransformToRestaurantReservation(v1);
            [(_INPBReservationWrapper *)v2 setRestaurantReservation:v3];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v3 = INIntentSlotValueTransformToTicketedEventReservation(v1);
              [(_INPBReservationWrapper *)v2 setTicketedEventReservation:v3];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v3 = INIntentSlotValueTransformToBusReservation(v1);
                [(_INPBReservationWrapper *)v2 setBusReservation:v3];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_20;
                }

                v3 = INIntentSlotValueTransformToBoatReservation(v1);
                [(_INPBReservationWrapper *)v2 setBoatReservation:v3];
              }
            }
          }
        }
      }
    }
  }

LABEL_20:

  return v2;
}

id INIntentSlotValueTransformFromReservationWrappers(void *a1)
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

          v8 = INIntentSlotValueTransformFromReservationWrapper(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToReservationWrappers(void *a1)
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

          v8 = INIntentSlotValueTransformToReservationWrapper(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBContactCardReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v23) = 0;
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
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        [a1 setContactIdentifier:v14];
        goto LABEL_84;
      case 2u:
        v14 = PBReaderReadString();
        [a1 setNamePrefix:v14];
        goto LABEL_84;
      case 3u:
        v14 = PBReaderReadString();
        [a1 setFirstName:v14];
        goto LABEL_84;
      case 4u:
        v14 = PBReaderReadString();
        [a1 setMiddleName:v14];
        goto LABEL_84;
      case 5u:
        v14 = PBReaderReadString();
        [a1 setLastName:v14];
        goto LABEL_84;
      case 6u:
        v14 = PBReaderReadString();
        [a1 setNameSuffix:v14];
        goto LABEL_84;
      case 7u:
        v14 = PBReaderReadString();
        [a1 setFullName:v14];
        goto LABEL_84;
      case 8u:
        v14 = PBReaderReadString();
        [a1 setNickName:v14];
        goto LABEL_84;
      case 9u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v23) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v23 & 0x7F) << v15;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_87;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_87:
        [a1 setIsMe:v21];
        goto LABEL_85;
      case 0xAu:
        v14 = objc_alloc_init(_INPBImageValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        [a1 setImage:v14];
        goto LABEL_84;
      case 0xBu:
        v14 = PBReaderReadString();
        [a1 setOrganizationName:v14];
        goto LABEL_84;
      case 0xCu:
        v14 = PBReaderReadString();
        [a1 setDepartmentName:v14];
        goto LABEL_84;
      case 0xDu:
        v14 = PBReaderReadString();
        [a1 setJobTitle:v14];
        goto LABEL_84;
      case 0xEu:
        v14 = objc_alloc_init(_INPBContactHandle);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactHandleReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addPhoneNumbers:v14];
        }

        goto LABEL_84;
      case 0xFu:
        v14 = objc_alloc_init(_INPBContactHandle);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactHandleReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addEmailAddresses:v14];
        }

        goto LABEL_84;
      case 0x10u:
        v14 = objc_alloc_init(_INPBContactHandle);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactHandleReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addPostalAddresses:v14];
        }

        goto LABEL_84;
      case 0x11u:
        v14 = objc_alloc_init(_INPBContactHandle);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactHandleReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addUrlAddresses:v14];
        }

        goto LABEL_84;
      case 0x12u:
        v14 = objc_alloc_init(_INPBContactRelationship);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactRelationshipReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addContactRelations:v14];
        }

        goto LABEL_84;
      case 0x13u:
        v14 = objc_alloc_init(_INPBContactHandle);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactHandleReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addInstantMessageAddresses:v14];
        }

        goto LABEL_84;
      case 0x14u:
        v14 = objc_alloc_init(_INPBDateTimeRangeValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        [a1 setBirthday:v14];
        goto LABEL_84;
      case 0x15u:
        v14 = objc_alloc_init(_INPBDateTimeRangeValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v14, a2))
        {
          goto LABEL_90;
        }

        PBReaderRecallMark();
        [a1 setNonGregorianBirthday:v14];
        goto LABEL_84;
      case 0x16u:
        v14 = objc_alloc_init(_INPBDateTimeRangeValue);
        v23 = 0;
        v24 = 0;
        if (PBReaderPlaceMark() && _INPBDateTimeRangeValueReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          if (v14)
          {
            [a1 addDates:v14];
          }

LABEL_84:

LABEL_85:
          v4 = a2;
          continue;
        }

LABEL_90:

        return 0;
      case 0x17u:
        v14 = PBReaderReadString();
        [a1 setPhoneticNamePrefix:v14];
        goto LABEL_84;
      case 0x18u:
        v14 = PBReaderReadString();
        [a1 setPhoneticFirstName:v14];
        goto LABEL_84;
      case 0x19u:
        v14 = PBReaderReadString();
        [a1 setPhoneticMiddleName:v14];
        goto LABEL_84;
      case 0x1Au:
        v14 = PBReaderReadString();
        [a1 setPhoneticNickName:v14];
        goto LABEL_84;
      case 0x1Bu:
        v14 = PBReaderReadString();
        [a1 setPhoneticLastName:v14];
        goto LABEL_84;
      case 0x1Cu:
        v14 = PBReaderReadString();
        [a1 setPhoneticNameSuffix:v14];
        goto LABEL_84;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_85;
    }
  }
}

uint64_t INGetReservationDetailsIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287510 + a1);
  }
}

uint64_t _INPBListShortcutsIntentReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(_INPBAppIdentifier);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBAppIdentifierReadFrom(v21, a2))
        {
          goto LABEL_46;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addAppTitle:v21];
        }

LABEL_36:

        goto LABEL_43;
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
        [a1 setOriginDevice:v20];
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

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {
LABEL_46:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromAppIdentifiers(void *a1)
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

          v8 = INIntentSlotValueTransformFromAppIdentifier(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToAppIdentifiers(void *a1)
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

          v8 = INIntentSlotValueTransformToAppIdentifier(*(*(&v12 + 1) + 8 * i));
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

uint64_t INListShortcutsIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287578 + a1);
  }
}

uint64_t _INPBListShortcutsIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBShortcutOverview);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBShortcutOverviewReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addShortcuts:v13];
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

INShortcutOverview *INIntentSlotValueTransformFromShortcutOverview(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v13 = [INShortcutOverview alloc];
    v14 = [v1 name];
    v2 = INIntentSlotValueTransformFromDataString(v14);
    v3 = [v1 voiceCommand];
    v4 = INIntentSlotValueTransformFromDataString(v3);
    v5 = [v1 icon];
    v6 = INIntentSlotValueTransformFromImageValue(v5);
    v7 = [v1 descriptiveText];
    v8 = INIntentSlotValueTransformFromDataString(v7);
    v9 = [v1 steps];

    v10 = INIntentSlotValueTransformFromImageValues(v9);
    v11 = [(INShortcutOverview *)v13 initWithName:v2 voiceCommand:v4 icon:v6 descriptiveText:v8 steps:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

_INPBShortcutOverview *INIntentSlotValueTransformToShortcutOverview(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBShortcutOverview);
    v3 = [v1 name];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBShortcutOverview *)v2 setName:v4];

    v5 = [v1 voiceCommand];
    v6 = INIntentSlotValueTransformToDataString(v5);
    [(_INPBShortcutOverview *)v2 setVoiceCommand:v6];

    v7 = [v1 icon];
    v8 = INIntentSlotValueTransformToImageValue(v7);
    [(_INPBShortcutOverview *)v2 setIcon:v8];

    v9 = [v1 descriptiveText];
    v10 = INIntentSlotValueTransformToDataString(v9);
    [(_INPBShortcutOverview *)v2 setDescriptiveText:v10];

    v11 = [v1 steps];

    v12 = INIntentSlotValueTransformToImageValues(v11);
    [(_INPBShortcutOverview *)v2 setSteps:v12];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromShortcutOverviews(void *a1)
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

          v8 = INIntentSlotValueTransformFromShortcutOverview(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToShortcutOverviews(void *a1)
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

          v8 = INIntentSlotValueTransformToShortcutOverview(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBShortcutOverviewReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setName:v14];
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          PBReaderRecallMark();
          [a1 setVoiceCommand:v14];
          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBImageValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setIcon:v14];
            goto LABEL_39;
          case 5:
            v14 = objc_alloc_init(_INPBImageValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addSteps:v14];
            }

            goto LABEL_39;
          case 4:
            v14 = objc_alloc_init(_INPBDataString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setDescriptiveText:v14];
LABEL_39:

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBAirportGateReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        [a1 setTerminal:v14];
LABEL_25:

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBAirport);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBAirportReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setAirport:v14];
        goto LABEL_25;
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
    [a1 setGate:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

INAirportGate *INIntentSlotValueTransformFromAirportGate(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INAirportGate alloc];
    v3 = [v1 airport];
    v4 = INIntentSlotValueTransformFromAirport(v3);
    v5 = [v1 terminal];
    v6 = [v1 gate];

    v7 = [(INAirportGate *)v2 initWithAirport:v4 terminal:v5 gate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBAirportGate *INIntentSlotValueTransformToAirportGate(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBAirportGate);
    v3 = [v1 airport];
    v4 = INIntentSlotValueTransformToAirport(v3);
    [(_INPBAirportGate *)v2 setAirport:v4];

    v5 = [v1 terminal];
    [(_INPBAirportGate *)v2 setTerminal:v5];

    v6 = [v1 gate];

    [(_INPBAirportGate *)v2 setGate:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromAirportGates(void *a1)
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

          v8 = INIntentSlotValueTransformFromAirportGate(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToAirportGates(void *a1)
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

          v8 = INIntentSlotValueTransformToAirportGate(*(*(&v12 + 1) + 8 * i));
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

INReservationAction *INIntentSlotValueTransformFromReservationAction(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INReservationAction alloc];
    LODWORD(v3) = [v1 hasType];
    if ([v1 type] == 2)
    {
      v3 = v3;
    }

    else
    {
      v3 = 0;
    }

    v4 = [v1 validDuration];
    v5 = INIntentSlotValueTransformFromDateTimeRange(v4);
    v6 = [v1 userActivity];

    v7 = INUserActivityDeserializeFromBackingStore(v6);
    v8 = [(INReservationAction *)v2 initWithType:v3 validDuration:v5 userActivity:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_INPBReservationAction *INIntentSlotValueTransformToReservationAction(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBReservationAction);
    v3 = [v1 type];
    if (v3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0x7FFFFFFF;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    [(_INPBReservationAction *)v2 setType:v5];
    v6 = [v1 validDuration];
    v7 = INIntentSlotValueTransformToDateTimeRange(v6);
    [(_INPBReservationAction *)v2 setValidDuration:v7];

    v8 = [v1 userActivity];

    v9 = INUserActivitySerializeToBackingStore(v8);
    [(_INPBReservationAction *)v2 setUserActivity:v9];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromReservationActions(void *a1)
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

          v8 = INIntentSlotValueTransformFromReservationAction(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToReservationActions(void *a1)
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

          v8 = INIntentSlotValueTransformToReservationAction(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBReservationActionReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(_INPBDateTimeRange);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setValidDuration:v21];
LABEL_35:

        goto LABEL_42;
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
        [a1 setType:v20];
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

    v21 = objc_alloc_init(_INPBUserActivity);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBUserActivityReadFrom(v21, a2))
    {
LABEL_45:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setUserActivity:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INReservationActionTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 2;
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
    return 1;
  }
}

uint64_t INReservationActionTypeGetFacadeType(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFString *INReservationActionTypeGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"checkIn";
  }

  else
  {
    return @"unknown";
  }
}

id INReservationActionTypeGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"check in", @"check in", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t INTicketedEventCategoryGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 2;
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
    return 1;
  }
}

uint64_t INTicketedEventCategoryGetFacadeType(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFString *INTicketedEventCategoryGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"movie";
  }

  else
  {
    return @"unknown";
  }
}

id INTicketedEventCategoryGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"movie", @"movie", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

INMediaDestination *INIntentSlotValueTransformFromMediaDestination(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INMediaDestination alloc];
    v3 = [v1 hasMediaDestinationType];
    v4 = [v1 mediaDestinationType];
    v5 = v4 == 1;
    if (v4 == 2)
    {
      v5 = 2;
    }

    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = [v1 playlistName];

    v8 = INIntentSlotValueTransformFromString(v7);
    v9 = [(INMediaDestination *)v2 initWithMediaDestinationType:v6 playlistName:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

_INPBMediaDestination *INIntentSlotValueTransformToMediaDestination(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBMediaDestination);
    v3 = [v1 mediaDestinationType];
    if (v3 >= 3)
    {
      v4 = 0x7FFFFFFFLL;
    }

    else
    {
      v4 = v3;
    }

    [(_INPBMediaDestination *)v2 setMediaDestinationType:v4];
    v5 = [v1 playlistName];

    v6 = INIntentSlotValueTransformToString(v5);
    [(_INPBMediaDestination *)v2 setPlaylistName:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromMediaDestinations(void *a1)
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

          v8 = INIntentSlotValueTransformFromMediaDestination(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToMediaDestinations(void *a1)
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

          v8 = INIntentSlotValueTransformToMediaDestination(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBConfidenceScoreComponentReadFrom(void *a1, void *a2)
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
      v21 = 0;
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

      v8 |= (v21 & 0x7F) << v6;
      if ((v21 & 0x80) == 0)
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
      v17 = PBReaderReadString();
      [a1 setSource:v17];
    }

    else if ((v13 >> 3) == 2)
    {
      v20 = 0;
      v14 = [a2 position] + 4;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
      {
        v19 = [a2 data];
        [v19 getBytes:&v20 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v16) = v20;
      [a1 setScore:v16];
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

uint64_t _INPBConfidenceScoreReadFrom(void *a1, void *a2)
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
        LOBYTE(v20[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20[0] & 0x7F) << v5;
        if ((v20[0] & 0x80) == 0)
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
        v16 = objc_alloc_init(_INPBConfidenceScoreComponent);
        v20[0] = 0;
        v20[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBConfidenceScoreComponentReadFrom(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v16)
        {
          [a1 addComponents:v16];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        LODWORD(v20[0]) = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:v20 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v15) = v20[0];
        [a1 setAggregateScore:v15];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBHomeAttributeRangeReadFrom(void *a1, void *a2)
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

    if ((v13 >> 3) == 2)
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

      [a1 setUpperValue:v21];
    }

    else if ((v13 >> 3) == 1)
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

      [a1 setLowerValue:v21];
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

BOOL INStartCallIntentConfirmationReasonHasBackingType(uint64_t a1)
{
  v1 = a1 == 3 || a1 == 1000;
  v2 = a1 == 1 || a1 == 2;
  if (a1 <= 2)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t INStartCallIntentConfirmationReasonGetBackingType(uint64_t a1)
{
  if (a1 == 1000)
  {
    v1 = 4;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a1 == 1)
  {
    v3 = 1;
  }

  if (a1 <= 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t INStartCallIntentConfirmationReasonGetFacadeType(int a1, int a2)
{
  if (a1 && (a2 - 1) <= 3)
  {
    return qword_18EE5F700[a2 - 1];
  }

  else
  {
    return 0;
  }
}

__CFString *INStartCallIntentConfirmationReasonGetName(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 1000)
      {
        return @"hasRestrictedContacts";
      }

      return @"unknown";
    }

    return @"callBackEmergency";
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return @"redialEmergency";
      }

      return @"unknown";
    }

    return @"callsOnHomepod";
  }
}

uint64_t INStartCallIntentConfirmationReasonWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"callsOnHomepod"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"redialEmergency"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"callBackEmergency"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"hasRestrictedContacts"])
  {
    v2 = 1000;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INStartCallIntentConfirmationReasonGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"call back emergency";
    }

    else
    {
      if (a1 != 1000)
      {
        goto LABEL_11;
      }

      v5 = @"has restricted contacts";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"calls on homepod";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    v5 = @"redial emergency";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_11:

  return v4;
}

uint64_t INPlayMessageSoundIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72875A8 + a1);
  }
}

uint64_t _INPBPlayMessageSoundIntentResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t _INPBPlayMessageSoundIntentReadFrom(void *a1, void *a2)
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
        [a1 setMessageIdentifier:v21];
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
        [a1 setSoundType:v20];
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

uint64_t INMessageSoundTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INMessageSoundTypeGetFacadeType(uint64_t result, int a2)
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

__CFString *INMessageSoundTypeGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"outgoingMessage";
  }

  else
  {
    return @"unknown";
  }
}

id INMessageSoundTypeGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"outgoing message", @"outgoing message", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void INTaskWarningCodeOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    (*(v3 + 2))(v4, 2);
    v3 = v4;
    if ((a1 & 4) == 0)
    {
LABEL_6:
      if ((a1 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_13;
  }

  (*(v3 + 2))(v3, 1);
  v3 = v4;
  if ((a1 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((a1 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_13:
  (*(v3 + 2))(v4, 3);
  v3 = v4;
  if ((a1 & 8) != 0)
  {
LABEL_7:
    (*(v3 + 2))(v4, 4);
    v3 = v4;
  }

LABEL_8:
}

uint64_t INTaskWarningCodeOptionsContainsBackingType(unint64_t a1, int a2)
{
  v2 = (a1 >> 2) & 1;
  v3 = (a1 >> 3) & 1;
  if (a2 != 4)
  {
    LOBYTE(v3) = 0;
  }

  if (a2 != 3)
  {
    LOBYTE(v2) = v3;
  }

  v4 = (a1 >> 1) & 1;
  if (a2 != 2)
  {
    LOBYTE(v4) = 0;
  }

  if (a2 == 1)
  {
    LOBYTE(v4) = a1;
  }

  if (a2 <= 2)
  {
    LOBYTE(v2) = v4;
  }

  if (!a1)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INTaskWarningCodeOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result | 4;
    v4 = *result | 8;
    if (a2 != 4)
    {
      v4 = *result;
    }

    if (a2 != 3)
    {
      v3 = v4;
    }

    v5 = v2 | 1;
    if (a2 == 2)
    {
      v2 |= 2uLL;
    }

    if (a2 == 1)
    {
      v2 = v5;
    }

    if (a2 > 2)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INTaskWarningCodeOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result & 0xFFFFFFFFFFFFFFFBLL;
    v4 = *result & 0xFFFFFFFFFFFFFFF7;
    if (a2 != 4)
    {
      v4 = *result;
    }

    if (a2 != 3)
    {
      v3 = v4;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (a2 == 2)
    {
      v2 &= ~2uLL;
    }

    if (a2 == 1)
    {
      v2 = v5;
    }

    if (a2 > 2)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INTaskWarningCodeOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"locationServicesDisabled"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"flaggedNotAllowed"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
LABEL_7:
        v4 = [v3 copy];

        goto LABEL_9;
      }

LABEL_6:
      [v3 addObject:@"notUpgradedToCloudkit"];
      goto LABEL_7;
    }

LABEL_14:
    [v3 addObject:@"contactTriggerNotAllowed"];
    if ((v1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_9:

  return v4;
}

uint64_t INTaskWarningCodeOptionsWithNames(void *a1)
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
        v4 |= [v7 isEqualToString:@"locationServicesDisabled"];
        if ([v7 isEqualToString:@"flaggedNotAllowed"])
        {
          v4 |= 2uLL;
        }

        if ([v7 isEqualToString:@"contactTriggerNotAllowed"])
        {
          v4 |= 4uLL;
        }

        if ([v7 isEqualToString:@"notUpgradedToCloudkit"])
        {
          v4 |= 8uLL;
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

id INTaskWarningCodeOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"location services disabled", @"location services disabled", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"flagged not allowed", @"flagged not allowed", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
LABEL_7:
        v6 = [v4 copy];

        goto LABEL_9;
      }

LABEL_6:
      v5 = INLocalizedStringWithLocalizer(@"not upgraded to cloudkit", @"not upgraded to cloudkit", v3);
      [v4 addObject:v5];

      goto LABEL_7;
    }

LABEL_14:
    v10 = INLocalizedStringWithLocalizer(@"contact trigger not allowed", @"contact trigger not allowed", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_9:

  return v6;
}

uint64_t _INPBMediaItemGroupReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBMediaItemValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValues:v13];
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

unint64_t INParsecCategoryGetBackingType(unint64_t result)
{
  if (result >= 9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INParsecCategoryGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 8) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INParsecCategoryGetName(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E72875D8 + a1 - 1);
  }
}

uint64_t INParsecCategoryWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"movie"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"TV"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"webVideo"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"music"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"podcast"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"app"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"book"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"other"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INParsecCategoryGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v5 = @"book";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        v5 = @"other";
      }
    }

    else if (a1 == 5)
    {
      v5 = @"podcast";
    }

    else
    {
      v5 = @"app";
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"web video";
    }

    else
    {
      v5 = @"music";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"movie";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_19;
    }

    v5 = @"TV";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_19:

  return v4;
}

uint64_t INFindEventsIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287618 + a1);
  }
}

uint64_t INFindDeviceAndPlaySoundIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287648 + a1);
  }
}

uint64_t _INPBFindDeviceAndPlaySoundIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBDeviceDetail);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDeviceDetailReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addDevicesFound:v13];
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

uint64_t _INPBFindDeviceAndPlaySoundIntentReadFrom(void *a1, void *a2)
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

      if (v13 == 2)
      {
        v21 = objc_alloc_init(_INPBDeviceDetail);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBDeviceDetailReadFrom(v21, a2))
        {
          goto LABEL_44;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addDevice:v21];
        }

LABEL_36:

        goto LABEL_41;
      }

      if (v13 == 3)
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
            goto LABEL_40;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_40:
        [a1 setIsStopRequest:v20];
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

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {
LABEL_44:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDeviceDetailReadFrom(void *a1, void *a2)
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
            v21 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
            {
LABEL_57:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setProductName:v21];
            goto LABEL_48;
          case 5:
            v21 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setCategory:v21];
            goto LABEL_48;
          case 6:
            v21 = objc_alloc_init(_INPBContact);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v21, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setDeviceOwner:v21];
            goto LABEL_48;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = PBReaderReadString();
            [a1 setIdentifier:v21];
LABEL_48:

            goto LABEL_49;
          case 2:
            v21 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setDeviceName:v21];
            goto LABEL_48;
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
                goto LABEL_54;
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

LABEL_54:
            [a1 setDeviceClass:v20];
            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t INDeviceClassGetBackingType(unint64_t result)
{
  if (result >= 0xA)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INDeviceClassGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 9) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INDeviceClassGetName(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E72876C8 + a1 - 1);
  }
}

uint64_t INDeviceClassWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"watch"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"iPod"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"TV"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Mac"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"homepod"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"headphone"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"accessories"])
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INDeviceClassGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v5 = @"watch";
      }

      else
      {
        v5 = @"iPod";
      }
    }

    else if (a1 == 1)
    {
      v5 = @"iPhone";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_21;
      }

      v5 = @"iPad";
    }
  }

  else if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v5 = @"TV";
    }

    else
    {
      v5 = @"Mac";
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        v5 = @"homepod";
        break;
      case 8:
        v5 = @"headphone";
        break;
      case 9:
        v5 = @"accessories";
        break;
      default:
        goto LABEL_21;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_21:

  return v4;
}

INDeviceDetail *INIntentSlotValueTransformFromDeviceDetail(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INDeviceDetail alloc];
    v3 = [v1 identifier];
    v18 = [v1 deviceName];
    v4 = INIntentSlotValueTransformFromDataString(v18);
    v5 = [v1 hasDeviceClass];
    v6 = [v1 deviceClass];
    if (((v6 - 1 < 9) & v5) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v1 productName];
    v9 = INIntentSlotValueTransformFromDataString(v8);
    v10 = [v1 category];
    v11 = INIntentSlotValueTransformFromDataString(v10);
    v12 = [v1 deviceOwner];

    v13 = INIntentSlotValueTransformFromContact(v12);
    v14 = v2;
    v15 = v3;
    v16 = [(INDeviceDetail *)v14 initWithIdentifier:v3 deviceName:v4 deviceClass:v7 productName:v9 category:v11 deviceOwner:v13];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

_INPBDeviceDetail *INIntentSlotValueTransformToDeviceDetail(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBDeviceDetail);
    v3 = [v1 identifier];
    [(_INPBDeviceDetail *)v2 setIdentifier:v3];

    v4 = [v1 deviceName];
    v5 = INIntentSlotValueTransformToDataString(v4);
    [(_INPBDeviceDetail *)v2 setDeviceName:v5];

    v6 = [v1 deviceClass];
    if (v6 >= 0xA)
    {
      v7 = 0x7FFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    [(_INPBDeviceDetail *)v2 setDeviceClass:v7];
    v8 = [v1 productName];
    v9 = INIntentSlotValueTransformToDataString(v8);
    [(_INPBDeviceDetail *)v2 setProductName:v9];

    v10 = [v1 category];
    v11 = INIntentSlotValueTransformToDataString(v10);
    [(_INPBDeviceDetail *)v2 setCategory:v11];

    v12 = [v1 deviceOwner];

    v13 = INIntentSlotValueTransformToContact(v12);
    [(_INPBDeviceDetail *)v2 setDeviceOwner:v13];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromDeviceDetails(void *a1)
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

          v8 = INIntentSlotValueTransformFromDeviceDetail(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToDeviceDetails(void *a1)
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

          v8 = INIntentSlotValueTransformToDeviceDetail(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBListCarsIntentReadFrom(void *a1, void *a2)
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

uint64_t _INPBListCarsIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBCar);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBCarReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addCars:v13];
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

uint64_t INListCarsIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287710 + a1);
  }
}

uint64_t _INPBCarReadFrom(void *a1, void *a2)
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
            [a1 setYear:v14];
            goto LABEL_46;
          }

          if (v13 == 4)
          {
            v14 = PBReaderReadString();
            [a1 setMake:v14];
            goto LABEL_46;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            [a1 setCarIdentifier:v14];
            goto LABEL_46;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            [a1 setDisplayName:v14];
LABEL_46:

            goto LABEL_47;
          }
        }
      }

      else if (v13 <= 8)
      {
        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          [a1 setModel:v14];
          goto LABEL_46;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(_INPBColor);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBColorReadFrom(v14, a2))
          {
LABEL_53:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setColor:v14];
          goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(_INPBCarHeadUnit);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBCarHeadUnitReadFrom(v14, a2))
            {
              goto LABEL_53;
            }

            PBReaderRecallMark();
            [a1 setHeadUnit:v14];
            goto LABEL_46;
          case 0xA:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addSupportedChargingConnectors:v14];
            }

            goto LABEL_46;
          case 0xB:
            v14 = objc_alloc_init(_INPBCarChargingConnectorPower);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBCarChargingConnectorPowerReadFrom(v14, a2))
            {
              goto LABEL_53;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPowerPerConnector:v14];
            }

            goto LABEL_46;
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

uint64_t _INPBColorReadFrom(void *a1, void *a2)
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
      LOBYTE(v25) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v25) & 0x7F) << v6;
      if ((LOBYTE(v25) & 0x80) == 0)
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
    if ((v13 >> 3) == 1)
    {
      v25 = 0.0;
      v19 = [a2 position] + 8;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
      {
        v23 = [a2 data];
        [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setRed:v25];
    }

    else if (v14 == 2)
    {
      v25 = 0.0;
      v17 = [a2 position] + 8;
      if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
      {
        v22 = [a2 data];
        [v22 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setGreen:v25];
    }

    else if (v14 == 3)
    {
      v25 = 0.0;
      v15 = [a2 position] + 8;
      if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
      {
        v24 = [a2 data];
        [v24 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setBlue:v25];
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

INCar *INIntentSlotValueTransformFromCar(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INCar alloc];
    v17 = [v1 carIdentifier];
    v3 = [v1 displayName];
    v16 = [v1 year];
    v15 = [v1 make];
    v4 = [v1 model];
    v18 = [v1 color];
    v5 = INIntentSlotValueTransformFromColor(v18);
    v6 = [v1 headUnit];
    v7 = INIntentSlotValueTransformFromCarHeadUnit(v6);
    v8 = [v1 supportedChargingConnectors];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v11 = [v1 powerPerConnectors];

    v12 = INIntentSlotValueTransformFromCarChargingConnectorPowers(v11);
    v13 = [(INCar *)v2 initWithCarIdentifier:v17 displayName:v3 year:v16 make:v15 model:v4 color:v5 headUnit:v7 supportedChargingConnectors:v10 powerPerConnectors:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

_INPBCar *INIntentSlotValueTransformToCar(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCar);
    v3 = [v1 carIdentifier];
    [(_INPBCar *)v2 setCarIdentifier:v3];

    v4 = [v1 displayName];
    [(_INPBCar *)v2 setDisplayName:v4];

    v5 = [v1 year];
    [(_INPBCar *)v2 setYear:v5];

    v6 = [v1 make];
    [(_INPBCar *)v2 setMake:v6];

    v7 = [v1 model];
    [(_INPBCar *)v2 setModel:v7];

    v8 = INIntentSlotValueTransformToColor([v1 color]);
    [(_INPBCar *)v2 setColor:v8];

    v9 = [v1 headUnit];
    v10 = INIntentSlotValueTransformToCarHeadUnit(v9);
    [(_INPBCar *)v2 setHeadUnit:v10];

    v11 = [v1 supportedChargingConnectors];
    [(_INPBCar *)v2 setSupportedChargingConnectors:v11];

    v12 = [v1 powerPerConnectors];

    v13 = INIntentSlotValueTransformToCarChargingConnectorPowers(v12);
    [(_INPBCar *)v2 setPowerPerConnectors:v13];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCars(void *a1)
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

          v8 = INIntentSlotValueTransformFromCar(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToCars(void *a1)
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

          v8 = INIntentSlotValueTransformToCar(*(*(&v12 + 1) + 8 * i));
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

void *__getCGColorGetComponentsSymbolLoc_block_invoke_136723(uint64_t a1)
{
  v2 = CoreGraphicsLibrary_136724();
  result = dlsym(v2, "CGColorGetComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGColorGetComponentsSymbolLoc_ptr_136722 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreGraphicsLibrary_136724()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreGraphicsLibraryCore_frameworkLibrary_136729)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreGraphicsLibraryCore_block_invoke_136730;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7287740;
    v6 = 0;
    CoreGraphicsLibraryCore_frameworkLibrary_136729 = _sl_dlopen();
    v1 = v4[0];
    v0 = CoreGraphicsLibraryCore_frameworkLibrary_136729;
    if (CoreGraphicsLibraryCore_frameworkLibrary_136729)
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

  v0 = CoreGraphicsLibraryCore_frameworkLibrary_136729;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CoreGraphicsLibraryCore_block_invoke_136730(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreGraphicsLibraryCore_frameworkLibrary_136729 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t soft_CGColorCreateSRGB(double a1, double a2, double a3, double a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getCGColorCreateSRGBSymbolLoc_ptr_136774;
  v15 = getCGColorCreateSRGBSymbolLoc_ptr_136774;
  if (!getCGColorCreateSRGBSymbolLoc_ptr_136774)
  {
    v9 = CoreGraphicsLibrary_136724();
    v13[3] = dlsym(v9, "CGColorCreateSRGB");
    getCGColorCreateSRGBSymbolLoc_ptr_136774 = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v8)
  {
    dlerror();
    v11 = abort_report_np();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  return v8(a1, a2, a3, a4);
}

void *__getCGColorCreateSRGBSymbolLoc_block_invoke_136775(uint64_t a1)
{
  v2 = CoreGraphicsLibrary_136724();
  result = dlsym(v2, "CGColorCreateSRGB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGColorCreateSRGBSymbolLoc_ptr_136774 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _INPBSetRelationshipIntentReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_INPBString);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addContactIdentifiers:v14];
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

    v14 = objc_alloc_init(_INPBModifyRelationship);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBModifyRelationshipReadFrom(v14, a2))
    {
      goto LABEL_35;
    }

    PBReaderRecallMark();
    [a1 setTargetRelationship:v14];
    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

void INValidateReservationInteraction(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = [a1 intentResponse];
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = [MEMORY[0x1E695DF00] date];
    v2 = objc_alloc(MEMORY[0x1E695DEE8]);
    v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v4 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [v27 reservations];
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        v9 = 0;
        do
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * v9);
          v11 = [v10 itemReference];
          v12 = [v11 vocabularyIdentifier];
          [v4 if_addObjectIfNonNil:v12];

          v13 = [v10 _duration];
          v14 = [v13 startDateComponents];

          if (!v14)
          {
            NSLog(@"Failed to process event suggestion – reservation start date missing.");
          }

          v15 = [v13 endDateComponents];
          if (v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              NSLog(@"Failed to process event suggestion – reservation end date missing.");
            }
          }

          v16 = [v13 endDateComponents];

          if (v16)
          {
            v17 = [v13 endDateComponents];
            v18 = [v17 timeZone];
            [v3 setTimeZone:v18];

            v19 = [v13 endDateComponents];
            v20 = [v3 dateFromComponents:v19];

            if ([v1 compare:v20] == 1)
            {
              NSLog(@"Failed to process event suggestion – reservation end date in the past (%@).", v20);
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v21 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
        v7 = v21;
      }

      while (v21);
    }

    v22 = [v4 count];
    v23 = [v27 reservations];
    v24 = [v23 count];

    if (v22 != v24)
    {
      NSLog(@"Failed to process event suggestion – two or more INReservation objects share the same INReservation.itemReference.vocabularyIdentifier value.");
    }

    v25 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v26 = *MEMORY[0x1E69E9840];
  }
}

uint64_t _INPBSearchForContactIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBContactCard);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBContactCardReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addMatchedContacts:v13];
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

uint64_t _INPBSearchForMeCardIntentReadFrom(void *a1, void *a2)
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

uint64_t INSearchForMeCardIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7287758 + a1);
  }
}

uint64_t _INPBSetNicknameIntentReadFrom(void *a1, void *a2)
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

    v13 = objc_alloc_init(_INPBModifyNickname);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBModifyNicknameReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setTargetNickname:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}
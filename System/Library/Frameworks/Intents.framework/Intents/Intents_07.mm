__CFString *INHomeDeviceTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x2C)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7280860[a1 - 1];
  }
}

uint64_t INHomeDeviceTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"lightbulb"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"switch"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"thermostat"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"garageDoorOpener"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"fan"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"outlet"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"doorLock"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"airQualitySensor"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"battery"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"carbonDioxideSensor"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"carbonMonoxideSensor"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"contactSensor"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"door"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"humiditySensor"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"leakSensor"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"lightSensor"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"motionSensor"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"occupancySensor"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"securitySystem"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"smokeSensor"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"temperatureSensor"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"window"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"shades"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"ipCamera"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"microphone"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"speaker"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"motorizedDoor"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"motorizedWindow"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"heaterCooler"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"humidifierDehumidifier"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"slat"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"sprinkler"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"valve"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"faucet"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"shower"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"television"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"custom"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"doorBell"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"airPurifier"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"filter"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"AppleTV"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"cameraRecording"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"sensor"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"airportExpress"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"sink"])
  {
    v2 = 45;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeDeviceTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"lightbulb";
      goto LABEL_48;
    case 2:
      v4 = @"switch";
      goto LABEL_48;
    case 3:
      v4 = @"thermostat";
      goto LABEL_48;
    case 4:
      v4 = @"garage door opener";
      goto LABEL_48;
    case 5:
      v4 = @"fan";
      goto LABEL_48;
    case 6:
      v4 = @"outlet";
      goto LABEL_48;
    case 7:
      v4 = @"door lock";
      goto LABEL_48;
    case 8:
      v4 = @"air quality sensor";
      goto LABEL_48;
    case 9:
      v4 = @"battery";
      goto LABEL_48;
    case 10:
      v4 = @"carbon dioxide sensor";
      goto LABEL_48;
    case 11:
      v4 = @"carbon monoxide sensor";
      goto LABEL_48;
    case 12:
      v4 = @"contact sensor";
      goto LABEL_48;
    case 13:
      v4 = @"door";
      goto LABEL_48;
    case 14:
      v4 = @"humidity sensor";
      goto LABEL_48;
    case 15:
      v4 = @"leak sensor";
      goto LABEL_48;
    case 16:
      v4 = @"light sensor";
      goto LABEL_48;
    case 17:
      v4 = @"motion sensor";
      goto LABEL_48;
    case 18:
      v4 = @"occupancy sensor";
      goto LABEL_48;
    case 19:
      v4 = @"security system";
      goto LABEL_48;
    case 20:
      v4 = @"smoke sensor";
      goto LABEL_48;
    case 21:
      v4 = @"temperature sensor";
      goto LABEL_48;
    case 22:
      v4 = @"window";
      goto LABEL_48;
    case 23:
      v4 = @"shades";
      goto LABEL_48;
    case 24:
      v4 = @"ip camera";
      goto LABEL_48;
    case 25:
      v4 = @"microphone";
      goto LABEL_48;
    case 26:
      v4 = @"speaker";
      goto LABEL_48;
    case 27:
      v4 = @"motorized door";
      goto LABEL_48;
    case 28:
      v4 = @"motorized window";
      goto LABEL_48;
    case 29:
      v4 = @"heater cooler";
      goto LABEL_48;
    case 30:
      v4 = @"humidifier dehumidifier";
      goto LABEL_48;
    case 31:
      v4 = @"slat";
      goto LABEL_48;
    case 32:
      v4 = @"sprinkler";
      goto LABEL_48;
    case 33:
      v4 = @"valve";
      goto LABEL_48;
    case 34:
      v4 = @"faucet";
      goto LABEL_48;
    case 35:
      v4 = @"shower";
      goto LABEL_48;
    case 36:
      v4 = @"television";
      goto LABEL_48;
    case 37:
      v4 = @"custom";
      goto LABEL_48;
    case 38:
      v4 = @"door bell";
      goto LABEL_48;
    case 39:
      v4 = @"air purifier";
      goto LABEL_48;
    case 40:
      v4 = @"filter";
      goto LABEL_48;
    case 41:
      v4 = @"Apple TV";
      goto LABEL_48;
    case 42:
      v4 = @"camera recording";
      goto LABEL_48;
    case 43:
      v4 = @"sensor";
      goto LABEL_48;
    case 44:
      v4 = @"airport express";
      goto LABEL_48;
    case 45:
      v4 = @"sink";
LABEL_48:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t INPaymentMethodTypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 8)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INPaymentMethodTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INPaymentMethodTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72809C8[a1 - 1];
  }
}

uint64_t INPaymentMethodTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"checking"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"savings"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"brokerage"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"debit"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"credit"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"prepaid"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"store"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"applePay"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPaymentMethodTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v5 = @"store";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        v5 = @"apple pay";
      }
    }

    else if (a1 == 5)
    {
      v5 = @"credit";
    }

    else
    {
      v5 = @"prepaid";
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"brokerage";
    }

    else
    {
      v5 = @"debit";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"checking";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_19;
    }

    v5 = @"savings";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_19:

  return v4;
}

INHomeAttributeValue *INIntentSlotValueTransformFromHomeAttributeValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 hasValueType];
    v4 = [v2 valueType];
    if (((v4 < 6) & v3) != 0)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    if ([v2 hasBooleanValue])
    {
      v6 = [v2 BOOLeanValue];
    }

    else
    {
      v6 = 0;
    }

    v8 = 0.0;
    if ([v2 hasDoubleValue])
    {
      [v2 doubleValue];
      v8 = v9;
    }

    if ([v2 hasIntegerValue])
    {
      v10 = [v2 integerValue];
    }

    else
    {
      v10 = 0;
    }

    if ([v2 hasStringValue])
    {
      v11 = [v2 stringValue];
    }

    else
    {
      v11 = 0;
    }

    if ([v2 hasRangeValue])
    {
      v12 = [INHomeAttributeRange alloc];
      v13 = [v2 rangeValue];
      [v13 lowerValue];
      v15 = v14;
      v16 = [v2 rangeValue];
      [v16 upperValue];
      v18 = [(INHomeAttributeRange *)v12 initWithRange:v15 upperValue:v17];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v2 hasLimitValue];
    v20 = [v2 limitValue];
    v21 = 2 * (v20 == 2);
    if (v20 == 1)
    {
      v21 = 1;
    }

    if (v19)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [v2 hasUnit];
    v24 = [v2 unit];
    if (((v24 - 1 < 5) & v23) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v7 = [[INHomeAttributeValue alloc] initWithType:v5 BOOLValue:v6 doubleValue:v10 integerValue:v11 stringValue:v22 limitValue:v25 unit:v8 rangeValue:v18];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBHomeAttributeValue *INIntentSlotValueTransformToHomeAttributeValue(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_36;
  }

  v2 = objc_alloc_init(_INPBHomeAttributeValue);
  v3 = [v1 type];
  if (v3 <= 6 && ((0x7Eu >> v3) & 1) != 0)
  {
    v4 = [v1 type] - 1;
    if (v4 >= 6)
    {
      v5 = 0x7FFFFFFFLL;
    }

    else
    {
      v5 = v4;
    }

    [(_INPBHomeAttributeValue *)v2 setValueType:v5];
  }

  v6 = [v1 unit];
  if (v6 <= 5 && ((0x3Eu >> v6) & 1) != 0)
  {
    v7 = [v1 unit] - 1;
    if (v7 < 5)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    [(_INPBHomeAttributeValue *)v2 setUnit:v8];
  }

  v9 = [v1 type];
  if (v9 > 3)
  {
    switch(v9)
    {
      case 4:
        -[_INPBHomeAttributeValue setIntegerValue:](v2, "setIntegerValue:", [v1 integerValue]);
        break;
      case 5:
        if (([v1 limitValue] - 1) <= 1)
        {
          v13 = [v1 limitValue];
          if (v13 == 1)
          {
            v14 = 1;
          }

          else
          {
            v14 = 0x7FFFFFFF;
          }

          if (v13 == 2)
          {
            v15 = 2;
          }

          else
          {
            v15 = v14;
          }

          [(_INPBHomeAttributeValue *)v2 setLimitValue:v15];
        }

        break;
      case 6:
        v10 = objc_alloc_init(_INPBHomeAttributeRange);
        v11 = [v1 rangeValue];
        [v11 lowerValue];
        [(_INPBHomeAttributeRange *)v10 setLowerValue:?];

        v12 = [v1 rangeValue];
        [v12 upperValue];
        [(_INPBHomeAttributeRange *)v10 setUpperValue:?];

        [(_INPBHomeAttributeValue *)v2 setRangeValue:v10];
        goto LABEL_24;
      default:
        break;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        -[_INPBHomeAttributeValue setBooleanValue:](v2, "setBooleanValue:", [v1 BOOLValue]);
        break;
      case 2:
        [v1 doubleValue];
        [(_INPBHomeAttributeValue *)v2 setDoubleValue:?];
        break;
      case 3:
        v10 = [v1 stringValue];
        [(_INPBHomeAttributeValue *)v2 setStringValue:v10];
LABEL_24:

        break;
      default:
        break;
    }
  }

LABEL_36:

  return v2;
}

id INIntentSlotValueTransformFromHomeAttributeValues(void *a1)
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

          v8 = INIntentSlotValueTransformFromHomeAttributeValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToHomeAttributeValues(void *a1)
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

          v8 = INIntentSlotValueTransformToHomeAttributeValue(*(*(&v12 + 1) + 8 * i));
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

id INKeyImageUtilitiesKeyImageBySubProducerComparison(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_respondsToSelector();
  v6 = MEMORY[0x1E696AE18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __INKeyImageUtilitiesKeyImageBySubProducerComparison_block_invoke;
  v17[3] = &unk_1E7280A10;
  v19 = v5 & 1;
  v7 = v3;
  v18 = v7;
  v8 = [v6 predicateWithBlock:v17];
  v9 = [v4 filteredArrayUsingPredicate:v8];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __INKeyImageUtilitiesKeyImageBySubProducerComparison_block_invoke_2;
  v15[3] = &unk_1E7280A38;
  v16 = v7;
  v10 = v7;
  v11 = [v9 sortedArrayUsingComparator:v15];
  v12 = [v11 firstObject];
  v13 = [v12 _keyImage];

  return v13;
}

uint64_t __INKeyImageUtilitiesKeyImageBySubProducerComparison_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F02E1E10])
  {
    if (*(a1 + 40) == 1)
    {
      v4 = [*(a1 + 32) _isValidSubProducer:v3];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t INKeyImageUtilitiesDefaultCompareSubProducers(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _keyImage];
  v5 = [v3 _keyImage];

  v6 = 1;
  if (!v4)
  {
    v6 = -1;
  }

  if ((v4 != 0) != (v5 != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id INKeyImageUtilitiesSortedSubProducersForSlotComposingProducer(void *a1)
{
  v1 = a1;
  v2 = objc_opt_respondsToSelector() & 1;
  v3 = [v1 intentSlotDescriptions];
  v4 = MEMORY[0x1E696AE18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __INKeyImageUtilitiesSortedSubProducersForSlotComposingProducer_block_invoke;
  v15[3] = &unk_1E7280A60;
  v5 = v1;
  v16 = v5;
  v17 = v2;
  v6 = [v4 predicateWithBlock:v15];
  v7 = [v3 filteredArrayUsingPredicate:v6];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __INKeyImageUtilitiesSortedSubProducersForSlotComposingProducer_block_invoke_2;
  v13[3] = &unk_1E7280A88;
  v14 = v5;
  v8 = v5;
  v9 = [v7 sortedArrayUsingComparator:v13];
  v10 = [v9 reverseObjectEnumerator];
  v11 = [v10 allObjects];

  return v11;
}

uint64_t __INKeyImageUtilitiesSortedSubProducersForSlotComposingProducer_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForSlotComposer:*(a1 + 32)];
  if ([v3 conformsToProtocol:&unk_1F02E1E10])
  {
    if (*(a1 + 40) == 1)
    {
      v4 = [*(a1 + 32) _isValidSubProducer:v3];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __INKeyImageUtilitiesSortedSubProducersForSlotComposingProducer_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 valueForSlotComposer:v5];
  v8 = [v6 valueForSlotComposer:*(a1 + 32)];

  v9 = [*(a1 + 32) _compareSubProducerOne:v7 subProducerTwo:v8];
  return v9;
}

uint64_t INUserNotificationTypeGetBackingType(uint64_t a1)
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

uint64_t INUserNotificationTypeGetFacadeType(int a1, int a2)
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

__CFString *INUserNotificationTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"deliveryFailure";
  }

  if (a1 == 1)
  {
    return @"announcement";
  }

  else
  {
    return v1;
  }
}

uint64_t INUserNotificationTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"announcement"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"deliveryFailure"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INUserNotificationTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"delivery failure";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"announcement";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBCreateFileIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
LABEL_64:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_50;
        }

        if (v13 == 2)
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
              goto LABEL_60;
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

LABEL_60:
          [a1 setEntityType:v21];
          goto LABEL_61;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBString);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setEntityName:v14];
            goto LABEL_50;
          case 4:
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
                goto LABEL_56;
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

LABEL_56:
            [a1 setDestinationType:v28];
            goto LABEL_61;
          case 5:
            v14 = objc_alloc_init(_INPBString);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setDestinationName:v14];
LABEL_50:

            goto LABEL_61;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INEditDistanceBetweenStrings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = [v4 length];
  if (v5)
  {
    v7 = [v3 length];
    if (v6)
    {
      if (v7 || [v4 length])
      {
        v8 = [v3 length];
        v9 = v8 + 1;
        v43 = v4;
        v40 = [v4 length];
        v10 = objc_opt_new();
        v11 = objc_opt_new();
        v12 = 0x1E696A000uLL;
        if (v8 != -1)
        {
          v13 = 0;
          do
          {
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
            [v10 addObject:v14];

            ++v13;
          }

          while (v9 != v13);
        }

        if ((v40 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v15 = 1;
          v16 = v11;
          v39 = v8 + 1;
          v42 = v3;
          do
          {
            v11 = v10;
            v41 = v15;
            v17 = v15 - 1;
            v18 = [*(v12 + 3480) numberWithUnsignedInteger:{v15 - 1, v39}];
            [v16 insertObject:v18 atIndex:0];

            if (v9 >= 2)
            {
              v19 = 0;
              v44 = v17;
              do
              {
                v20 = v19 + 1;
                v21 = [v3 characterAtIndex:v19];
                v22 = [v4 characterAtIndex:v17];
                v23 = [v16 objectAtIndex:v19];
                v24 = [v23 integerValue];

                v25 = [v11 objectAtIndex:v19 + 1];
                v26 = v16;
                v27 = v8;
                v28 = [v25 integerValue];

                v29 = [v11 objectAtIndex:v19];
                v30 = [v29 integerValue];
                v31 = v21 == v22;
                v3 = v42;
                v32 = v28 + 1;
                if (v31)
                {
                  v33 = v30;
                }

                else
                {
                  v33 = v30 + 1;
                }

                if (v32 >= v24 + 1)
                {
                  v34 = v24 + 1;
                }

                else
                {
                  v34 = v32;
                }

                v8 = v27;
                v16 = v26;
                v4 = v43;
                if (v34 >= v33)
                {
                  v35 = v33;
                }

                else
                {
                  v35 = v34;
                }

                v36 = [MEMORY[0x1E696AD98] numberWithInteger:v35];
                [v26 insertObject:v36 atIndex:v20];

                v17 = v44;
                v19 = v20;
              }

              while (v8 != v20);
            }

            v10 = v16;

            v15 = v41 + 1;
            v16 = v11;
            v9 = v39;
            v12 = 0x1E696A000;
          }

          while (v41 != v40);
        }

        v37 = [v10 objectAtIndex:v8];
        v6 = [v37 integerValue];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = v7;
    }
  }

  return v6;
}

id INIntentSlotValueTransformFromContactCard(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v28 = NSPersonNameComponentsForPBContactCard(v2);
    v27 = [v2 contactIdentifier];
    v19 = [v2 isMe];
    v24 = [v2 image];
    v18 = INIntentSlotValueTransformFromImageValue(v24);
    v17 = [v2 organizationName];
    v15 = [v2 departmentName];
    v26 = [v2 jobTitle];
    v23 = [v2 phoneNumbers];
    v25 = CNLabeledValueForPBContactHandle(v23);
    v22 = [v2 emailAddresses];
    v12 = CNLabeledValueForPBContactHandle(v22);
    v20 = [v2 postalAddresses];
    v11 = CNLabeledValueForPBContactHandle(v20);
    v16 = [v2 urlAddresses];
    v3 = CNLabeledValueForPBContactHandle(v16);
    v14 = [v2 contactRelations];
    v4 = CNContactRelationForPBContactHandle(v14);
    v13 = [v2 instantMessageAddresses];
    v5 = CNLabeledValueForPBContactHandle(v13);
    v6 = [v2 birthday];
    v7 = NSDateComponentsForINDateComponents(v6);
    v8 = [v2 dates];

    v9 = NSLabeledDatesForINDateComponents(v8);
    v21 = [INContactCard initWithContactIdentifier:v27 nameComponents:v28 isMe:v19 image:v18 organizationName:v17 departmentName:v15 jobTitle:v26 phoneNumbers:v25 emailAddresses:v12 postalAddresses:v11 urlAddresses:v3 contactRelations:v4 instantMessageAddresses:v5 birthday:v7 dates:v9];

    a1 = v21;
    v1 = vars8;
  }

  return a1;
}

id NSPersonNameComponentsForPBContactCard(void *a1)
{
  v1 = MEMORY[0x1E696ADF0];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 lastName];
  [v3 setFamilyName:v4];

  v5 = [v2 firstName];
  [v3 setGivenName:v5];

  v6 = [v2 middleName];
  [v3 setMiddleName:v6];

  v7 = [v2 namePrefix];
  [v3 setNamePrefix:v7];

  v8 = [v2 nameSuffix];
  [v3 setNameSuffix:v8];

  v9 = [v2 nickName];
  [v3 setNickname:v9];

  v10 = objc_opt_new();
  v11 = [v2 phoneticLastName];
  [v10 setFamilyName:v11];

  v12 = [v2 phoneticFirstName];
  [v10 setGivenName:v12];

  v13 = [v2 phoneticMiddleName];
  [v10 setMiddleName:v13];

  v14 = [v2 phoneticNamePrefix];
  [v10 setNamePrefix:v14];

  v15 = [v2 phoneticNameSuffix];
  [v10 setNameSuffix:v15];

  v16 = [v2 phoneticNickName];

  [v10 setNickname:v16];
  [v3 setPhoneticRepresentation:v10];

  return v3;
}

id CNLabeledValueForPBContactHandle(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 label];
        v10 = [v8 value];
        v11 = soft_initWithPersonHandle(v9, v10);

        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

id CNContactRelationForPBContactHandle(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 label];
        v10 = [v8 value];
        v11 = soft_initWithPersonHandle(v9, v10);

        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

id NSDateComponentsForINDateComponents(void *a1)
{
  v1 = INIntentSlotValueTransformFromDateTimeRangeValue(a1);
  v2 = [v1 startDateComponents];
  v3 = [MEMORY[0x1E695DF10] init];
  v4 = [v2 calendar];
  [v3 setCalendar:v4];

  [v3 setMonth:{objc_msgSend(v2, "month")}];
  [v3 setDay:{objc_msgSend(v2, "day")}];
  [v3 setYear:{objc_msgSend(v2, "year")}];

  return v3;
}

id NSLabeledDatesForINDateComponents(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = NSDateComponentsForINDateComponents(v7);
        v9 = [v7 name];
        v10 = v8;
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v11 = getlabeledValueWithLabelSymbolLoc_ptr;
        v29 = getlabeledValueWithLabelSymbolLoc_ptr;
        if (!getlabeledValueWithLabelSymbolLoc_ptr)
        {
          v21 = MEMORY[0x1E69E9820];
          v22 = 3221225472;
          v23 = __getlabeledValueWithLabelSymbolLoc_block_invoke;
          v24 = &unk_1E72888B8;
          v25 = &v26;
          v12 = ContactsLibrary_45500();
          v13 = dlsym(v12, "labeledValueWithLabel");
          *(v25[1] + 24) = v13;
          getlabeledValueWithLabelSymbolLoc_ptr = *(v25[1] + 24);
          v11 = v27[3];
        }

        _Block_object_dispose(&v26, 8);
        if (!v11)
        {
          dlerror();
          abort_report_np();
          __break(1u);
        }

        v14 = v11(v9, v10);

        [v2 addObject:v14];
      }

      v4 = [v3 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_18EB0FFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getlabeledValueWithLabelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_45500();
  result = dlsym(v2, "labeledValueWithLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getlabeledValueWithLabelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary_45500()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_45503)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_45504;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7280AC8;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_45503 = _sl_dlopen();
    v1 = v4[0];
    v0 = ContactsLibraryCore_frameworkLibrary_45503;
    if (ContactsLibraryCore_frameworkLibrary_45503)
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

  v0 = ContactsLibraryCore_frameworkLibrary_45503;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __ContactsLibraryCore_block_invoke_45504(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_45503 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id soft_initWithPersonHandle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getinitWithLabelSymbolLoc_ptr;
  v13 = getinitWithLabelSymbolLoc_ptr;
  if (!getinitWithLabelSymbolLoc_ptr)
  {
    v6 = ContactsLibrary_45500();
    v11[3] = dlsym(v6, "initWithLabel");
    getinitWithLabelSymbolLoc_ptr = v11[3];
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    dlerror();
    v9 = abort_report_np();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v7 = v5(v3, v4);

  return v7;
}

void *__getinitWithLabelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_45500();
  result = dlsym(v2, "initWithLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getinitWithLabelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

_INPBContactCard *INIntentSlotValueTransformToContactCard(void *a1)
{
  v1 = a1;
  v2 = [v1 nameComponents];
  v3 = [v2 phoneticRepresentation];
  if (v1)
  {
    v4 = objc_alloc_init(_INPBContactCard);
    v5 = [v1 contactIdentifier];
    [(_INPBContactCard *)v4 setContactIdentifier:v5];

    v6 = [v2 namePrefix];
    [(_INPBContactCard *)v4 setNamePrefix:v6];

    v7 = [v2 givenName];
    [(_INPBContactCard *)v4 setFirstName:v7];

    v8 = [v2 middleName];
    [(_INPBContactCard *)v4 setMiddleName:v8];

    v9 = [v2 familyName];
    [(_INPBContactCard *)v4 setLastName:v9];

    v10 = [v2 nameSuffix];
    [(_INPBContactCard *)v4 setNameSuffix:v10];

    v11 = [v2 nickname];
    [(_INPBContactCard *)v4 setNickName:v11];

    v12 = [v3 namePrefix];
    [(_INPBContactCard *)v4 setPhoneticNamePrefix:v12];

    v13 = [v3 givenName];
    [(_INPBContactCard *)v4 setPhoneticFirstName:v13];

    v14 = [v3 middleName];
    [(_INPBContactCard *)v4 setPhoneticMiddleName:v14];

    v15 = [v3 familyName];
    [(_INPBContactCard *)v4 setPhoneticLastName:v15];

    v16 = [v3 nameSuffix];
    [(_INPBContactCard *)v4 setPhoneticNameSuffix:v16];

    v17 = [v3 nickname];
    [(_INPBContactCard *)v4 setPhoneticNickName:v17];

    -[_INPBContactCard setIsMe:](v4, "setIsMe:", [v1 isMe]);
    v18 = [v1 image];
    v19 = INIntentSlotValueTransformToImageValue(v18);
    [(_INPBContactCard *)v4 setImage:v19];

    v20 = [v1 organizationName];
    [(_INPBContactCard *)v4 setOrganizationName:v20];

    v21 = [v1 departmentName];
    [(_INPBContactCard *)v4 setDepartmentName:v21];

    v22 = [v1 jobTitle];
    [(_INPBContactCard *)v4 setJobTitle:v22];

    v23 = [v1 phoneNumbers];
    v24 = PBContactHandleForCNLabeledValue(v23);
    [(_INPBContactCard *)v4 setPhoneNumbers:v24];

    v25 = [v1 emailAddresses];
    v26 = PBContactHandleForCNLabeledValue(v25);
    [(_INPBContactCard *)v4 setEmailAddresses:v26];

    v27 = [v1 postalAddresses];
    v28 = PBContactHandleForCNLabeledValue(v27);
    [(_INPBContactCard *)v4 setPostalAddresses:v28];

    v29 = [v1 urlAddresses];
    v30 = PBContactHandleForCNLabeledValue(v29);
    [(_INPBContactCard *)v4 setUrlAddresses:v30];

    v31 = [v1 contactRelations];
    v32 = PBContactRelationshipForCNContactRelation(v31);
    [(_INPBContactCard *)v4 setContactRelations:v32];

    v33 = [v1 instantMessageAddresses];
    v34 = PBContactHandleForCNLabeledValue(v33);
    [(_INPBContactCard *)v4 setInstantMessageAddresses:v34];

    v35 = [v1 birthday];
    v36 = INDateComponentsForNSDateComponents(v35);
    [(_INPBContactCard *)v4 setBirthday:v36];

    v37 = [v1 dates];
    v38 = INDateComponentsForNSLabeledDates(v37);
    [(_INPBContactCard *)v4 setDates:v38];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PBContactHandleForCNLabeledValue(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_alloc_init(_INPBContactHandle);
        v10 = [v8 label];
        [(_INPBContactHandle *)v9 setLabel:v10];

        v11 = [v8 value];
        [(_INPBContactHandle *)v9 setValue:v11];

        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

id PBContactRelationshipForCNContactRelation(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_alloc_init(_INPBContactRelationship);
        v10 = [v8 label];
        [(_INPBContactRelationship *)v9 setRelation:v10];

        v11 = [v8 value];
        [(_INPBContactRelationship *)v9 setName:v11];

        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

id INDateComponentsForNSDateComponents(void *a1)
{
  v1 = a1;
  v2 = [[INDateComponentsRange alloc] initWithStartDateComponents:v1 endDateComponents:v1];

  v3 = INIntentSlotValueTransformToDateTimeRangeValue(v2);

  return v3;
}

id INDateComponentsForNSLabeledDates(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 value];
        v10 = INDateComponentsForNSDateComponents(v9);

        v11 = [v8 label];
        [v10 setName:v11];

        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSlotValueTransformFromContactCards(void *a1)
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

          v8 = INIntentSlotValueTransformFromContactCard(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToContactCards(void *a1)
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

          v8 = INIntentSlotValueTransformToContactCard(*(*(&v12 + 1) + 8 * i));
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

uint64_t _INPBScanVisualCodeIntentReadFrom(void *a1, void *a2)
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

unint64_t INSexualActivityValueTypeGetBackingType(unint64_t result)
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

uint64_t INSexualActivityValueTypeGetFacadeType(int a1, int a2)
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

__CFString *INSexualActivityValueTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"unprotected";
  }

  if (a1 == 1)
  {
    return @"protected";
  }

  else
  {
    return v1;
  }
}

uint64_t INSexualActivityValueTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"protected"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"unprotected"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INSexualActivityValueTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"unprotected";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"protected";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBSetClimateSettingsInCarIntentReadFrom(void *a1, void *a2)
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
      LOBYTE(v72) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v72 & 0x7F) << v5;
      if ((v72 & 0x80) == 0)
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
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
        goto LABEL_98;
      case 2u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v72 & 0x7F) << v56;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v62 = 0;
            goto LABEL_129;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_129:
        [a1 setEnableFan:v62];
        goto LABEL_99;
      case 3u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v72 & 0x7F) << v49;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_127;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_127:
        [a1 setEnableAirConditioner:v55];
        goto LABEL_99;
      case 4u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v72 & 0x7F) << v42;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_125;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_125:
        [a1 setEnableClimateControl:v48];
        goto LABEL_99;
      case 5u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v72 & 0x7F) << v21;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_115;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_115:
        [a1 setEnableAutoMode:v27];
        goto LABEL_99;
      case 6u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v72 & 0x7F) << v28;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_119;
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

LABEL_119:
        [a1 setAirCirculationMode:v34];
        goto LABEL_99;
      case 7u:
        v13 = objc_alloc_init(_INPBInteger);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        [a1 setFanSpeedIndex:v13];
        goto LABEL_98;
      case 8u:
        v13 = objc_alloc_init(_INPBDouble);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_INPBDoubleReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        [a1 setFanSpeedPercentage:v13];
        goto LABEL_98;
      case 9u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v72 & 0x7F) << v64;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v70 = 0;
            goto LABEL_133;
          }
        }

        if ([a2 hasError])
        {
          v70 = 0;
        }

        else
        {
          v70 = v66;
        }

LABEL_133:
        [a1 setRelativeFanSpeedSetting:v70];
        goto LABEL_99;
      case 0xBu:
        v13 = objc_alloc_init(_INPBTemperature);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_INPBTemperatureReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        [a1 setTemperature:v13];
        goto LABEL_98;
      case 0xCu:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v72 & 0x7F) << v14;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_113;
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

LABEL_113:
        [a1 setRelativeTemperatureSetting:v20];
        goto LABEL_99;
      case 0xDu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v72 & 0x7F) << v35;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_123;
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

LABEL_123:
        [a1 setClimateZone:v41];
        goto LABEL_99;
      case 0xEu:
        v13 = objc_alloc_init(_INPBDataString);
        v72 = 0;
        v73 = 0;
        if (PBReaderPlaceMark() && _INPBDataStringReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setCarName:v13];
LABEL_98:

LABEL_99:
          v63 = [a2 position];
          if (v63 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_136:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_99;
    }
  }
}

uint64_t _INPBRequestRideIntentResponseReadFrom(void *a1, void *a2)
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

uint64_t _INPBListRideOptionsIntentResponseReadFrom(void *a1, void *a2)
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
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBTimestamp);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBTimestampReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setExpirationDate:v14];
          goto LABEL_44;
        }

        if (v13 == 3)
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
              goto LABEL_46;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_46:
          [a1 setSupportsApplePayForPayment:v21];
          goto LABEL_47;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBRideOption);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBRideOptionReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addRideOptions:v14];
          }

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBPaymentMethodValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBPaymentMethodValueReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPaymentMethods:v14];
          }

LABEL_44:

          goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_18EB1A9E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

id getUISIntentForwardingActionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUISIntentForwardingActionClass_softClass;
  v7 = getUISIntentForwardingActionClass_softClass;
  if (!getUISIntentForwardingActionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUISIntentForwardingActionClass_block_invoke;
    v3[3] = &unk_1E72888B8;
    v3[4] = &v4;
    __getUISIntentForwardingActionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18EB1ABE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUISIntentForwardingActionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UIKitServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7280DA0;
    v7 = 0;
    UIKitServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UIKitServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("UISIntentForwardingAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getUISIntentForwardingActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t INAccountTypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 7)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INAccountTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INAccountTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7280DB8[a1 - 1];
  }
}

uint64_t INAccountTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"checking"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"credit"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"debit"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"investment"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"mortgage"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"prepaid"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"saving"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INAccountTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v5 = @"checking";
        break;
      case 2:
        v5 = @"credit";
        break;
      case 3:
        v5 = @"debit";
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v5 = @"prepaid";
    }

    else
    {
      if (a1 != 7)
      {
        goto LABEL_17;
      }

      v5 = @"saving";
    }
  }

  else if (a1 == 4)
  {
    v5 = @"investment";
  }

  else
  {
    v5 = @"mortgage";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_17:

  return v4;
}

uint64_t _INPBRideDriverReadFrom(void *a1, void *a2)
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
          v14 = PBReaderReadString();
          [a1 setRating:v14];
          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setPhoneNumber:v14];
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBContactValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setPerson:v14];
          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBImageValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

          PBReaderRecallMark();
          [a1 setImage:v14];
          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INRideOption *INIntentSlotValueTransformFromRideOption(void *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [INRideOption alloc];
    v3 = [v1 name];
    v4 = [v1 estimatedPickupDate];
    v5 = INIntentSlotValueTransformFromTimestamp(v4);
    v6 = [(INRideOption *)v2 initWithName:v3 estimatedPickupDate:v5];

    if ([v1 hasPriceRange])
    {
      v7 = [v1 priceRange];
      v8 = [INPriceRange _priceWithPriceRangeValue:v7];
      [(INRideOption *)v6 setPriceRange:v8];
    }

    v9 = [v1 disclaimerMessage];
    v45 = v6;
    [(INRideOption *)v6 setDisclaimerMessage:v9];

    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "availablePartySizeOptionsCount")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = v1;
    obj = [v1 availablePartySizeOptions];
    v10 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v55;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v55 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v54 + 1) + 8 * i);
          v15 = [v14 partySizeRange];
          v16 = [v14 priceRange];
          v17 = [INPriceRange _priceWithPriceRangeValue:v16];
          v18 = [INRidePartySizeOption alloc];
          if (v15)
          {
            v19 = [v15 location];
            v20 = [v15 length];
          }

          else
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v21 = [v14 sizeDescription];
          v22 = [(INRidePartySizeOption *)v18 initWithPartySizeRange:v19 sizeDescription:v20 priceRange:v21, v17];

          [v49 addObject:v22];
        }

        v11 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v11);
    }

    [(INRideOption *)v45 setAvailablePartySizeOptions:v49];
    v23 = [v46 availablePartySizeOptionsSelectionPrompt];
    [(INRideOption *)v45 setAvailablePartySizeOptionsSelectionPrompt:v23];

    v24 = [v46 specialPricing];
    [(INRideOption *)v45 setSpecialPricing:v24];

    v25 = [v46 specialPricingBadgeImage];
    v26 = INIntentSlotValueTransformFromImageValue(v25);
    [(INRideOption *)v45 setSpecialPricingBadgeImage:v26];

    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v46, "fareLineItemsCount")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obja = [v46 fareLineItems];
    v28 = [obja countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v51;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v51 != v30)
          {
            objc_enumerationMutation(obja);
          }

          v32 = *(*(&v50 + 1) + 8 * j);
          v33 = [INRideFareLineItem alloc];
          v34 = [v32 title];
          v35 = [v32 price];
          v36 = INIntentSlotValueTransformFromDecimalNumberValue(v35);
          v37 = [v32 currencyCode];
          v38 = [(INRideFareLineItem *)v33 initWithTitle:v34 price:v36 currencyCode:v37];

          [v27 addObject:v38];
        }

        v29 = [obja countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v29);
    }

    v39 = v45;
    [(INRideOption *)v45 setFareLineItems:v27];
    v1 = v46;
    if ([v46 hasUsesMeteredFare])
    {
      v40 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v46, "usesMeteredFare")}];
      [(INRideOption *)v45 setUsesMeteredFare:v40];
    }

    else
    {
      [(INRideOption *)v45 setUsesMeteredFare:0];
    }

    v41 = [v46 userActivityForBookingInApplication];
    v42 = INUserActivityDeserializeFromBackingStore(v41);
    [(INRideOption *)v45 setUserActivityForBookingInApplication:v42];
  }

  else
  {
    v39 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];

  return v39;
}

_INPBRideOption *INIntentSlotValueTransformToRideOption(void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBRideOption);
    v3 = [v1 name];
    [(_INPBRideOption *)v2 setName:v3];

    v4 = [v1 estimatedPickupDate];
    v5 = INIntentSlotValueTransformToTimestamp(v4);
    [(_INPBRideOption *)v2 setEstimatedPickupDate:v5];

    v6 = [v1 priceRange];
    if (v6)
    {
      v7 = objc_alloc_init(_INPBPriceRangeValue);
      v8 = [v6 minimumPrice];
      v9 = INIntentSlotValueTransformToDecimalNumberValue(v8);
      [(_INPBPriceRangeValue *)v7 setMinimumPrice:v9];

      v10 = [v6 maximumPrice];
      v11 = INIntentSlotValueTransformToDecimalNumberValue(v10);
      [(_INPBPriceRangeValue *)v7 setMaximumPrice:v11];

      v12 = [v6 currencyCode];
      [(_INPBPriceRangeValue *)v7 setCurrencyCode:v12];

      [(_INPBRideOption *)v2 setPriceRange:v7];
    }

    v13 = [v1 disclaimerMessage];
    [(_INPBRideOption *)v2 setDisclaimerMessage:v13];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v56 = v1;
    obj = [v1 availablePartySizeOptions];
    v14 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v58 = *v64;
      v16 = v2;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v64 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v63 + 1) + 8 * i);
          v19 = objc_alloc_init(_INPBRidePartySizeOption);
          v20 = [v18 partySizeRange];
          if (v20 != 0x7FFFFFFFFFFFFFFFLL && v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = v20;
            v24 = v21;
            v25 = objc_alloc_init(_INPBRangeValue);
            [(_INPBRangeValue *)v25 setLocation:v23];
            [(_INPBRangeValue *)v25 setLength:v24];
            [(_INPBRidePartySizeOption *)v19 setPartySizeRange:v25];

            v2 = v16;
          }

          v26 = [v18 priceRange];
          if (v26)
          {
            v27 = objc_alloc_init(_INPBPriceRangeValue);
            v28 = [v26 minimumPrice];
            v29 = INIntentSlotValueTransformToDecimalNumberValue(v28);
            [(_INPBPriceRangeValue *)v27 setMinimumPrice:v29];

            v30 = [v26 maximumPrice];
            v31 = INIntentSlotValueTransformToDecimalNumberValue(v30);
            [(_INPBPriceRangeValue *)v27 setMaximumPrice:v31];

            v2 = v16;
            v32 = [v26 currencyCode];
            [(_INPBPriceRangeValue *)v27 setCurrencyCode:v32];

            [(_INPBRidePartySizeOption *)v19 setPriceRange:v27];
          }

          v33 = [v18 sizeDescription];
          [(_INPBRidePartySizeOption *)v19 setSizeDescription:v33];

          [(_INPBRideOption *)v2 addAvailablePartySizeOptions:v19];
        }

        v15 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v15);
    }

    v34 = [v56 availablePartySizeOptionsSelectionPrompt];
    [(_INPBRideOption *)v2 setAvailablePartySizeOptionsSelectionPrompt:v34];

    v35 = [v56 specialPricing];
    [(_INPBRideOption *)v2 setSpecialPricing:v35];

    v36 = [v56 specialPricingBadgeImage];
    v37 = INIntentSlotValueTransformToImageValue(v36);
    [(_INPBRideOption *)v2 setSpecialPricingBadgeImage:v37];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = [v56 fareLineItems];
    v39 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v60;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v60 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v59 + 1) + 8 * j);
          v44 = objc_alloc_init(_INPBRideFareLineItem);
          v45 = [v43 title];
          [(_INPBRideFareLineItem *)v44 setTitle:v45];

          v46 = [v43 price];
          v47 = INIntentSlotValueTransformToDecimalNumberValue(v46);
          [(_INPBRideFareLineItem *)v44 setPrice:v47];

          v48 = [v43 currencyCode];
          [(_INPBRideFareLineItem *)v44 setCurrencyCode:v48];

          [(_INPBRideOption *)v2 addFareLineItems:v44];
        }

        v40 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v40);
    }

    v1 = v56;
    v49 = [v56 usesMeteredFare];

    if (v49)
    {
      v50 = [v56 usesMeteredFare];
      -[_INPBRideOption setUsesMeteredFare:](v2, "setUsesMeteredFare:", [v50 BOOLValue]);
    }

    else
    {
      [(_INPBRideOption *)v2 setHasUsesMeteredFare:0];
    }

    v51 = [v56 userActivityForBookingInApplication];
    v52 = INUserActivitySerializeToBackingStore(v51);
    [(_INPBRideOption *)v2 setUserActivityForBookingInApplication:v52];
  }

  else
  {
    v2 = 0;
  }

  v53 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSlotValueTransformFromRideOptions(void *a1)
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

        v8 = INIntentSlotValueTransformFromRideOption(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToRideOptions(void *a1)
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

        v8 = INIntentSlotValueTransformToRideOption(*(*(&v12 + 1) + 8 * i));
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

uint64_t INBillTypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 0x16)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INBillTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 0x16) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INBillTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x15)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7280DF0[a1 - 1];
  }
}

uint64_t INBillTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"autoInsurance"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"cable"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"carLease"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"carLoan"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"creditCard"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"electricity"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"gas"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"garbageAndRecycling"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"healthInsurance"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"homeInsurance"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"internet"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"lifeInsurance"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"mortgage"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"musicStreaming"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"phone"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"rent"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"sewer"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"studentLoan"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"trafficTicket"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"tuition"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"utilities"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"water"])
  {
    v2 = 22;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INBillTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"auto insurance";
      goto LABEL_25;
    case 2:
      v4 = @"cable";
      goto LABEL_25;
    case 3:
      v4 = @"car lease";
      goto LABEL_25;
    case 4:
      v4 = @"car loan";
      goto LABEL_25;
    case 5:
      v4 = @"credit card";
      goto LABEL_25;
    case 6:
      v4 = @"electricity";
      goto LABEL_25;
    case 7:
      v4 = @"gas";
      goto LABEL_25;
    case 8:
      v4 = @"garbage and recycling";
      goto LABEL_25;
    case 9:
      v4 = @"health insurance";
      goto LABEL_25;
    case 10:
      v4 = @"home insurance";
      goto LABEL_25;
    case 11:
      v4 = @"internet";
      goto LABEL_25;
    case 12:
      v4 = @"life insurance";
      goto LABEL_25;
    case 13:
      v4 = @"mortgage";
      goto LABEL_25;
    case 14:
      v4 = @"music streaming";
      goto LABEL_25;
    case 15:
      v4 = @"phone";
      goto LABEL_25;
    case 16:
      v4 = @"rent";
      goto LABEL_25;
    case 17:
      v4 = @"sewer";
      goto LABEL_25;
    case 18:
      v4 = @"student loan";
      goto LABEL_25;
    case 19:
      v4 = @"traffic ticket";
      goto LABEL_25;
    case 20:
      v4 = @"tuition";
      goto LABEL_25;
    case 21:
      v4 = @"utilities";
      goto LABEL_25;
    case 22:
      v4 = @"water";
LABEL_25:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t _INPBPlayVoicemailIntentResponseReadFrom(uint64_t a1, void *a2)
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

void __INCodableAttributeAvailableArraySizeClasses_block_invoke()
{
  v5[8] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"Small";
  v5[1] = @"Medium";
  v5[2] = @"Large";
  v5[3] = @"ExtraLarge";
  v5[4] = @"AccessoryCorner";
  v5[5] = @"AccessoryCircular";
  v5[6] = @"AccessoryRectangular";
  v5[7] = @"AccessoryInline";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = INCodableAttributeAvailableArraySizeClasses_codableAvailableArraySizeClasses;
  INCodableAttributeAvailableArraySizeClasses_codableAvailableArraySizeClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id INIntentSlotValueTransformFromContactValueWithAlternatives(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [INScoredPerson alloc];
          v13 = [(INScoredPerson *)v12 initWithPerson:v11 score:0, v18];
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = [v5 copy];
  v15 = INIntentSlotValueTransformFromContactValueWithScoredAlternatives(v3, v14);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id INIntentSlotValueTransformToScoredContactValue(void *a1)
{
  v1 = a1;
  v2 = [v1 person];
  v3 = INIntentSlotValueTransformToContactValue(v2);

  v4 = [v1 score];

  if (v4)
  {
    v5 = objc_alloc_init(_INPBConfidenceScore);
    v6 = [v1 score];
    [v6 floatValue];
    [(_INPBConfidenceScore *)v5 setAggregateScore:?];

    if ([v3 hasValueMetadata])
    {
      v7 = [v3 valueMetadata];
      [(_INPBValueMetadata *)v7 setConfidenceScore:v5];
    }

    else
    {
      v7 = objc_alloc_init(_INPBValueMetadata);
      [(_INPBValueMetadata *)v7 setConfidenceScore:v5];
      [v3 setValueMetadata:v7];
    }
  }

  return v3;
}

id INIntentSlotValueTransformFromContactValues(void *a1)
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

          v8 = INIntentSlotValueTransformFromContactValueWithAlternatives(*(*(&v12 + 1) + 8 * i), 0);
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

id INIntentSlotValueTransformToContactValues(void *a1)
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

          v8 = INIntentSlotValueTransformToContactValue(*(*(&v12 + 1) + 8 * i));
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

_INPBContactValue *INIntentSlotValueRedactedValueFromContactValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 valueMetadata];
  v8 = INPrivacyEntitlementOptionsForValueMetadata(v7);

  if ((v8 & a2) != 0)
  {
    goto LABEL_2;
  }

  v10 = [v5 valueMetadata];
  v11 = [v10 sourceAppBundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = [v5 valueMetadata];
    v14 = [v13 sourceAppBundleIdentifier];
    v15 = [v6 isEqualToString:v14];

    if (!v15)
    {
LABEL_2:
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = objc_alloc_init(_INPBContactValue);
  v16 = [v5 image];
  v17 = INIntentSlotValueRedactedImageValueFromImageValue(v16, a2);
  [(_INPBContactValue *)v9 setImage:v17];

  v18 = [v5 namePrefix];
  [(_INPBContactValue *)v9 setNamePrefix:v18];

  v19 = [v5 phoneticNamePrefix];
  [(_INPBContactValue *)v9 setPhoneticNamePrefix:v19];

  v20 = [v5 firstName];
  [(_INPBContactValue *)v9 setFirstName:v20];

  v21 = [v5 phoneticFirstName];
  [(_INPBContactValue *)v9 setPhoneticFirstName:v21];

  v22 = [v5 middleName];
  [(_INPBContactValue *)v9 setMiddleName:v22];

  v23 = [v5 phoneticMiddleName];
  [(_INPBContactValue *)v9 setPhoneticMiddleName:v23];

  v24 = [v5 lastName];
  [(_INPBContactValue *)v9 setLastName:v24];

  v25 = [v5 phoneticLastName];
  [(_INPBContactValue *)v9 setPhoneticLastName:v25];

  v26 = [v5 nameSuffix];
  [(_INPBContactValue *)v9 setNameSuffix:v26];

  v27 = [v5 phoneticNameSuffix];
  [(_INPBContactValue *)v9 setPhoneticNameSuffix:v27];

  v28 = [v5 nickName];
  [(_INPBContactValue *)v9 setNickName:v28];

  v29 = [v5 fullName];
  [(_INPBContactValue *)v9 setFullName:v29];

  v30 = [v5 contactHandle];
  [(_INPBContactValue *)v9 setContactHandle:v30];

  v31 = [v5 valueMetadata];
  [(_INPBContactValue *)v9 setValueMetadata:v31];

  v32 = [v5 customIdentifier];
  [(_INPBContactValue *)v9 setCustomIdentifier:v32];

  -[_INPBContactValue setIsContactSuggestion:](v9, "setIsContactSuggestion:", [v5 isContactSuggestion]);
  -[_INPBContactValue setSearchProvider:](v9, "setSearchProvider:", [v5 searchProvider]);
LABEL_8:

  return v9;
}

_INPBContact *INIntentSlotValueRedactedContactFromContact(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBContact);
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

          v13 = INIntentSlotValueRedactedValueFromContactValue(*(*(&v16 + 1) + 8 * i), a2, v6);
          if (v13)
          {
            [(_INPBContact *)v7 addValue:v13];
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

id INIntentSlotValueRedactedContactsFromContacts(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedContactFromContact(*(*(&v17 + 1) + 8 * i), a2, v6);
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

id INIntentSlotValueTransformFromDialingContact(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = a1;
  v1 = [v24 values];
  v2 = [v1 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = *v26;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v26 != v6)
      {
        objc_enumerationMutation(v1);
      }

      v8 = *(*(&v25 + 1) + 8 * i);
      if (v5 || ([*(*(&v25 + 1) + 8 * i) dialingContact], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "valueMetadata"), v10 = objc_claimAutoreleasedReturnValue(), v11 = INPrivacyEntitlementOptionsForValueMetadata(v10), v10, v9, v11))
      {
        v12 = v8;
        if (!v12)
        {
          continue;
        }

        v13 = v12;
        if ([v12 hasDialingContact] && (objc_msgSend(v13, "dialingContact"), v14 = objc_claimAutoreleasedReturnValue(), INIntentSlotValueTransformFromContactValueWithAlternatives(v14, 0), v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
        {
        }

        else
        {
          LOBYTE(v23) = 0;
          LOBYTE(v22) = 0;
          v15 = [[INPerson alloc] _initWithUserInput:0 personHandle:0 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0 relationship:0 aliases:0 suggestionType:0 isMe:v22 alternatives:0 sourceAppBundleIdentifier:0 phonemeData:0 isContactSuggestion:v23];

          if (!v15)
          {
            continue;
          }
        }

        if (!v4)
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v4 addObject:v15];
      }

      else
      {
        v5 = v8;
      }
    }

    v3 = [v1 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v3);
LABEL_21:

  v16 = v5;
  v17 = v4;
  if (v16)
  {
    if (![v16 hasDialingContact] || (objc_msgSend(v16, "dialingContact"), v18 = objc_claimAutoreleasedReturnValue(), INIntentSlotValueTransformFromContactValueWithAlternatives(v18, v17), v19 = objc_claimAutoreleasedReturnValue(), v18, !v19))
    {
      LOBYTE(v23) = 0;
      LOBYTE(v22) = 0;
      v19 = [[INPerson alloc] _initWithUserInput:0 personHandle:0 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0 relationship:0 aliases:0 suggestionType:0 isMe:v22 alternatives:v17 sourceAppBundleIdentifier:0 phonemeData:0 isContactSuggestion:v23];
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

_INPBDialingContact *INIntentSlotValueTransformToDialingContact(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _INIntentSlotValueTransformToDialingContactValue(v1);
  if (v2)
  {
    v3 = objc_alloc_init(_INPBDialingContact);
    [(_INPBDialingContact *)v3 addValue:v2];
  }

  else
  {
    v3 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v1 alternatives];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v2;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v2 = _INIntentSlotValueTransformToDialingContactValue(*(*(&v12 + 1) + 8 * v8));

        if (v2)
        {
          [(_INPBDialingContact *)v3 addValue:v2];
        }

        ++v8;
        v9 = v2;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

_INPBDialingContactValue *_INIntentSlotValueTransformToDialingContactValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBDialingContactValue);
    v3 = INIntentSlotValueTransformToContactValue(v1);

    [(_INPBDialingContactValue *)v2 setDialingContact:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromDialingContacts(void *a1)
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

        v8 = INIntentSlotValueTransformFromDialingContact(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToDialingContacts(void *a1)
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

        v8 = INIntentSlotValueTransformToDialingContact(*(*(&v12 + 1) + 8 * i));
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

_INPBDialingContact *INIntentSlotValueRedactedDialingContactFromDialingContact(void *a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v23 = objc_alloc_init(_INPBDialingContact);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v5;
    obj = [v5 values];
    v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = v6;
          v13 = [v11 dialingContact];
          v14 = [v13 valueMetadata];
          v15 = INPrivacyEntitlementOptionsForValueMetadata(v14);

          if ((v15 & a2) != 0)
          {
            v16 = 0;
          }

          else
          {
            v16 = objc_alloc_init(_INPBDialingContactValue);
            v17 = [v11 dialingContact];
            v18 = INIntentSlotValueRedactedValueFromContactValue(v17, a2, v12);
            [(_INPBDialingContactValue *)v16 setDialingContact:v18];
          }

          if (v16)
          {
            [(_INPBDialingContact *)v23 addValue:v16];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v5 = v21;
  }

  else
  {
    v23 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v23;
}

id INIntentSlotValueRedactedDialingContactsFromDialingContacts(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedDialingContactFromDialingContact(*(*(&v17 + 1) + 8 * i), a2, v6);
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

uint64_t _INPBResumeTimerIntentReadFrom(void *a1, void *a2)
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
        [a1 setResumeMultiple:v20];
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

uint64_t INAmountTypeGetBackingType(uint64_t result)
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

uint64_t INAmountTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
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

__CFString *INAmountTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7280F58[a1 - 1];
  }
}

uint64_t INAmountTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"minimumDue"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"amountDue"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"currentBalance"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"maximumTransferAmount"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"minimumTransferAmount"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"statementBalance"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INAmountTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v5 = @"maximum transfer amount";
        break;
      case 5:
        v5 = @"minimum transfer amount";
        break;
      case 6:
        v5 = @"statement balance";
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
        v5 = @"minimum due";
        break;
      case 2:
        v5 = @"amount due";
        break;
      case 3:
        v5 = @"current balance";
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_15:

  return v4;
}

__CFString *INSearchForBillsIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7280F88[a1];
  }
}

__CFString *INSetTaskAttributeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7280FC8[a1];
  }
}

uint64_t _INPBAddTasksIntentReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 <= 8)
        {
          if (v13 == 7)
          {
            v14 = objc_alloc_init(_INPBContactEventTrigger);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactEventTriggerReadFrom(v14, a2))
            {
LABEL_89:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setContactEventTrigger:v14];
            goto LABEL_74;
          }

          if (v13 == 8)
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
                goto LABEL_82;
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

LABEL_82:
            [a1 setTaskReference:v28];
            goto LABEL_75;
          }
        }

        else
        {
          switch(v13)
          {
            case 9:
              v14 = objc_alloc_init(_INPBIntent);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !_INPBIntentReadFrom(v14, a2))
              {
                goto LABEL_89;
              }

              PBReaderRecallMark();
              [a1 setIntent:v14];
              goto LABEL_74;
            case 0xA:
              v14 = objc_alloc_init(_INPBContact);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
              {
                goto LABEL_89;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addTargetTaskListMembers:v14];
              }

              goto LABEL_74;
            case 0xB:
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
                  goto LABEL_86;
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

LABEL_86:
              [a1 setPriority:v21];
              goto LABEL_75;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_89;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_74;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBTaskList);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBTaskListReadFrom(v14, a2))
          {
            goto LABEL_89;
          }

          PBReaderRecallMark();
          [a1 setTargetTaskList:v14];
          goto LABEL_74;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBDataString);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_89;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addTaskTitles:v14];
            }

            goto LABEL_74;
          case 5:
            v14 = objc_alloc_init(_INPBSpatialEventTrigger);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBSpatialEventTriggerReadFrom(v14, a2))
            {
              goto LABEL_89;
            }

            PBReaderRecallMark();
            [a1 setSpatialEventTrigger:v14];
            goto LABEL_74;
          case 6:
            v14 = objc_alloc_init(_INPBTemporalEventTrigger);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBTemporalEventTriggerReadFrom(v14, a2))
            {
              goto LABEL_89;
            }

            PBReaderRecallMark();
            [a1 setTemporalEventTrigger:v14];
LABEL_74:

            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INPayBillIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7281010[a1];
  }
}

void INCallRecordTypeOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  if (a1)
  {
    (*(v3 + 2))(v3, 2);
    v3 = v4;
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  (*(v3 + 2))(v4, 3);
  v3 = v4;
  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  (*(v3 + 2))(v4, 4);
  v3 = v4;
  if ((a1 & 8) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  (*(v3 + 2))(v4, 5);
  v3 = v4;
  if ((a1 & 0x10) == 0)
  {
LABEL_8:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    (*(v3 + 2))(v4, 8);
    v3 = v4;
    if ((a1 & 0x40) == 0)
    {
LABEL_10:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  (*(v3 + 2))(v4, 7);
  v3 = v4;
  if ((a1 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((a1 & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_21:
  (*(v3 + 2))(v4, 9);
  v3 = v4;
  if ((a1 & 0x80) != 0)
  {
LABEL_11:
    (*(v3 + 2))(v4, 10);
    v3 = v4;
  }

LABEL_12:
}

uint64_t INCallRecordTypeOptionsContainsBackingType(unint64_t a1, int a2)
{
  if (a1)
  {
    v2 = (a1 >> 6) & 1;
    v3 = (a1 >> 7) & 1;
    if (a2 != 10)
    {
      LOBYTE(v3) = 0;
    }

    if (a2 != 9)
    {
      LOBYTE(v2) = v3;
    }

    v4 = (a1 >> 4) & 1;
    v5 = (a1 >> 5) & 1;
    if (a2 != 8)
    {
      LOBYTE(v5) = 0;
    }

    if (a2 != 7)
    {
      LOBYTE(v4) = v5;
    }

    if (a2 <= 8)
    {
      LOBYTE(v2) = v4;
    }

    v6 = (a1 >> 2) & 1;
    v7 = (a1 >> 3) & 1;
    if (a2 != 5)
    {
      LOBYTE(v7) = 0;
    }

    if (a2 != 4)
    {
      LOBYTE(v6) = v7;
    }

    v8 = (a1 >> 1) & 1;
    if (a2 != 3)
    {
      LOBYTE(v8) = 0;
    }

    if (a2 == 2)
    {
      LOBYTE(v8) = a1;
    }

    if (a2 <= 3)
    {
      LOBYTE(v6) = v8;
    }

    if (a2 <= 6)
    {
      LOBYTE(v2) = v6;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t *INCallRecordTypeOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result | 0x40;
    v4 = *result | 0x80;
    if (a2 != 10)
    {
      v4 = *result;
    }

    if (a2 != 9)
    {
      v3 = v4;
    }

    v5 = v2 | 0x10;
    v6 = v2 | 0x20;
    if (a2 != 8)
    {
      v6 = *result;
    }

    if (a2 != 7)
    {
      v5 = v6;
    }

    if (a2 <= 8)
    {
      v3 = v5;
    }

    v7 = v2 | 4;
    v8 = v2 | 8;
    if (a2 != 5)
    {
      v8 = *result;
    }

    if (a2 != 4)
    {
      v7 = v8;
    }

    v9 = v2 | 1;
    if (a2 == 3)
    {
      v2 |= 2uLL;
    }

    if (a2 == 2)
    {
      v2 = v9;
    }

    if (a2 > 3)
    {
      v2 = v7;
    }

    if (a2 > 6)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

unint64_t *INCallRecordTypeOptionsRemoveBackingType(unint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result & 0xFFFFFFFFFFFFFFBFLL;
    v4 = *result & 0xFFFFFFFFFFFFFF7FLL;
    if (a2 != 10)
    {
      v4 = *result;
    }

    if (a2 != 9)
    {
      v3 = v4;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFEFLL;
    v6 = v2 & 0xFFFFFFFFFFFFFFDFLL;
    if (a2 != 8)
    {
      v6 = *result;
    }

    if (a2 != 7)
    {
      v5 = v6;
    }

    if (a2 <= 8)
    {
      v3 = v5;
    }

    v7 = v2 & 0xFFFFFFFFFFFFFFFBLL;
    v8 = v2 & 0xFFFFFFFFFFFFFFF7;
    if (a2 != 5)
    {
      v8 = *result;
    }

    if (a2 != 4)
    {
      v7 = v8;
    }

    v9 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if (a2 == 3)
    {
      v2 &= ~2uLL;
    }

    if (a2 == 2)
    {
      v2 = v9;
    }

    if (a2 > 3)
    {
      v2 = v7;
    }

    if (a2 > 6)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INCallRecordTypeOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"outgoing"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"missed"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:@"received"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:@"latest"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v3 addObject:@"voicemail"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v3 addObject:@"ringing"];
    if ((v1 & 0x40) == 0)
    {
LABEL_9:
      if ((v1 & 0x80) == 0)
      {
LABEL_11:
        v4 = [v3 copy];

        goto LABEL_13;
      }

LABEL_10:
      [v3 addObject:@"onHold"];
      goto LABEL_11;
    }

LABEL_22:
    [v3 addObject:@"inProgress"];
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_13:

  return v4;
}

uint64_t INCallRecordTypeOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v11;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v3 |= [v6 isEqualToString:@"outgoing"];
        if ([v6 isEqualToString:@"missed"])
        {
          v3 |= 2uLL;
        }

        if ([v6 isEqualToString:@"received"])
        {
          v3 |= 4uLL;
        }

        if ([v6 isEqualToString:@"latest"])
        {
          v3 |= 8uLL;
        }

        if ([v6 isEqualToString:@"voicemail"])
        {
          v3 |= 0x10uLL;
        }

        if ([v6 isEqualToString:@"ringing"])
        {
          v3 |= 0x20uLL;
        }

        if ([v6 isEqualToString:@"inProgress"])
        {
          v3 |= 0x40uLL;
        }

        if ([v6 isEqualToString:@"onHold"])
        {
          v3 |= 0x80uLL;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

id INCallRecordTypeOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"outgoing", @"outgoing", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"missed", @"missed", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = INLocalizedStringWithLocalizer(@"received", @"received", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = INLocalizedStringWithLocalizer(@"latest", @"latest", v3);
    [v4 addObject:v11];

    if ((a1 & 0x10) == 0)
    {
LABEL_7:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v12 = INLocalizedStringWithLocalizer(@"voicemail", @"voicemail", v3);
    [v4 addObject:v12];

    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v13 = INLocalizedStringWithLocalizer(@"ringing", @"ringing", v3);
    [v4 addObject:v13];

    if ((a1 & 0x40) == 0)
    {
LABEL_9:
      if ((a1 & 0x80) == 0)
      {
LABEL_11:
        v6 = [v4 copy];

        goto LABEL_13;
      }

LABEL_10:
      v5 = INLocalizedStringWithLocalizer(@"on hold", @"on hold", v3);
      [v4 addObject:v5];

      goto LABEL_11;
    }

LABEL_22:
    v14 = INLocalizedStringWithLocalizer(@"in progress", @"in progress", v3);
    [v4 addObject:v14];

    if ((a1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_13:

  return v6;
}

uint64_t _INPBSearchForPhotosIntentResponseReadFrom(void *a1, void *a2)
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

uint64_t _INPBPayloadConfirmationReadFrom(void *a1, void *a2)
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
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 999)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45[0] & 0x7F) << v21;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_79;
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

LABEL_79:
          [a1 setReason:v27];
          goto LABEL_80;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      }

      v42 = objc_alloc_init(_INPBSelectionItem);
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !_INPBSelectionItemReadFrom(v42, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setConfirmationItem:v42];

LABEL_80:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 0x654:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v45[0] & 0x7F) << v28;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_67;
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

LABEL_67:
        [a1 setSendAnnouncementIntentAnnouncementConfirmationReason:v34];
        goto LABEL_80;
      case 0x514:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v45[0] & 0x7F) << v35;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_71;
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

LABEL_71:
        [a1 setStartCallIntentContactsConfirmationReason:v41];
        goto LABEL_80;
      case 0x3E8:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45[0] & 0x7F) << v14;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_75;
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

LABEL_75:
        [a1 setAddTasksIntentTargetTaskListConfirmationReason:v20];
        goto LABEL_80;
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromIntent(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v3 = [v1 encodingFormat];
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = [v2 encodedIntent];
      v5 = [v4 dataUsingEncoding:4];
      v6 = INIntentCreate(0, v5);
      goto LABEL_7;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_9;
  }

  v4 = [v2 intentTypeName];
  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  v5 = [v2 encodedIntent];
  v8 = [v7 initWithBase64EncodedString:v5 options:0];
  v6 = INIntentCreate(v4, v8);

LABEL_7:
  v9 = [v6 launchId];

  if (!v9)
  {
    v10 = [v2 appIdentifier];
    v11 = [v10 bundleIdentifier];
    [v6 _setLaunchId:v11];
  }

LABEL_9:

  return v6;
}

_INPBIntent *INIntentSlotValueTransformToIntent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBIntent);
    v3 = objc_alloc_init(_INPBAppIdentifier);
    v4 = [v1 launchId];
    [(_INPBAppIdentifier *)v3 setBundleIdentifier:v4];

    [(_INPBIntent *)v2 setAppIdentifier:v3];
    [(_INPBIntent *)v2 setEncodingFormat:1];
    v5 = [v1 typeName];
    [(_INPBIntent *)v2 setIntentTypeName:v5];

    v6 = [v1 _JSONDictionaryRepresentation];
    v7 = [v6 if_JSONStringRepresentation];
    [(_INPBIntent *)v2 setEncodedIntent:v7];

    v8 = [v1 _codableDescription];
    v9 = [v8 schema];
    v10 = +[INStringLocalizer siriLocalizer];
    v11 = [v9 dictionaryRepresentationForIntent:v1 localizer:v10];

    v12 = [v11 if_JSONStringRepresentation];
    [(_INPBIntent *)v2 setEncodedIntentDefinition:v12];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromIntents(void *a1)
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

        v8 = INIntentSlotValueTransformFromIntent(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToIntents(void *a1)
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

        v8 = INIntentSlotValueTransformToIntent(*(*(&v11 + 1) + 8 * i));
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

void sub_18EB2EBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49918(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _INPBDeleteFilePermanentlyIntentReadFrom(void *a1, void *a2)
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

id INIntentSlotValueTransformFromImageValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromImageValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToImageValues(void *a1)
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

        v8 = INIntentSlotValueTransformToImageValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueRedactedImageValueFromImageValue(void *a1, uint64_t a2)
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

uint64_t _INPBBalanceAmountValueReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_INPBCurrencyAmountValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v21, a2))
          {
LABEL_50:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setCurrencyAmount:v21];
          goto LABEL_42;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(_INPBDecimalNumberValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBDecimalNumberValueReadFrom(v21, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setCustomAmount:v21];
          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBValueMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v21, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setValueMetadata:v21];
LABEL_42:

          goto LABEL_47;
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
              goto LABEL_46;
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

LABEL_46:
          [a1 setType:v20];
          goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INStartVideoCallIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7281130[a1];
  }
}

uint64_t _INPBCurrencyAmountReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBCurrencyAmountValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v13, a2))
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

uint64_t _INPBCancelWorkoutIntentReadFrom(void *a1, void *a2)
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

uint64_t _INPBSetCarLockStatusIntentReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(_INPBDataString);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

        PBReaderRecallMark();
        [a1 setCarName:v21];
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
        [a1 setLocked:v20];
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

uint64_t _INPBEventParticipantReadFrom(void *a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
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
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38[0] & 0x7F) << v14;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_57;
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

LABEL_57:
          [a1 setStatus:v20];
          goto LABEL_62;
        }

        goto LABEL_40;
      }

      v28 = objc_alloc_init(_INPBContact);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setPerson:v28];

LABEL_62:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_61;
        }
      }

      v35 = (v31 != 0) & ~[a2 hasError];
LABEL_61:
      [a1 setIsUser:v35];
      goto LABEL_62;
    }

    if (v13 == 4)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v38[0] & 0x7F) << v21;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_59;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_59:
      [a1 setIsEventOrganizer:v27];
      goto LABEL_62;
    }

LABEL_40:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPlayMediaIntentResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_INPBDictionary);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDictionaryReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setNowPlayingInfo:v13];
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

__CFString *INCreateNoteIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E72811B8[a1];
  }
}

id INIntentSlotValueTransformFromSpeed(void *a1)
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

        v6 = INIntentSlotValueTransformFromSpeedValue(*(*(&v10 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromSpeedValue(void *a1)
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
      goto LABEL_14;
    }

    v4 = [v2 unit];
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v5 = [MEMORY[0x1E696B078] milesPerHour];
      }

      else
      {
        if (v4 != 4)
        {
          goto LABEL_14;
        }

        v5 = [MEMORY[0x1E696B078] knots];
      }
    }

    else
    {
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v5 = [MEMORY[0x1E696B078] kilometersPerHour];
          goto LABEL_12;
        }

LABEL_14:
        v9 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315138;
          v13 = "INIntentSlotValueTransformFromSpeedValue";
          _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s _INPBSpeedValue must contain a unit. Otherwise ambiguous magnitude for NSMeasurement", &v12, 0xCu);
        }

        goto LABEL_16;
      }

      v5 = [MEMORY[0x1E696B078] metersPerSecond];
    }

LABEL_12:
    v6 = v5;
    if (v5)
    {
      v7 = objc_alloc(MEMORY[0x1E696AD28]);
      [v2 magnitude];
      v8 = [v7 initWithDoubleValue:v6 unit:?];

      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_16:
  v8 = 0;
LABEL_17:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

_INPBSpeed *INIntentSlotValueTransformToSpeed(void *a1)
{
  v1 = INIntentSlotValueTransformToSpeedValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBSpeed);
    [(_INPBSpeed *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBSpeedValue *INIntentSlotValueTransformToSpeedValue(void *a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_13;
  }

  v1 = a1;
  v2 = objc_alloc_init(_INPBSpeedValue);
  v3 = [v1 unit];
  [v1 doubleValue];
  v5 = v4;

  [(_INPBSpeedValue *)v2 setMagnitude:v5];
  v6 = [MEMORY[0x1E696B078] kilometersPerHour];
  v7 = [v3 isEqual:v6];

  if (v7)
  {
    v8 = 2;
LABEL_11:
    [(_INPBSpeedValue *)v2 setUnit:v8];
    goto LABEL_12;
  }

  v9 = [MEMORY[0x1E696B078] knots];
  v10 = [v3 isEqual:v9];

  if (v10)
  {
    v8 = 4;
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E696B078] metersPerSecond];
  v12 = [v3 isEqual:v11];

  if (v12)
  {
    v8 = 1;
    goto LABEL_11;
  }

  v13 = [MEMORY[0x1E696B078] milesPerHour];
  v14 = [v3 isEqual:v13];

  if (v14)
  {
    v8 = 3;
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:

  return v2;
}

id INIntentSlotValueTransformFromSpeedValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromSpeedValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromSpeeds(void *a1)
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

        v8 = INIntentSlotValueTransformFromSpeed(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToSpeedValues(void *a1)
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

        v8 = INIntentSlotValueTransformToSpeedValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueTransformToSpeeds(void *a1)
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

        v8 = INIntentSlotValueTransformToSpeed(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueRedactedValueFromSpeedValue(void *a1, uint64_t a2)
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

_INPBSpeed *INIntentSlotValueRedactedSpeedFromSpeed(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBSpeed);
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

          v13 = INIntentSlotValueRedactedValueFromSpeedValue(*(*(&v16 + 1) + 8 * i), a2);
          if (v13)
          {
            [(_INPBSpeed *)v7 addValue:v13];
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

id INIntentSlotValueRedactedSpeedsFromSpeeds(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedSpeedFromSpeed(*(*(&v17 + 1) + 8 * i), a2, v6);
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

uint64_t _INPBScanVisualCodeIntentResponseReadFrom(uint64_t a1, void *a2)
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

__CFString *INCodableStringAttributeMetadataCapitalizationAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E72811E8[a1 - 1];
  }
}

__CFString *INSetCarLockStatusIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7281200[a1];
  }
}

id INIntentSlotValueTransformFromMass(void *a1)
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

        v6 = INIntentSlotValueTransformFromMassValue(*(*(&v10 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromMassValue(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    if ([v2 hasUnit])
    {
      switch([v2 unit])
      {
        case 1u:
          v4 = [MEMORY[0x1E696B060] kilograms];
          break;
        case 2u:
          v4 = [MEMORY[0x1E696B060] grams];
          break;
        case 3u:
          v4 = [MEMORY[0x1E696B060] decigrams];
          break;
        case 4u:
          v4 = [MEMORY[0x1E696B060] centigrams];
          break;
        case 5u:
          v4 = [MEMORY[0x1E696B060] milligrams];
          break;
        case 6u:
          v4 = [MEMORY[0x1E696B060] micrograms];
          break;
        case 7u:
          v4 = [MEMORY[0x1E696B060] nanograms];
          break;
        case 8u:
          v4 = [MEMORY[0x1E696B060] picograms];
          break;
        case 9u:
          v4 = [MEMORY[0x1E696B060] ounces];
          break;
        case 0xAu:
          v4 = [MEMORY[0x1E696B060] poundsMass];
          break;
        case 0xBu:
          v4 = [MEMORY[0x1E696B060] stones];
          break;
        case 0xCu:
          v4 = [MEMORY[0x1E696B060] metricTons];
          break;
        case 0xDu:
          v4 = [MEMORY[0x1E696B060] shortTons];
          break;
        case 0xEu:
          v4 = [MEMORY[0x1E696B060] carats];
          break;
        case 0xFu:
          v4 = [MEMORY[0x1E696B060] ouncesTroy];
          break;
        case 0x10u:
          v4 = [MEMORY[0x1E696B060] slugs];
          break;
        default:
          goto LABEL_22;
      }

      v5 = v4;
      if (v4)
      {
        v6 = objc_alloc(MEMORY[0x1E696AD28]);
        [v2 magnitude];
        v7 = [v6 initWithDoubleValue:v5 unit:?];

        goto LABEL_25;
      }
    }

LABEL_22:
    v8 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "INIntentSlotValueTransformFromMassValue";
      _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s _INPBMassValue must contain a unit. Otherwise ambiguous magnitude for NSMeasurement", &v11, 0xCu);
    }
  }

  v7 = 0;
LABEL_25:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

_INPBMass *INIntentSlotValueTransformToMass(void *a1)
{
  v1 = INIntentSlotValueTransformToMassValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBMass);
    [(_INPBMass *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBMassValue *INIntentSlotValueTransformToMassValue(void *a1)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_37;
  }

  v1 = a1;
  v2 = objc_alloc_init(_INPBMassValue);
  v3 = [v1 unit];
  [v1 doubleValue];
  v5 = v4;

  [(_INPBMassValue *)v2 setMagnitude:v5];
  v6 = [MEMORY[0x1E696B060] carats];
  v7 = [v3 isEqual:v6];

  if (v7)
  {
    v8 = 14;
LABEL_35:
    [(_INPBMassValue *)v2 setUnit:v8];
    goto LABEL_36;
  }

  v9 = [MEMORY[0x1E696B060] centigrams];
  v10 = [v3 isEqual:v9];

  if (v10)
  {
    v8 = 4;
    goto LABEL_35;
  }

  v11 = [MEMORY[0x1E696B060] decigrams];
  v12 = [v3 isEqual:v11];

  if (v12)
  {
    v8 = 3;
    goto LABEL_35;
  }

  v13 = [MEMORY[0x1E696B060] grams];
  v14 = [v3 isEqual:v13];

  if (v14)
  {
    v8 = 2;
    goto LABEL_35;
  }

  v15 = [MEMORY[0x1E696B060] kilograms];
  v16 = [v3 isEqual:v15];

  if (v16)
  {
    v8 = 1;
    goto LABEL_35;
  }

  v17 = [MEMORY[0x1E696B060] metricTons];
  v18 = [v3 isEqual:v17];

  if (v18)
  {
    v8 = 12;
    goto LABEL_35;
  }

  v19 = [MEMORY[0x1E696B060] micrograms];
  v20 = [v3 isEqual:v19];

  if (v20)
  {
    v8 = 6;
    goto LABEL_35;
  }

  v21 = [MEMORY[0x1E696B060] milligrams];
  v22 = [v3 isEqual:v21];

  if (v22)
  {
    v8 = 5;
    goto LABEL_35;
  }

  v23 = [MEMORY[0x1E696B060] nanograms];
  v24 = [v3 isEqual:v23];

  if (v24)
  {
    v8 = 7;
    goto LABEL_35;
  }

  v25 = [MEMORY[0x1E696B060] ounces];
  v26 = [v3 isEqual:v25];

  if (v26)
  {
    v8 = 9;
    goto LABEL_35;
  }

  v27 = [MEMORY[0x1E696B060] ouncesTroy];
  v28 = [v3 isEqual:v27];

  if (v28)
  {
    v8 = 15;
    goto LABEL_35;
  }

  v29 = [MEMORY[0x1E696B060] picograms];
  v30 = [v3 isEqual:v29];

  if (v30)
  {
    v8 = 8;
    goto LABEL_35;
  }

  v31 = [MEMORY[0x1E696B060] poundsMass];
  v32 = [v3 isEqual:v31];

  if (v32)
  {
    v8 = 10;
    goto LABEL_35;
  }

  v33 = [MEMORY[0x1E696B060] shortTons];
  v34 = [v3 isEqual:v33];

  if (v34)
  {
    v8 = 13;
    goto LABEL_35;
  }

  v35 = [MEMORY[0x1E696B060] slugs];
  v36 = [v3 isEqual:v35];

  if (v36)
  {
    v8 = 16;
    goto LABEL_35;
  }

  v37 = [MEMORY[0x1E696B060] stones];
  v38 = [v3 isEqual:v37];

  if (v38)
  {
    v8 = 11;
    goto LABEL_35;
  }

LABEL_36:

LABEL_37:

  return v2;
}

id INIntentSlotValueTransformFromMassValues(void *a1)
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

        v8 = INIntentSlotValueTransformFromMassValue(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformFromMasses(void *a1)
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

        v8 = INIntentSlotValueTransformFromMass(*(*(&v12 + 1) + 8 * i));
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

id INIntentSlotValueTransformToMassValues(void *a1)
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

        v8 = INIntentSlotValueTransformToMassValue(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueTransformToMasses(void *a1)
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

        v8 = INIntentSlotValueTransformToMass(*(*(&v11 + 1) + 8 * i));
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

id INIntentSlotValueRedactedValueFromMassValue(void *a1, uint64_t a2)
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

_INPBMass *INIntentSlotValueRedactedMassFromMass(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBMass);
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

          v13 = INIntentSlotValueRedactedValueFromMassValue(*(*(&v16 + 1) + 8 * i), a2);
          if (v13)
          {
            [(_INPBMass *)v7 addValue:v13];
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

id INIntentSlotValueRedactedMassesFromMasses(void *a1, uint64_t a2, void *a3)
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

        v13 = INIntentSlotValueRedactedMassFromMass(*(*(&v17 + 1) + 8 * i), a2, v6);
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

uint64_t _INPBListRideOptionsIntentReadFrom(void *a1, void *a2)
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
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = objc_alloc_init(_INPBLocation);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setDropOffLocation:v14];
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

    v14 = objc_alloc_init(_INPBLocation);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setPickupLocation:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBCompressFileIntentResponseReadFrom(void *a1, void *a2)
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

void sub_18EB44930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18EB44DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18EB44F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18EB453D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54537(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _INPBCreateFileIntentResponseReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
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
              goto LABEL_64;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_64:
          [a1 setOverwrite:v35];
          goto LABEL_67;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v38 & 0x7F) << v15;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_66;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_66:
          [a1 setSuccess:v21];
          goto LABEL_67;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
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
                goto LABEL_62;
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

LABEL_62:
            [a1 setEntityType:v28];
            goto LABEL_67;
          case 4:
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
LABEL_70:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setEntityName:v14];
            goto LABEL_47;
          case 5:
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_70;
            }

            PBReaderRecallMark();
            [a1 setDestinationName:v14];
LABEL_47:

            goto LABEL_67;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_67:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}
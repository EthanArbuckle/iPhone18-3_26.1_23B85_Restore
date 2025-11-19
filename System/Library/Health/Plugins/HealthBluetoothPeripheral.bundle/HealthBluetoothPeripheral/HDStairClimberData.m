@interface HDStairClimberData
- (id)_init;
- (id)allFields;
- (id)description;
- (id)generateDatums:(id)a3;
@end

@implementation HDStairClimberData

- (id)allFields
{
  stepsPerMinuteField = self->_stepsPerMinuteField;
  v10[0] = self->_floorsField;
  v10[1] = stepsPerMinuteField;
  positiveElevationGainField = self->_positiveElevationGainField;
  v10[2] = self->_averageStepRateField;
  v10[3] = positiveElevationGainField;
  totalEnergyField = self->_totalEnergyField;
  v10[4] = self->_stepCountField;
  v10[5] = totalEnergyField;
  energyPerMinuteField = self->_energyPerMinuteField;
  v10[6] = self->_energyPerHourField;
  v10[7] = energyPerMinuteField;
  metabolicEquivalentField = self->_metabolicEquivalentField;
  v10[8] = self->_heartRateField;
  v10[9] = metabolicEquivalentField;
  remainingTimeField = self->_remainingTimeField;
  v10[10] = self->_elapsedTimeField;
  v10[11] = remainingTimeField;
  v8 = [NSArray arrayWithObjects:v10 count:12];

  return v8;
}

- (id)_init
{
  v28.receiver = self;
  v28.super_class = HDStairClimberData;
  v2 = [(HDHealthServiceCharacteristic *)&v28 _init];
  if (v2)
  {
    v3 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:0 fieldLength:2 factor:1];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    [*(v2 + 2) setFlagFieldFlipped:1];
    v5 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:1 fieldLength:2 factor:1];
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:2 fieldLength:2 factor:1];
    v8 = *(v2 + 4);
    *(v2 + 4) = v7;

    v9 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:3 fieldLength:2 factor:1];
    v10 = *(v2 + 5);
    *(v2 + 5) = v9;

    v11 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:4 fieldLength:2 factor:1];
    v12 = *(v2 + 6);
    *(v2 + 6) = v11;

    v13 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:5 fieldLength:2 factor:1];
    v14 = *(v2 + 7);
    *(v2 + 7) = v13;

    v15 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:5 fieldLength:2 factor:1];
    v16 = *(v2 + 8);
    *(v2 + 8) = v15;

    v17 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:5 fieldLength:1 factor:1];
    v18 = *(v2 + 9);
    *(v2 + 9) = v17;

    v19 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:6 fieldLength:1 factor:1];
    v20 = *(v2 + 10);
    *(v2 + 10) = v19;

    v21 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:7 fieldLength:1 factor:1];
    v22 = *(v2 + 11);
    *(v2 + 11) = v21;

    v23 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:8 fieldLength:2 factor:1];
    v24 = *(v2 + 12);
    *(v2 + 12) = v23;

    v25 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:9 fieldLength:2 factor:1];
    v26 = *(v2 + 13);
    *(v2 + 13) = v25;
  }

  return v2;
}

- (id)description
{
  v26 = [(HDFitnessMachineCharacteristicField *)self->_floorsField isSet];
  if (v26)
  {
    v3 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_floorsField value]];
  }

  else
  {
    v3 = @"(null)";
  }

  v25 = [(HDFitnessMachineCharacteristicField *)self->_stepsPerMinuteField isSet];
  if (v25)
  {
    v24 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_stepsPerMinuteField value]];
  }

  else
  {
    v24 = @"(null)";
  }

  v23 = [(HDFitnessMachineCharacteristicField *)self->_averageStepRateField isSet];
  if (v23)
  {
    v31 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_averageStepRateField value]];
  }

  else
  {
    v31 = @"(null)";
  }

  v22 = [(HDFitnessMachineCharacteristicField *)self->_positiveElevationGainField isSet];
  if (v22)
  {
    v30 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_positiveElevationGainField value]];
  }

  else
  {
    v30 = @"(null)";
  }

  v21 = [(HDFitnessMachineCharacteristicField *)self->_stepCountField isSet];
  if (v21)
  {
    v4 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_stepCountField value]];
  }

  else
  {
    v4 = @"(null)";
  }

  v20 = [(HDFitnessMachineCharacteristicField *)self->_totalEnergyField isSet];
  if (v20)
  {
    v5 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_totalEnergyField value]];
  }

  else
  {
    v5 = @"(null)";
  }

  v18 = [(HDFitnessMachineCharacteristicField *)self->_energyPerHourField isSet];
  if (v18)
  {
    v29 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_energyPerHourField value]];
  }

  else
  {
    v29 = @"(null)";
  }

  v17 = [(HDFitnessMachineCharacteristicField *)self->_energyPerMinuteField isSet];
  if (v17)
  {
    v28 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_energyPerMinuteField value]];
  }

  else
  {
    v28 = @"(null)";
  }

  v16 = [(HDFitnessMachineCharacteristicField *)self->_heartRateField isSet];
  if (v16)
  {
    v27 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_heartRateField value]];
  }

  else
  {
    v27 = @"(null)";
  }

  v6 = [(HDFitnessMachineCharacteristicField *)self->_metabolicEquivalentField isSet];
  v19 = v3;
  v7 = v4;
  if (v6)
  {
    v8 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_metabolicEquivalentField value]];
  }

  else
  {
    v8 = @"(null)";
  }

  v9 = [(HDFitnessMachineCharacteristicField *)self->_elapsedTimeField isSet];
  if (v9)
  {
    v10 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_elapsedTimeField value]];
  }

  else
  {
    v10 = @"(null)";
  }

  if (![(HDFitnessMachineCharacteristicField *)self->_remainingTimeField isSet])
  {
    v12 = v24;
    v13 = v19;
    v14 = [NSString stringWithFormat:@"Stair Climber Data: floors = %@, stepsPerMinute = %@, averageStepRate = %@, positiveElevationGain = %@, stepCount = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@", v19, v24, v31, v30, v4, v5, v29, v28, v27, v8, v10, @"(null)"];
    if (!v9)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v11 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_remainingTimeField value]];
  v12 = v24;
  v13 = v19;
  v14 = [NSString stringWithFormat:@"Stair Climber Data: floors = %@, stepsPerMinute = %@, averageStepRate = %@, positiveElevationGain = %@, stepCount = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@", v19, v24, v31, v30, v7, v5, v29, v28, v27, v8, v10, v11];

  if (v9)
  {
LABEL_38:
  }

LABEL_39:
  if (v6)
  {
  }

  if (v16)
  {
  }

  if (v17)
  {
  }

  if (v18)
  {
  }

  if (v20)
  {
  }

  if (v21)
  {
  }

  if (v22)
  {
  }

  if (v23)
  {
  }

  if (v25)
  {
  }

  if (v26)
  {
  }

  return v14;
}

- (id)generateDatums:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  if ([(HDStairClimberData *)self floorsIsSet])
  {
    v6 = [HKUnit unitFromString:@"count"];
    v7 = [HKQuantity quantityWithUnit:v6 doubleValue:[(HDStairClimberData *)self floors]];

    v8 = [HDQuantityDatum alloc];
    v9 = +[NSUUID UUID];
    v10 = [v8 initWithIdentifier:v9 dateInterval:v4 resumeContext:0 quantity:v7];

    [v5 setObject:v10 forKeyedSubscript:&off_5F9D0];
  }

  if ([(HDStairClimberData *)self positiveElevationGainIsSet])
  {
    v11 = [HKUnit unitFromString:@"m"];
    v12 = [HKQuantity quantityWithUnit:v11 doubleValue:[(HDStairClimberData *)self positiveElevationGain]];

    v13 = [HDQuantityDatum alloc];
    v14 = +[NSUUID UUID];
    v15 = [v13 initWithIdentifier:v14 dateInterval:v4 resumeContext:0 quantity:v12];

    [v5 setObject:v15 forKeyedSubscript:&off_5F9E8];
  }

  if ([(HDStairClimberData *)self stepCountIsSet])
  {
    v16 = [HKUnit unitFromString:@"count"];
    v17 = [HKQuantity quantityWithUnit:v16 doubleValue:[(HDStairClimberData *)self stepCount]];

    v18 = [HDQuantityDatum alloc];
    v19 = +[NSUUID UUID];
    v20 = [v18 initWithIdentifier:v19 dateInterval:v4 resumeContext:0 quantity:v17];

    [v5 setObject:v20 forKeyedSubscript:&off_5FA00];
  }

  if ([(HDStairClimberData *)self totalEnergyIsSet])
  {
    v21 = [HKUnit unitFromString:@"kcal"];
    v22 = [HKQuantity quantityWithUnit:v21 doubleValue:[(HDStairClimberData *)self totalEnergy]];

    v23 = [HDQuantityDatum alloc];
    v24 = +[NSUUID UUID];
    v25 = [v23 initWithIdentifier:v24 dateInterval:v4 resumeContext:0 quantity:v22];

    [v5 setObject:v25 forKeyedSubscript:&off_5FA18];
  }

  if ([(HDStairClimberData *)self elapsedTimeIsSet])
  {
    v26 = [HKUnit unitFromString:@"s"];
    v27 = [HKQuantity quantityWithUnit:v26 doubleValue:[(HDStairClimberData *)self elapsedTime]];

    v28 = [HDQuantityDatum alloc];
    v29 = +[NSUUID UUID];
    v30 = [v28 initWithIdentifier:v29 dateInterval:v4 resumeContext:0 quantity:v27];

    [v5 setObject:v30 forKeyedSubscript:&off_5FA30];
  }

  return v5;
}

@end
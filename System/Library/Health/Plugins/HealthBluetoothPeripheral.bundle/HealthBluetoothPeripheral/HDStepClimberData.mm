@interface HDStepClimberData
- (id)_init;
- (id)allFields;
- (id)description;
- (id)generateDatums:(id)datums;
@end

@implementation HDStepClimberData

- (id)generateDatums:(id)datums
{
  datumsCopy = datums;
  v5 = objc_alloc_init(NSMutableDictionary);
  if ([(HDStepClimberData *)self floorsIsSet])
  {
    v6 = [HKUnit unitFromString:@"count"];
    v7 = [HKQuantity quantityWithUnit:v6 doubleValue:[(HDStepClimberData *)self floors]];

    v8 = [HDQuantityDatum alloc];
    v9 = +[NSUUID UUID];
    v10 = [v8 initWithIdentifier:v9 dateInterval:datumsCopy resumeContext:0 quantity:v7];

    [v5 setObject:v10 forKeyedSubscript:&off_5F748];
  }

  if ([(HDStepClimberData *)self stepCountIsSet])
  {
    v11 = [HKUnit unitFromString:@"count"];
    v12 = [HKQuantity quantityWithUnit:v11 doubleValue:[(HDStepClimberData *)self stepCount]];

    v13 = [HDQuantityDatum alloc];
    v14 = +[NSUUID UUID];
    v15 = [v13 initWithIdentifier:v14 dateInterval:datumsCopy resumeContext:0 quantity:v12];

    [v5 setObject:v15 forKeyedSubscript:&off_5F760];
  }

  if ([(HDStepClimberData *)self positiveElevationGainIsSet])
  {
    v16 = [HKUnit unitFromString:@"m"];
    v17 = [HKQuantity quantityWithUnit:v16 doubleValue:[(HDStepClimberData *)self positiveElevationGain]];

    v18 = [HDQuantityDatum alloc];
    v19 = +[NSUUID UUID];
    v20 = [v18 initWithIdentifier:v19 dateInterval:datumsCopy resumeContext:0 quantity:v17];

    [v5 setObject:v20 forKeyedSubscript:&off_5F778];
  }

  if ([(HDStepClimberData *)self totalEnergyIsSet])
  {
    v21 = [HKUnit unitFromString:@"kcal"];
    v22 = [HKQuantity quantityWithUnit:v21 doubleValue:[(HDStepClimberData *)self totalEnergy]];

    v23 = [HDQuantityDatum alloc];
    v24 = +[NSUUID UUID];
    v25 = [v23 initWithIdentifier:v24 dateInterval:datumsCopy resumeContext:0 quantity:v22];

    [v5 setObject:v25 forKeyedSubscript:&off_5F790];
  }

  if ([(HDStepClimberData *)self elapsedTimeIsSet])
  {
    v26 = [HKUnit unitFromString:@"s"];
    v27 = [HKQuantity quantityWithUnit:v26 doubleValue:[(HDStepClimberData *)self elapsedTime]];

    v28 = [HDQuantityDatum alloc];
    v29 = +[NSUUID UUID];
    v30 = [v28 initWithIdentifier:v29 dateInterval:datumsCopy resumeContext:0 quantity:v27];

    [v5 setObject:v30 forKeyedSubscript:&off_5F7A8];
  }

  return v5;
}

- (id)allFields
{
  stepCountField = self->_stepCountField;
  v10[0] = self->_floorsField;
  v10[1] = stepCountField;
  averageStepRateField = self->_averageStepRateField;
  v10[2] = self->_stepPerMinuteField;
  v10[3] = averageStepRateField;
  totalEnergyField = self->_totalEnergyField;
  v10[4] = self->_positiveElevationGainField;
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
  v28.super_class = HDStepClimberData;
  _init = [(HDHealthServiceCharacteristic *)&v28 _init];
  if (_init)
  {
    v3 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:0 fieldLength:2 factor:1];
    v4 = *(_init + 2);
    *(_init + 2) = v3;

    [*(_init + 2) setFlagFieldFlipped:1];
    v5 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:0 fieldLength:2 factor:1];
    v6 = *(_init + 3);
    *(_init + 3) = v5;

    [*(_init + 3) setFlagFieldFlipped:1];
    v7 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:1 fieldLength:2 factor:1];
    v8 = *(_init + 4);
    *(_init + 4) = v7;

    v9 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:2 fieldLength:2 factor:1];
    v10 = *(_init + 5);
    *(_init + 5) = v9;

    v11 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:3 fieldLength:2 factor:1];
    v12 = *(_init + 6);
    *(_init + 6) = v11;

    v13 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:4 fieldLength:2 factor:1];
    v14 = *(_init + 7);
    *(_init + 7) = v13;

    v15 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:4 fieldLength:2 factor:1];
    v16 = *(_init + 8);
    *(_init + 8) = v15;

    v17 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:4 fieldLength:1 factor:1];
    v18 = *(_init + 9);
    *(_init + 9) = v17;

    v19 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:5 fieldLength:1 factor:1];
    v20 = *(_init + 10);
    *(_init + 10) = v19;

    v21 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt8Field alloc] initWithCorrespondingFlagBit:6 fieldLength:1 factor:1];
    v22 = *(_init + 11);
    *(_init + 11) = v21;

    v23 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:7 fieldLength:2 factor:1];
    v24 = *(_init + 12);
    *(_init + 12) = v23;

    v25 = [(HDFitnessMachineCharacteristicField *)[HDFitnessMachineCharacteristicUInt16Field alloc] initWithCorrespondingFlagBit:8 fieldLength:2 factor:1];
    v26 = *(_init + 13);
    *(_init + 13) = v25;
  }

  return _init;
}

- (id)description
{
  isSet = [(HDFitnessMachineCharacteristicField *)self->_floorsField isSet];
  if (isSet)
  {
    v3 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_floorsField value]];
  }

  else
  {
    v3 = @"(null)";
  }

  isSet2 = [(HDFitnessMachineCharacteristicField *)self->_stepCountField isSet];
  if (isSet2)
  {
    v24 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_stepCountField value]];
  }

  else
  {
    v24 = @"(null)";
  }

  isSet3 = [(HDFitnessMachineCharacteristicField *)self->_stepPerMinuteField isSet];
  if (isSet3)
  {
    v31 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_stepPerMinuteField value]];
  }

  else
  {
    v31 = @"(null)";
  }

  isSet4 = [(HDFitnessMachineCharacteristicField *)self->_averageStepRateField isSet];
  if (isSet4)
  {
    v30 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_averageStepRateField value]];
  }

  else
  {
    v30 = @"(null)";
  }

  isSet5 = [(HDFitnessMachineCharacteristicField *)self->_positiveElevationGainField isSet];
  if (isSet5)
  {
    v4 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_positiveElevationGainField value]];
  }

  else
  {
    v4 = @"(null)";
  }

  isSet6 = [(HDFitnessMachineCharacteristicField *)self->_totalEnergyField isSet];
  if (isSet6)
  {
    v5 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_totalEnergyField value]];
  }

  else
  {
    v5 = @"(null)";
  }

  isSet7 = [(HDFitnessMachineCharacteristicField *)self->_energyPerHourField isSet];
  if (isSet7)
  {
    v29 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_energyPerHourField value]];
  }

  else
  {
    v29 = @"(null)";
  }

  isSet8 = [(HDFitnessMachineCharacteristicField *)self->_energyPerMinuteField isSet];
  if (isSet8)
  {
    v28 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_energyPerMinuteField value]];
  }

  else
  {
    v28 = @"(null)";
  }

  isSet9 = [(HDFitnessMachineCharacteristicField *)self->_heartRateField isSet];
  if (isSet9)
  {
    v27 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_heartRateField value]];
  }

  else
  {
    v27 = @"(null)";
  }

  isSet10 = [(HDFitnessMachineCharacteristicField *)self->_metabolicEquivalentField isSet];
  v19 = v3;
  v7 = v4;
  if (isSet10)
  {
    v8 = [NSNumber numberWithUnsignedChar:[(HDFitnessMachineCharacteristicUInt8Field *)self->_metabolicEquivalentField value]];
  }

  else
  {
    v8 = @"(null)";
  }

  isSet11 = [(HDFitnessMachineCharacteristicField *)self->_elapsedTimeField isSet];
  if (isSet11)
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
    v14 = [NSString stringWithFormat:@"Step Climber Data: floors = %@, stepCount = %@, stepPerMinute = %@, averageStepRate = %@, positiveElevationGain = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@", v19, v24, v31, v30, v4, v5, v29, v28, v27, v8, v10, @"(null)"];
    if (!isSet11)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v11 = [NSNumber numberWithUnsignedShort:[(HDFitnessMachineCharacteristicUInt16Field *)self->_remainingTimeField value]];
  v12 = v24;
  v13 = v19;
  v14 = [NSString stringWithFormat:@"Step Climber Data: floors = %@, stepCount = %@, stepPerMinute = %@, averageStepRate = %@, positiveElevationGain = %@, totalEnergy = %@, energyPerHour = %@, energyPerMinute = %@, heartRate = %@, metabolicEquivalent = %@, elapsedTime = %@, remainingTime = %@", v19, v24, v31, v30, v7, v5, v29, v28, v27, v8, v10, v11];

  if (isSet11)
  {
LABEL_38:
  }

LABEL_39:
  if (isSet10)
  {
  }

  if (isSet9)
  {
  }

  if (isSet8)
  {
  }

  if (isSet7)
  {
  }

  if (isSet6)
  {
  }

  if (isSet5)
  {
  }

  if (isSet4)
  {
  }

  if (isSet3)
  {
  }

  if (isSet2)
  {
  }

  if (isSet)
  {
  }

  return v14;
}

@end
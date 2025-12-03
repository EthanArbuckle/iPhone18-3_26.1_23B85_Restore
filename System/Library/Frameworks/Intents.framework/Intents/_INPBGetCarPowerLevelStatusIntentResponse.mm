@interface _INPBGetCarPowerLevelStatusIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBGetCarPowerLevelStatusIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsActiveConnector:(id)connector;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setActiveConnector:(int)connector;
- (void)setCarIdentifier:(id)identifier;
- (void)setHasCharging:(BOOL)charging;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetCarPowerLevelStatusIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    activeConnector = [(_INPBGetCarPowerLevelStatusIntentResponse *)self activeConnector];
    if ((activeConnector - 2) >= 0xA)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", activeConnector];
    }

    else
    {
      v5 = off_1E727ED88[(activeConnector - 2)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"activeConnector"];
  }

  if (self->_carIdentifier)
  {
    carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
    v7 = [carIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"carIdentifier"];
  }

  chargePercentRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
  dictionaryRepresentation = [chargePercentRemaining dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"chargePercentRemaining"];

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBGetCarPowerLevelStatusIntentResponse charging](self, "charging")}];
    [dictionary setObject:v10 forKeyedSubscript:@"charging"];
  }

  chargingFormulaArguments = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
  dictionaryRepresentation2 = [chargingFormulaArguments dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"chargingFormulaArguments"];

  consumptionFormulaArguments = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
  dictionaryRepresentation3 = [consumptionFormulaArguments dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"consumptionFormulaArguments"];

  currentBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
  dictionaryRepresentation4 = [currentBatteryCapacity dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"currentBatteryCapacity"];

  dateOfLastStateUpdate = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
  dictionaryRepresentation5 = [dateOfLastStateUpdate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"dateOfLastStateUpdate"];

  distanceRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
  dictionaryRepresentation6 = [distanceRemaining dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"distanceRemaining"];

  distanceRemainingElectric = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
  dictionaryRepresentation7 = [distanceRemainingElectric dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"distanceRemainingElectric"];

  distanceRemainingFuel = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
  dictionaryRepresentation8 = [distanceRemainingFuel dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"distanceRemainingFuel"];

  fuelPercentRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
  dictionaryRepresentation9 = [fuelPercentRemaining dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"fuelPercentRemaining"];

  maximumBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
  dictionaryRepresentation10 = [maximumBatteryCapacity dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"maximumBatteryCapacity"];

  maximumDistance = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
  dictionaryRepresentation11 = [maximumDistance dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"maximumDistance"];

  maximumDistanceElectric = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
  dictionaryRepresentation12 = [maximumDistanceElectric dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"maximumDistanceElectric"];

  maximumDistanceFuel = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
  dictionaryRepresentation13 = [maximumDistanceFuel dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"maximumDistanceFuel"];

  minimumBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
  dictionaryRepresentation14 = [minimumBatteryCapacity dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"minimumBatteryCapacity"];

  minutesToFull = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
  dictionaryRepresentation15 = [minutesToFull dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"minutesToFull"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    v3 = 2654435761 * self->_activeConnector;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_carIdentifier hash];
  v5 = [(_INPBDouble *)self->_chargePercentRemaining hash];
  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    v6 = 2654435761 * self->_charging;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(_INPBJSONDictionary *)self->_chargingFormulaArguments hash];
  v9 = v8 ^ [(_INPBJSONDictionary *)self->_consumptionFormulaArguments hash];
  v10 = v7 ^ v9 ^ [(_INPBEnergy *)self->_currentBatteryCapacity hash];
  v11 = [(_INPBDateTime *)self->_dateOfLastStateUpdate hash];
  v12 = v11 ^ [(_INPBDistance *)self->_distanceRemaining hash];
  v13 = v12 ^ [(_INPBDistance *)self->_distanceRemainingElectric hash];
  v14 = v10 ^ v13 ^ [(_INPBDistance *)self->_distanceRemainingFuel hash];
  v15 = [(_INPBDouble *)self->_fuelPercentRemaining hash];
  v16 = v15 ^ [(_INPBEnergy *)self->_maximumBatteryCapacity hash];
  v17 = v16 ^ [(_INPBDistance *)self->_maximumDistance hash];
  v18 = v17 ^ [(_INPBDistance *)self->_maximumDistanceElectric hash];
  v19 = v14 ^ v18 ^ [(_INPBDistance *)self->_maximumDistanceFuel hash];
  v20 = [(_INPBEnergy *)self->_minimumBatteryCapacity hash];
  return v19 ^ v20 ^ [(_INPBInteger *)self->_minutesToFull hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_90;
  }

  hasActiveConnector = [(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector];
  if (hasActiveConnector != [equalCopy hasActiveConnector])
  {
    goto LABEL_90;
  }

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    if ([equalCopy hasActiveConnector])
    {
      activeConnector = self->_activeConnector;
      if (activeConnector != [equalCopy activeConnector])
      {
        goto LABEL_90;
      }
    }
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
  carIdentifier2 = [equalCopy carIdentifier];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  carIdentifier3 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
  if (carIdentifier3)
  {
    v10 = carIdentifier3;
    carIdentifier4 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
    carIdentifier5 = [equalCopy carIdentifier];
    v13 = [carIdentifier4 isEqual:carIdentifier5];

    if (!v13)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
  carIdentifier2 = [equalCopy chargePercentRemaining];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  chargePercentRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
  if (chargePercentRemaining)
  {
    v15 = chargePercentRemaining;
    chargePercentRemaining2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
    chargePercentRemaining3 = [equalCopy chargePercentRemaining];
    v18 = [chargePercentRemaining2 isEqual:chargePercentRemaining3];

    if (!v18)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  hasCharging = [(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging];
  if (hasCharging != [equalCopy hasCharging])
  {
    goto LABEL_90;
  }

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    if ([equalCopy hasCharging])
    {
      charging = self->_charging;
      if (charging != [equalCopy charging])
      {
        goto LABEL_90;
      }
    }
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
  carIdentifier2 = [equalCopy chargingFormulaArguments];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  chargingFormulaArguments = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
  if (chargingFormulaArguments)
  {
    v22 = chargingFormulaArguments;
    chargingFormulaArguments2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
    chargingFormulaArguments3 = [equalCopy chargingFormulaArguments];
    v25 = [chargingFormulaArguments2 isEqual:chargingFormulaArguments3];

    if (!v25)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
  carIdentifier2 = [equalCopy consumptionFormulaArguments];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  consumptionFormulaArguments = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
  if (consumptionFormulaArguments)
  {
    v27 = consumptionFormulaArguments;
    consumptionFormulaArguments2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
    consumptionFormulaArguments3 = [equalCopy consumptionFormulaArguments];
    v30 = [consumptionFormulaArguments2 isEqual:consumptionFormulaArguments3];

    if (!v30)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
  carIdentifier2 = [equalCopy currentBatteryCapacity];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  currentBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
  if (currentBatteryCapacity)
  {
    v32 = currentBatteryCapacity;
    currentBatteryCapacity2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
    currentBatteryCapacity3 = [equalCopy currentBatteryCapacity];
    v35 = [currentBatteryCapacity2 isEqual:currentBatteryCapacity3];

    if (!v35)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
  carIdentifier2 = [equalCopy dateOfLastStateUpdate];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  dateOfLastStateUpdate = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
  if (dateOfLastStateUpdate)
  {
    v37 = dateOfLastStateUpdate;
    dateOfLastStateUpdate2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
    dateOfLastStateUpdate3 = [equalCopy dateOfLastStateUpdate];
    v40 = [dateOfLastStateUpdate2 isEqual:dateOfLastStateUpdate3];

    if (!v40)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
  carIdentifier2 = [equalCopy distanceRemaining];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  distanceRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
  if (distanceRemaining)
  {
    v42 = distanceRemaining;
    distanceRemaining2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
    distanceRemaining3 = [equalCopy distanceRemaining];
    v45 = [distanceRemaining2 isEqual:distanceRemaining3];

    if (!v45)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
  carIdentifier2 = [equalCopy distanceRemainingElectric];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  distanceRemainingElectric = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
  if (distanceRemainingElectric)
  {
    v47 = distanceRemainingElectric;
    distanceRemainingElectric2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
    distanceRemainingElectric3 = [equalCopy distanceRemainingElectric];
    v50 = [distanceRemainingElectric2 isEqual:distanceRemainingElectric3];

    if (!v50)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
  carIdentifier2 = [equalCopy distanceRemainingFuel];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  distanceRemainingFuel = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
  if (distanceRemainingFuel)
  {
    v52 = distanceRemainingFuel;
    distanceRemainingFuel2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
    distanceRemainingFuel3 = [equalCopy distanceRemainingFuel];
    v55 = [distanceRemainingFuel2 isEqual:distanceRemainingFuel3];

    if (!v55)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
  carIdentifier2 = [equalCopy fuelPercentRemaining];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  fuelPercentRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
  if (fuelPercentRemaining)
  {
    v57 = fuelPercentRemaining;
    fuelPercentRemaining2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
    fuelPercentRemaining3 = [equalCopy fuelPercentRemaining];
    v60 = [fuelPercentRemaining2 isEqual:fuelPercentRemaining3];

    if (!v60)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
  carIdentifier2 = [equalCopy maximumBatteryCapacity];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  maximumBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
  if (maximumBatteryCapacity)
  {
    v62 = maximumBatteryCapacity;
    maximumBatteryCapacity2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
    maximumBatteryCapacity3 = [equalCopy maximumBatteryCapacity];
    v65 = [maximumBatteryCapacity2 isEqual:maximumBatteryCapacity3];

    if (!v65)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
  carIdentifier2 = [equalCopy maximumDistance];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  maximumDistance = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
  if (maximumDistance)
  {
    v67 = maximumDistance;
    maximumDistance2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
    maximumDistance3 = [equalCopy maximumDistance];
    v70 = [maximumDistance2 isEqual:maximumDistance3];

    if (!v70)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
  carIdentifier2 = [equalCopy maximumDistanceElectric];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  maximumDistanceElectric = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
  if (maximumDistanceElectric)
  {
    v72 = maximumDistanceElectric;
    maximumDistanceElectric2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
    maximumDistanceElectric3 = [equalCopy maximumDistanceElectric];
    v75 = [maximumDistanceElectric2 isEqual:maximumDistanceElectric3];

    if (!v75)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
  carIdentifier2 = [equalCopy maximumDistanceFuel];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  maximumDistanceFuel = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
  if (maximumDistanceFuel)
  {
    v77 = maximumDistanceFuel;
    maximumDistanceFuel2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
    maximumDistanceFuel3 = [equalCopy maximumDistanceFuel];
    v80 = [maximumDistanceFuel2 isEqual:maximumDistanceFuel3];

    if (!v80)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
  carIdentifier2 = [equalCopy minimumBatteryCapacity];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_89;
  }

  minimumBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
  if (minimumBatteryCapacity)
  {
    v82 = minimumBatteryCapacity;
    minimumBatteryCapacity2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
    minimumBatteryCapacity3 = [equalCopy minimumBatteryCapacity];
    v85 = [minimumBatteryCapacity2 isEqual:minimumBatteryCapacity3];

    if (!v85)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
  carIdentifier2 = [equalCopy minutesToFull];
  if ((carIdentifier != 0) != (carIdentifier2 == 0))
  {
    minutesToFull = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
    if (!minutesToFull)
    {

LABEL_93:
      v91 = 1;
      goto LABEL_91;
    }

    v87 = minutesToFull;
    minutesToFull2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
    minutesToFull3 = [equalCopy minutesToFull];
    v90 = [minutesToFull2 isEqual:minutesToFull3];

    if (v90)
    {
      goto LABEL_93;
    }
  }

  else
  {
LABEL_89:
  }

LABEL_90:
  v91 = 0;
LABEL_91:

  return v91;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetCarPowerLevelStatusIntentResponse allocWithZone:](_INPBGetCarPowerLevelStatusIntentResponse init];
  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setActiveConnector:[(_INPBGetCarPowerLevelStatusIntentResponse *)self activeConnector]];
  }

  v6 = [(NSString *)self->_carIdentifier copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setCarIdentifier:v6];

  v7 = [(_INPBDouble *)self->_chargePercentRemaining copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setChargePercentRemaining:v7];

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setCharging:[(_INPBGetCarPowerLevelStatusIntentResponse *)self charging]];
  }

  v8 = [(_INPBJSONDictionary *)self->_chargingFormulaArguments copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setChargingFormulaArguments:v8];

  v9 = [(_INPBJSONDictionary *)self->_consumptionFormulaArguments copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setConsumptionFormulaArguments:v9];

  v10 = [(_INPBEnergy *)self->_currentBatteryCapacity copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setCurrentBatteryCapacity:v10];

  v11 = [(_INPBDateTime *)self->_dateOfLastStateUpdate copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setDateOfLastStateUpdate:v11];

  v12 = [(_INPBDistance *)self->_distanceRemaining copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setDistanceRemaining:v12];

  v13 = [(_INPBDistance *)self->_distanceRemainingElectric copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setDistanceRemainingElectric:v13];

  v14 = [(_INPBDistance *)self->_distanceRemainingFuel copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setDistanceRemainingFuel:v14];

  v15 = [(_INPBDouble *)self->_fuelPercentRemaining copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setFuelPercentRemaining:v15];

  v16 = [(_INPBEnergy *)self->_maximumBatteryCapacity copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMaximumBatteryCapacity:v16];

  v17 = [(_INPBDistance *)self->_maximumDistance copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMaximumDistance:v17];

  v18 = [(_INPBDistance *)self->_maximumDistanceElectric copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMaximumDistanceElectric:v18];

  v19 = [(_INPBDistance *)self->_maximumDistanceFuel copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMaximumDistanceFuel:v19];

  v20 = [(_INPBEnergy *)self->_minimumBatteryCapacity copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMinimumBatteryCapacity:v20];

  v21 = [(_INPBInteger *)self->_minutesToFull copyWithZone:zone];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMinutesToFull:v21];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetCarPowerLevelStatusIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetCarPowerLevelStatusIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetCarPowerLevelStatusIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    activeConnector = self->_activeConnector;
    PBDataWriterWriteInt32Field();
  }

  carIdentifier = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];

  if (carIdentifier)
  {
    carIdentifier = self->_carIdentifier;
    PBDataWriterWriteStringField();
  }

  chargePercentRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];

  if (chargePercentRemaining)
  {
    chargePercentRemaining2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    charging = self->_charging;
    PBDataWriterWriteBOOLField();
  }

  chargingFormulaArguments = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];

  if (chargingFormulaArguments)
  {
    chargingFormulaArguments2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
    PBDataWriterWriteSubmessage();
  }

  consumptionFormulaArguments = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];

  if (consumptionFormulaArguments)
  {
    consumptionFormulaArguments2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
    PBDataWriterWriteSubmessage();
  }

  currentBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];

  if (currentBatteryCapacity)
  {
    currentBatteryCapacity2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
    PBDataWriterWriteSubmessage();
  }

  dateOfLastStateUpdate = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];

  if (dateOfLastStateUpdate)
  {
    dateOfLastStateUpdate2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
    PBDataWriterWriteSubmessage();
  }

  distanceRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];

  if (distanceRemaining)
  {
    distanceRemaining2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
    PBDataWriterWriteSubmessage();
  }

  distanceRemainingElectric = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];

  if (distanceRemainingElectric)
  {
    distanceRemainingElectric2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
    PBDataWriterWriteSubmessage();
  }

  distanceRemainingFuel = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];

  if (distanceRemainingFuel)
  {
    distanceRemainingFuel2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
    PBDataWriterWriteSubmessage();
  }

  fuelPercentRemaining = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];

  if (fuelPercentRemaining)
  {
    fuelPercentRemaining2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
    PBDataWriterWriteSubmessage();
  }

  maximumBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];

  if (maximumBatteryCapacity)
  {
    maximumBatteryCapacity2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
    PBDataWriterWriteSubmessage();
  }

  maximumDistance = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];

  if (maximumDistance)
  {
    maximumDistance2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
    PBDataWriterWriteSubmessage();
  }

  maximumDistanceElectric = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];

  if (maximumDistanceElectric)
  {
    maximumDistanceElectric2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
    PBDataWriterWriteSubmessage();
  }

  maximumDistanceFuel = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];

  if (maximumDistanceFuel)
  {
    maximumDistanceFuel2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
    PBDataWriterWriteSubmessage();
  }

  minimumBatteryCapacity = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];

  if (minimumBatteryCapacity)
  {
    minimumBatteryCapacity2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
    PBDataWriterWriteSubmessage();
  }

  minutesToFull = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];

  v37 = toCopy;
  if (minutesToFull)
  {
    minutesToFull2 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
    PBDataWriterWriteSubmessage();

    v37 = toCopy;
  }
}

- (void)setHasCharging:(BOOL)charging
{
  if (charging)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setCarIdentifier:(id)identifier
{
  v4 = [identifier copy];
  carIdentifier = self->_carIdentifier;
  self->_carIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, carIdentifier);
}

- (int)StringAsActiveConnector:(id)connector
{
  connectorCopy = connector;
  if ([connectorCopy isEqualToString:@"J1772"])
  {
    v4 = 2;
  }

  else if ([connectorCopy isEqualToString:@"C_C_S1"])
  {
    v4 = 3;
  }

  else if ([connectorCopy isEqualToString:@"C_C_S2"])
  {
    v4 = 4;
  }

  else if ([connectorCopy isEqualToString:@"CHAdeMO"])
  {
    v4 = 5;
  }

  else if ([connectorCopy isEqualToString:@"G_B_T_A_C"])
  {
    v4 = 6;
  }

  else if ([connectorCopy isEqualToString:@"G_B_T_D_C"])
  {
    v4 = 7;
  }

  else if ([connectorCopy isEqualToString:@"Tesla"])
  {
    v4 = 8;
  }

  else if ([connectorCopy isEqualToString:@"Mennekes"])
  {
    v4 = 9;
  }

  else if ([connectorCopy isEqualToString:@"N_A_C_S_D_C"])
  {
    v4 = 10;
  }

  else if ([connectorCopy isEqualToString:@"N_A_C_S_A_C"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setActiveConnector:(int)connector
{
  has = self->_has;
  if (connector == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_activeConnector = connector;
  }
}

@end
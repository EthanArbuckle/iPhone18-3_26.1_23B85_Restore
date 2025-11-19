@interface _INPBGetCarPowerLevelStatusIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBGetCarPowerLevelStatusIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsActiveConnector:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setActiveConnector:(int)a3;
- (void)setCarIdentifier:(id)a3;
- (void)setHasCharging:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetCarPowerLevelStatusIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    v4 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self activeConnector];
    if ((v4 - 2) >= 0xA)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E727ED88[(v4 - 2)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"activeConnector"];
  }

  if (self->_carIdentifier)
  {
    v6 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"carIdentifier"];
  }

  v8 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"chargePercentRemaining"];

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBGetCarPowerLevelStatusIntentResponse charging](self, "charging")}];
    [v3 setObject:v10 forKeyedSubscript:@"charging"];
  }

  v11 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"chargingFormulaArguments"];

  v13 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"consumptionFormulaArguments"];

  v15 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"currentBatteryCapacity"];

  v17 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"dateOfLastStateUpdate"];

  v19 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"distanceRemaining"];

  v21 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"distanceRemainingElectric"];

  v23 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
  v24 = [v23 dictionaryRepresentation];
  [v3 setObject:v24 forKeyedSubscript:@"distanceRemainingFuel"];

  v25 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
  v26 = [v25 dictionaryRepresentation];
  [v3 setObject:v26 forKeyedSubscript:@"fuelPercentRemaining"];

  v27 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
  v28 = [v27 dictionaryRepresentation];
  [v3 setObject:v28 forKeyedSubscript:@"maximumBatteryCapacity"];

  v29 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
  v30 = [v29 dictionaryRepresentation];
  [v3 setObject:v30 forKeyedSubscript:@"maximumDistance"];

  v31 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
  v32 = [v31 dictionaryRepresentation];
  [v3 setObject:v32 forKeyedSubscript:@"maximumDistanceElectric"];

  v33 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
  v34 = [v33 dictionaryRepresentation];
  [v3 setObject:v34 forKeyedSubscript:@"maximumDistanceFuel"];

  v35 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
  v36 = [v35 dictionaryRepresentation];
  [v3 setObject:v36 forKeyedSubscript:@"minimumBatteryCapacity"];

  v37 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
  v38 = [v37 dictionaryRepresentation];
  [v3 setObject:v38 forKeyedSubscript:@"minutesToFull"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_90;
  }

  v5 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector];
  if (v5 != [v4 hasActiveConnector])
  {
    goto LABEL_90;
  }

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    if ([v4 hasActiveConnector])
    {
      activeConnector = self->_activeConnector;
      if (activeConnector != [v4 activeConnector])
      {
        goto LABEL_90;
      }
    }
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
  v8 = [v4 carIdentifier];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v9 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];
    v12 = [v4 carIdentifier];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
  v8 = [v4 chargePercentRemaining];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v14 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
    v17 = [v4 chargePercentRemaining];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v19 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging];
  if (v19 != [v4 hasCharging])
  {
    goto LABEL_90;
  }

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    if ([v4 hasCharging])
    {
      charging = self->_charging;
      if (charging != [v4 charging])
      {
        goto LABEL_90;
      }
    }
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
  v8 = [v4 chargingFormulaArguments];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v21 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
    v24 = [v4 chargingFormulaArguments];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
  v8 = [v4 consumptionFormulaArguments];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v26 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
    v29 = [v4 consumptionFormulaArguments];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
  v8 = [v4 currentBatteryCapacity];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v31 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
  if (v31)
  {
    v32 = v31;
    v33 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
    v34 = [v4 currentBatteryCapacity];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
  v8 = [v4 dateOfLastStateUpdate];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v36 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
  if (v36)
  {
    v37 = v36;
    v38 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
    v39 = [v4 dateOfLastStateUpdate];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
  v8 = [v4 distanceRemaining];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v41 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
  if (v41)
  {
    v42 = v41;
    v43 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
    v44 = [v4 distanceRemaining];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
  v8 = [v4 distanceRemainingElectric];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v46 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
  if (v46)
  {
    v47 = v46;
    v48 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
    v49 = [v4 distanceRemainingElectric];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
  v8 = [v4 distanceRemainingFuel];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v51 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
  if (v51)
  {
    v52 = v51;
    v53 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
    v54 = [v4 distanceRemainingFuel];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
  v8 = [v4 fuelPercentRemaining];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v56 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
  if (v56)
  {
    v57 = v56;
    v58 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
    v59 = [v4 fuelPercentRemaining];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
  v8 = [v4 maximumBatteryCapacity];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v61 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
  if (v61)
  {
    v62 = v61;
    v63 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
    v64 = [v4 maximumBatteryCapacity];
    v65 = [v63 isEqual:v64];

    if (!v65)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
  v8 = [v4 maximumDistance];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v66 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
  if (v66)
  {
    v67 = v66;
    v68 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
    v69 = [v4 maximumDistance];
    v70 = [v68 isEqual:v69];

    if (!v70)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
  v8 = [v4 maximumDistanceElectric];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v71 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
  if (v71)
  {
    v72 = v71;
    v73 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
    v74 = [v4 maximumDistanceElectric];
    v75 = [v73 isEqual:v74];

    if (!v75)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
  v8 = [v4 maximumDistanceFuel];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v76 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
  if (v76)
  {
    v77 = v76;
    v78 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
    v79 = [v4 maximumDistanceFuel];
    v80 = [v78 isEqual:v79];

    if (!v80)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
  v8 = [v4 minimumBatteryCapacity];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_89;
  }

  v81 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
  if (v81)
  {
    v82 = v81;
    v83 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
    v84 = [v4 minimumBatteryCapacity];
    v85 = [v83 isEqual:v84];

    if (!v85)
    {
      goto LABEL_90;
    }
  }

  else
  {
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
  v8 = [v4 minutesToFull];
  if ((v7 != 0) != (v8 == 0))
  {
    v86 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
    if (!v86)
    {

LABEL_93:
      v91 = 1;
      goto LABEL_91;
    }

    v87 = v86;
    v88 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
    v89 = [v4 minutesToFull];
    v90 = [v88 isEqual:v89];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBGetCarPowerLevelStatusIntentResponse allocWithZone:](_INPBGetCarPowerLevelStatusIntentResponse init];
  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setActiveConnector:[(_INPBGetCarPowerLevelStatusIntentResponse *)self activeConnector]];
  }

  v6 = [(NSString *)self->_carIdentifier copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setCarIdentifier:v6];

  v7 = [(_INPBDouble *)self->_chargePercentRemaining copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setChargePercentRemaining:v7];

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setCharging:[(_INPBGetCarPowerLevelStatusIntentResponse *)self charging]];
  }

  v8 = [(_INPBJSONDictionary *)self->_chargingFormulaArguments copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setChargingFormulaArguments:v8];

  v9 = [(_INPBJSONDictionary *)self->_consumptionFormulaArguments copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setConsumptionFormulaArguments:v9];

  v10 = [(_INPBEnergy *)self->_currentBatteryCapacity copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setCurrentBatteryCapacity:v10];

  v11 = [(_INPBDateTime *)self->_dateOfLastStateUpdate copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setDateOfLastStateUpdate:v11];

  v12 = [(_INPBDistance *)self->_distanceRemaining copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setDistanceRemaining:v12];

  v13 = [(_INPBDistance *)self->_distanceRemainingElectric copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setDistanceRemainingElectric:v13];

  v14 = [(_INPBDistance *)self->_distanceRemainingFuel copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setDistanceRemainingFuel:v14];

  v15 = [(_INPBDouble *)self->_fuelPercentRemaining copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setFuelPercentRemaining:v15];

  v16 = [(_INPBEnergy *)self->_maximumBatteryCapacity copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMaximumBatteryCapacity:v16];

  v17 = [(_INPBDistance *)self->_maximumDistance copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMaximumDistance:v17];

  v18 = [(_INPBDistance *)self->_maximumDistanceElectric copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMaximumDistanceElectric:v18];

  v19 = [(_INPBDistance *)self->_maximumDistanceFuel copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMaximumDistanceFuel:v19];

  v20 = [(_INPBEnergy *)self->_minimumBatteryCapacity copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMinimumBatteryCapacity:v20];

  v21 = [(_INPBInteger *)self->_minutesToFull copyWithZone:a3];
  [(_INPBGetCarPowerLevelStatusIntentResponse *)v5 setMinutesToFull:v21];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetCarPowerLevelStatusIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetCarPowerLevelStatusIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v39 = a3;
  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasActiveConnector])
  {
    activeConnector = self->_activeConnector;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self carIdentifier];

  if (v5)
  {
    carIdentifier = self->_carIdentifier;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];

  if (v7)
  {
    v8 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargePercentRemaining];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetCarPowerLevelStatusIntentResponse *)self hasCharging])
  {
    charging = self->_charging;
    PBDataWriterWriteBOOLField();
  }

  v10 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];

  if (v10)
  {
    v11 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self chargingFormulaArguments];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];

  if (v12)
  {
    v13 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self consumptionFormulaArguments];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];

  if (v14)
  {
    v15 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self currentBatteryCapacity];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];

  if (v16)
  {
    v17 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self dateOfLastStateUpdate];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];

  if (v18)
  {
    v19 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemaining];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];

  if (v20)
  {
    v21 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingElectric];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];

  if (v22)
  {
    v23 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self distanceRemainingFuel];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];

  if (v24)
  {
    v25 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self fuelPercentRemaining];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];

  if (v26)
  {
    v27 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumBatteryCapacity];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];

  if (v28)
  {
    v29 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistance];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];

  if (v30)
  {
    v31 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceElectric];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];

  if (v32)
  {
    v33 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self maximumDistanceFuel];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];

  if (v34)
  {
    v35 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minimumBatteryCapacity];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];

  v37 = v39;
  if (v36)
  {
    v38 = [(_INPBGetCarPowerLevelStatusIntentResponse *)self minutesToFull];
    PBDataWriterWriteSubmessage();

    v37 = v39;
  }
}

- (void)setHasCharging:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setCarIdentifier:(id)a3
{
  v4 = [a3 copy];
  carIdentifier = self->_carIdentifier;
  self->_carIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, carIdentifier);
}

- (int)StringAsActiveConnector:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"J1772"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"C_C_S1"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"C_C_S2"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CHAdeMO"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"G_B_T_A_C"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"G_B_T_D_C"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Tesla"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Mennekes"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"N_A_C_S_D_C"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"N_A_C_S_A_C"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setActiveConnector:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_activeConnector = a3;
  }
}

@end
@interface _INPBRideStatus
- (BOOL)isEqual:(id)a3;
- (_INPBRideStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsPhase:(id)a3;
- (unint64_t)hash;
- (void)addAdditionalActionItems:(id)a3;
- (void)addWaypoints:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAdditionalActionItems:(id)a3;
- (void)setPhase:(int)a3;
- (void)setRideIdentifier:(id)a3;
- (void)setWaypoints:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRideStatus

- (id)dictionaryRepresentation
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_additionalActionItems count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v5 = self->_additionalActionItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v52;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v52 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v51 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"additionalActionItems"];
  }

  v11 = [(_INPBRideStatus *)self completionStatus];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"completionStatus"];

  v13 = [(_INPBRideStatus *)self driver];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"driver"];

  v15 = [(_INPBRideStatus *)self dropOffLocation];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"dropOffLocation"];

  v17 = [(_INPBRideStatus *)self estimatedDropOffDate];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"estimatedDropOffDate"];

  v19 = [(_INPBRideStatus *)self estimatedPickupDate];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"estimatedPickupDate"];

  v21 = [(_INPBRideStatus *)self estimatedPickupEndDate];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"estimatedPickupEndDate"];

  if ([(_INPBRideStatus *)self hasPhase])
  {
    v23 = [(_INPBRideStatus *)self phase];
    v24 = v23 - 1;
    if (v23 - 1) < 7 && ((0x6Fu >> v24))
    {
      v25 = off_1E7281E88[v24];
    }

    else
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23];
    }

    [v3 setObject:v25 forKeyedSubscript:@"phase"];
  }

  v26 = [(_INPBRideStatus *)self pickupLocation];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"pickupLocation"];

  if (self->_rideIdentifier)
  {
    v28 = [(_INPBRideStatus *)self rideIdentifier];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"rideIdentifier"];
  }

  v30 = [(_INPBRideStatus *)self rideOption];
  v31 = [v30 dictionaryRepresentation];
  [v3 setObject:v31 forKeyedSubscript:@"rideOption"];

  v32 = [(_INPBRideStatus *)self scheduledPickupTime];
  v33 = [v32 dictionaryRepresentation];
  [v3 setObject:v33 forKeyedSubscript:@"scheduledPickupTime"];

  v34 = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
  v35 = [v34 dictionaryRepresentation];
  [v3 setObject:v35 forKeyedSubscript:@"userActivityForCancelingInApplication"];

  v36 = [(_INPBRideStatus *)self vehicle];
  v37 = [v36 dictionaryRepresentation];
  [v3 setObject:v37 forKeyedSubscript:@"vehicle"];

  if ([(NSArray *)self->_waypoints count])
  {
    v38 = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v39 = self->_waypoints;
    v40 = [(NSArray *)v39 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v48;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v48 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [*(*(&v47 + 1) + 8 * j) dictionaryRepresentation];
          [v38 addObject:v44];
        }

        v41 = [(NSArray *)v39 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v41);
    }

    [v3 setObject:v38 forKeyedSubscript:@"waypoints"];
  }

  v45 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_additionalActionItems hash];
  v4 = [(_INPBRideCompletionStatus *)self->_completionStatus hash];
  v5 = [(_INPBRideDriver *)self->_driver hash];
  v6 = [(_INPBLocationValue *)self->_dropOffLocation hash];
  v7 = [(_INPBTimestamp *)self->_estimatedDropOffDate hash];
  v8 = [(_INPBTimestamp *)self->_estimatedPickupDate hash];
  v9 = [(_INPBTimestamp *)self->_estimatedPickupEndDate hash];
  if ([(_INPBRideStatus *)self hasPhase])
  {
    v10 = 2654435761 * self->_phase;
  }

  else
  {
    v10 = 0;
  }

  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(_INPBLocationValue *)self->_pickupLocation hash];
  v13 = v12 ^ [(NSString *)self->_rideIdentifier hash];
  v14 = v11 ^ v13 ^ [(_INPBRideOption *)self->_rideOption hash];
  v15 = [(_INPBDateTimeRangeValue *)self->_scheduledPickupTime hash];
  v16 = v15 ^ [(_INPBUserActivity *)self->_userActivityForCancelingInApplication hash];
  v17 = v16 ^ [(_INPBRideVehicle *)self->_vehicle hash];
  return v14 ^ v17 ^ [(NSArray *)self->_waypoints hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_76;
  }

  v5 = [(_INPBRideStatus *)self additionalActionItems];
  v6 = [v4 additionalActionItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v7 = [(_INPBRideStatus *)self additionalActionItems];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRideStatus *)self additionalActionItems];
    v10 = [v4 additionalActionItems];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self completionStatus];
  v6 = [v4 completionStatus];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v12 = [(_INPBRideStatus *)self completionStatus];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRideStatus *)self completionStatus];
    v15 = [v4 completionStatus];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self driver];
  v6 = [v4 driver];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v17 = [(_INPBRideStatus *)self driver];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRideStatus *)self driver];
    v20 = [v4 driver];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self dropOffLocation];
  v6 = [v4 dropOffLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v22 = [(_INPBRideStatus *)self dropOffLocation];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBRideStatus *)self dropOffLocation];
    v25 = [v4 dropOffLocation];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self estimatedDropOffDate];
  v6 = [v4 estimatedDropOffDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v27 = [(_INPBRideStatus *)self estimatedDropOffDate];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBRideStatus *)self estimatedDropOffDate];
    v30 = [v4 estimatedDropOffDate];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self estimatedPickupDate];
  v6 = [v4 estimatedPickupDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v32 = [(_INPBRideStatus *)self estimatedPickupDate];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBRideStatus *)self estimatedPickupDate];
    v35 = [v4 estimatedPickupDate];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self estimatedPickupEndDate];
  v6 = [v4 estimatedPickupEndDate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v37 = [(_INPBRideStatus *)self estimatedPickupEndDate];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBRideStatus *)self estimatedPickupEndDate];
    v40 = [v4 estimatedPickupEndDate];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v42 = [(_INPBRideStatus *)self hasPhase];
  if (v42 != [v4 hasPhase])
  {
    goto LABEL_76;
  }

  if ([(_INPBRideStatus *)self hasPhase])
  {
    if ([v4 hasPhase])
    {
      phase = self->_phase;
      if (phase != [v4 phase])
      {
        goto LABEL_76;
      }
    }
  }

  v5 = [(_INPBRideStatus *)self pickupLocation];
  v6 = [v4 pickupLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v44 = [(_INPBRideStatus *)self pickupLocation];
  if (v44)
  {
    v45 = v44;
    v46 = [(_INPBRideStatus *)self pickupLocation];
    v47 = [v4 pickupLocation];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self rideIdentifier];
  v6 = [v4 rideIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v49 = [(_INPBRideStatus *)self rideIdentifier];
  if (v49)
  {
    v50 = v49;
    v51 = [(_INPBRideStatus *)self rideIdentifier];
    v52 = [v4 rideIdentifier];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self rideOption];
  v6 = [v4 rideOption];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v54 = [(_INPBRideStatus *)self rideOption];
  if (v54)
  {
    v55 = v54;
    v56 = [(_INPBRideStatus *)self rideOption];
    v57 = [v4 rideOption];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self scheduledPickupTime];
  v6 = [v4 scheduledPickupTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v59 = [(_INPBRideStatus *)self scheduledPickupTime];
  if (v59)
  {
    v60 = v59;
    v61 = [(_INPBRideStatus *)self scheduledPickupTime];
    v62 = [v4 scheduledPickupTime];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
  v6 = [v4 userActivityForCancelingInApplication];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v64 = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
  if (v64)
  {
    v65 = v64;
    v66 = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
    v67 = [v4 userActivityForCancelingInApplication];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self vehicle];
  v6 = [v4 vehicle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v69 = [(_INPBRideStatus *)self vehicle];
  if (v69)
  {
    v70 = v69;
    v71 = [(_INPBRideStatus *)self vehicle];
    v72 = [v4 vehicle];
    v73 = [v71 isEqual:v72];

    if (!v73)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideStatus *)self waypoints];
  v6 = [v4 waypoints];
  if ((v5 != 0) != (v6 == 0))
  {
    v74 = [(_INPBRideStatus *)self waypoints];
    if (!v74)
    {

LABEL_79:
      v79 = 1;
      goto LABEL_77;
    }

    v75 = v74;
    v76 = [(_INPBRideStatus *)self waypoints];
    v77 = [v4 waypoints];
    v78 = [v76 isEqual:v77];

    if (v78)
    {
      goto LABEL_79;
    }
  }

  else
  {
LABEL_75:
  }

LABEL_76:
  v79 = 0;
LABEL_77:

  return v79;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRideStatus allocWithZone:](_INPBRideStatus init];
  v6 = [(NSArray *)self->_additionalActionItems copyWithZone:a3];
  [(_INPBRideStatus *)v5 setAdditionalActionItems:v6];

  v7 = [(_INPBRideCompletionStatus *)self->_completionStatus copyWithZone:a3];
  [(_INPBRideStatus *)v5 setCompletionStatus:v7];

  v8 = [(_INPBRideDriver *)self->_driver copyWithZone:a3];
  [(_INPBRideStatus *)v5 setDriver:v8];

  v9 = [(_INPBLocationValue *)self->_dropOffLocation copyWithZone:a3];
  [(_INPBRideStatus *)v5 setDropOffLocation:v9];

  v10 = [(_INPBTimestamp *)self->_estimatedDropOffDate copyWithZone:a3];
  [(_INPBRideStatus *)v5 setEstimatedDropOffDate:v10];

  v11 = [(_INPBTimestamp *)self->_estimatedPickupDate copyWithZone:a3];
  [(_INPBRideStatus *)v5 setEstimatedPickupDate:v11];

  v12 = [(_INPBTimestamp *)self->_estimatedPickupEndDate copyWithZone:a3];
  [(_INPBRideStatus *)v5 setEstimatedPickupEndDate:v12];

  if ([(_INPBRideStatus *)self hasPhase])
  {
    [(_INPBRideStatus *)v5 setPhase:[(_INPBRideStatus *)self phase]];
  }

  v13 = [(_INPBLocationValue *)self->_pickupLocation copyWithZone:a3];
  [(_INPBRideStatus *)v5 setPickupLocation:v13];

  v14 = [(NSString *)self->_rideIdentifier copyWithZone:a3];
  [(_INPBRideStatus *)v5 setRideIdentifier:v14];

  v15 = [(_INPBRideOption *)self->_rideOption copyWithZone:a3];
  [(_INPBRideStatus *)v5 setRideOption:v15];

  v16 = [(_INPBDateTimeRangeValue *)self->_scheduledPickupTime copyWithZone:a3];
  [(_INPBRideStatus *)v5 setScheduledPickupTime:v16];

  v17 = [(_INPBUserActivity *)self->_userActivityForCancelingInApplication copyWithZone:a3];
  [(_INPBRideStatus *)v5 setUserActivityForCancelingInApplication:v17];

  v18 = [(_INPBRideVehicle *)self->_vehicle copyWithZone:a3];
  [(_INPBRideStatus *)v5 setVehicle:v18];

  v19 = [(NSArray *)self->_waypoints copyWithZone:a3];
  [(_INPBRideStatus *)v5 setWaypoints:v19];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRideStatus *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRideStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRideStatus *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = self->_additionalActionItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v47 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v7);
  }

  v11 = [(_INPBRideStatus *)self completionStatus];

  if (v11)
  {
    v12 = [(_INPBRideStatus *)self completionStatus];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBRideStatus *)self driver];

  if (v13)
  {
    v14 = [(_INPBRideStatus *)self driver];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBRideStatus *)self dropOffLocation];

  if (v15)
  {
    v16 = [(_INPBRideStatus *)self dropOffLocation];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBRideStatus *)self estimatedDropOffDate];

  if (v17)
  {
    v18 = [(_INPBRideStatus *)self estimatedDropOffDate];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_INPBRideStatus *)self estimatedPickupDate];

  if (v19)
  {
    v20 = [(_INPBRideStatus *)self estimatedPickupDate];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_INPBRideStatus *)self estimatedPickupEndDate];

  if (v21)
  {
    v22 = [(_INPBRideStatus *)self estimatedPickupEndDate];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBRideStatus *)self hasPhase])
  {
    phase = self->_phase;
    PBDataWriterWriteInt32Field();
  }

  v24 = [(_INPBRideStatus *)self pickupLocation];

  if (v24)
  {
    v25 = [(_INPBRideStatus *)self pickupLocation];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_INPBRideStatus *)self rideIdentifier];

  if (v26)
  {
    rideIdentifier = self->_rideIdentifier;
    PBDataWriterWriteStringField();
  }

  v28 = [(_INPBRideStatus *)self rideOption];

  if (v28)
  {
    v29 = [(_INPBRideStatus *)self rideOption];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(_INPBRideStatus *)self scheduledPickupTime];

  if (v30)
  {
    v31 = [(_INPBRideStatus *)self scheduledPickupTime];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(_INPBRideStatus *)self userActivityForCancelingInApplication];

  if (v32)
  {
    v33 = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(_INPBRideStatus *)self vehicle];

  if (v34)
  {
    v35 = [(_INPBRideStatus *)self vehicle];
    PBDataWriterWriteSubmessage();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = self->_waypoints;
  v37 = [(NSArray *)v36 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v44;
    do
    {
      v40 = 0;
      do
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v43 + 1) + 8 * v40);
        PBDataWriterWriteSubmessage();
        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSArray *)v36 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v38);
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)addWaypoints:(id)a3
{
  v4 = a3;
  waypoints = self->_waypoints;
  v8 = v4;
  if (!waypoints)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_waypoints;
    self->_waypoints = v6;

    v4 = v8;
    waypoints = self->_waypoints;
  }

  [(NSArray *)waypoints addObject:v4];
}

- (void)setWaypoints:(id)a3
{
  v4 = [a3 mutableCopy];
  waypoints = self->_waypoints;
  self->_waypoints = v4;

  MEMORY[0x1EEE66BB8](v4, waypoints);
}

- (void)setRideIdentifier:(id)a3
{
  v4 = [a3 copy];
  rideIdentifier = self->_rideIdentifier;
  self->_rideIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, rideIdentifier);
}

- (int)StringAsPhase:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RECEIVED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONFIRMED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ONGOING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"APPROACHING_PICKUP"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PICKUP"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setPhase:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_phase = a3;
  }
}

- (void)addAdditionalActionItems:(id)a3
{
  v4 = a3;
  additionalActionItems = self->_additionalActionItems;
  v8 = v4;
  if (!additionalActionItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_additionalActionItems;
    self->_additionalActionItems = v6;

    v4 = v8;
    additionalActionItems = self->_additionalActionItems;
  }

  [(NSArray *)additionalActionItems addObject:v4];
}

- (void)setAdditionalActionItems:(id)a3
{
  v4 = [a3 mutableCopy];
  additionalActionItems = self->_additionalActionItems;
  self->_additionalActionItems = v4;

  MEMORY[0x1EEE66BB8](v4, additionalActionItems);
}

@end
@interface _INPBRideStatus
- (BOOL)isEqual:(id)equal;
- (_INPBRideStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsPhase:(id)phase;
- (unint64_t)hash;
- (void)addAdditionalActionItems:(id)items;
- (void)addWaypoints:(id)waypoints;
- (void)encodeWithCoder:(id)coder;
- (void)setAdditionalActionItems:(id)items;
- (void)setPhase:(int)phase;
- (void)setRideIdentifier:(id)identifier;
- (void)setWaypoints:(id)waypoints;
- (void)writeTo:(id)to;
@end

@implementation _INPBRideStatus

- (id)dictionaryRepresentation
{
  v57 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_additionalActionItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v51 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"additionalActionItems"];
  }

  completionStatus = [(_INPBRideStatus *)self completionStatus];
  dictionaryRepresentation2 = [completionStatus dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"completionStatus"];

  driver = [(_INPBRideStatus *)self driver];
  dictionaryRepresentation3 = [driver dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"driver"];

  dropOffLocation = [(_INPBRideStatus *)self dropOffLocation];
  dictionaryRepresentation4 = [dropOffLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"dropOffLocation"];

  estimatedDropOffDate = [(_INPBRideStatus *)self estimatedDropOffDate];
  dictionaryRepresentation5 = [estimatedDropOffDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"estimatedDropOffDate"];

  estimatedPickupDate = [(_INPBRideStatus *)self estimatedPickupDate];
  dictionaryRepresentation6 = [estimatedPickupDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"estimatedPickupDate"];

  estimatedPickupEndDate = [(_INPBRideStatus *)self estimatedPickupEndDate];
  dictionaryRepresentation7 = [estimatedPickupEndDate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"estimatedPickupEndDate"];

  if ([(_INPBRideStatus *)self hasPhase])
  {
    phase = [(_INPBRideStatus *)self phase];
    v24 = phase - 1;
    if (phase - 1) < 7 && ((0x6Fu >> v24))
    {
      v25 = off_1E7281E88[v24];
    }

    else
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", phase];
    }

    [dictionary setObject:v25 forKeyedSubscript:@"phase"];
  }

  pickupLocation = [(_INPBRideStatus *)self pickupLocation];
  dictionaryRepresentation8 = [pickupLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"pickupLocation"];

  if (self->_rideIdentifier)
  {
    rideIdentifier = [(_INPBRideStatus *)self rideIdentifier];
    v29 = [rideIdentifier copy];
    [dictionary setObject:v29 forKeyedSubscript:@"rideIdentifier"];
  }

  rideOption = [(_INPBRideStatus *)self rideOption];
  dictionaryRepresentation9 = [rideOption dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"rideOption"];

  scheduledPickupTime = [(_INPBRideStatus *)self scheduledPickupTime];
  dictionaryRepresentation10 = [scheduledPickupTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"scheduledPickupTime"];

  userActivityForCancelingInApplication = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
  dictionaryRepresentation11 = [userActivityForCancelingInApplication dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"userActivityForCancelingInApplication"];

  vehicle = [(_INPBRideStatus *)self vehicle];
  dictionaryRepresentation12 = [vehicle dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"vehicle"];

  if ([(NSArray *)self->_waypoints count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation13 = [*(*(&v47 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation13];
        }

        v41 = [(NSArray *)v39 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v41);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"waypoints"];
  }

  v45 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_76;
  }

  additionalActionItems = [(_INPBRideStatus *)self additionalActionItems];
  additionalActionItems2 = [equalCopy additionalActionItems];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  additionalActionItems3 = [(_INPBRideStatus *)self additionalActionItems];
  if (additionalActionItems3)
  {
    v8 = additionalActionItems3;
    additionalActionItems4 = [(_INPBRideStatus *)self additionalActionItems];
    additionalActionItems5 = [equalCopy additionalActionItems];
    v11 = [additionalActionItems4 isEqual:additionalActionItems5];

    if (!v11)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self completionStatus];
  additionalActionItems2 = [equalCopy completionStatus];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  completionStatus = [(_INPBRideStatus *)self completionStatus];
  if (completionStatus)
  {
    v13 = completionStatus;
    completionStatus2 = [(_INPBRideStatus *)self completionStatus];
    completionStatus3 = [equalCopy completionStatus];
    v16 = [completionStatus2 isEqual:completionStatus3];

    if (!v16)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self driver];
  additionalActionItems2 = [equalCopy driver];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  driver = [(_INPBRideStatus *)self driver];
  if (driver)
  {
    v18 = driver;
    driver2 = [(_INPBRideStatus *)self driver];
    driver3 = [equalCopy driver];
    v21 = [driver2 isEqual:driver3];

    if (!v21)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self dropOffLocation];
  additionalActionItems2 = [equalCopy dropOffLocation];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  dropOffLocation = [(_INPBRideStatus *)self dropOffLocation];
  if (dropOffLocation)
  {
    v23 = dropOffLocation;
    dropOffLocation2 = [(_INPBRideStatus *)self dropOffLocation];
    dropOffLocation3 = [equalCopy dropOffLocation];
    v26 = [dropOffLocation2 isEqual:dropOffLocation3];

    if (!v26)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self estimatedDropOffDate];
  additionalActionItems2 = [equalCopy estimatedDropOffDate];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  estimatedDropOffDate = [(_INPBRideStatus *)self estimatedDropOffDate];
  if (estimatedDropOffDate)
  {
    v28 = estimatedDropOffDate;
    estimatedDropOffDate2 = [(_INPBRideStatus *)self estimatedDropOffDate];
    estimatedDropOffDate3 = [equalCopy estimatedDropOffDate];
    v31 = [estimatedDropOffDate2 isEqual:estimatedDropOffDate3];

    if (!v31)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self estimatedPickupDate];
  additionalActionItems2 = [equalCopy estimatedPickupDate];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  estimatedPickupDate = [(_INPBRideStatus *)self estimatedPickupDate];
  if (estimatedPickupDate)
  {
    v33 = estimatedPickupDate;
    estimatedPickupDate2 = [(_INPBRideStatus *)self estimatedPickupDate];
    estimatedPickupDate3 = [equalCopy estimatedPickupDate];
    v36 = [estimatedPickupDate2 isEqual:estimatedPickupDate3];

    if (!v36)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self estimatedPickupEndDate];
  additionalActionItems2 = [equalCopy estimatedPickupEndDate];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  estimatedPickupEndDate = [(_INPBRideStatus *)self estimatedPickupEndDate];
  if (estimatedPickupEndDate)
  {
    v38 = estimatedPickupEndDate;
    estimatedPickupEndDate2 = [(_INPBRideStatus *)self estimatedPickupEndDate];
    estimatedPickupEndDate3 = [equalCopy estimatedPickupEndDate];
    v41 = [estimatedPickupEndDate2 isEqual:estimatedPickupEndDate3];

    if (!v41)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  hasPhase = [(_INPBRideStatus *)self hasPhase];
  if (hasPhase != [equalCopy hasPhase])
  {
    goto LABEL_76;
  }

  if ([(_INPBRideStatus *)self hasPhase])
  {
    if ([equalCopy hasPhase])
    {
      phase = self->_phase;
      if (phase != [equalCopy phase])
      {
        goto LABEL_76;
      }
    }
  }

  additionalActionItems = [(_INPBRideStatus *)self pickupLocation];
  additionalActionItems2 = [equalCopy pickupLocation];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  pickupLocation = [(_INPBRideStatus *)self pickupLocation];
  if (pickupLocation)
  {
    v45 = pickupLocation;
    pickupLocation2 = [(_INPBRideStatus *)self pickupLocation];
    pickupLocation3 = [equalCopy pickupLocation];
    v48 = [pickupLocation2 isEqual:pickupLocation3];

    if (!v48)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self rideIdentifier];
  additionalActionItems2 = [equalCopy rideIdentifier];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  rideIdentifier = [(_INPBRideStatus *)self rideIdentifier];
  if (rideIdentifier)
  {
    v50 = rideIdentifier;
    rideIdentifier2 = [(_INPBRideStatus *)self rideIdentifier];
    rideIdentifier3 = [equalCopy rideIdentifier];
    v53 = [rideIdentifier2 isEqual:rideIdentifier3];

    if (!v53)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self rideOption];
  additionalActionItems2 = [equalCopy rideOption];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  rideOption = [(_INPBRideStatus *)self rideOption];
  if (rideOption)
  {
    v55 = rideOption;
    rideOption2 = [(_INPBRideStatus *)self rideOption];
    rideOption3 = [equalCopy rideOption];
    v58 = [rideOption2 isEqual:rideOption3];

    if (!v58)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self scheduledPickupTime];
  additionalActionItems2 = [equalCopy scheduledPickupTime];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  scheduledPickupTime = [(_INPBRideStatus *)self scheduledPickupTime];
  if (scheduledPickupTime)
  {
    v60 = scheduledPickupTime;
    scheduledPickupTime2 = [(_INPBRideStatus *)self scheduledPickupTime];
    scheduledPickupTime3 = [equalCopy scheduledPickupTime];
    v63 = [scheduledPickupTime2 isEqual:scheduledPickupTime3];

    if (!v63)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
  additionalActionItems2 = [equalCopy userActivityForCancelingInApplication];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  userActivityForCancelingInApplication = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
  if (userActivityForCancelingInApplication)
  {
    v65 = userActivityForCancelingInApplication;
    userActivityForCancelingInApplication2 = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
    userActivityForCancelingInApplication3 = [equalCopy userActivityForCancelingInApplication];
    v68 = [userActivityForCancelingInApplication2 isEqual:userActivityForCancelingInApplication3];

    if (!v68)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self vehicle];
  additionalActionItems2 = [equalCopy vehicle];
  if ((additionalActionItems != 0) == (additionalActionItems2 == 0))
  {
    goto LABEL_75;
  }

  vehicle = [(_INPBRideStatus *)self vehicle];
  if (vehicle)
  {
    v70 = vehicle;
    vehicle2 = [(_INPBRideStatus *)self vehicle];
    vehicle3 = [equalCopy vehicle];
    v73 = [vehicle2 isEqual:vehicle3];

    if (!v73)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  additionalActionItems = [(_INPBRideStatus *)self waypoints];
  additionalActionItems2 = [equalCopy waypoints];
  if ((additionalActionItems != 0) != (additionalActionItems2 == 0))
  {
    waypoints = [(_INPBRideStatus *)self waypoints];
    if (!waypoints)
    {

LABEL_79:
      v79 = 1;
      goto LABEL_77;
    }

    v75 = waypoints;
    waypoints2 = [(_INPBRideStatus *)self waypoints];
    waypoints3 = [equalCopy waypoints];
    v78 = [waypoints2 isEqual:waypoints3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRideStatus allocWithZone:](_INPBRideStatus init];
  v6 = [(NSArray *)self->_additionalActionItems copyWithZone:zone];
  [(_INPBRideStatus *)v5 setAdditionalActionItems:v6];

  v7 = [(_INPBRideCompletionStatus *)self->_completionStatus copyWithZone:zone];
  [(_INPBRideStatus *)v5 setCompletionStatus:v7];

  v8 = [(_INPBRideDriver *)self->_driver copyWithZone:zone];
  [(_INPBRideStatus *)v5 setDriver:v8];

  v9 = [(_INPBLocationValue *)self->_dropOffLocation copyWithZone:zone];
  [(_INPBRideStatus *)v5 setDropOffLocation:v9];

  v10 = [(_INPBTimestamp *)self->_estimatedDropOffDate copyWithZone:zone];
  [(_INPBRideStatus *)v5 setEstimatedDropOffDate:v10];

  v11 = [(_INPBTimestamp *)self->_estimatedPickupDate copyWithZone:zone];
  [(_INPBRideStatus *)v5 setEstimatedPickupDate:v11];

  v12 = [(_INPBTimestamp *)self->_estimatedPickupEndDate copyWithZone:zone];
  [(_INPBRideStatus *)v5 setEstimatedPickupEndDate:v12];

  if ([(_INPBRideStatus *)self hasPhase])
  {
    [(_INPBRideStatus *)v5 setPhase:[(_INPBRideStatus *)self phase]];
  }

  v13 = [(_INPBLocationValue *)self->_pickupLocation copyWithZone:zone];
  [(_INPBRideStatus *)v5 setPickupLocation:v13];

  v14 = [(NSString *)self->_rideIdentifier copyWithZone:zone];
  [(_INPBRideStatus *)v5 setRideIdentifier:v14];

  v15 = [(_INPBRideOption *)self->_rideOption copyWithZone:zone];
  [(_INPBRideStatus *)v5 setRideOption:v15];

  v16 = [(_INPBDateTimeRangeValue *)self->_scheduledPickupTime copyWithZone:zone];
  [(_INPBRideStatus *)v5 setScheduledPickupTime:v16];

  v17 = [(_INPBUserActivity *)self->_userActivityForCancelingInApplication copyWithZone:zone];
  [(_INPBRideStatus *)v5 setUserActivityForCancelingInApplication:v17];

  v18 = [(_INPBRideVehicle *)self->_vehicle copyWithZone:zone];
  [(_INPBRideStatus *)v5 setVehicle:v18];

  v19 = [(NSArray *)self->_waypoints copyWithZone:zone];
  [(_INPBRideStatus *)v5 setWaypoints:v19];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRideStatus *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRideStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRideStatus *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v53 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  completionStatus = [(_INPBRideStatus *)self completionStatus];

  if (completionStatus)
  {
    completionStatus2 = [(_INPBRideStatus *)self completionStatus];
    PBDataWriterWriteSubmessage();
  }

  driver = [(_INPBRideStatus *)self driver];

  if (driver)
  {
    driver2 = [(_INPBRideStatus *)self driver];
    PBDataWriterWriteSubmessage();
  }

  dropOffLocation = [(_INPBRideStatus *)self dropOffLocation];

  if (dropOffLocation)
  {
    dropOffLocation2 = [(_INPBRideStatus *)self dropOffLocation];
    PBDataWriterWriteSubmessage();
  }

  estimatedDropOffDate = [(_INPBRideStatus *)self estimatedDropOffDate];

  if (estimatedDropOffDate)
  {
    estimatedDropOffDate2 = [(_INPBRideStatus *)self estimatedDropOffDate];
    PBDataWriterWriteSubmessage();
  }

  estimatedPickupDate = [(_INPBRideStatus *)self estimatedPickupDate];

  if (estimatedPickupDate)
  {
    estimatedPickupDate2 = [(_INPBRideStatus *)self estimatedPickupDate];
    PBDataWriterWriteSubmessage();
  }

  estimatedPickupEndDate = [(_INPBRideStatus *)self estimatedPickupEndDate];

  if (estimatedPickupEndDate)
  {
    estimatedPickupEndDate2 = [(_INPBRideStatus *)self estimatedPickupEndDate];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBRideStatus *)self hasPhase])
  {
    phase = self->_phase;
    PBDataWriterWriteInt32Field();
  }

  pickupLocation = [(_INPBRideStatus *)self pickupLocation];

  if (pickupLocation)
  {
    pickupLocation2 = [(_INPBRideStatus *)self pickupLocation];
    PBDataWriterWriteSubmessage();
  }

  rideIdentifier = [(_INPBRideStatus *)self rideIdentifier];

  if (rideIdentifier)
  {
    rideIdentifier = self->_rideIdentifier;
    PBDataWriterWriteStringField();
  }

  rideOption = [(_INPBRideStatus *)self rideOption];

  if (rideOption)
  {
    rideOption2 = [(_INPBRideStatus *)self rideOption];
    PBDataWriterWriteSubmessage();
  }

  scheduledPickupTime = [(_INPBRideStatus *)self scheduledPickupTime];

  if (scheduledPickupTime)
  {
    scheduledPickupTime2 = [(_INPBRideStatus *)self scheduledPickupTime];
    PBDataWriterWriteSubmessage();
  }

  userActivityForCancelingInApplication = [(_INPBRideStatus *)self userActivityForCancelingInApplication];

  if (userActivityForCancelingInApplication)
  {
    userActivityForCancelingInApplication2 = [(_INPBRideStatus *)self userActivityForCancelingInApplication];
    PBDataWriterWriteSubmessage();
  }

  vehicle = [(_INPBRideStatus *)self vehicle];

  if (vehicle)
  {
    vehicle2 = [(_INPBRideStatus *)self vehicle];
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

- (void)addWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  waypoints = self->_waypoints;
  v8 = waypointsCopy;
  if (!waypoints)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_waypoints;
    self->_waypoints = array;

    waypointsCopy = v8;
    waypoints = self->_waypoints;
  }

  [(NSArray *)waypoints addObject:waypointsCopy];
}

- (void)setWaypoints:(id)waypoints
{
  v4 = [waypoints mutableCopy];
  waypoints = self->_waypoints;
  self->_waypoints = v4;

  MEMORY[0x1EEE66BB8](v4, waypoints);
}

- (void)setRideIdentifier:(id)identifier
{
  v4 = [identifier copy];
  rideIdentifier = self->_rideIdentifier;
  self->_rideIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, rideIdentifier);
}

- (int)StringAsPhase:(id)phase
{
  phaseCopy = phase;
  if ([phaseCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 1;
  }

  else if ([phaseCopy isEqualToString:@"CONFIRMED"])
  {
    v4 = 2;
  }

  else if ([phaseCopy isEqualToString:@"ONGOING"])
  {
    v4 = 3;
  }

  else if ([phaseCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 4;
  }

  else if ([phaseCopy isEqualToString:@"APPROACHING_PICKUP"])
  {
    v4 = 6;
  }

  else if ([phaseCopy isEqualToString:@"PICKUP"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setPhase:(int)phase
{
  has = self->_has;
  if (phase == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_phase = phase;
  }
}

- (void)addAdditionalActionItems:(id)items
{
  itemsCopy = items;
  additionalActionItems = self->_additionalActionItems;
  v8 = itemsCopy;
  if (!additionalActionItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_additionalActionItems;
    self->_additionalActionItems = array;

    itemsCopy = v8;
    additionalActionItems = self->_additionalActionItems;
  }

  [(NSArray *)additionalActionItems addObject:itemsCopy];
}

- (void)setAdditionalActionItems:(id)items
{
  v4 = [items mutableCopy];
  additionalActionItems = self->_additionalActionItems;
  self->_additionalActionItems = v4;

  MEMORY[0x1EEE66BB8](v4, additionalActionItems);
}

@end
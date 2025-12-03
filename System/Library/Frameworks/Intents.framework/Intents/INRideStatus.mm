@interface INRideStatus
- (INRideStatus)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)_injectProxiesForImages:(id)images completion:(id)completion;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
- (void)setWaypoints:(NSArray *)waypoints;
@end

@implementation INRideStatus

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  vehicle = [(INRideStatus *)self vehicle];
  [vehicle _intents_updateContainerWithCache:cacheCopy];

  driver = [(INRideStatus *)self driver];
  [driver _intents_updateContainerWithCache:cacheCopy];

  rideOption = [(INRideStatus *)self rideOption];
  [rideOption _intents_updateContainerWithCache:cacheCopy];

  completionStatus = [(INRideStatus *)self completionStatus];
  [completionStatus _intents_updateContainerWithCache:cacheCopy];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  vehicle = [(INRideStatus *)self vehicle];
  _intents_cacheableObjects = [vehicle _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects];

  driver = [(INRideStatus *)self driver];
  _intents_cacheableObjects2 = [driver _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects2];

  rideOption = [(INRideStatus *)self rideOption];
  _intents_cacheableObjects3 = [rideOption _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects3];

  userActivityForCancelingInApplication = [(INRideStatus *)self userActivityForCancelingInApplication];

  if (userActivityForCancelingInApplication)
  {
    userActivityForCancelingInApplication2 = [(INRideStatus *)self userActivityForCancelingInApplication];
    [v3 addObject:userActivityForCancelingInApplication2];
  }

  completionStatus = [(INRideStatus *)self completionStatus];
  _intents_cacheableObjects4 = [completionStatus _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects4];

  additionalActionActivities = [(INRideStatus *)self additionalActionActivities];

  if (additionalActionActivities)
  {
    additionalActionActivities2 = [(INRideStatus *)self additionalActionActivities];
    [v3 addObjectsFromArray:additionalActionActivities2];
  }

  if ([v3 count])
  {
    v16 = v3;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)_dictionaryRepresentation
{
  v50[15] = *MEMORY[0x1E69E9840];
  phase = [(INRideStatus *)self phase];
  if ((phase - 1) > 5)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E727F968[phase - 1];
  }

  v5 = v4;
  v49[0] = @"rideIdentifier";
  rideIdentifier = self->_rideIdentifier;
  v47 = rideIdentifier;
  if (!rideIdentifier)
  {
    rideIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v34 = rideIdentifier;
  v50[0] = rideIdentifier;
  v50[1] = v5;
  v49[1] = @"phase";
  v49[2] = @"completionStatus";
  completionStatus = self->_completionStatus;
  null = completionStatus;
  if (!completionStatus)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v50[2] = null;
  v49[3] = @"vehicle";
  vehicle = self->_vehicle;
  null2 = vehicle;
  if (!vehicle)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v50[3] = null2;
  v49[4] = @"driver";
  driver = self->_driver;
  null3 = driver;
  if (!driver)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v50[4] = null3;
  v49[5] = @"estimatedPickupDate";
  estimatedPickupDate = self->_estimatedPickupDate;
  null4 = estimatedPickupDate;
  if (!estimatedPickupDate)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v50[5] = null4;
  v49[6] = @"estimatedDropOffDate";
  estimatedDropOffDate = self->_estimatedDropOffDate;
  null5 = estimatedDropOffDate;
  if (!estimatedDropOffDate)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v50[6] = null5;
  v49[7] = @"estimatedPickupEndDate";
  estimatedPickupEndDate = self->_estimatedPickupEndDate;
  null6 = estimatedPickupEndDate;
  if (!estimatedPickupEndDate)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null;
  v50[7] = null6;
  v49[8] = @"scheduledPickupTime";
  scheduledPickupTime = self->_scheduledPickupTime;
  null7 = scheduledPickupTime;
  if (!scheduledPickupTime)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v5;
  v32 = null7;
  v50[8] = null7;
  v49[9] = @"pickupLocation";
  pickupLocation = self->_pickupLocation;
  null8 = pickupLocation;
  if (!pickupLocation)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null2;
  v31 = null8;
  v50[9] = null8;
  v49[10] = @"waypoints";
  waypoints = self->_waypoints;
  null9 = waypoints;
  if (!waypoints)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null3;
  v30 = null9;
  v50[10] = null9;
  v49[11] = @"dropOffLocation";
  dropOffLocation = self->_dropOffLocation;
  null10 = dropOffLocation;
  if (!dropOffLocation)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null6;
  v39 = null4;
  v28 = null10;
  v50[11] = null10;
  v49[12] = @"rideOption";
  rideOption = self->_rideOption;
  null11 = rideOption;
  if (!rideOption)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v50[12] = null11;
  v49[13] = @"userActivityForCancelingInApplication";
  userActivityForCancelingInApplication = self->_userActivityForCancelingInApplication;
  null12 = userActivityForCancelingInApplication;
  if (!userActivityForCancelingInApplication)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v50[13] = null12;
  v49[14] = @"additionalActionActivities";
  additionalActionActivities = self->_additionalActionActivities;
  null13 = additionalActionActivities;
  if (!additionalActionActivities)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v50[14] = null13;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:{15, v28}];
  if (additionalActionActivities)
  {
    if (userActivityForCancelingInApplication)
    {
      goto LABEL_34;
    }

LABEL_61:

    if (rideOption)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  if (!userActivityForCancelingInApplication)
  {
    goto LABEL_61;
  }

LABEL_34:
  if (rideOption)
  {
    goto LABEL_35;
  }

LABEL_62:

LABEL_35:
  if (!dropOffLocation)
  {
  }

  if (!waypoints)
  {
  }

  if (!pickupLocation)
  {
  }

  if (!scheduledPickupTime)
  {
  }

  if (!estimatedPickupEndDate)
  {
  }

  if (!estimatedDropOffDate)
  {
  }

  if (!estimatedPickupDate)
  {
  }

  if (!driver)
  {
  }

  if (!vehicle)
  {
  }

  if (!completionStatus)
  {
  }

  if (!v47)
  {
  }

  v26 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRideStatus;
  v6 = [(INRideStatus *)&v11 description];
  _dictionaryRepresentation = [(INRideStatus *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeObject:self->_rideIdentifier forKey:@"rideIdentifier"];
  [coderCopy encodeInteger:self->_phase forKey:@"phase"];
  [coderCopy encodeObject:self->_vehicle forKey:@"vehicle"];
  [coderCopy encodeObject:self->_driver forKey:@"driver"];
  [coderCopy encodeObject:self->_estimatedPickupDate forKey:@"estimatedPickupDate"];
  [coderCopy encodeObject:self->_estimatedDropOffDate forKey:@"estimatedDropOffDate"];
  [coderCopy encodeObject:self->_estimatedPickupEndDate forKey:@"estimatedPickupEndDate"];
  [coderCopy encodeObject:self->_pickupLocation forKey:@"pickupLocation"];
  [coderCopy encodeObject:self->_waypoints forKey:@"waypoints"];
  [coderCopy encodeObject:self->_dropOffLocation forKey:@"dropOffLocation"];
  [coderCopy encodeObject:self->_rideOption forKey:@"rideOption"];
  [coderCopy encodeObject:self->_completionStatus forKey:@"completionStatus"];
  [coderCopy encodeObject:self->_scheduledPickupTime forKey:@"scheduledPickupTime"];
  v5 = INUserActivitySerializeToData(self->_userActivityForCancelingInApplication);
  [coderCopy encodeObject:v5 forKey:@"userActivityForCancelingInApplication"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_additionalActionActivities;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = INUserActivitySerializeToData(*(*(&v15 + 1) + 8 * i));
        if (v12)
        {
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          [v9 addObject:{v12, v15}];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = [v9 copy];
  [coderCopy encodeObject:v13 forKey:@"additionalActionActivities"];

  v14 = *MEMORY[0x1E69E9840];
}

- (INRideStatus)initWithCoder:(id)coder
{
  v59[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v56.receiver = self;
  v56.super_class = INRideStatus;
  v5 = [(INRideStatus *)&v56 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rideIdentifier"];
    rideIdentifier = v5->_rideIdentifier;
    v5->_rideIdentifier = v6;

    v5->_phase = [coderCopy decodeIntegerForKey:@"phase"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicle"];
    vehicle = v5->_vehicle;
    v5->_vehicle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"driver"];
    driver = v5->_driver;
    v5->_driver = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedPickupDate"];
    estimatedPickupDate = v5->_estimatedPickupDate;
    v5->_estimatedPickupDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedDropOffDate"];
    estimatedDropOffDate = v5->_estimatedDropOffDate;
    v5->_estimatedDropOffDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedPickupEndDate"];
    estimatedPickupEndDate = v5->_estimatedPickupEndDate;
    v5->_estimatedPickupEndDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pickupLocation"];
    pickupLocation = v5->_pickupLocation;
    v5->_pickupLocation = v18;

    v20 = MEMORY[0x1E695DFD8];
    v59[0] = objc_opt_class();
    v59[1] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"waypoints"];
    waypoints = v5->_waypoints;
    v5->_waypoints = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dropOffLocation"];
    dropOffLocation = v5->_dropOffLocation;
    v5->_dropOffLocation = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rideOption"];
    rideOption = v5->_rideOption;
    v5->_rideOption = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completionStatus"];
    completionStatus = v5->_completionStatus;
    v5->_completionStatus = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledPickupTime"];
    scheduledPickupTime = v5->_scheduledPickupTime;
    v5->_scheduledPickupTime = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivityForCancelingInApplication"];
    v34 = INUserActivityDeserializeFromData(v33);
    userActivityForCancelingInApplication = v5->_userActivityForCancelingInApplication;
    v5->_userActivityForCancelingInApplication = v34;

    v36 = MEMORY[0x1E695DFD8];
    v58[0] = objc_opt_class();
    v58[1] = objc_opt_class();
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
    v38 = [v36 setWithArray:v37];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"additionalActionActivities"];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v40 = v39;
    v41 = [v40 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = 0;
      v44 = *v53;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v53 != v44)
          {
            objc_enumerationMutation(v40);
          }

          v46 = *(*(&v52 + 1) + 8 * i);
          if (!v43)
          {
            v43 = objc_opt_new();
          }

          v47 = INUserActivityDeserializeFromData(v46);
          if (v47)
          {
            [v43 addObject:{v47, v52}];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v42);
    }

    else
    {
      v43 = 0;
    }

    v48 = [v43 copy];
    additionalActionActivities = v5->_additionalActionActivities;
    v5->_additionalActionActivities = v48;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setRideIdentifier:self->_rideIdentifier];
  [v4 setPhase:self->_phase];
  [v4 setVehicle:self->_vehicle];
  [v4 setDriver:self->_driver];
  [v4 setEstimatedPickupDate:self->_estimatedPickupDate];
  [v4 setEstimatedDropOffDate:self->_estimatedDropOffDate];
  [v4 setEstimatedPickupEndDate:self->_estimatedPickupEndDate];
  [v4 setPickupLocation:self->_pickupLocation];
  [v4 setWaypoints:self->_waypoints];
  [v4 setDropOffLocation:self->_dropOffLocation];
  [v4 setRideOption:self->_rideOption];
  [v4 setCompletionStatus:self->_completionStatus];
  [v4 setUserActivityForCancelingInApplication:self->_userActivityForCancelingInApplication];
  [v4 setAdditionalActionActivities:self->_additionalActionActivities];
  [v4 setScheduledPickupTime:self->_scheduledPickupTime];
  return v4;
}

- (void)setWaypoints:(NSArray *)waypoints
{
  v4 = waypoints;
  v6 = v4;
  if (v4)
  {
    if ([(NSArray *)v4 count])
    {
      v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6 copyItems:1];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }
  }

  v5 = self->_waypoints;
  self->_waypoints = v4;
}

- (void)_injectProxiesForImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [(INRideStatus *)self copy];
    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v10 = INImageProxyInjectionQueue();
    [v9 setUnderlyingQueue:v10];

    [v9 setMaxConcurrentOperationCount:1];
    [v9 setSuspended:1];
    v11 = MEMORY[0x1E696AAE0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__INRideStatus_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
    v19[3] = &unk_1E7287140;
    v19[4] = v8;
    v20 = completionCopy;
    v12 = [v11 blockOperationWithBlock:v19];
    vehicle = [(INRideStatus *)self vehicle];
    if (vehicle)
    {
      v14 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v14 setInjector:vehicle];
      [(INImageProxyInjectionOperation *)v14 setImageProxyRequestBlock:imagesCopy];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __74__INRideStatus_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
      v18[3] = &unk_1E7285B78;
      v18[4] = v8;
      [(INImageProxyInjectionOperation *)v14 setCopyReturnBlock:v18];
      [v12 addDependency:v14];
      [v9 addOperation:v14];
    }

    driver = [(INRideStatus *)self driver];
    if (driver)
    {
      v16 = objc_alloc_init(INImageProxyInjectionOperation);
      [(INImageProxyInjectionOperation *)v16 setInjector:driver];
      [(INImageProxyInjectionOperation *)v16 setImageProxyRequestBlock:imagesCopy];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __74__INRideStatus_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3;
      v17[3] = &unk_1E7285B78;
      v17[4] = v8;
      [(INImageProxyInjectionOperation *)v16 setCopyReturnBlock:v17];
      [v12 addDependency:v16];
      [v9 addOperation:v16];
    }

    [v9 addOperation:v12];
    [v9 setSuspended:0];
  }
}

uint64_t __74__INRideStatus_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setVehicle:a2];
  }

  return result;
}

uint64_t __74__INRideStatus_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setDriver:a2];
  }

  return result;
}

@end
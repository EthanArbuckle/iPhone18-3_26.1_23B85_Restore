@interface AFCoreAnalyticsDeviceContextPayload
+ (id)newWithBuilder:(id)builder;
- (AFCoreAnalyticsDeviceContextPayload)initWithBuilder:(id)builder;
- (AFCoreAnalyticsDeviceContextPayload)initWithCoder:(id)coder;
- (AFCoreAnalyticsDeviceContextPayload)initWithDictionaryRepresentation:(id)representation;
- (AFCoreAnalyticsDeviceContextPayload)initWithNearbyProductType:(id)type proximity:(id)proximity alarmFiring:(id)firing timerFiring:(id)timerFiring playbackState:(id)state playbackRecency:(id)recency homeAnnouncementState:(id)announcementState homeAnnouncementRecency:(id)self0 nearbyDevicesRequestIdentifier:(id)self1 targetedResult:(id)self2 contextIdentifier:(id)self3;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFCoreAnalyticsDeviceContextPayload

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  nearbyProductType = self->_nearbyProductType;
  if (nearbyProductType)
  {
    [v3 setObject:nearbyProductType forKey:@"nearbyProductType"];
  }

  proximity = self->_proximity;
  if (proximity)
  {
    [v4 setObject:proximity forKey:@"proximity"];
  }

  alarmFiring = self->_alarmFiring;
  if (alarmFiring)
  {
    [v4 setObject:alarmFiring forKey:@"alarmFiring"];
  }

  timerFiring = self->_timerFiring;
  if (timerFiring)
  {
    [v4 setObject:timerFiring forKey:@"timerFiring"];
  }

  playbackState = self->_playbackState;
  if (playbackState)
  {
    [v4 setObject:playbackState forKey:@"playbackState"];
  }

  playbackRecency = self->_playbackRecency;
  if (playbackRecency)
  {
    [v4 setObject:playbackRecency forKey:@"playbackRecency"];
  }

  homeAnnouncementState = self->_homeAnnouncementState;
  if (homeAnnouncementState)
  {
    [v4 setObject:homeAnnouncementState forKey:@"homeAnnouncementState"];
  }

  homeAnnouncementRecency = self->_homeAnnouncementRecency;
  if (homeAnnouncementRecency)
  {
    [v4 setObject:homeAnnouncementRecency forKey:@"homeAnnouncementRecency"];
  }

  nearbyDevicesRequestIdentifier = self->_nearbyDevicesRequestIdentifier;
  if (nearbyDevicesRequestIdentifier)
  {
    [v4 setObject:nearbyDevicesRequestIdentifier forKey:@"nearbyDevicesRequestIdentifier"];
  }

  targetedResult = self->_targetedResult;
  if (targetedResult)
  {
    [v4 setObject:targetedResult forKey:@"targetedResult"];
  }

  contextIdentifier = self->_contextIdentifier;
  if (contextIdentifier)
  {
    [v4 setObject:contextIdentifier forKey:@"contextIdentifier"];
  }

  v16 = [v4 copy];

  return v16;
}

- (AFCoreAnalyticsDeviceContextPayload)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"nearbyProductType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v6;
    }

    else
    {
      v30 = 0;
    }

    v8 = [v5 objectForKey:@"proximity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v8;
    }

    else
    {
      v29 = 0;
    }

    v9 = [v5 objectForKey:@"alarmFiring"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v9;
    }

    else
    {
      v28 = 0;
    }

    v10 = [v5 objectForKey:@"timerFiring"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v10;
    }

    else
    {
      v27 = 0;
    }

    v11 = [v5 objectForKey:@"playbackState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v11;
    }

    else
    {
      v26 = 0;
    }

    v12 = [v5 objectForKey:@"playbackRecency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKey:@"homeAnnouncementState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v5 objectForKey:@"homeAnnouncementRecency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v5 objectForKey:@"nearbyDevicesRequestIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v5 objectForKey:@"targetedResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v5 objectForKey:@"contextIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v25 = [(AFCoreAnalyticsDeviceContextPayload *)self initWithNearbyProductType:v30 proximity:v29 alarmFiring:v28 timerFiring:v27 playbackState:v26 playbackRecency:v13 homeAnnouncementState:v15 homeAnnouncementRecency:v17 nearbyDevicesRequestIdentifier:v19 targetedResult:v21 contextIdentifier:v23];
    self = v25;

    v7 = v25;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  nearbyProductType = self->_nearbyProductType;
  coderCopy = coder;
  [coderCopy encodeObject:nearbyProductType forKey:@"AFCoreAnalyticsDeviceContextPayload::nearbyProductType"];
  [coderCopy encodeObject:self->_proximity forKey:@"AFCoreAnalyticsDeviceContextPayload::proximity"];
  [coderCopy encodeObject:self->_alarmFiring forKey:@"AFCoreAnalyticsDeviceContextPayload::alarmFiring"];
  [coderCopy encodeObject:self->_timerFiring forKey:@"AFCoreAnalyticsDeviceContextPayload::timerFiring"];
  [coderCopy encodeObject:self->_playbackState forKey:@"AFCoreAnalyticsDeviceContextPayload::playbackState"];
  [coderCopy encodeObject:self->_playbackRecency forKey:@"AFCoreAnalyticsDeviceContextPayload::playbackRecency"];
  [coderCopy encodeObject:self->_homeAnnouncementState forKey:@"AFCoreAnalyticsDeviceContextPayload::homeAnnouncementState"];
  [coderCopy encodeObject:self->_homeAnnouncementRecency forKey:@"AFCoreAnalyticsDeviceContextPayload::homeAnnouncementRecency"];
  [coderCopy encodeObject:self->_nearbyDevicesRequestIdentifier forKey:@"AFCoreAnalyticsDeviceContextPayload::nearbyDevicesRequestIdentifier"];
  [coderCopy encodeObject:self->_targetedResult forKey:@"AFCoreAnalyticsDeviceContextPayload::targetedResult"];
  [coderCopy encodeObject:self->_contextIdentifier forKey:@"AFCoreAnalyticsDeviceContextPayload::contextIdentifier"];
}

- (AFCoreAnalyticsDeviceContextPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::nearbyProductType"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::proximity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::alarmFiring"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::timerFiring"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::playbackState"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::playbackRecency"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::homeAnnouncementState"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::homeAnnouncementRecency"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::nearbyDevicesRequestIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::targetedResult"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::contextIdentifier"];

  v16 = [(AFCoreAnalyticsDeviceContextPayload *)self initWithNearbyProductType:v4 proximity:v5 alarmFiring:v6 timerFiring:v7 playbackState:v17 playbackRecency:v14 homeAnnouncementState:v13 homeAnnouncementRecency:v8 nearbyDevicesRequestIdentifier:v9 targetedResult:v10 contextIdentifier:v11];
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      nearbyProductType = [(AFCoreAnalyticsDeviceContextPayload *)v5 nearbyProductType];
      nearbyProductType = self->_nearbyProductType;
      if (nearbyProductType == nearbyProductType || [(NSString *)nearbyProductType isEqual:nearbyProductType])
      {
        proximity = [(AFCoreAnalyticsDeviceContextPayload *)v5 proximity];
        proximity = self->_proximity;
        if (proximity == proximity || [(NSString *)proximity isEqual:proximity])
        {
          alarmFiring = [(AFCoreAnalyticsDeviceContextPayload *)v5 alarmFiring];
          alarmFiring = self->_alarmFiring;
          if (alarmFiring == alarmFiring || [(NSNumber *)alarmFiring isEqual:alarmFiring])
          {
            timerFiring = [(AFCoreAnalyticsDeviceContextPayload *)v5 timerFiring];
            timerFiring = self->_timerFiring;
            if (timerFiring == timerFiring || [(NSNumber *)timerFiring isEqual:timerFiring])
            {
              playbackState = [(AFCoreAnalyticsDeviceContextPayload *)v5 playbackState];
              playbackState = self->_playbackState;
              if (playbackState == playbackState || [(NSString *)playbackState isEqual:playbackState])
              {
                playbackRecency = [(AFCoreAnalyticsDeviceContextPayload *)v5 playbackRecency];
                playbackRecency = self->_playbackRecency;
                if (playbackRecency == playbackRecency || [(NSNumber *)playbackRecency isEqual:playbackRecency])
                {
                  homeAnnouncementState = [(AFCoreAnalyticsDeviceContextPayload *)v5 homeAnnouncementState];
                  homeAnnouncementState = self->_homeAnnouncementState;
                  if (homeAnnouncementState == homeAnnouncementState || [(NSString *)homeAnnouncementState isEqual:homeAnnouncementState])
                  {
                    v34 = homeAnnouncementState;
                    homeAnnouncementRecency = [(AFCoreAnalyticsDeviceContextPayload *)v5 homeAnnouncementRecency];
                    homeAnnouncementRecency = self->_homeAnnouncementRecency;
                    if (homeAnnouncementRecency == homeAnnouncementRecency || [(NSNumber *)homeAnnouncementRecency isEqual:homeAnnouncementRecency])
                    {
                      v33 = homeAnnouncementRecency;
                      nearbyDevicesRequestIdentifier = [(AFCoreAnalyticsDeviceContextPayload *)v5 nearbyDevicesRequestIdentifier];
                      nearbyDevicesRequestIdentifier = self->_nearbyDevicesRequestIdentifier;
                      if (nearbyDevicesRequestIdentifier == nearbyDevicesRequestIdentifier || [(NSString *)nearbyDevicesRequestIdentifier isEqual:nearbyDevicesRequestIdentifier])
                      {
                        v32 = nearbyDevicesRequestIdentifier;
                        targetedResult = [(AFCoreAnalyticsDeviceContextPayload *)v5 targetedResult];
                        targetedResult = self->_targetedResult;
                        if (targetedResult == targetedResult || [(NSString *)targetedResult isEqual:targetedResult])
                        {
                          contextIdentifier = [(AFCoreAnalyticsDeviceContextPayload *)v5 contextIdentifier];
                          contextIdentifier = self->_contextIdentifier;
                          v30 = 1;
                          if (contextIdentifier != contextIdentifier)
                          {
                            v28 = contextIdentifier;
                            v29 = [(NSString *)contextIdentifier isEqual:contextIdentifier];
                            contextIdentifier = v28;
                            if (!v29)
                            {
                              v30 = 0;
                            }
                          }
                        }

                        else
                        {
                          v30 = 0;
                        }

                        nearbyDevicesRequestIdentifier = v32;
                      }

                      else
                      {
                        v30 = 0;
                      }

                      homeAnnouncementRecency = v33;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    homeAnnouncementState = v34;
                  }

                  else
                  {
                    v30 = 0;
                  }
                }

                else
                {
                  v30 = 0;
                }
              }

              else
              {
                v30 = 0;
              }
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_nearbyProductType hash];
  v4 = [(NSString *)self->_proximity hash]^ v3;
  v5 = [(NSNumber *)self->_alarmFiring hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_timerFiring hash];
  v7 = [(NSString *)self->_playbackState hash];
  v8 = v7 ^ [(NSNumber *)self->_playbackRecency hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_homeAnnouncementState hash];
  v10 = [(NSNumber *)self->_homeAnnouncementRecency hash];
  v11 = v10 ^ [(NSString *)self->_nearbyDevicesRequestIdentifier hash];
  v12 = v11 ^ [(NSString *)self->_targetedResult hash];
  return v9 ^ v12 ^ [(NSString *)self->_contextIdentifier hash];
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFCoreAnalyticsDeviceContextPayload;
  v5 = [(AFCoreAnalyticsDeviceContextPayload *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {nearbyProductType = %@, proximity = %@, alarmFiring = %@, timerFiring = %@, playbackState = %@, playbackRecency = %@, homeAnnouncementState = %@, homeAnnouncementRecency = %@, nearbyDevicesRequestIdentifier = %@, targetedResult = %@, contextIdentifier = %@}", v5, self->_nearbyProductType, self->_proximity, self->_alarmFiring, self->_timerFiring, self->_playbackState, self->_playbackRecency, self->_homeAnnouncementState, self->_homeAnnouncementRecency, self->_nearbyDevicesRequestIdentifier, self->_targetedResult, self->_contextIdentifier];

  return v6;
}

- (AFCoreAnalyticsDeviceContextPayload)initWithNearbyProductType:(id)type proximity:(id)proximity alarmFiring:(id)firing timerFiring:(id)timerFiring playbackState:(id)state playbackRecency:(id)recency homeAnnouncementState:(id)announcementState homeAnnouncementRecency:(id)self0 nearbyDevicesRequestIdentifier:(id)self1 targetedResult:(id)self2 contextIdentifier:(id)self3
{
  typeCopy = type;
  proximityCopy = proximity;
  firingCopy = firing;
  timerFiringCopy = timerFiring;
  stateCopy = state;
  recencyCopy = recency;
  announcementStateCopy = announcementState;
  announcementRecencyCopy = announcementRecency;
  identifierCopy = identifier;
  resultCopy = result;
  contextIdentifierCopy = contextIdentifier;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __239__AFCoreAnalyticsDeviceContextPayload_initWithNearbyProductType_proximity_alarmFiring_timerFiring_playbackState_playbackRecency_homeAnnouncementState_homeAnnouncementRecency_nearbyDevicesRequestIdentifier_targetedResult_contextIdentifier___block_invoke;
  v43[3] = &unk_1E7341508;
  v44 = typeCopy;
  v45 = proximityCopy;
  v46 = firingCopy;
  v47 = timerFiringCopy;
  v48 = stateCopy;
  v49 = recencyCopy;
  v50 = announcementStateCopy;
  v51 = announcementRecencyCopy;
  v52 = identifierCopy;
  v53 = resultCopy;
  v54 = contextIdentifierCopy;
  v41 = contextIdentifierCopy;
  v40 = resultCopy;
  v27 = identifierCopy;
  v28 = announcementRecencyCopy;
  v29 = announcementStateCopy;
  v30 = recencyCopy;
  v31 = stateCopy;
  v32 = timerFiringCopy;
  v33 = firingCopy;
  v34 = proximityCopy;
  v35 = typeCopy;
  v36 = [(AFCoreAnalyticsDeviceContextPayload *)self initWithBuilder:v43];

  return v36;
}

void __239__AFCoreAnalyticsDeviceContextPayload_initWithNearbyProductType_proximity_alarmFiring_timerFiring_playbackState_playbackRecency_homeAnnouncementState_homeAnnouncementRecency_nearbyDevicesRequestIdentifier_targetedResult_contextIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setNearbyProductType:v3];
  [v4 setProximity:a1[5]];
  [v4 setAlarmFiring:a1[6]];
  [v4 setTimerFiring:a1[7]];
  [v4 setPlaybackState:a1[8]];
  [v4 setPlaybackRecency:a1[9]];
  [v4 setHomeAnnouncementState:a1[10]];
  [v4 setHomeAnnouncementRecency:a1[11]];
  [v4 setNearbyDevicesRequestIdentifier:a1[12]];
  [v4 setTargetedResult:a1[13]];
  [v4 setContextIdentifier:a1[14]];
}

- (AFCoreAnalyticsDeviceContextPayload)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v42.receiver = self;
  v42.super_class = AFCoreAnalyticsDeviceContextPayload;
  v5 = [(AFCoreAnalyticsDeviceContextPayload *)&v42 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFCoreAnalyticsDeviceContextPayloadMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 isDirty])
    {
      getNearbyProductType = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getNearbyProductType];
      v9 = [getNearbyProductType copy];
      nearbyProductType = v6->_nearbyProductType;
      v6->_nearbyProductType = v9;

      getProximity = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getProximity];
      v12 = [getProximity copy];
      proximity = v6->_proximity;
      v6->_proximity = v12;

      getAlarmFiring = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getAlarmFiring];
      v15 = [getAlarmFiring copy];
      alarmFiring = v6->_alarmFiring;
      v6->_alarmFiring = v15;

      getTimerFiring = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getTimerFiring];
      v18 = [getTimerFiring copy];
      timerFiring = v6->_timerFiring;
      v6->_timerFiring = v18;

      getPlaybackState = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getPlaybackState];
      v21 = [getPlaybackState copy];
      playbackState = v6->_playbackState;
      v6->_playbackState = v21;

      getPlaybackRecency = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getPlaybackRecency];
      v24 = [getPlaybackRecency copy];
      playbackRecency = v6->_playbackRecency;
      v6->_playbackRecency = v24;

      getHomeAnnouncementState = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getHomeAnnouncementState];
      v27 = [getHomeAnnouncementState copy];
      homeAnnouncementState = v6->_homeAnnouncementState;
      v6->_homeAnnouncementState = v27;

      getHomeAnnouncementRecency = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getHomeAnnouncementRecency];
      v30 = [getHomeAnnouncementRecency copy];
      homeAnnouncementRecency = v6->_homeAnnouncementRecency;
      v6->_homeAnnouncementRecency = v30;

      getNearbyDevicesRequestIdentifier = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getNearbyDevicesRequestIdentifier];
      v33 = [getNearbyDevicesRequestIdentifier copy];
      nearbyDevicesRequestIdentifier = v6->_nearbyDevicesRequestIdentifier;
      v6->_nearbyDevicesRequestIdentifier = v33;

      getTargetedResult = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getTargetedResult];
      v36 = [getTargetedResult copy];
      targetedResult = v6->_targetedResult;
      v6->_targetedResult = v36;

      getContextIdentifier = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getContextIdentifier];
      v39 = [getContextIdentifier copy];
      contextIdentifier = v6->_contextIdentifier;
      v6->_contextIdentifier = v39;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFCoreAnalyticsDeviceContextPayloadMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFCoreAnalyticsDeviceContextPayload);
      getNearbyProductType = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getNearbyProductType];
      v8 = [getNearbyProductType copy];
      nearbyProductType = v6->_nearbyProductType;
      v6->_nearbyProductType = v8;

      getProximity = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getProximity];
      v11 = [getProximity copy];
      proximity = v6->_proximity;
      v6->_proximity = v11;

      getAlarmFiring = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getAlarmFiring];
      v14 = [getAlarmFiring copy];
      alarmFiring = v6->_alarmFiring;
      v6->_alarmFiring = v14;

      getTimerFiring = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getTimerFiring];
      v17 = [getTimerFiring copy];
      timerFiring = v6->_timerFiring;
      v6->_timerFiring = v17;

      getPlaybackState = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getPlaybackState];
      v20 = [getPlaybackState copy];
      playbackState = v6->_playbackState;
      v6->_playbackState = v20;

      getPlaybackRecency = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getPlaybackRecency];
      v23 = [getPlaybackRecency copy];
      playbackRecency = v6->_playbackRecency;
      v6->_playbackRecency = v23;

      getHomeAnnouncementState = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getHomeAnnouncementState];
      v26 = [getHomeAnnouncementState copy];
      homeAnnouncementState = v6->_homeAnnouncementState;
      v6->_homeAnnouncementState = v26;

      getHomeAnnouncementRecency = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getHomeAnnouncementRecency];
      v29 = [getHomeAnnouncementRecency copy];
      homeAnnouncementRecency = v6->_homeAnnouncementRecency;
      v6->_homeAnnouncementRecency = v29;

      getNearbyDevicesRequestIdentifier = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getNearbyDevicesRequestIdentifier];
      v32 = [getNearbyDevicesRequestIdentifier copy];
      nearbyDevicesRequestIdentifier = v6->_nearbyDevicesRequestIdentifier;
      v6->_nearbyDevicesRequestIdentifier = v32;

      getTargetedResult = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getTargetedResult];
      v35 = [getTargetedResult copy];
      targetedResult = v6->_targetedResult;
      v6->_targetedResult = v35;

      getContextIdentifier = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getContextIdentifier];
      v38 = [getContextIdentifier copy];
      contextIdentifier = v6->_contextIdentifier;
      v6->_contextIdentifier = v38;
    }

    else
    {
      v6 = [(AFCoreAnalyticsDeviceContextPayload *)self copy];
    }
  }

  else
  {
    v6 = [(AFCoreAnalyticsDeviceContextPayload *)self copy];
  }

  return v6;
}

@end
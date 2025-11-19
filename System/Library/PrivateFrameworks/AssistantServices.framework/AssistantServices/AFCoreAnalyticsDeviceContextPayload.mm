@interface AFCoreAnalyticsDeviceContextPayload
+ (id)newWithBuilder:(id)a3;
- (AFCoreAnalyticsDeviceContextPayload)initWithBuilder:(id)a3;
- (AFCoreAnalyticsDeviceContextPayload)initWithCoder:(id)a3;
- (AFCoreAnalyticsDeviceContextPayload)initWithDictionaryRepresentation:(id)a3;
- (AFCoreAnalyticsDeviceContextPayload)initWithNearbyProductType:(id)a3 proximity:(id)a4 alarmFiring:(id)a5 timerFiring:(id)a6 playbackState:(id)a7 playbackRecency:(id)a8 homeAnnouncementState:(id)a9 homeAnnouncementRecency:(id)a10 nearbyDevicesRequestIdentifier:(id)a11 targetedResult:(id)a12 contextIdentifier:(id)a13;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (AFCoreAnalyticsDeviceContextPayload)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"nearbyProductType"];
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

- (void)encodeWithCoder:(id)a3
{
  nearbyProductType = self->_nearbyProductType;
  v5 = a3;
  [v5 encodeObject:nearbyProductType forKey:@"AFCoreAnalyticsDeviceContextPayload::nearbyProductType"];
  [v5 encodeObject:self->_proximity forKey:@"AFCoreAnalyticsDeviceContextPayload::proximity"];
  [v5 encodeObject:self->_alarmFiring forKey:@"AFCoreAnalyticsDeviceContextPayload::alarmFiring"];
  [v5 encodeObject:self->_timerFiring forKey:@"AFCoreAnalyticsDeviceContextPayload::timerFiring"];
  [v5 encodeObject:self->_playbackState forKey:@"AFCoreAnalyticsDeviceContextPayload::playbackState"];
  [v5 encodeObject:self->_playbackRecency forKey:@"AFCoreAnalyticsDeviceContextPayload::playbackRecency"];
  [v5 encodeObject:self->_homeAnnouncementState forKey:@"AFCoreAnalyticsDeviceContextPayload::homeAnnouncementState"];
  [v5 encodeObject:self->_homeAnnouncementRecency forKey:@"AFCoreAnalyticsDeviceContextPayload::homeAnnouncementRecency"];
  [v5 encodeObject:self->_nearbyDevicesRequestIdentifier forKey:@"AFCoreAnalyticsDeviceContextPayload::nearbyDevicesRequestIdentifier"];
  [v5 encodeObject:self->_targetedResult forKey:@"AFCoreAnalyticsDeviceContextPayload::targetedResult"];
  [v5 encodeObject:self->_contextIdentifier forKey:@"AFCoreAnalyticsDeviceContextPayload::contextIdentifier"];
}

- (AFCoreAnalyticsDeviceContextPayload)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::nearbyProductType"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::proximity"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::alarmFiring"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::timerFiring"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::playbackState"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::playbackRecency"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::homeAnnouncementState"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::homeAnnouncementRecency"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::nearbyDevicesRequestIdentifier"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::targetedResult"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFCoreAnalyticsDeviceContextPayload::contextIdentifier"];

  v16 = [(AFCoreAnalyticsDeviceContextPayload *)self initWithNearbyProductType:v4 proximity:v5 alarmFiring:v6 timerFiring:v7 playbackState:v17 playbackRecency:v14 homeAnnouncementState:v13 homeAnnouncementRecency:v8 nearbyDevicesRequestIdentifier:v9 targetedResult:v10 contextIdentifier:v11];
  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFCoreAnalyticsDeviceContextPayload *)v5 nearbyProductType];
      nearbyProductType = self->_nearbyProductType;
      if (nearbyProductType == v6 || [(NSString *)nearbyProductType isEqual:v6])
      {
        v8 = [(AFCoreAnalyticsDeviceContextPayload *)v5 proximity];
        proximity = self->_proximity;
        if (proximity == v8 || [(NSString *)proximity isEqual:v8])
        {
          v10 = [(AFCoreAnalyticsDeviceContextPayload *)v5 alarmFiring];
          alarmFiring = self->_alarmFiring;
          if (alarmFiring == v10 || [(NSNumber *)alarmFiring isEqual:v10])
          {
            v12 = [(AFCoreAnalyticsDeviceContextPayload *)v5 timerFiring];
            timerFiring = self->_timerFiring;
            if (timerFiring == v12 || [(NSNumber *)timerFiring isEqual:v12])
            {
              v14 = [(AFCoreAnalyticsDeviceContextPayload *)v5 playbackState];
              playbackState = self->_playbackState;
              if (playbackState == v14 || [(NSString *)playbackState isEqual:v14])
              {
                v16 = [(AFCoreAnalyticsDeviceContextPayload *)v5 playbackRecency];
                playbackRecency = self->_playbackRecency;
                if (playbackRecency == v16 || [(NSNumber *)playbackRecency isEqual:v16])
                {
                  v18 = [(AFCoreAnalyticsDeviceContextPayload *)v5 homeAnnouncementState];
                  homeAnnouncementState = self->_homeAnnouncementState;
                  if (homeAnnouncementState == v18 || [(NSString *)homeAnnouncementState isEqual:v18])
                  {
                    v34 = v18;
                    v20 = [(AFCoreAnalyticsDeviceContextPayload *)v5 homeAnnouncementRecency];
                    homeAnnouncementRecency = self->_homeAnnouncementRecency;
                    if (homeAnnouncementRecency == v20 || [(NSNumber *)homeAnnouncementRecency isEqual:v20])
                    {
                      v33 = v20;
                      v22 = [(AFCoreAnalyticsDeviceContextPayload *)v5 nearbyDevicesRequestIdentifier];
                      nearbyDevicesRequestIdentifier = self->_nearbyDevicesRequestIdentifier;
                      if (nearbyDevicesRequestIdentifier == v22 || [(NSString *)nearbyDevicesRequestIdentifier isEqual:v22])
                      {
                        v32 = v22;
                        v24 = [(AFCoreAnalyticsDeviceContextPayload *)v5 targetedResult];
                        targetedResult = self->_targetedResult;
                        if (targetedResult == v24 || [(NSString *)targetedResult isEqual:v24])
                        {
                          v26 = [(AFCoreAnalyticsDeviceContextPayload *)v5 contextIdentifier];
                          contextIdentifier = self->_contextIdentifier;
                          v30 = 1;
                          if (contextIdentifier != v26)
                          {
                            v28 = v26;
                            v29 = [(NSString *)contextIdentifier isEqual:v26];
                            v26 = v28;
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

                        v22 = v32;
                      }

                      else
                      {
                        v30 = 0;
                      }

                      v20 = v33;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    v18 = v34;
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFCoreAnalyticsDeviceContextPayload;
  v5 = [(AFCoreAnalyticsDeviceContextPayload *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {nearbyProductType = %@, proximity = %@, alarmFiring = %@, timerFiring = %@, playbackState = %@, playbackRecency = %@, homeAnnouncementState = %@, homeAnnouncementRecency = %@, nearbyDevicesRequestIdentifier = %@, targetedResult = %@, contextIdentifier = %@}", v5, self->_nearbyProductType, self->_proximity, self->_alarmFiring, self->_timerFiring, self->_playbackState, self->_playbackRecency, self->_homeAnnouncementState, self->_homeAnnouncementRecency, self->_nearbyDevicesRequestIdentifier, self->_targetedResult, self->_contextIdentifier];

  return v6;
}

- (AFCoreAnalyticsDeviceContextPayload)initWithNearbyProductType:(id)a3 proximity:(id)a4 alarmFiring:(id)a5 timerFiring:(id)a6 playbackState:(id)a7 playbackRecency:(id)a8 homeAnnouncementState:(id)a9 homeAnnouncementRecency:(id)a10 nearbyDevicesRequestIdentifier:(id)a11 targetedResult:(id)a12 contextIdentifier:(id)a13
{
  v39 = a3;
  v18 = a4;
  v38 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __239__AFCoreAnalyticsDeviceContextPayload_initWithNearbyProductType_proximity_alarmFiring_timerFiring_playbackState_playbackRecency_homeAnnouncementState_homeAnnouncementRecency_nearbyDevicesRequestIdentifier_targetedResult_contextIdentifier___block_invoke;
  v43[3] = &unk_1E7341508;
  v44 = v39;
  v45 = v18;
  v46 = v38;
  v47 = v19;
  v48 = v20;
  v49 = v21;
  v50 = v22;
  v51 = v23;
  v52 = v24;
  v53 = v25;
  v54 = v26;
  v41 = v26;
  v40 = v25;
  v27 = v24;
  v28 = v23;
  v29 = v22;
  v30 = v21;
  v31 = v20;
  v32 = v19;
  v33 = v38;
  v34 = v18;
  v35 = v39;
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

- (AFCoreAnalyticsDeviceContextPayload)initWithBuilder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = AFCoreAnalyticsDeviceContextPayload;
  v5 = [(AFCoreAnalyticsDeviceContextPayload *)&v42 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFCoreAnalyticsDeviceContextPayloadMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 isDirty])
    {
      v8 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getNearbyProductType];
      v9 = [v8 copy];
      nearbyProductType = v6->_nearbyProductType;
      v6->_nearbyProductType = v9;

      v11 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getProximity];
      v12 = [v11 copy];
      proximity = v6->_proximity;
      v6->_proximity = v12;

      v14 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getAlarmFiring];
      v15 = [v14 copy];
      alarmFiring = v6->_alarmFiring;
      v6->_alarmFiring = v15;

      v17 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getTimerFiring];
      v18 = [v17 copy];
      timerFiring = v6->_timerFiring;
      v6->_timerFiring = v18;

      v20 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getPlaybackState];
      v21 = [v20 copy];
      playbackState = v6->_playbackState;
      v6->_playbackState = v21;

      v23 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getPlaybackRecency];
      v24 = [v23 copy];
      playbackRecency = v6->_playbackRecency;
      v6->_playbackRecency = v24;

      v26 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getHomeAnnouncementState];
      v27 = [v26 copy];
      homeAnnouncementState = v6->_homeAnnouncementState;
      v6->_homeAnnouncementState = v27;

      v29 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getHomeAnnouncementRecency];
      v30 = [v29 copy];
      homeAnnouncementRecency = v6->_homeAnnouncementRecency;
      v6->_homeAnnouncementRecency = v30;

      v32 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getNearbyDevicesRequestIdentifier];
      v33 = [v32 copy];
      nearbyDevicesRequestIdentifier = v6->_nearbyDevicesRequestIdentifier;
      v6->_nearbyDevicesRequestIdentifier = v33;

      v35 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getTargetedResult];
      v36 = [v35 copy];
      targetedResult = v6->_targetedResult;
      v6->_targetedResult = v36;

      v38 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v7 getContextIdentifier];
      v39 = [v38 copy];
      contextIdentifier = v6->_contextIdentifier;
      v6->_contextIdentifier = v39;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFCoreAnalyticsDeviceContextPayloadMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFCoreAnalyticsDeviceContextPayload);
      v7 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getNearbyProductType];
      v8 = [v7 copy];
      nearbyProductType = v6->_nearbyProductType;
      v6->_nearbyProductType = v8;

      v10 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getProximity];
      v11 = [v10 copy];
      proximity = v6->_proximity;
      v6->_proximity = v11;

      v13 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getAlarmFiring];
      v14 = [v13 copy];
      alarmFiring = v6->_alarmFiring;
      v6->_alarmFiring = v14;

      v16 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getTimerFiring];
      v17 = [v16 copy];
      timerFiring = v6->_timerFiring;
      v6->_timerFiring = v17;

      v19 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getPlaybackState];
      v20 = [v19 copy];
      playbackState = v6->_playbackState;
      v6->_playbackState = v20;

      v22 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getPlaybackRecency];
      v23 = [v22 copy];
      playbackRecency = v6->_playbackRecency;
      v6->_playbackRecency = v23;

      v25 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getHomeAnnouncementState];
      v26 = [v25 copy];
      homeAnnouncementState = v6->_homeAnnouncementState;
      v6->_homeAnnouncementState = v26;

      v28 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getHomeAnnouncementRecency];
      v29 = [v28 copy];
      homeAnnouncementRecency = v6->_homeAnnouncementRecency;
      v6->_homeAnnouncementRecency = v29;

      v31 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getNearbyDevicesRequestIdentifier];
      v32 = [v31 copy];
      nearbyDevicesRequestIdentifier = v6->_nearbyDevicesRequestIdentifier;
      v6->_nearbyDevicesRequestIdentifier = v32;

      v34 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getTargetedResult];
      v35 = [v34 copy];
      targetedResult = v6->_targetedResult;
      v6->_targetedResult = v35;

      v37 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)v5 getContextIdentifier];
      v38 = [v37 copy];
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
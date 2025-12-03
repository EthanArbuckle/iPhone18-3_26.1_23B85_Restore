@interface AFCommandExecutionInfo
+ (id)newWithBuilder:(id)builder;
- (AFCommandExecutionInfo)initWithBuilder:(id)builder;
- (AFCommandExecutionInfo)initWithCoder:(id)coder;
- (AFCommandExecutionInfo)initWithDictionaryRepresentation:(id)representation;
- (AFCommandExecutionInfo)initWithExecutionID:(id)d requestID:(id)iD turnId:(id)id originPeerInfo:(id)info currentHomeInfo:(id)homeInfo endpointInfo:(id)endpointInfo instanceInfo:(id)instanceInfo speechInfo:(id)self0 requestHandlingContextSnapshot:(id)self1 deviceRestrictions:(id)self2 userInfo:(id)self3;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFCommandExecutionInfo

- (id)buildDictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  executionID = self->_executionID;
  if (executionID)
  {
    [v3 setObject:executionID forKey:@"executionID"];
  }

  requestID = self->_requestID;
  if (requestID)
  {
    [v4 setObject:requestID forKey:@"requestID"];
  }

  turnId = self->_turnId;
  if (turnId)
  {
    [v4 setObject:turnId forKey:@"turnId"];
  }

  originPeerInfo = self->_originPeerInfo;
  if (originPeerInfo)
  {
    buildDictionaryRepresentation = [(AFPeerInfo *)originPeerInfo buildDictionaryRepresentation];
    [v4 setObject:buildDictionaryRepresentation forKey:@"originPeerInfo"];
  }

  currentHomeInfo = self->_currentHomeInfo;
  if (currentHomeInfo)
  {
    buildDictionaryRepresentation2 = [(AFHomeInfo *)currentHomeInfo buildDictionaryRepresentation];
    [v4 setObject:buildDictionaryRepresentation2 forKey:@"currentHomeInfo"];
  }

  endpointInfo = self->_endpointInfo;
  if (endpointInfo)
  {
    buildDictionaryRepresentation3 = [(AFEndpointInfo *)endpointInfo buildDictionaryRepresentation];
    [v4 setObject:buildDictionaryRepresentation3 forKey:@"endpointInfo"];
  }

  instanceInfo = self->_instanceInfo;
  if (instanceInfo)
  {
    buildDictionaryRepresentation4 = [(AFInstanceInfo *)instanceInfo buildDictionaryRepresentation];
    [v4 setObject:buildDictionaryRepresentation4 forKey:@"instanceInfo"];
  }

  speechInfo = self->_speechInfo;
  if (speechInfo)
  {
    buildDictionaryRepresentation5 = [(AFSpeechInfo *)speechInfo buildDictionaryRepresentation];
    [v4 setObject:buildDictionaryRepresentation5 forKey:@"speechInfo"];
  }

  requestHandlingContextSnapshot = self->_requestHandlingContextSnapshot;
  if (requestHandlingContextSnapshot)
  {
    buildDictionaryRepresentation6 = [(AFRequestHandlingContext *)requestHandlingContextSnapshot buildDictionaryRepresentation];
    [v4 setObject:buildDictionaryRepresentation6 forKey:@"requestHandlingContextSnapshot"];
  }

  if (self->_deviceRestrictions)
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_deviceRestrictions, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = self->_deviceRestrictions;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v20 addObject:{*(*(&v31 + 1) + 8 * i), v31}];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v23);
    }

    v26 = [v20 copy];
    [v4 setObject:v26 forKey:@"deviceRestrictions"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v4 setObject:userInfo forKey:@"userInfo"];
  }

  v28 = [v4 copy];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (AFCommandExecutionInfo)initWithDictionaryRepresentation:(id)representation
{
  v64 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"executionID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 objectForKey:@"turnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v11;
    }

    else
    {
      v49 = 0;
    }

    v12 = [v5 objectForKey:@"originPeerInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [[AFPeerInfo alloc] initWithDictionaryRepresentation:v12];
    }

    else
    {
      v48 = 0;
    }

    v13 = [v5 objectForKey:@"currentHomeInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[AFHomeInfo alloc] initWithDictionaryRepresentation:v13];
    }

    else
    {
      v47 = 0;
    }

    v14 = [v5 objectForKey:@"endpointInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [[AFEndpointInfo alloc] initWithDictionaryRepresentation:v14];
    }

    else
    {
      v46 = 0;
    }

    v15 = [v5 objectForKey:@"instanceInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[AFInstanceInfo alloc] initWithDictionaryRepresentation:v15];
    }

    else
    {
      v45 = 0;
    }

    v16 = [v5 objectForKey:@"speechInfo"];
    objc_opt_class();
    selfCopy = self;
    if (objc_opt_isKindOfClass())
    {
      v44 = [[AFSpeechInfo alloc] initWithDictionaryRepresentation:v16];
    }

    else
    {
      v44 = 0;
    }

    v17 = [v5 objectForKey:@"requestHandlingContextSnapshot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[AFRequestHandlingContext alloc] initWithDictionaryRepresentation:v17];
    }

    else
    {
      v43 = 0;
    }

    v18 = [v5 objectForKey:@"deviceRestrictions"];
    objc_opt_class();
    v50 = v10;
    v51 = v7;
    if (objc_opt_isKindOfClass())
    {
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v59;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v59 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v58 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;

              if (v26)
              {
                [v19 addObject:v26];
              }
            }

            else
            {

              v26 = 0;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v22);
      }

      v42 = [v19 copy];
      v10 = v50;
      v7 = v51;
    }

    else
    {
      v42 = 0;
    }

    v27 = [v5 objectForKey:@"userInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v27, "count")}];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v29 = v27;
      v30 = [v29 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v55;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v55 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v54 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [v29 objectForKey:v34];
              [v28 setObject:v35 forKey:v34];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v31);
      }

      v36 = [v28 copy];
      v38 = v51;
      v37 = selfCopy;
      v39 = v50;
    }

    else
    {
      v39 = v10;
      v36 = 0;
      v37 = selfCopy;
      v38 = v7;
    }

    v53 = [(AFCommandExecutionInfo *)v37 initWithExecutionID:v38 requestID:v39 turnId:v49 originPeerInfo:v48 currentHomeInfo:v47 endpointInfo:v46 instanceInfo:v45 speechInfo:v44 requestHandlingContextSnapshot:v43 deviceRestrictions:v42 userInfo:v36];
    self = v53;

    v8 = v53;
  }

  else
  {
    v8 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  executionID = self->_executionID;
  coderCopy = coder;
  [coderCopy encodeObject:executionID forKey:@"AFCommandExecutionInfo::executionID"];
  [coderCopy encodeObject:self->_requestID forKey:@"AFCommandExecutionInfo::requestID"];
  [coderCopy encodeObject:self->_turnId forKey:@"AFCommandExecutionInfo::turnId"];
  [coderCopy encodeObject:self->_originPeerInfo forKey:@"AFCommandExecutionInfo::originPeerInfo"];
  [coderCopy encodeObject:self->_currentHomeInfo forKey:@"AFCommandExecutionInfo::currentHomeInfo"];
  [coderCopy encodeObject:self->_endpointInfo forKey:@"AFCommandExecutionInfo::endpointInfo"];
  [coderCopy encodeObject:self->_instanceInfo forKey:@"AFCommandExecutionInfo::instanceInfo"];
  [coderCopy encodeObject:self->_speechInfo forKey:@"AFCommandExecutionInfo::speechInfo"];
  [coderCopy encodeObject:self->_requestHandlingContextSnapshot forKey:@"AFCommandExecutionInfo::requestHandlingContextSnapshot"];
  [coderCopy encodeObject:self->_deviceRestrictions forKey:@"AFCommandExecutionInfo::deviceRestrictions"];
  [coderCopy encodeObject:self->_userInfo forKey:@"AFCommandExecutionInfo::userInfo"];
}

- (AFCommandExecutionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::executionID"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::requestID"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::turnId"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::originPeerInfo"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::currentHomeInfo"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::endpointInfo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::instanceInfo"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::speechInfo"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFCommandExecutionInfo::requestHandlingContextSnapshot"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"AFCommandExecutionInfo::deviceRestrictions"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"AFCommandExecutionInfo::userInfo"];

  v22 = [(AFCommandExecutionInfo *)self initWithExecutionID:v23 requestID:v18 turnId:v4 originPeerInfo:v20 currentHomeInfo:v5 endpointInfo:v19 instanceInfo:v6 speechInfo:v7 requestHandlingContextSnapshot:v8 deviceRestrictions:v12 userInfo:v16];
  return v22;
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
      executionID = [(AFCommandExecutionInfo *)v5 executionID];
      executionID = self->_executionID;
      if (executionID == executionID || [(NSString *)executionID isEqual:executionID])
      {
        requestID = [(AFCommandExecutionInfo *)v5 requestID];
        requestID = self->_requestID;
        if (requestID == requestID || [(NSString *)requestID isEqual:requestID])
        {
          turnId = [(AFCommandExecutionInfo *)v5 turnId];
          turnId = self->_turnId;
          if (turnId == turnId || [(NSUUID *)turnId isEqual:turnId])
          {
            originPeerInfo = [(AFCommandExecutionInfo *)v5 originPeerInfo];
            originPeerInfo = self->_originPeerInfo;
            if (originPeerInfo == originPeerInfo || [(AFPeerInfo *)originPeerInfo isEqual:originPeerInfo])
            {
              currentHomeInfo = [(AFCommandExecutionInfo *)v5 currentHomeInfo];
              currentHomeInfo = self->_currentHomeInfo;
              if (currentHomeInfo == currentHomeInfo || [(AFHomeInfo *)currentHomeInfo isEqual:currentHomeInfo])
              {
                endpointInfo = [(AFCommandExecutionInfo *)v5 endpointInfo];
                endpointInfo = self->_endpointInfo;
                if (endpointInfo == endpointInfo || [(AFEndpointInfo *)endpointInfo isEqual:endpointInfo])
                {
                  instanceInfo = [(AFCommandExecutionInfo *)v5 instanceInfo];
                  instanceInfo = self->_instanceInfo;
                  if (instanceInfo == instanceInfo || [(AFInstanceInfo *)instanceInfo isEqual:instanceInfo])
                  {
                    v34 = instanceInfo;
                    speechInfo = [(AFCommandExecutionInfo *)v5 speechInfo];
                    speechInfo = self->_speechInfo;
                    if (speechInfo == speechInfo || [(AFSpeechInfo *)speechInfo isEqual:speechInfo])
                    {
                      v33 = speechInfo;
                      requestHandlingContextSnapshot = [(AFCommandExecutionInfo *)v5 requestHandlingContextSnapshot];
                      requestHandlingContextSnapshot = self->_requestHandlingContextSnapshot;
                      if (requestHandlingContextSnapshot == requestHandlingContextSnapshot || [(AFRequestHandlingContext *)requestHandlingContextSnapshot isEqual:requestHandlingContextSnapshot])
                      {
                        v32 = requestHandlingContextSnapshot;
                        deviceRestrictions = [(AFCommandExecutionInfo *)v5 deviceRestrictions];
                        deviceRestrictions = self->_deviceRestrictions;
                        if (deviceRestrictions == deviceRestrictions || [(NSArray *)deviceRestrictions isEqual:deviceRestrictions])
                        {
                          userInfo = [(AFCommandExecutionInfo *)v5 userInfo];
                          userInfo = self->_userInfo;
                          v30 = 1;
                          if (userInfo != userInfo)
                          {
                            v28 = userInfo;
                            v29 = [(NSDictionary *)userInfo isEqual:userInfo];
                            userInfo = v28;
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

                        requestHandlingContextSnapshot = v32;
                      }

                      else
                      {
                        v30 = 0;
                      }

                      speechInfo = v33;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    instanceInfo = v34;
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
  v3 = [(NSString *)self->_executionID hash];
  v4 = [(NSString *)self->_requestID hash]^ v3;
  v5 = [(NSUUID *)self->_turnId hash];
  v6 = v4 ^ v5 ^ [(AFPeerInfo *)self->_originPeerInfo hash];
  v7 = [(AFHomeInfo *)self->_currentHomeInfo hash];
  v8 = v7 ^ [(AFEndpointInfo *)self->_endpointInfo hash];
  v9 = v6 ^ v8 ^ [(AFInstanceInfo *)self->_instanceInfo hash];
  v10 = [(AFSpeechInfo *)self->_speechInfo hash];
  v11 = v10 ^ [(AFRequestHandlingContext *)self->_requestHandlingContextSnapshot hash];
  v12 = v11 ^ [(NSArray *)self->_deviceRestrictions hash];
  return v9 ^ v12 ^ [(NSDictionary *)self->_userInfo hash];
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFCommandExecutionInfo;
  v5 = [(AFCommandExecutionInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {executionID = %@, requestID = %@, turnId = %@, originPeerInfo = %@, currentHomeInfo = %@, endpointInfo = %@, instanceInfo = %@, speechInfo = %@, requestHandlingContextSnapshot = %@, deviceRestrictions = %@, userInfo = %@}", v5, self->_executionID, self->_requestID, self->_turnId, self->_originPeerInfo, self->_currentHomeInfo, self->_endpointInfo, self->_instanceInfo, self->_speechInfo, self->_requestHandlingContextSnapshot, self->_deviceRestrictions, self->_userInfo];

  return v6;
}

- (AFCommandExecutionInfo)initWithExecutionID:(id)d requestID:(id)iD turnId:(id)id originPeerInfo:(id)info currentHomeInfo:(id)homeInfo endpointInfo:(id)endpointInfo instanceInfo:(id)instanceInfo speechInfo:(id)self0 requestHandlingContextSnapshot:(id)self1 deviceRestrictions:(id)self2 userInfo:(id)self3
{
  dCopy = d;
  iDCopy = iD;
  idCopy = id;
  infoCopy = info;
  homeInfoCopy = homeInfo;
  endpointInfoCopy = endpointInfo;
  instanceInfoCopy = instanceInfo;
  speechInfoCopy = speechInfo;
  snapshotCopy = snapshot;
  restrictionsCopy = restrictions;
  userInfoCopy = userInfo;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __190__AFCommandExecutionInfo_initWithExecutionID_requestID_turnId_originPeerInfo_currentHomeInfo_endpointInfo_instanceInfo_speechInfo_requestHandlingContextSnapshot_deviceRestrictions_userInfo___block_invoke;
  v43[3] = &unk_1E7348F38;
  v44 = dCopy;
  v45 = iDCopy;
  v46 = idCopy;
  v47 = infoCopy;
  v48 = homeInfoCopy;
  v49 = endpointInfoCopy;
  v50 = instanceInfoCopy;
  v51 = speechInfoCopy;
  v52 = snapshotCopy;
  v53 = restrictionsCopy;
  v54 = userInfoCopy;
  v41 = userInfoCopy;
  v40 = restrictionsCopy;
  v27 = snapshotCopy;
  v28 = speechInfoCopy;
  v29 = instanceInfoCopy;
  v30 = endpointInfoCopy;
  v31 = homeInfoCopy;
  v32 = infoCopy;
  v33 = idCopy;
  v34 = iDCopy;
  v35 = dCopy;
  v36 = [(AFCommandExecutionInfo *)self initWithBuilder:v43];

  return v36;
}

void __190__AFCommandExecutionInfo_initWithExecutionID_requestID_turnId_originPeerInfo_currentHomeInfo_endpointInfo_instanceInfo_speechInfo_requestHandlingContextSnapshot_deviceRestrictions_userInfo___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setExecutionID:v3];
  [v4 setRequestID:a1[5]];
  [v4 setTurnId:a1[6]];
  [v4 setOriginPeerInfo:a1[7]];
  [v4 setCurrentHomeInfo:a1[8]];
  [v4 setEndpointInfo:a1[9]];
  [v4 setInstanceInfo:a1[10]];
  [v4 setSpeechInfo:a1[11]];
  [v4 setRequestHandlingContextSnapshot:a1[12]];
  [v4 setDeviceRestrictions:a1[13]];
  [v4 setUserInfo:a1[14]];
}

- (AFCommandExecutionInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v42.receiver = self;
  v42.super_class = AFCommandExecutionInfo;
  v5 = [(AFCommandExecutionInfo *)&v42 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFCommandExecutionInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFCommandExecutionInfoMutation *)v7 isDirty])
    {
      getExecutionID = [(_AFCommandExecutionInfoMutation *)v7 getExecutionID];
      v9 = [getExecutionID copy];
      executionID = v6->_executionID;
      v6->_executionID = v9;

      getRequestID = [(_AFCommandExecutionInfoMutation *)v7 getRequestID];
      v12 = [getRequestID copy];
      requestID = v6->_requestID;
      v6->_requestID = v12;

      getTurnId = [(_AFCommandExecutionInfoMutation *)v7 getTurnId];
      v15 = [getTurnId copy];
      turnId = v6->_turnId;
      v6->_turnId = v15;

      getOriginPeerInfo = [(_AFCommandExecutionInfoMutation *)v7 getOriginPeerInfo];
      v18 = [getOriginPeerInfo copy];
      originPeerInfo = v6->_originPeerInfo;
      v6->_originPeerInfo = v18;

      getCurrentHomeInfo = [(_AFCommandExecutionInfoMutation *)v7 getCurrentHomeInfo];
      v21 = [getCurrentHomeInfo copy];
      currentHomeInfo = v6->_currentHomeInfo;
      v6->_currentHomeInfo = v21;

      getEndpointInfo = [(_AFCommandExecutionInfoMutation *)v7 getEndpointInfo];
      v24 = [getEndpointInfo copy];
      endpointInfo = v6->_endpointInfo;
      v6->_endpointInfo = v24;

      getInstanceInfo = [(_AFCommandExecutionInfoMutation *)v7 getInstanceInfo];
      v27 = [getInstanceInfo copy];
      instanceInfo = v6->_instanceInfo;
      v6->_instanceInfo = v27;

      getSpeechInfo = [(_AFCommandExecutionInfoMutation *)v7 getSpeechInfo];
      v30 = [getSpeechInfo copy];
      speechInfo = v6->_speechInfo;
      v6->_speechInfo = v30;

      getRequestHandlingContextSnapshot = [(_AFCommandExecutionInfoMutation *)v7 getRequestHandlingContextSnapshot];
      v33 = [getRequestHandlingContextSnapshot copy];
      requestHandlingContextSnapshot = v6->_requestHandlingContextSnapshot;
      v6->_requestHandlingContextSnapshot = v33;

      getDeviceRestrictions = [(_AFCommandExecutionInfoMutation *)v7 getDeviceRestrictions];
      v36 = [getDeviceRestrictions copy];
      deviceRestrictions = v6->_deviceRestrictions;
      v6->_deviceRestrictions = v36;

      getUserInfo = [(_AFCommandExecutionInfoMutation *)v7 getUserInfo];
      v39 = [getUserInfo copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v39;
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
    v5 = [[_AFCommandExecutionInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFCommandExecutionInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFCommandExecutionInfo);
      getExecutionID = [(_AFCommandExecutionInfoMutation *)v5 getExecutionID];
      v8 = [getExecutionID copy];
      executionID = v6->_executionID;
      v6->_executionID = v8;

      getRequestID = [(_AFCommandExecutionInfoMutation *)v5 getRequestID];
      v11 = [getRequestID copy];
      requestID = v6->_requestID;
      v6->_requestID = v11;

      getTurnId = [(_AFCommandExecutionInfoMutation *)v5 getTurnId];
      v14 = [getTurnId copy];
      turnId = v6->_turnId;
      v6->_turnId = v14;

      getOriginPeerInfo = [(_AFCommandExecutionInfoMutation *)v5 getOriginPeerInfo];
      v17 = [getOriginPeerInfo copy];
      originPeerInfo = v6->_originPeerInfo;
      v6->_originPeerInfo = v17;

      getCurrentHomeInfo = [(_AFCommandExecutionInfoMutation *)v5 getCurrentHomeInfo];
      v20 = [getCurrentHomeInfo copy];
      currentHomeInfo = v6->_currentHomeInfo;
      v6->_currentHomeInfo = v20;

      getEndpointInfo = [(_AFCommandExecutionInfoMutation *)v5 getEndpointInfo];
      v23 = [getEndpointInfo copy];
      endpointInfo = v6->_endpointInfo;
      v6->_endpointInfo = v23;

      getInstanceInfo = [(_AFCommandExecutionInfoMutation *)v5 getInstanceInfo];
      v26 = [getInstanceInfo copy];
      instanceInfo = v6->_instanceInfo;
      v6->_instanceInfo = v26;

      getSpeechInfo = [(_AFCommandExecutionInfoMutation *)v5 getSpeechInfo];
      v29 = [getSpeechInfo copy];
      speechInfo = v6->_speechInfo;
      v6->_speechInfo = v29;

      getRequestHandlingContextSnapshot = [(_AFCommandExecutionInfoMutation *)v5 getRequestHandlingContextSnapshot];
      v32 = [getRequestHandlingContextSnapshot copy];
      requestHandlingContextSnapshot = v6->_requestHandlingContextSnapshot;
      v6->_requestHandlingContextSnapshot = v32;

      getDeviceRestrictions = [(_AFCommandExecutionInfoMutation *)v5 getDeviceRestrictions];
      v35 = [getDeviceRestrictions copy];
      deviceRestrictions = v6->_deviceRestrictions;
      v6->_deviceRestrictions = v35;

      getUserInfo = [(_AFCommandExecutionInfoMutation *)v5 getUserInfo];
      v38 = [getUserInfo copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v38;
    }

    else
    {
      v6 = [(AFCommandExecutionInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFCommandExecutionInfo *)self copy];
  }

  return v6;
}

@end
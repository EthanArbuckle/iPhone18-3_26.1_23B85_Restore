@interface VCSessionParticipantUpdateConfig
+ (id)unserializeCache:(id)a3;
- (BOOL)addCachedTransitionForMediaType:(unsigned int)a3 toState:(unsigned int)a4 previousState:(unsigned int *)a5 error:(id *)a6;
- (NSArray)cachedStateTransitions;
- (VCSessionParticipantUpdateConfig)init;
- (VCSessionParticipantUpdateConfig)initWithCoder:(id)a3;
- (id)propertyWithName:(id)a3;
- (id)serializeCacheWithError:(id *)a3;
- (void)cleanupTransitionLoopsForMediaType:(unsigned int)a3 mediaState:(unsigned int)a4;
- (void)dealloc;
- (void)deserializeUInt32Property:(id)a3 withCoder:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateCachedTransitionsWithBlock:(id)a3;
- (void)init;
- (void)serializeCoderProperty:(id)a3 withCoder:(id)a4;
- (void)serializeUint32Property:(id)a3 withCoder:(id)a4;
- (void)setPositionalInfoParamWithBlock:(id)a3 forceCache:(BOOL)a4;
- (void)setUseCache:(BOOL)a3;
- (void)setValue:(id)a3 forPropertyName:(id)a4 forceCache:(BOOL)a5;
- (void)updateDescription;
@end

@implementation VCSessionParticipantUpdateConfig

- (VCSessionParticipantUpdateConfig)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionParticipantUpdateConfig;
  v2 = [(VCSessionParticipantUpdateConfig *)&v7 init];
  if (!v2)
  {
    [VCSessionParticipantUpdateConfig init];
LABEL_10:

    return 0;
  }

  v3 = objc_opt_new();
  v2->_properties = v3;
  if (!v3)
  {
    [VCSessionParticipantUpdateConfig init];
    goto LABEL_10;
  }

  v4 = objc_opt_new();
  v2->_propertiesCache = v4;
  if (!v4)
  {
    [VCSessionParticipantUpdateConfig init];
    goto LABEL_10;
  }

  v5 = objc_opt_new();
  v2->_cachedMediaStateTransitions = v5;
  if (!v5)
  {
    [(VCSessionParticipantUpdateConfig *)v2 init];
    goto LABEL_10;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionParticipantUpdateConfig;
  [(VCSessionParticipantUpdateConfig *)&v3 dealloc];
}

- (void)updateDescription
{
  v3 = objc_opt_new();
  v4 = [(VCSessionParticipantUpdateConfig *)self propertyWithName:@"videoQuality"];
  if (v4)
  {
    [v3 appendFormat:@"%@=%@ ", @"videoQuality", v4];
  }

  v5 = [(VCSessionParticipantUpdateConfig *)self propertyWithName:@"visibilityIndex"];
  if (v5)
  {
    [v3 appendFormat:@"%@=%@ ", @"visibilityIndex", v5];
  }

  v6 = [(VCSessionParticipantUpdateConfig *)self propertyWithName:@"prominenceIndex"];
  if (v6)
  {
    [v3 appendFormat:@"%@=%@ ", @"prominenceIndex", v6];
  }

  self->_description = v3;
}

- (id)propertyWithName:(id)a3
{
  result = [(NSMutableDictionary *)self->_propertiesCache objectForKeyedSubscript:?];
  if (!result)
  {
    properties = self->_properties;

    return [(NSMutableDictionary *)properties objectForKeyedSubscript:a3];
  }

  return result;
}

- (void)setValue:(id)a3 forPropertyName:(id)a4 forceCache:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x1E69E9840];
  v9 = self->_useCache || a5;
  v10 = v9;
  properties = self->_properties;
  if (v9)
  {
    v12 = [a3 isEqual:{-[NSMutableDictionary objectForKeyedSubscript:](properties, "objectForKeyedSubscript:", a4)}];
    propertiesCache = self->_propertiesCache;
    if (!v12)
    {
      v14 = a3;
      goto LABEL_6;
    }
  }

  else
  {
    [(NSMutableDictionary *)properties setObject:a3 forKeyedSubscript:a4];
    propertiesCache = self->_propertiesCache;
  }

  v14 = 0;
LABEL_6:
  [(NSMutableDictionary *)propertiesCache setObject:v14 forKeyedSubscript:a4];
  if ([@"visibilityIndex" isEqualToString:a4])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__VCSessionParticipantUpdateConfig_setValue_forPropertyName_forceCache___block_invoke;
    v17[3] = &unk_1E85F3E90;
    v17[4] = a3;
    v18 = v10;
    [(VCSessionParticipantUpdateConfig *)self setPositionalInfoParamWithBlock:v17 forceCache:v5];
  }

  if ([@"prominenceIndex" isEqualToString:a4])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__VCSessionParticipantUpdateConfig_setValue_forPropertyName_forceCache___block_invoke_2;
    v15[3] = &unk_1E85F3E90;
    v15[4] = a3;
    v16 = v10;
    [(VCSessionParticipantUpdateConfig *)self setPositionalInfoParamWithBlock:v15 forceCache:v5];
  }

  [(VCSessionParticipantUpdateConfig *)self updateDescription];
}

uint64_t __72__VCSessionParticipantUpdateConfig_setValue_forPropertyName_forceCache___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 hasPendingChanges];
  result = [a2 setIsVisible:{objc_msgSend(*(a1 + 32), "unsignedIntValue") == 0}];
  if ((*(a1 + 40) & 1) == 0)
  {

    return [a2 setHasPendingChanges:v4];
  }

  return result;
}

uint64_t __72__VCSessionParticipantUpdateConfig_setValue_forPropertyName_forceCache___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 hasPendingChanges];
  result = [a2 setProminenceIndex:{objc_msgSend(*(a1 + 32), "unsignedIntValue")}];
  if ((*(a1 + 40) & 1) == 0)
  {

    return [a2 setHasPendingChanges:v4];
  }

  return result;
}

- (void)setPositionalInfoParamWithBlock:(id)a3 forceCache:(BOOL)a4
{
  useCache = self->_useCache;
  v8 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"positionalInfo"];
  v9 = [(NSMutableDictionary *)self->_propertiesCache objectForKeyedSubscript:@"positionalInfo"];
  v10 = v9;
  if (!useCache && !a4)
  {
    v11 = v9;
    (*(a3 + 2))(a3, v8);
    goto LABEL_6;
  }

  if (!v9)
  {
    v11 = [v8 copy];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
LABEL_6:
    v10 = v11;
    if (!v11)
    {
      return;
    }
  }

  v12 = v10;
  (*(a3 + 2))(a3);
  if ([v8 isEqual:v12])
  {
    [(NSMutableDictionary *)self->_propertiesCache setObject:0 forKeyedSubscript:@"positionalInfo"];
  }
}

- (void)setUseCache:(BOOL)a3
{
  v5[5] = *MEMORY[0x1E69E9840];
  self->_useCache = a3;
  if (!a3)
  {
    propertiesCache = self->_propertiesCache;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__VCSessionParticipantUpdateConfig_setUseCache___block_invoke;
    v5[3] = &unk_1E85F3EB8;
    v5[4] = self;
    [(NSMutableDictionary *)propertiesCache enumerateKeysAndObjectsUsingBlock:v5];
    [(NSMutableDictionary *)self->_propertiesCache removeAllObjects];
    [(NSMutableArray *)self->_cachedMediaStateTransitions removeAllObjects];
  }
}

uint64_t __48__VCSessionParticipantUpdateConfig_setUseCache___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:a2];
  v5 = *(*(a1 + 32) + 8);

  return [v5 setObject:v4 forKeyedSubscript:a2];
}

- (void)serializeUint32Property:(id)a3 withCoder:(id)a4
{
  v6 = 8;
  if (self->_useCache)
  {
    v6 = 16;
  }

  v7 = [*(&self->super.isa + v6) objectForKeyedSubscript:?];
  if (v7)
  {
    v8 = [v7 unsignedIntValue];

    [a4 encodeInt32:v8 forKey:a3];
  }
}

- (void)deserializeUInt32Property:(id)a3 withCoder:(id)a4
{
  if ([a4 containsValueForKey:?])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a4, "decodeInt32ForKey:", a3)}];
    properties = self->_properties;

    [(NSMutableDictionary *)properties setObject:v7 forKeyedSubscript:a3];
  }
}

- (void)serializeCoderProperty:(id)a3 withCoder:(id)a4
{
  v5 = 8;
  if (self->_useCache)
  {
    v5 = 16;
  }

  v6 = [*(&self->super.isa + v5) objectForKeyedSubscript:a3];
  if (v6)
  {

    [v6 encodeWithCoder:a4];
  }
}

- (void)cleanupTransitionLoopsForMediaType:(unsigned int)a3 mediaState:(unsigned int)a4
{
  v7 = [(NSMutableArray *)self->_cachedMediaStateTransitions count];
  v8 = (v7 - 1);
  if (v7 - 1 >= 0)
  {
    while (1)
    {
      v9 = [(NSMutableArray *)self->_cachedMediaStateTransitions objectAtIndexedSubscript:v8];
      if ([v9 mediaType] == a3 && objc_msgSend(v9, "fromState") == a4)
      {
        break;
      }

      if (v8-- <= 0)
      {
        return;
      }
    }

    if (v8 < [(NSMutableArray *)self->_cachedMediaStateTransitions count])
    {
      v8 = v8;
      do
      {
        v11 = [(NSMutableArray *)self->_cachedMediaStateTransitions objectAtIndexedSubscript:v8];
        if ([v11 mediaType] == a3)
        {
          [(NSMutableArray *)self->_cachedMediaStateTransitions removeObject:v11];
        }

        else
        {
          ++v8;
        }
      }

      while (v8 < [(NSMutableArray *)self->_cachedMediaStateTransitions count]);
    }
  }
}

- (BOOL)addCachedTransitionForMediaType:(unsigned int)a3 toState:(unsigned int)a4 previousState:(unsigned int *)a5 error:(id *)a6
{
  v6 = a6;
  v46 = *MEMORY[0x1E69E9840];
  v9 = *a5;
  if (self->_useCache)
  {
    v10 = *&a4;
    v11 = *&a3;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = [(NSMutableArray *)self->_cachedMediaStateTransitions reverseObjectEnumerator];
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          if ([v17 mediaType] == v11)
          {
            v9 = [v17 toState];
            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    v18 = [[VCSessionParticipantMediaTransition alloc] initWithMediaType:v11 fromState:v9 toState:v10];
    if (v18)
    {
      v19 = v18;
      [(NSMutableArray *)self->_cachedMediaStateTransitions addObject:v18];

      [(VCSessionParticipantUpdateConfig *)self cleanupTransitionLoopsForMediaType:v11 mediaState:v10];
      v20 = 0;
      *a5 = v9;
      return v20 == 0;
    }

    v20 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32015 detailCode:0 description:@"Failed to allocate the transition"];
    if (objc_opt_class() == self)
    {
      v6 = a6;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantUpdateConfig addCachedTransitionForMediaType:v25 toState:? previousState:? error:?];
        }
      }
    }

    else
    {
      v6 = a6;
      if (objc_opt_respondsToSelector())
      {
        v23 = [(VCSessionParticipantUpdateConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v37 = v28;
          v38 = 2080;
          v39 = "[VCSessionParticipantUpdateConfig addCachedTransitionForMediaType:toState:previousState:error:]";
          v40 = 1024;
          v41 = 216;
          v42 = 2112;
          v43 = v23;
          v44 = 2048;
          v45 = self;
          _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate the transition", buf, 0x30u);
        }

        v6 = a6;
      }
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32026 detailCode:0 description:@"Participant configuration is not in progress"];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantUpdateConfig addCachedTransitionForMediaType:v24 toState:? previousState:? error:?];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [(VCSessionParticipantUpdateConfig *)self performSelector:sel_logPrefix];
      }

      else
      {
        v22 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v37 = v26;
          v38 = 2080;
          v39 = "[VCSessionParticipantUpdateConfig addCachedTransitionForMediaType:toState:previousState:error:]";
          v40 = 1024;
          v41 = 205;
          v42 = 2112;
          v43 = v22;
          v44 = 2048;
          v45 = self;
          _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Participant configuration is not in progress", buf, 0x30u);
        }
      }
    }
  }

  *a5 = v9;
  if (v6 && v20)
  {
    *v6 = v20;
  }

  return v20 == 0;
}

- (NSArray)cachedStateTransitions
{
  v2 = [(NSMutableArray *)self->_cachedMediaStateTransitions copy];

  return v2;
}

- (void)enumerateCachedTransitionsWithBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cachedMediaStateTransitions = self->_cachedMediaStateTransitions;
  v5 = [(NSMutableArray *)cachedMediaStateTransitions countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(cachedMediaStateTransitions);
        }

        (*(a3 + 2))(a3, [*(*(&v10 + 1) + 8 * i) mediaType], objc_msgSend(*(*(&v10 + 1) + 8 * i), "fromState"), objc_msgSend(*(*(&v10 + 1) + 8 * i), "toState"));
      }

      v6 = [(NSMutableArray *)cachedMediaStateTransitions countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

+ (id)unserializeCache:(id)a3
{
  v10[7] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = MEMORY[0x1E695DFD8];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v10[4] = objc_opt_class();
  v10[5] = objc_opt_class();
  v10[6] = objc_opt_class();
  v5 = [v4 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 7)}];
  v6 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v5 fromData:a3 error:&v9];
  if (v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantUpdateConfig unserializeCache:v7];
      }
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  [(VCSessionParticipantUpdateConfig *)self serializeUint32Property:@"microphoneMuted" withCoder:a3];
  [(VCSessionParticipantUpdateConfig *)self serializeUint32Property:@"prominenceIndex" withCoder:a3];
  [(VCSessionParticipantUpdateConfig *)self serializeUint32Property:@"visibilityIndex" withCoder:a3];
  [(VCSessionParticipantUpdateConfig *)self serializeUint32Property:@"videoQuality" withCoder:a3];
  [(VCSessionParticipantUpdateConfig *)self serializeCoderProperty:@"positionalInfo" withCoder:a3];
  [(VCSessionParticipantUpdateConfig *)self serializeUint32Property:@"isSynchronizationGroupMember" withCoder:a3];
  v5 = [(NSMutableDictionary *)self->_propertiesCache objectForKeyedSubscript:@"synchronizationGroupUUID"];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = @"synchronizationGroupUUIDNull";
    }

    else
    {
      v7 = @"synchronizationGroupUUID";
    }

    [a3 encodeObject:v6 forKey:v7];
  }

  cachedMediaStateTransitions = self->_cachedMediaStateTransitions;

  [(NSMutableArray *)cachedMediaStateTransitions encodeWithCoder:a3];
}

- (VCSessionParticipantUpdateConfig)initWithCoder:(id)a3
{
  v4 = [(VCSessionParticipantUpdateConfig *)self init];
  v5 = v4;
  if (v4)
  {
    [(VCSessionParticipantUpdateConfig *)v4 deserializeUInt32Property:@"microphoneMuted" withCoder:a3];
    [(VCSessionParticipantUpdateConfig *)v5 deserializeUInt32Property:@"prominenceIndex" withCoder:a3];
    [(VCSessionParticipantUpdateConfig *)v5 deserializeUInt32Property:@"visibilityIndex" withCoder:a3];
    [(VCSessionParticipantUpdateConfig *)v5 deserializeUInt32Property:@"videoQuality" withCoder:a3];
    [(VCSessionParticipantUpdateConfig *)v5 deserializeUInt32Property:@"isSynchronizationGroupMember" withCoder:a3];
    if ([a3 containsValueForKey:@"synchronizationGroupUUID"])
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](v5->_properties, "setObject:forKeyedSubscript:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"synchronizationGroupUUID"], @"synchronizationGroupUUID");
    }

    if ([a3 containsValueForKey:@"synchronizationGroupUUIDNull"])
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](v5->_properties, "setObject:forKeyedSubscript:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"synchronizationGroupUUIDNull"], @"synchronizationGroupUUID");
    }

    v6 = [[VCPositionalInfo alloc] initWithCoder:a3];
    if (v6)
    {
      v7 = v6;
      [(NSMutableDictionary *)v5->_properties setObject:v6 forKeyedSubscript:@"positionalInfo"];
    }

    v5->_cachedMediaStateTransitions = [objc_alloc(MEMORY[0x1E695DF70]) initWithCoder:a3];
  }

  return v5;
}

- (id)serializeCacheWithError:(id *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(VCSessionParticipantUpdateConfig *)self hasCachedChanges])
  {
    return 0;
  }

  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:a3];
  if ((!v5 || a3 && *a3) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCSessionParticipantUpdateConfig serializeCacheWithError:]";
      v13 = 1024;
      OUTLINED_FUNCTION_3_5();
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to serialize cache. error=%@", &v9, 0x26u);
    }
  }

  return v5;
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)addCachedTransitionForMediaType:(uint64_t)a1 toState:previousState:error:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 205;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Participant configuration is not in progress", &v2, 0x1Cu);
}

- (void)addCachedTransitionForMediaType:(uint64_t)a1 toState:previousState:error:.cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 216;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate the transition", &v2, 0x1Cu);
}

+ (void)unserializeCache:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = a1;
  v4 = 2080;
  v5 = "+[VCSessionParticipantUpdateConfig unserializeCache:]";
  v6 = 1024;
  OUTLINED_FUNCTION_3_5();
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to unserialize the udpate participant config. error=%@", &v2, 0x26u);
}

@end
@interface APSTopicGroup
- (APSTopicGroup)initWithEnvironment:(id)a3 topicHasher:(id)a4 user:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)logString;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)currentFilterForTopicState:(id)a3;
@end

@implementation APSTopicGroup

- (APSTopicGroup)initWithEnvironment:(id)a3 topicHasher:(id)a4 user:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = APSTopicGroup;
  v12 = [(APSTopicGroup *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_user, a5);
    objc_storeStrong(&v13->_environment, a3);
    objc_storeStrong(&v13->_topicHasher, a4);
    v14 = objc_alloc_init(NSMutableDictionary);
    hashesToEnabledTopics = v13->_hashesToEnabledTopics;
    v13->_hashesToEnabledTopics = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    hashesToIgnoredTopics = v13->_hashesToIgnoredTopics;
    v13->_hashesToIgnoredTopics = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    hashesToOpportunisticTopics = v13->_hashesToOpportunisticTopics;
    v13->_hashesToOpportunisticTopics = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    hashesToNonWakingTopics = v13->_hashesToNonWakingTopics;
    v13->_hashesToNonWakingTopics = v20;

    v22 = objc_alloc_init(NSMutableDictionary);
    hashesToPausedTopics = v13->_hashesToPausedTopics;
    v13->_hashesToPausedTopics = v22;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (self == v4)
  {
    v17 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(APSTopicGroup *)self hashesToEnabledTopics];
    v8 = [(APSTopicGroup *)v6 hashesToEnabledTopics];
    if ([v7 isEqualToDictionary:v8])
    {
      v9 = [(APSTopicGroup *)self hashesToOpportunisticTopics];
      v10 = [(APSTopicGroup *)v6 hashesToOpportunisticTopics];
      if ([v9 isEqualToDictionary:v10])
      {
        v11 = [(APSTopicGroup *)self hashesToNonWakingTopics];
        v12 = [(APSTopicGroup *)v6 hashesToNonWakingTopics];
        if ([v11 isEqualToDictionary:v12])
        {
          v13 = [(APSTopicGroup *)self hashesToIgnoredTopics];
          v14 = [(APSTopicGroup *)v6 hashesToIgnoredTopics];
          v21 = v13;
          v15 = v13;
          v16 = v14;
          if ([v15 isEqualToDictionary:v14])
          {
            v20 = [(APSTopicGroup *)self hashesToPausedTopics];
            v19 = [(APSTopicGroup *)v6 hashesToPausedTopics];
            v17 = [v20 isEqualToDictionary:v19];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_9:
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[APSTopicGroup alloc] initWithEnvironment:self->_environment topicHasher:self->_topicHasher user:self->_user];
  v5 = [NSDictionary alloc];
  v6 = [(APSTopicGroup *)self hashesToEnabledTopics];
  v7 = [v5 initWithDictionary:v6 copyItems:1];
  v8 = [v7 mutableCopy];
  hashesToEnabledTopics = v4->_hashesToEnabledTopics;
  v4->_hashesToEnabledTopics = v8;

  v10 = [NSDictionary alloc];
  v11 = [(APSTopicGroup *)self hashesToOpportunisticTopics];
  v12 = [v10 initWithDictionary:v11 copyItems:1];
  v13 = [v12 mutableCopy];
  hashesToOpportunisticTopics = v4->_hashesToOpportunisticTopics;
  v4->_hashesToOpportunisticTopics = v13;

  v15 = [NSDictionary alloc];
  v16 = [(APSTopicGroup *)self hashesToNonWakingTopics];
  v17 = [v15 initWithDictionary:v16 copyItems:1];
  v18 = [v17 mutableCopy];
  hashesToNonWakingTopics = v4->_hashesToNonWakingTopics;
  v4->_hashesToNonWakingTopics = v18;

  v20 = [NSDictionary alloc];
  v21 = [(APSTopicGroup *)self hashesToIgnoredTopics];
  v22 = [v20 initWithDictionary:v21 copyItems:1];
  v23 = [v22 mutableCopy];
  hashesToIgnoredTopics = v4->_hashesToIgnoredTopics;
  v4->_hashesToIgnoredTopics = v23;

  v25 = [NSDictionary alloc];
  v26 = [(APSTopicGroup *)self hashesToPausedTopics];
  v27 = [v25 initWithDictionary:v26 copyItems:1];
  v28 = [v27 mutableCopy];
  hashesToPausedTopics = v4->_hashesToPausedTopics;
  v4->_hashesToPausedTopics = v28;

  return v4;
}

- (int64_t)currentFilterForTopicState:(id)a3
{
  v4 = a3;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v5 = [(NSMutableDictionary *)self->_hashesToEnabledTopics allValues];
  v6 = [v5 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v65;
    v9 = 1;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v65 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v64 + 1) + 8 * v10);
      v12 = [v4 topicName];
      v13 = [v11 topicName];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v5 = [(NSMutableDictionary *)self->_hashesToOpportunisticTopics allValues];
    v15 = [v5 countByEnumeratingWithState:&v60 objects:v71 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v61;
      v9 = 2;
LABEL_11:
      v18 = 0;
      while (1)
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(v5);
        }

        v19 = *(*(&v60 + 1) + 8 * v18);
        v20 = [v4 topicName];
        v21 = [v19 topicName];
        v22 = [v20 isEqualToString:v21];

        if (v22)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v5 countByEnumeratingWithState:&v60 objects:v71 count:16];
          if (v16)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v5 = [(NSMutableDictionary *)self->_hashesToNonWakingTopics allValues];
      v23 = [v5 countByEnumeratingWithState:&v56 objects:v70 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v57;
        v9 = 4;
LABEL_19:
        v26 = 0;
        while (1)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v5);
          }

          v27 = *(*(&v56 + 1) + 8 * v26);
          v28 = [v4 topicName];
          v29 = [v27 topicName];
          v30 = [v28 isEqualToString:v29];

          if (v30)
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [v5 countByEnumeratingWithState:&v56 objects:v70 count:16];
            if (v24)
            {
              goto LABEL_19;
            }

            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v5 = [(NSMutableDictionary *)self->_hashesToIgnoredTopics allValues];
        v31 = [v5 countByEnumeratingWithState:&v52 objects:v69 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v53;
          v9 = 3;
LABEL_27:
          v34 = 0;
          while (1)
          {
            if (*v53 != v33)
            {
              objc_enumerationMutation(v5);
            }

            v35 = *(*(&v52 + 1) + 8 * v34);
            v36 = [v4 topicName];
            v37 = [v35 topicName];
            v38 = [v36 isEqualToString:v37];

            if (v38)
            {
              break;
            }

            if (v32 == ++v34)
            {
              v32 = [v5 countByEnumeratingWithState:&v52 objects:v69 count:16];
              if (v32)
              {
                goto LABEL_27;
              }

              goto LABEL_33;
            }
          }
        }

        else
        {
LABEL_33:

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v5 = [(NSMutableDictionary *)self->_hashesToPausedTopics allValues];
          v39 = [v5 countByEnumeratingWithState:&v48 objects:v68 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v49;
            v9 = 5;
LABEL_35:
            v42 = 0;
            while (1)
            {
              if (*v49 != v41)
              {
                objc_enumerationMutation(v5);
              }

              v43 = *(*(&v48 + 1) + 8 * v42);
              v44 = [v4 topicName];
              v45 = [v43 topicName];
              v46 = [v44 isEqualToString:v45];

              if (v46)
              {
                break;
              }

              if (v40 == ++v42)
              {
                v40 = [v5 countByEnumeratingWithState:&v48 objects:v68 count:16];
                if (v40)
                {
                  goto LABEL_35;
                }

                goto LABEL_41;
              }
            }
          }

          else
          {
LABEL_41:
            v9 = 0;
          }
        }
      }
    }
  }

  return v9;
}

- (NSString)logString
{
  v3 = [[NSMutableString alloc] initWithFormat:@"%@:", self];
  [v3 appendFormat:@"enabled: %@", self->_hashesToEnabledTopics];
  [v3 appendFormat:@"opportunistic: %@", self->_hashesToOpportunisticTopics];
  [v3 appendFormat:@"ignored: %@", self->_hashesToIgnoredTopics];
  [v3 appendFormat:@"nonwaking: %@", self->_hashesToNonWakingTopics];
  [v3 appendFormat:@"paused: %@", self->_hashesToPausedTopics];

  return v3;
}

@end
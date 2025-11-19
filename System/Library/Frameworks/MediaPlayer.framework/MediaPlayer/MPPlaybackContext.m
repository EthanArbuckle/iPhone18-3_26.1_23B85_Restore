@interface MPPlaybackContext
- (BOOL)containsRestorableContent;
- (BOOL)isReusableForPlaybackContext:(id)a3;
- (MPPlaybackContext)init;
- (MPPlaybackContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionComponents;
- (void)encodeWithCoder:(id)a3;
- (void)setUserIdentity:(id)a3;
@end

@implementation MPPlaybackContext

- (BOOL)isReusableForPlaybackContext:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (-[MPPlaybackContext repeatType](self, "repeatType") == 3 || [v4 repeatType] == 3)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(MPPlaybackContext *)self repeatType];
    v5 = v6 == [v4 repeatType];
  }

  if ([(MPPlaybackContext *)self shuffleType]== 1000)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 shuffleType];
    v7 = v8 == 1000 && v5;
    if (v8 != 1000 && v5)
    {
      v9 = [(MPPlaybackContext *)self shuffleType];
      v7 = v9 == [v4 shuffleType];
    }
  }

  if ([(MPPlaybackContext *)self queueEndAction]== 1000)
  {
    v10 = v7;
    goto LABEL_13;
  }

  v11 = [v4 queueEndAction];
  v10 = (v11 == 1000) & v7;
  if (v11 == 1000 || ((v7 ^ 1) & 1) != 0)
  {
LABEL_13:
    if (!v10)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v12 = [(MPPlaybackContext *)self queueEndAction];
  if (v12 != [v4 queueEndAction])
  {
LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

LABEL_18:
  v13 = [(MPPlaybackContext *)self playActivityFeatureName];
  v14 = [v4 playActivityFeatureName];
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    v16 = [v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v17 = [(MPPlaybackContext *)self sessionIdentifier];
  v18 = [v4 sessionIdentifier];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [v17 isEqual:v18];

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v23 = [(MPPlaybackContext *)self overrideSILSectionID];
  v24 = [v4 overrideSILSectionID];
  if (v23 == v24)
  {
    v21 = 1;
  }

  else
  {
    v21 = [v23 isEqual:v24];
  }

LABEL_25:
  return v21;
}

- (BOOL)containsRestorableContent
{
  v2 = objc_opt_class();

  return [v2 supportsSecureCoding];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [v4 setActionAfterQueueLoad:{-[MPPlaybackContext actionAfterQueueLoad](self, "actionAfterQueueLoad")}];
  [v4 setShuffleType:{-[MPPlaybackContext shuffleType](self, "shuffleType")}];
  [v4 setRepeatType:{-[MPPlaybackContext repeatType](self, "repeatType")}];
  [v4 setQueueEndAction:{-[MPPlaybackContext queueEndAction](self, "queueEndAction")}];
  v5 = [(MPPlaybackContext *)self playActivityQueueGroupingID];
  [v4 setPlayActivityQueueGroupingID:v5];

  v6 = [(MPPlaybackContext *)self playActivityFeatureName];
  [v4 setPlayActivityFeatureName:v6];

  v7 = [(MPPlaybackContext *)self playActivityRecommendationData];
  [v4 setPlayActivityRecommendationData:v7];

  v8 = [(MPPlaybackContext *)self queueDescriptor];
  [v4 setQueueDescriptor:v8];

  v9 = [(MPPlaybackContext *)self siriAssetInfo];
  [v4 setSiriAssetInfo:v9];

  v10 = [(MPPlaybackContext *)self siriReferenceIdentifier];
  [v4 setSiriReferenceIdentifier:v10];

  v11 = [(MPPlaybackContext *)self siriWHAMetricsInfo];
  [v4 setSiriWHAMetricsInfo:v11];

  v12 = [(MPPlaybackContext *)self sessionIdentifier];
  [v4 setSessionIdentifier:v12];

  v13 = [(MPPlaybackContext *)self overrideSILSectionID];
  [v4 setOverrideSILSectionID:v13];

  v14 = [(MPPlaybackContext *)self associatedParticipantIdentifier];
  [v4 setAssociatedParticipantIdentifier:v14];

  return v4;
}

- (id)description
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p", v5, self];

  v7 = [(MPPlaybackContext *)self descriptionComponents];
  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        v16 = [MEMORY[0x1E695DFB0] null];
        if (v15 == v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = [v7 objectForKeyedSubscript:v14];
        }

        [v6 appendFormat:@" %@=%@", v14, v17];
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [v6 appendString:@">"];
  v18 = [v6 copy];

  return v18;
}

- (id)descriptionComponents
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
  v4 = MEMORY[0x1E696AEC0];
  v5 = MPNSStringFromRepeatType([(MPPlaybackContext *)self repeatType]);
  v6 = MPNSStringFromShuffleType([(MPPlaybackContext *)self shuffleType]);
  v7 = [v4 stringWithFormat:@"%@/%@", v5, v6];
  [v3 setObject:v7 forKeyedSubscript:@"repeat/shuffle"];

  v8 = MPNSStringFromQueueEndAction(self->_queueEndAction, 0);
  [v3 setObject:v8 forKeyedSubscript:@"queueEndAction"];

  actionAfterQueueLoad = self->_actionAfterQueueLoad;
  v10 = @"PrepareToPlay";
  v11 = @"None";
  if (actionAfterQueueLoad)
  {
    v11 = 0;
  }

  if (actionAfterQueueLoad != 10)
  {
    v10 = v11;
  }

  if (actionAfterQueueLoad == 20)
  {
    v12 = @"Play";
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  [v3 setObject:v13 forKeyedSubscript:@"actionAfterQueueLoad"];

  [v3 setObject:self->_overrideSILSectionID forKeyedSubscript:@"overrideSILSectionID"];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", self->_playActivityFeatureName];
  [v3 setObject:v14 forKeyedSubscript:@"featureName"];

  [v3 setObject:self->_associatedParticipantIdentifier forKeyedSubscript:@"associatedParticipantID"];
  v15 = self->_actionAfterQueueLoad;
  if (v15)
  {
    v16 = @"PrepareToPlay";
    if (v15 != 10)
    {
      v16 = 0;
    }

    if (v15 == 20)
    {
      v17 = @"Play";
    }

    else
    {
      v17 = v16;
    }

    v18 = v17;
    [v3 setObject:v18 forKeyedSubscript:@"actionAfterQueueLoad"];
  }

  if ([(NSString *)self->_siriAssetInfo length])
  {
    [v3 setObject:@"YES" forKeyedSubscript:@"siriAssetInfo"];
  }

  if ([(NSString *)self->_sessionIdentifier length])
  {
    [v3 setObject:@"YES" forKeyedSubscript:@"sessionIdentifier"];
  }

  queueDescriptor = self->_queueDescriptor;
  if (queueDescriptor)
  {
    [v3 setObject:queueDescriptor forKeyedSubscript:@"queueDescriptor"];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:self->_shuffleType forKey:@"MPPlaybackContextShuffleType"];
  [v7 encodeInteger:self->_repeatType forKey:@"MPPlaybackContextRepeatType"];
  [v7 encodeInteger:self->_queueEndAction forKey:@"MPPlaybackContextQueueEndAction"];
  [v7 encodeInteger:self->_actionAfterQueueLoad forKey:@"MPPlaybackContextActionAfterQueueLoad"];
  [v7 encodeObject:self->_playActivityQueueGroupingID forKey:@"MPPlaybackContextPlayActionQueueGroupingID"];
  [v7 encodeObject:self->_playActivityFeatureName forKey:@"MPPlaybackContextPlayActivityFeatureName"];
  [v7 encodeObject:self->_playActivityRecommendationData forKey:@"MPPlaybackContextPlayActivityRecommendationData"];
  v4 = [v7 msv_userInfo];
  v5 = [v4 objectForKeyedSubscript:@"supplementalReason"];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    [v7 encodeObject:self->_associatedParticipantIdentifier forKey:@"MPPlaybackContextAssociatedParticipantIdentifier"];
  }
}

- (MPPlaybackContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MPPlaybackContext;
  v5 = [(MPPlaybackContext *)&v15 init];
  if (v5)
  {
    v5->_shuffleType = [v4 decodeIntegerForKey:@"MPPlaybackContextShuffleType"];
    v5->_repeatType = [v4 decodeIntegerForKey:@"MPPlaybackContextRepeatType"];
    v5->_queueEndAction = [v4 decodeIntegerForKey:@"MPPlaybackContextQueueEndAction"];
    v5->_actionAfterQueueLoad = [v4 decodeIntegerForKey:@"MPPlaybackContextActionAfterQueueLoad"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPPlaybackContextPlayActionQueueGroupingID"];
    playActivityQueueGroupingID = v5->_playActivityQueueGroupingID;
    v5->_playActivityQueueGroupingID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPPlaybackContextPlayActivityFeatureName"];
    playActivityFeatureName = v5->_playActivityFeatureName;
    v5->_playActivityFeatureName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPPlaybackContextPlayActivityRecommendationData"];
    playActivityRecommendationData = v5->_playActivityRecommendationData;
    v5->_playActivityRecommendationData = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPPlaybackContextAssociatedParticipantIdentifier"];
    associatedParticipantIdentifier = v5->_associatedParticipantIdentifier;
    v5->_associatedParticipantIdentifier = v12;
  }

  return v5;
}

- (void)setUserIdentity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E69E4680] activeAccount];
  }

  userIdentity = self->_userIdentity;
  self->_userIdentity = v4;
}

- (MPPlaybackContext)init
{
  v3.receiver = self;
  v3.super_class = MPPlaybackContext;
  result = [(MPPlaybackContext *)&v3 init];
  if (result)
  {
    *&result->_actionAfterQueueLoad = xmmword_1A273DE20;
    *&result->_repeatType = xmmword_1A273DE10;
  }

  return result;
}

@end
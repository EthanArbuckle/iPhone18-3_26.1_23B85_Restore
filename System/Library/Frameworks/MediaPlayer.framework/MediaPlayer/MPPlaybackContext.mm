@interface MPPlaybackContext
- (BOOL)containsRestorableContent;
- (BOOL)isReusableForPlaybackContext:(id)context;
- (MPPlaybackContext)init;
- (MPPlaybackContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionComponents;
- (void)encodeWithCoder:(id)coder;
- (void)setUserIdentity:(id)identity;
@end

@implementation MPPlaybackContext

- (BOOL)isReusableForPlaybackContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (-[MPPlaybackContext repeatType](self, "repeatType") == 3 || [contextCopy repeatType] == 3)
  {
    v5 = 1;
  }

  else
  {
    repeatType = [(MPPlaybackContext *)self repeatType];
    v5 = repeatType == [contextCopy repeatType];
  }

  if ([(MPPlaybackContext *)self shuffleType]== 1000)
  {
    v7 = v5;
  }

  else
  {
    shuffleType = [contextCopy shuffleType];
    v7 = shuffleType == 1000 && v5;
    if (shuffleType != 1000 && v5)
    {
      shuffleType2 = [(MPPlaybackContext *)self shuffleType];
      v7 = shuffleType2 == [contextCopy shuffleType];
    }
  }

  if ([(MPPlaybackContext *)self queueEndAction]== 1000)
  {
    v10 = v7;
    goto LABEL_13;
  }

  queueEndAction = [contextCopy queueEndAction];
  v10 = (queueEndAction == 1000) & v7;
  if (queueEndAction == 1000 || ((v7 ^ 1) & 1) != 0)
  {
LABEL_13:
    if (!v10)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  queueEndAction2 = [(MPPlaybackContext *)self queueEndAction];
  if (queueEndAction2 != [contextCopy queueEndAction])
  {
LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

LABEL_18:
  playActivityFeatureName = [(MPPlaybackContext *)self playActivityFeatureName];
  playActivityFeatureName2 = [contextCopy playActivityFeatureName];
  v15 = playActivityFeatureName2;
  if (playActivityFeatureName == playActivityFeatureName2)
  {
  }

  else
  {
    v16 = [playActivityFeatureName isEqual:playActivityFeatureName2];

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  sessionIdentifier = [(MPPlaybackContext *)self sessionIdentifier];
  sessionIdentifier2 = [contextCopy sessionIdentifier];
  v19 = sessionIdentifier2;
  if (sessionIdentifier == sessionIdentifier2)
  {
  }

  else
  {
    v20 = [sessionIdentifier isEqual:sessionIdentifier2];

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  overrideSILSectionID = [(MPPlaybackContext *)self overrideSILSectionID];
  overrideSILSectionID2 = [contextCopy overrideSILSectionID];
  if (overrideSILSectionID == overrideSILSectionID2)
  {
    v21 = 1;
  }

  else
  {
    v21 = [overrideSILSectionID isEqual:overrideSILSectionID2];
  }

LABEL_25:
  return v21;
}

- (BOOL)containsRestorableContent
{
  v2 = objc_opt_class();

  return [v2 supportsSecureCoding];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setActionAfterQueueLoad:{-[MPPlaybackContext actionAfterQueueLoad](self, "actionAfterQueueLoad")}];
  [v4 setShuffleType:{-[MPPlaybackContext shuffleType](self, "shuffleType")}];
  [v4 setRepeatType:{-[MPPlaybackContext repeatType](self, "repeatType")}];
  [v4 setQueueEndAction:{-[MPPlaybackContext queueEndAction](self, "queueEndAction")}];
  playActivityQueueGroupingID = [(MPPlaybackContext *)self playActivityQueueGroupingID];
  [v4 setPlayActivityQueueGroupingID:playActivityQueueGroupingID];

  playActivityFeatureName = [(MPPlaybackContext *)self playActivityFeatureName];
  [v4 setPlayActivityFeatureName:playActivityFeatureName];

  playActivityRecommendationData = [(MPPlaybackContext *)self playActivityRecommendationData];
  [v4 setPlayActivityRecommendationData:playActivityRecommendationData];

  queueDescriptor = [(MPPlaybackContext *)self queueDescriptor];
  [v4 setQueueDescriptor:queueDescriptor];

  siriAssetInfo = [(MPPlaybackContext *)self siriAssetInfo];
  [v4 setSiriAssetInfo:siriAssetInfo];

  siriReferenceIdentifier = [(MPPlaybackContext *)self siriReferenceIdentifier];
  [v4 setSiriReferenceIdentifier:siriReferenceIdentifier];

  siriWHAMetricsInfo = [(MPPlaybackContext *)self siriWHAMetricsInfo];
  [v4 setSiriWHAMetricsInfo:siriWHAMetricsInfo];

  sessionIdentifier = [(MPPlaybackContext *)self sessionIdentifier];
  [v4 setSessionIdentifier:sessionIdentifier];

  overrideSILSectionID = [(MPPlaybackContext *)self overrideSILSectionID];
  [v4 setOverrideSILSectionID:overrideSILSectionID];

  associatedParticipantIdentifier = [(MPPlaybackContext *)self associatedParticipantIdentifier];
  [v4 setAssociatedParticipantIdentifier:associatedParticipantIdentifier];

  return v4;
}

- (id)description
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p", v5, self];

  descriptionComponents = [(MPPlaybackContext *)self descriptionComponents];
  allKeys = [descriptionComponents allKeys];
  v9 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

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
        v15 = [descriptionComponents objectForKeyedSubscript:v14];
        null = [MEMORY[0x1E695DFB0] null];
        if (v15 == null)
        {
          v17 = 0;
        }

        else
        {
          v17 = [descriptionComponents objectForKeyedSubscript:v14];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_shuffleType forKey:@"MPPlaybackContextShuffleType"];
  [coderCopy encodeInteger:self->_repeatType forKey:@"MPPlaybackContextRepeatType"];
  [coderCopy encodeInteger:self->_queueEndAction forKey:@"MPPlaybackContextQueueEndAction"];
  [coderCopy encodeInteger:self->_actionAfterQueueLoad forKey:@"MPPlaybackContextActionAfterQueueLoad"];
  [coderCopy encodeObject:self->_playActivityQueueGroupingID forKey:@"MPPlaybackContextPlayActionQueueGroupingID"];
  [coderCopy encodeObject:self->_playActivityFeatureName forKey:@"MPPlaybackContextPlayActivityFeatureName"];
  [coderCopy encodeObject:self->_playActivityRecommendationData forKey:@"MPPlaybackContextPlayActivityRecommendationData"];
  msv_userInfo = [coderCopy msv_userInfo];
  v5 = [msv_userInfo objectForKeyedSubscript:@"supplementalReason"];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    [coderCopy encodeObject:self->_associatedParticipantIdentifier forKey:@"MPPlaybackContextAssociatedParticipantIdentifier"];
  }
}

- (MPPlaybackContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MPPlaybackContext;
  v5 = [(MPPlaybackContext *)&v15 init];
  if (v5)
  {
    v5->_shuffleType = [coderCopy decodeIntegerForKey:@"MPPlaybackContextShuffleType"];
    v5->_repeatType = [coderCopy decodeIntegerForKey:@"MPPlaybackContextRepeatType"];
    v5->_queueEndAction = [coderCopy decodeIntegerForKey:@"MPPlaybackContextQueueEndAction"];
    v5->_actionAfterQueueLoad = [coderCopy decodeIntegerForKey:@"MPPlaybackContextActionAfterQueueLoad"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPPlaybackContextPlayActionQueueGroupingID"];
    playActivityQueueGroupingID = v5->_playActivityQueueGroupingID;
    v5->_playActivityQueueGroupingID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPPlaybackContextPlayActivityFeatureName"];
    playActivityFeatureName = v5->_playActivityFeatureName;
    v5->_playActivityFeatureName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPPlaybackContextPlayActivityRecommendationData"];
    playActivityRecommendationData = v5->_playActivityRecommendationData;
    v5->_playActivityRecommendationData = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPPlaybackContextAssociatedParticipantIdentifier"];
    associatedParticipantIdentifier = v5->_associatedParticipantIdentifier;
    v5->_associatedParticipantIdentifier = v12;
  }

  return v5;
}

- (void)setUserIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    identityCopy = [MEMORY[0x1E69E4680] activeAccount];
  }

  userIdentity = self->_userIdentity;
  self->_userIdentity = identityCopy;
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
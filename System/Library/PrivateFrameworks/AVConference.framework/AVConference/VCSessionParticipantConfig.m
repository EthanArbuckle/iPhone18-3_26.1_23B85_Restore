@interface VCSessionParticipantConfig
- (id)description;
- (void)cleanupNwActivity;
- (void)dealloc;
- (void)setNwActivity:(id)a3;
- (void)setSpatialMetadata:(void *)a3;
- (void)setSpatialMetadataEntryMap:(__CFDictionary *)a3;
@end

@implementation VCSessionParticipantConfig

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  spatialMetadata = self->_spatialMetadata;
  if (spatialMetadata)
  {
    CFRelease(spatialMetadata);
  }

  [(VCSessionParticipantConfig *)self cleanupNwActivity];
  spatialMetadataEntryMap = self->_spatialMetadataEntryMap;
  if (spatialMetadataEntryMap)
  {
    CFRelease(spatialMetadataEntryMap);
  }

  v5.receiver = self;
  v5.super_class = VCSessionParticipantConfig;
  [(VCSessionParticipantConfig *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@[%p] idsParticipantID[%llu] participantUUID[%@] audioEnabled[%d] videoEnabled[%d] screenEnabled[%d] videoPaused[%d] videoQuality[%d] visibilityIndex[%d] prominenceIndex[%d] positionalInfo[%p] mediaStates[%p]", NSStringFromClass(v4), self, self->_idsParticipantID, self->_uuid, self->_audioEnabled, self->_videoEnabled, self->_screenEnabled, self->_videoPaused, self->_videoQuality, self->_visibilityIndex, self->_prominenceIndex, self->_positionalInfo, self->_mediaStates];
}

- (void)setSpatialMetadata:(void *)a3
{
  spatialMetadata = self->_spatialMetadata;
  if (spatialMetadata != a3)
  {
    if (spatialMetadata)
    {
      CFRelease(spatialMetadata);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_spatialMetadata = v6;
  }
}

- (void)setNwActivity:(id)a3
{
  nwActivity = self->_nwActivity;
  if (nwActivity)
  {
    nw_release(nwActivity);
  }

  self->_nwActivity = a3;
  if (a3)
  {

    nw_retain(a3);
  }
}

- (void)cleanupNwActivity
{
  nwActivity = self->_nwActivity;
  if (nwActivity)
  {
    nw_release(nwActivity);
    self->_nwActivity = 0;
  }
}

- (void)setSpatialMetadataEntryMap:(__CFDictionary *)a3
{
  spatialMetadataEntryMap = self->_spatialMetadataEntryMap;
  if (spatialMetadataEntryMap)
  {
    CFRelease(spatialMetadataEntryMap);
  }

  self->_spatialMetadataEntryMap = a3;
  if (a3)
  {

    CFRetain(a3);
  }
}

@end
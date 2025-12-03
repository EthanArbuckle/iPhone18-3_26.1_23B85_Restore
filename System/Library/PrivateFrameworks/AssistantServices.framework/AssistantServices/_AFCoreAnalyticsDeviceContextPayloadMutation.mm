@interface _AFCoreAnalyticsDeviceContextPayloadMutation
- (_AFCoreAnalyticsDeviceContextPayloadMutation)initWithBase:(id)base;
- (id)getAlarmFiring;
- (id)getContextIdentifier;
- (id)getHomeAnnouncementRecency;
- (id)getHomeAnnouncementState;
- (id)getNearbyDevicesRequestIdentifier;
- (id)getNearbyProductType;
- (id)getPlaybackRecency;
- (id)getPlaybackState;
- (id)getProximity;
- (id)getTargetedResult;
- (id)getTimerFiring;
@end

@implementation _AFCoreAnalyticsDeviceContextPayloadMutation

- (id)getNearbyProductType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    nearbyProductType = self->_nearbyProductType;
  }

  else
  {
    nearbyProductType = [(AFCoreAnalyticsDeviceContextPayload *)self->_base nearbyProductType];
  }

  return nearbyProductType;
}

- (id)getProximity
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    proximity = self->_proximity;
  }

  else
  {
    proximity = [(AFCoreAnalyticsDeviceContextPayload *)self->_base proximity];
  }

  return proximity;
}

- (id)getAlarmFiring
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    alarmFiring = self->_alarmFiring;
  }

  else
  {
    alarmFiring = [(AFCoreAnalyticsDeviceContextPayload *)self->_base alarmFiring];
  }

  return alarmFiring;
}

- (id)getTimerFiring
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    timerFiring = self->_timerFiring;
  }

  else
  {
    timerFiring = [(AFCoreAnalyticsDeviceContextPayload *)self->_base timerFiring];
  }

  return timerFiring;
}

- (id)getPlaybackState
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    playbackState = self->_playbackState;
  }

  else
  {
    playbackState = [(AFCoreAnalyticsDeviceContextPayload *)self->_base playbackState];
  }

  return playbackState;
}

- (id)getPlaybackRecency
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    playbackRecency = self->_playbackRecency;
  }

  else
  {
    playbackRecency = [(AFCoreAnalyticsDeviceContextPayload *)self->_base playbackRecency];
  }

  return playbackRecency;
}

- (id)getHomeAnnouncementState
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    homeAnnouncementState = self->_homeAnnouncementState;
  }

  else
  {
    homeAnnouncementState = [(AFCoreAnalyticsDeviceContextPayload *)self->_base homeAnnouncementState];
  }

  return homeAnnouncementState;
}

- (id)getHomeAnnouncementRecency
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    homeAnnouncementRecency = self->_homeAnnouncementRecency;
  }

  else
  {
    homeAnnouncementRecency = [(AFCoreAnalyticsDeviceContextPayload *)self->_base homeAnnouncementRecency];
  }

  return homeAnnouncementRecency;
}

- (id)getNearbyDevicesRequestIdentifier
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    nearbyDevicesRequestIdentifier = self->_nearbyDevicesRequestIdentifier;
  }

  else
  {
    nearbyDevicesRequestIdentifier = [(AFCoreAnalyticsDeviceContextPayload *)self->_base nearbyDevicesRequestIdentifier];
  }

  return nearbyDevicesRequestIdentifier;
}

- (id)getTargetedResult
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    targetedResult = self->_targetedResult;
  }

  else
  {
    targetedResult = [(AFCoreAnalyticsDeviceContextPayload *)self->_base targetedResult];
  }

  return targetedResult;
}

- (id)getContextIdentifier
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    contextIdentifier = self->_contextIdentifier;
  }

  else
  {
    contextIdentifier = [(AFCoreAnalyticsDeviceContextPayload *)self->_base contextIdentifier];
  }

  return contextIdentifier;
}

- (_AFCoreAnalyticsDeviceContextPayloadMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFCoreAnalyticsDeviceContextPayloadMutation;
  v6 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end
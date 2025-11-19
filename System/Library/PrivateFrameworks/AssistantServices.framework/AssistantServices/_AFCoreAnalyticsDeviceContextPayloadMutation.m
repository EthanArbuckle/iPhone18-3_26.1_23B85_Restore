@interface _AFCoreAnalyticsDeviceContextPayloadMutation
- (_AFCoreAnalyticsDeviceContextPayloadMutation)initWithBase:(id)a3;
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
    v2 = self->_nearbyProductType;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base nearbyProductType];
  }

  return v2;
}

- (id)getProximity
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_proximity;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base proximity];
  }

  return v2;
}

- (id)getAlarmFiring
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_alarmFiring;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base alarmFiring];
  }

  return v2;
}

- (id)getTimerFiring
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_timerFiring;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base timerFiring];
  }

  return v2;
}

- (id)getPlaybackState
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_playbackState;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base playbackState];
  }

  return v2;
}

- (id)getPlaybackRecency
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_playbackRecency;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base playbackRecency];
  }

  return v2;
}

- (id)getHomeAnnouncementState
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_homeAnnouncementState;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base homeAnnouncementState];
  }

  return v2;
}

- (id)getHomeAnnouncementRecency
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_homeAnnouncementRecency;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base homeAnnouncementRecency];
  }

  return v2;
}

- (id)getNearbyDevicesRequestIdentifier
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_nearbyDevicesRequestIdentifier;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base nearbyDevicesRequestIdentifier];
  }

  return v2;
}

- (id)getTargetedResult
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_targetedResult;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base targetedResult];
  }

  return v2;
}

- (id)getContextIdentifier
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    v2 = self->_contextIdentifier;
  }

  else
  {
    v2 = [(AFCoreAnalyticsDeviceContextPayload *)self->_base contextIdentifier];
  }

  return v2;
}

- (_AFCoreAnalyticsDeviceContextPayloadMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFCoreAnalyticsDeviceContextPayloadMutation;
  v6 = [(_AFCoreAnalyticsDeviceContextPayloadMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end
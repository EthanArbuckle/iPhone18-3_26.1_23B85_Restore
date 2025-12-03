@interface _AFLocationSnapshotMutation
- (BOOL)getPreciseLocationEnabled;
- (_AFLocationSnapshotMutation)initWithBase:(id)base;
- (id)getAltitude;
- (id)getDirection;
- (id)getHorizontalAccuracy;
- (id)getLatitude;
- (id)getLongitude;
- (id)getSpeed;
- (id)getVerticalAccuracy;
- (int64_t)getAccessState;
@end

@implementation _AFLocationSnapshotMutation

- (id)getHorizontalAccuracy
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    horizontalAccuracy = self->_horizontalAccuracy;
  }

  else
  {
    horizontalAccuracy = [(AFLocationSnapshot *)self->_base horizontalAccuracy];
  }

  return horizontalAccuracy;
}

- (int64_t)getAccessState
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    return self->_accessState;
  }

  else
  {
    return [(AFLocationSnapshot *)self->_base accessState];
  }
}

- (id)getLatitude
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    latitude = self->_latitude;
  }

  else
  {
    latitude = [(AFLocationSnapshot *)self->_base latitude];
  }

  return latitude;
}

- (id)getAltitude
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    altitude = self->_altitude;
  }

  else
  {
    altitude = [(AFLocationSnapshot *)self->_base altitude];
  }

  return altitude;
}

- (id)getDirection
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    direction = self->_direction;
  }

  else
  {
    direction = [(AFLocationSnapshot *)self->_base direction];
  }

  return direction;
}

- (id)getSpeed
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    speed = self->_speed;
  }

  else
  {
    speed = [(AFLocationSnapshot *)self->_base speed];
  }

  return speed;
}

- (id)getVerticalAccuracy
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    verticalAccuracy = self->_verticalAccuracy;
  }

  else
  {
    verticalAccuracy = [(AFLocationSnapshot *)self->_base verticalAccuracy];
  }

  return verticalAccuracy;
}

- (BOOL)getPreciseLocationEnabled
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_preciseLocationEnabled;
  }

  else
  {
    return [(AFLocationSnapshot *)self->_base preciseLocationEnabled];
  }
}

- (id)getLongitude
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    longitude = self->_longitude;
  }

  else
  {
    longitude = [(AFLocationSnapshot *)self->_base longitude];
  }

  return longitude;
}

- (_AFLocationSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFLocationSnapshotMutation;
  v6 = [(_AFLocationSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end
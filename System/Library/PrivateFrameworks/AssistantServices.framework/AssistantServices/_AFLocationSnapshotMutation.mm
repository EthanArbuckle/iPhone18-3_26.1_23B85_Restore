@interface _AFLocationSnapshotMutation
- (BOOL)getPreciseLocationEnabled;
- (_AFLocationSnapshotMutation)initWithBase:(id)a3;
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
    v2 = self->_horizontalAccuracy;
  }

  else
  {
    v2 = [(AFLocationSnapshot *)self->_base horizontalAccuracy];
  }

  return v2;
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
    v2 = self->_latitude;
  }

  else
  {
    v2 = [(AFLocationSnapshot *)self->_base latitude];
  }

  return v2;
}

- (id)getAltitude
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_altitude;
  }

  else
  {
    v2 = [(AFLocationSnapshot *)self->_base altitude];
  }

  return v2;
}

- (id)getDirection
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_direction;
  }

  else
  {
    v2 = [(AFLocationSnapshot *)self->_base direction];
  }

  return v2;
}

- (id)getSpeed
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_speed;
  }

  else
  {
    v2 = [(AFLocationSnapshot *)self->_base speed];
  }

  return v2;
}

- (id)getVerticalAccuracy
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_verticalAccuracy;
  }

  else
  {
    v2 = [(AFLocationSnapshot *)self->_base verticalAccuracy];
  }

  return v2;
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
    v2 = self->_longitude;
  }

  else
  {
    v2 = [(AFLocationSnapshot *)self->_base longitude];
  }

  return v2;
}

- (_AFLocationSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFLocationSnapshotMutation;
  v6 = [(_AFLocationSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end
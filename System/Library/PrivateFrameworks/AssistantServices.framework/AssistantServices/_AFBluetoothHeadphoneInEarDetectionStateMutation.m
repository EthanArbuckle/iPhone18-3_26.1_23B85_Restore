@interface _AFBluetoothHeadphoneInEarDetectionStateMutation
- (BOOL)getIsEnabled;
- (_AFBluetoothHeadphoneInEarDetectionStateMutation)initWithBase:(id)a3;
- (int64_t)getPrimaryEarbudSide;
- (int64_t)getPrimaryInEarStatus;
- (int64_t)getSecondaryInEarStatus;
@end

@implementation _AFBluetoothHeadphoneInEarDetectionStateMutation

- (BOOL)getIsEnabled
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_isEnabled;
  }

  else
  {
    return [(AFBluetoothHeadphoneInEarDetectionState *)self->_base isEnabled];
  }
}

- (int64_t)getPrimaryEarbudSide
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_primaryEarbudSide;
  }

  else
  {
    return [(AFBluetoothHeadphoneInEarDetectionState *)self->_base primaryEarbudSide];
  }
}

- (int64_t)getPrimaryInEarStatus
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_primaryInEarStatus;
  }

  else
  {
    return [(AFBluetoothHeadphoneInEarDetectionState *)self->_base primaryInEarStatus];
  }
}

- (int64_t)getSecondaryInEarStatus
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_secondaryInEarStatus;
  }

  else
  {
    return [(AFBluetoothHeadphoneInEarDetectionState *)self->_base secondaryInEarStatus];
  }
}

- (_AFBluetoothHeadphoneInEarDetectionStateMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFBluetoothHeadphoneInEarDetectionStateMutation;
  v6 = [(_AFBluetoothHeadphoneInEarDetectionStateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end
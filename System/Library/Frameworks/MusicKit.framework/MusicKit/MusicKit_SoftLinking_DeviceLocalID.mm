@interface MusicKit_SoftLinking_DeviceLocalID
- (MusicKit_SoftLinking_DeviceLocalID)initWithValue:(int64_t)value databaseID:(id)d;
- (id)description;
@end

@implementation MusicKit_SoftLinking_DeviceLocalID

- (MusicKit_SoftLinking_DeviceLocalID)initWithValue:(int64_t)value databaseID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_DeviceLocalID;
  v7 = [(MusicKit_SoftLinking_DeviceLocalID *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_value = value;
    v9 = [dCopy copy];
    databaseID = v8->_databaseID;
    v8->_databaseID = v9;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; value = %lld", self->_value];
  [v6 appendFormat:@"; databaseID = %@", self->_databaseID];
  [v6 appendString:@">"];

  return v6;
}

@end
@interface MSPrimaryUserChangedEvent
- (MSPrimaryUserChangedEvent)initWithAccessory:(id)accessory;
@end

@implementation MSPrimaryUserChangedEvent

- (MSPrimaryUserChangedEvent)initWithAccessory:(id)accessory
{
  v6.receiver = self;
  v6.super_class = MSPrimaryUserChangedEvent;
  v3 = [(MSPrimaryUserChangedEvent *)&v6 init];
  v4 = v3;
  if (v3)
  {
    [(MSPrimaryUserChangedEvent *)v3 setIsAutomatic:0];
    [(MSPrimaryUserChangedEvent *)v4 setChangedToHomeOwner:0];
    [(MSPrimaryUserChangedEvent *)v4 setChangedToUserNotInHome:0];
  }

  return v4;
}

@end
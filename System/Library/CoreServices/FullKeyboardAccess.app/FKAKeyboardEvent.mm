@interface FKAKeyboardEvent
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FKAKeyboardEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = FKAKeyboardEvent;
  v4 = [(FKAKeyboardEvent *)&v7 copyWithZone:zone];
  eventRepresentation = [(FKAKeyboardEvent *)self eventRepresentation];
  [v4 setEventRepresentation:eventRepresentation];

  return v4;
}

@end
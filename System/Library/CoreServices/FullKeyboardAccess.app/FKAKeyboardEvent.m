@interface FKAKeyboardEvent
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FKAKeyboardEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = FKAKeyboardEvent;
  v4 = [(FKAKeyboardEvent *)&v7 copyWithZone:a3];
  v5 = [(FKAKeyboardEvent *)self eventRepresentation];
  [v4 setEventRepresentation:v5];

  return v4;
}

@end
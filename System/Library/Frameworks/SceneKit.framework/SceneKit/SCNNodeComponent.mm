@interface SCNNodeComponent
- (SCNNodeComponent)initWithType:(int64_t)type component:(id)component;
@end

@implementation SCNNodeComponent

- (SCNNodeComponent)initWithType:(int64_t)type component:(id)component
{
  componentCopy = component;
  v10.receiver = self;
  v10.super_class = SCNNodeComponent;
  v7 = [(SCNNodeComponent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SCNNodeComponent *)v7 setType:type];
    [(SCNNodeComponent *)v8 setComponent:componentCopy];
  }

  return v8;
}

@end
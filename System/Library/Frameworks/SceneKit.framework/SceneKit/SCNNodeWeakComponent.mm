@interface SCNNodeWeakComponent
- (SCNNodeWeakComponent)initWithType:(int64_t)type component:(id)component;
- (id)component;
@end

@implementation SCNNodeWeakComponent

- (SCNNodeWeakComponent)initWithType:(int64_t)type component:(id)component
{
  componentCopy = component;
  v10.receiver = self;
  v10.super_class = SCNNodeWeakComponent;
  v7 = [(SCNNodeWeakComponent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SCNNodeWeakComponent *)v7 setType:type];
    [(SCNNodeWeakComponent *)v8 setComponent:componentCopy];
  }

  return v8;
}

- (id)component
{
  WeakRetained = objc_loadWeakRetained(&self->component);

  return WeakRetained;
}

@end
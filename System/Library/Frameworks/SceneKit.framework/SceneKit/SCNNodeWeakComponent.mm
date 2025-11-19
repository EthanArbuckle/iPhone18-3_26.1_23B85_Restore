@interface SCNNodeWeakComponent
- (SCNNodeWeakComponent)initWithType:(int64_t)a3 component:(id)a4;
- (id)component;
@end

@implementation SCNNodeWeakComponent

- (SCNNodeWeakComponent)initWithType:(int64_t)a3 component:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SCNNodeWeakComponent;
  v7 = [(SCNNodeWeakComponent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SCNNodeWeakComponent *)v7 setType:a3];
    [(SCNNodeWeakComponent *)v8 setComponent:v6];
  }

  return v8;
}

- (id)component
{
  WeakRetained = objc_loadWeakRetained(&self->component);

  return WeakRetained;
}

@end
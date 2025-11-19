@interface SCNNodeComponent
- (SCNNodeComponent)initWithType:(int64_t)a3 component:(id)a4;
@end

@implementation SCNNodeComponent

- (SCNNodeComponent)initWithType:(int64_t)a3 component:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SCNNodeComponent;
  v7 = [(SCNNodeComponent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SCNNodeComponent *)v7 setType:a3];
    [(SCNNodeComponent *)v8 setComponent:v6];
  }

  return v8;
}

@end
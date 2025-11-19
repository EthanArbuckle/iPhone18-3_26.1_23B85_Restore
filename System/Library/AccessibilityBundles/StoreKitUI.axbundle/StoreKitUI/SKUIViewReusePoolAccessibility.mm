@interface SKUIViewReusePoolAccessibility
- (id)dequeueReusableViewWithReuseIdentifier:(id)a3;
@end

@implementation SKUIViewReusePoolAccessibility

- (id)dequeueReusableViewWithReuseIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIViewReusePoolAccessibility;
  v3 = [(SKUIViewReusePoolAccessibility *)&v5 dequeueReusableViewWithReuseIdentifier:a3];
  [v3 _accessibilityUnregister];

  return v3;
}

@end
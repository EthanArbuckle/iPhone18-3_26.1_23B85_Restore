@interface SKUIViewReusePoolAccessibility
- (id)dequeueReusableViewWithReuseIdentifier:(id)identifier;
@end

@implementation SKUIViewReusePoolAccessibility

- (id)dequeueReusableViewWithReuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = SKUIViewReusePoolAccessibility;
  v3 = [(SKUIViewReusePoolAccessibility *)&v5 dequeueReusableViewWithReuseIdentifier:identifier];
  [v3 _accessibilityUnregister];

  return v3;
}

@end
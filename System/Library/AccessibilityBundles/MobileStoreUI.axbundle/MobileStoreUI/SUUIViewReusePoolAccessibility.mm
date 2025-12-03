@interface SUUIViewReusePoolAccessibility
- (id)dequeueReusableViewWithReuseIdentifier:(id)identifier;
@end

@implementation SUUIViewReusePoolAccessibility

- (id)dequeueReusableViewWithReuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = SUUIViewReusePoolAccessibility;
  v3 = [(SUUIViewReusePoolAccessibility *)&v5 dequeueReusableViewWithReuseIdentifier:identifier];
  [v3 _accessibilityUnregister];

  return v3;
}

@end
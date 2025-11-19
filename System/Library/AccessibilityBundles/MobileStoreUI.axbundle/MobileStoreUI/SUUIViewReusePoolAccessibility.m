@interface SUUIViewReusePoolAccessibility
- (id)dequeueReusableViewWithReuseIdentifier:(id)a3;
@end

@implementation SUUIViewReusePoolAccessibility

- (id)dequeueReusableViewWithReuseIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUUIViewReusePoolAccessibility;
  v3 = [(SUUIViewReusePoolAccessibility *)&v5 dequeueReusableViewWithReuseIdentifier:a3];
  [v3 _accessibilityUnregister];

  return v3;
}

@end
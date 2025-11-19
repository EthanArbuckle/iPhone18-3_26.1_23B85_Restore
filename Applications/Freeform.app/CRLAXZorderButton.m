@interface CRLAXZorderButton
- (id)accessibilityCustomActions;
@end

@implementation CRLAXZorderButton

- (id)accessibilityCustomActions
{
  v3 = [UIAccessibilityCustomAction alloc];
  v4 = [(CRLAXZorderButton *)self actionTitle];
  v5 = [(CRLAXZorderButton *)self target];
  v6 = [v3 initWithName:v4 target:v5 selector:{-[CRLAXZorderButton action](self, "action")}];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

@end
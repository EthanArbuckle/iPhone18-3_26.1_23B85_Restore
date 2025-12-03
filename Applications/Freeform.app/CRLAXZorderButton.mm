@interface CRLAXZorderButton
- (id)accessibilityCustomActions;
@end

@implementation CRLAXZorderButton

- (id)accessibilityCustomActions
{
  v3 = [UIAccessibilityCustomAction alloc];
  actionTitle = [(CRLAXZorderButton *)self actionTitle];
  target = [(CRLAXZorderButton *)self target];
  v6 = [v3 initWithName:actionTitle target:target selector:{-[CRLAXZorderButton action](self, "action")}];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

@end
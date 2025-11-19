@interface BKSpeakSelectionUICalloutBarAccessibility
- (void)updateAvailableButtons;
@end

@implementation BKSpeakSelectionUICalloutBarAccessibility

- (void)updateAvailableButtons
{
  v4.receiver = self;
  v4.super_class = BKSpeakSelectionUICalloutBarAccessibility;
  [(BKSpeakSelectionUICalloutBarAccessibility *)&v4 updateAvailableButtons];
  if (NSClassFromString(@"AXQuickSpeak"))
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100133B68;
    v3[3] = &unk_100A033C8;
    v3[4] = self;
    sub_1000763A0(v3);
  }
}

@end
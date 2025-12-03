@interface EKEventConferenceInformationDetailItem
+ (id)titleForCell;
+ (id)titleForExtendedViewController;
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (id)textForCopyAction;
@end

@implementation EKEventConferenceInformationDetailItem

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  v6 = [(EKEvent *)self->super.super._event virtualConference:event];
  if (v6)
  {
    virtualConference = [(EKEvent *)self->super.super._event virtualConference];
    joinMethods = [virtualConference joinMethods];
    if ([joinMethods count] <= 1)
    {
      virtualConference2 = [(EKEvent *)self->super.super._event virtualConference];
      conferenceDetails = [virtualConference2 conferenceDetails];
      v9 = [conferenceDetails length] != 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)titleForExtendedViewController
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Video Call Information" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)titleForCell
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Video Call Information" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)textForCopyAction
{
  event = self->super.super._event;
  v9 = 0;
  v10 = 0;
  [(EKEvent *)event parsedConference:&v10 andNotes:&v9];
  v3 = v10;
  v4 = v9;
  range = [v3 range];
  v7 = [v4 substringWithRange:{range, v6}];

  return v7;
}

@end
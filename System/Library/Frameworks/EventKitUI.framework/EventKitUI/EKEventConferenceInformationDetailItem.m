@interface EKEventConferenceInformationDetailItem
+ (id)titleForCell;
+ (id)titleForExtendedViewController;
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
- (id)textForCopyAction;
@end

@implementation EKEventConferenceInformationDetailItem

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v6 = [(EKEvent *)self->super.super._event virtualConference:a3];
  if (v6)
  {
    v7 = [(EKEvent *)self->super.super._event virtualConference];
    v8 = [v7 joinMethods];
    if ([v8 count] <= 1)
    {
      v10 = [(EKEvent *)self->super.super._event virtualConference];
      v11 = [v10 conferenceDetails];
      v9 = [v11 length] != 0;
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
  v5 = [v3 range];
  v7 = [v4 substringWithRange:{v5, v6}];

  return v7;
}

@end
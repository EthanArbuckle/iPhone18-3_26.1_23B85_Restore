@interface EKEventNotesDetailItem
+ (id)titleForCell;
+ (id)titleForExtendedViewController;
- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5;
@end

@implementation EKEventNotesDetailItem

- (BOOL)configureWithEvent:(id)a3 calendar:(id)a4 preview:(BOOL)a5
{
  v6 = [(EKEvent *)self->super.super._event displayNotes:a3];
  if ([v6 length])
  {
    v7 = [(EKEvent *)self->super.super._event displayNotes];
    v8 = CUIKShouldDisplayNotes();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)titleForExtendedViewController
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Notes" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)titleForCell
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Notes" value:&stru_1F4EF6790 table:0];

  return v3;
}

id __44__EKEventNotesDetailItem_textFromEventBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 displayNotes];
  v4 = [v2 calendar];
  v5 = [v4 type];

  if (v5 == 2)
  {
    v6 = [v2 displayNotes];
    v7 = CUIKStripInlineExchangeAttachmentsFromNotes();

    v3 = v7;
  }

  return v3;
}

@end
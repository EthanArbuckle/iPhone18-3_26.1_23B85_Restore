@interface ICScanDocumentsNoteActivity
- (ICScanDocumentsNoteActivity)initWithScanDocumentsBlock:(id)block;
- (id)activityTitle;
@end

@implementation ICScanDocumentsNoteActivity

- (ICScanDocumentsNoteActivity)initWithScanDocumentsBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = ICScanDocumentsNoteActivity;
  return [(ICScanDocumentsNoteActivity *)&v4 initWithPerformActivity:block];
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Scan" value:&stru_100661CF0 table:0];

  return v3;
}

@end
@interface ICDeleteNoteActivity
- (ICDeleteNoteActivity)initWithDeleteBlock:(id)a3;
- (id)activityTitle;
@end

@implementation ICDeleteNoteActivity

- (ICDeleteNoteActivity)initWithDeleteBlock:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICDeleteNoteActivity;
  return [(ICDeleteNoteActivity *)&v4 initWithPerformActivity:a3];
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Delete" value:&stru_100661CF0 table:0];

  return v3;
}

@end
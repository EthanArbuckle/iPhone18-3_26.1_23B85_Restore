@interface ICFindInNoteActivity
- (ICFindInNoteActivity)initWithFindInNoteBlock:(id)block;
- (id)activityTitle;
@end

@implementation ICFindInNoteActivity

- (ICFindInNoteActivity)initWithFindInNoteBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = ICFindInNoteActivity;
  return [(ICFindInNoteActivity *)&v4 initWithPerformActivity:block];
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Find in Note" value:&stru_100661CF0 table:0];

  return v3;
}

@end
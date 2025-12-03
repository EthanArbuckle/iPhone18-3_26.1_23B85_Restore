@interface NoteUserActivityState
- (NoteUserActivityState)initWithNote:(id)note;
- (void)updateUserActivity:(id)activity;
@end

@implementation NoteUserActivityState

- (NoteUserActivityState)initWithNote:(id)note
{
  v4.receiver = self;
  v4.super_class = NoteUserActivityState;
  return [(NoteUserActivityState *)&v4 initWithNote:note];
}

- (void)updateUserActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = NoteUserActivityState;
  activityCopy = activity;
  [(NoteUserActivityState *)&v5 updateUserActivity:activityCopy];
  sub_10008BE24(activityCopy, self);
}

@end
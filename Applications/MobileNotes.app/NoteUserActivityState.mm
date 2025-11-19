@interface NoteUserActivityState
- (NoteUserActivityState)initWithNote:(id)a3;
- (void)updateUserActivity:(id)a3;
@end

@implementation NoteUserActivityState

- (NoteUserActivityState)initWithNote:(id)a3
{
  v4.receiver = self;
  v4.super_class = NoteUserActivityState;
  return [(NoteUserActivityState *)&v4 initWithNote:a3];
}

- (void)updateUserActivity:(id)a3
{
  v5.receiver = self;
  v5.super_class = NoteUserActivityState;
  v4 = a3;
  [(NoteUserActivityState *)&v5 updateUserActivity:v4];
  sub_10008BE24(v4, self);
}

@end
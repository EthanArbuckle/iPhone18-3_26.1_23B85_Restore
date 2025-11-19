@interface ICSetQuickNoteActivity
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICSetQuickNoteActivity

- (void)performActivityWithCompletion:(id)a3
{
  v6 = a3;
  v4 = +[ICQuickNoteSessionManager sharedManager];
  [v4 saveSession];

  [(ICSetQuickNoteActivity *)self activityDidFinish:1];
  if (v6)
  {
    v5 = [(ICSetQuickNoteActivity *)self activityType];
    v6[2](v6, 1, v5);
  }
}

@end
@interface ICSetQuickNoteActivity
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICSetQuickNoteActivity

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ICQuickNoteSessionManager sharedManager];
  [v4 saveSession];

  [(ICSetQuickNoteActivity *)self activityDidFinish:1];
  if (completionCopy)
  {
    activityType = [(ICSetQuickNoteActivity *)self activityType];
    completionCopy[2](completionCopy, 1, activityType);
  }
}

@end
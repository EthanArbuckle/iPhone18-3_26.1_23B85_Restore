@interface ICNotesFolderIntentResponse
- (ICNotesFolderIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation ICNotesFolderIntentResponse

- (ICNotesFolderIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ICNotesFolderIntentResponse;
  v7 = [(ICNotesFolderIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(ICNotesFolderIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
@interface ICNoteIntentResponse
- (ICNoteIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation ICNoteIntentResponse

- (ICNoteIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ICNoteIntentResponse;
  v7 = [(ICNoteIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(ICNoteIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
@interface MFGetMailboxIntentResponse
- (MFGetMailboxIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MFGetMailboxIntentResponse

- (MFGetMailboxIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MFGetMailboxIntentResponse;
  v7 = [(MFGetMailboxIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MFGetMailboxIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
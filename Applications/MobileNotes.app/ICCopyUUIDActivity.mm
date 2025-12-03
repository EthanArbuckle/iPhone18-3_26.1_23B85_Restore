@interface ICCopyUUIDActivity
- (ICCopyUUIDActivity)initWithUUIDString:(id)string;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICCopyUUIDActivity

- (ICCopyUUIDActivity)initWithUUIDString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = ICCopyUUIDActivity;
  v6 = [(ICCopyUUIDActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuidString, string);
  }

  return v7;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  uuidString = [(ICCopyUUIDActivity *)self uuidString];
  v5 = +[UIPasteboard generalPasteboard];
  [v5 setString:uuidString];

  [(ICCopyUUIDActivity *)self activityDidFinish:1];
  if (completionCopy)
  {
    activityType = [(ICCopyUUIDActivity *)self activityType];
    completionCopy[2](completionCopy, 1, activityType);
  }
}

@end
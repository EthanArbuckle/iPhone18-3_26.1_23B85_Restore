@interface ICCopyUUIDActivity
- (ICCopyUUIDActivity)initWithUUIDString:(id)a3;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICCopyUUIDActivity

- (ICCopyUUIDActivity)initWithUUIDString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICCopyUUIDActivity;
  v6 = [(ICCopyUUIDActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuidString, a3);
  }

  return v7;
}

- (void)performActivityWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(ICCopyUUIDActivity *)self uuidString];
  v5 = +[UIPasteboard generalPasteboard];
  [v5 setString:v4];

  [(ICCopyUUIDActivity *)self activityDidFinish:1];
  if (v7)
  {
    v6 = [(ICCopyUUIDActivity *)self activityType];
    v7[2](v7, 1, v6);
  }
}

@end
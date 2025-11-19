@interface Passcode
+ (id)currentPasscode;
- (Passcode)init;
- (int64_t)length;
- (int64_t)type;
@end

@implementation Passcode

- (Passcode)init
{
  v3.receiver = self;
  v3.super_class = Passcode;
  return [(Passcode *)&v3 init];
}

- (int64_t)type
{
  v2 = +[LAPasscodeHelper sharedInstance];
  v3 = [v2 passcodeType];

  if ((v3 - 1) >= 4)
  {
    v4 = LALogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10006AC1C(v3, v4);
    }

    return 4;
  }

  return v3;
}

- (int64_t)length
{
  v2 = [(Passcode *)self type];

  return _LACPasscodeTypeLength(v2);
}

+ (id)currentPasscode
{
  v2 = objc_alloc_init(Passcode);

  return v2;
}

@end
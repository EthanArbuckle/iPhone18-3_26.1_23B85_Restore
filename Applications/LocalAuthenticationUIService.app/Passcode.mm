@interface Passcode
+ (id)currentPasscode;
- (Passcode)init;
- (int64_t)length;
- (int64_t)type;
- (void)type;
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
  passcodeType = [v2 passcodeType];

  if ((passcodeType - 1) >= 4)
  {
    v4 = LALogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(Passcode *)passcodeType type];
    }

    return 4;
  }

  return passcodeType;
}

- (int64_t)length
{
  type = [(Passcode *)self type];

  return _LACPasscodeTypeLength(type);
}

+ (id)currentPasscode
{
  v2 = objc_alloc_init(Passcode);

  return v2;
}

- (void)type
{
  v3 = NSStringFromLAPasscodeType();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized passcode type: %@", &v4, 0xCu);
}

@end
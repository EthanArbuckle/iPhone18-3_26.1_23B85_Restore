@interface _CNImageUtilitiesLogger
- (_CNImageUtilitiesLogger)init;
@end

@implementation _CNImageUtilitiesLogger

- (_CNImageUtilitiesLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNImageUtilitiesLogger;
  v2 = [(_CNImageUtilitiesLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts", "CNImageUtilities");
    log = v2->_log;
    v2->_log = v3;

    v5 = v2;
  }

  return v2;
}

@end
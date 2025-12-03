@interface MTRError
+ (id)errorForCHIPIntegerCode:(unsigned int)code;
@end

@implementation MTRError

+ (id)errorForCHIPIntegerCode:(unsigned int)code
{
  codeCopy = code;
  objc_opt_self();

  return sub_23921C230(MTRError, codeCopy, 0, 0);
}

@end
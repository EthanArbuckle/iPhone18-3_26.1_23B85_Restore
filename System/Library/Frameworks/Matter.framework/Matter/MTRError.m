@interface MTRError
+ (id)errorForCHIPIntegerCode:(unsigned int)a3;
@end

@implementation MTRError

+ (id)errorForCHIPIntegerCode:(unsigned int)a3
{
  v3 = a3;
  objc_opt_self();

  return sub_23921C230(MTRError, v3, 0, 0);
}

@end
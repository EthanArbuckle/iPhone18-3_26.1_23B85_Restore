@interface WKProcessExtension
+ (id)sharedInstance;
@end

@implementation WKProcessExtension

+ (id)sharedInstance
{
  if (_MergedGlobals_141 == 1)
  {
    return qword_1ED643200;
  }

  result = 0;
  qword_1ED643200 = 0;
  _MergedGlobals_141 = 1;
  return result;
}

@end
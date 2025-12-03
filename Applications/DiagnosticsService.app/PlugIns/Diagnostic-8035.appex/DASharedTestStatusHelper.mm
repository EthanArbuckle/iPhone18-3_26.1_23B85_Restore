@interface DASharedTestStatusHelper
+ (id)statusCodeForArchiveError:(id)error;
@end

@implementation DASharedTestStatusHelper

+ (id)statusCodeForArchiveError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  v5 = -999;
  if (errorCopy)
  {
    code = [errorCopy code];
    if ((code - 1) < 0xA)
    {
      v5 = (code - 2010);
    }
  }

  v7 = [NSNumber numberWithInteger:v5];

  return v7;
}

@end
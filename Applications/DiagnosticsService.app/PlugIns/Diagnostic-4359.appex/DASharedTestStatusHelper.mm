@interface DASharedTestStatusHelper
+ (id)statusCodeForArchiveError:(id)a3;
@end

@implementation DASharedTestStatusHelper

+ (id)statusCodeForArchiveError:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = -999;
  if (v3)
  {
    v6 = [v3 code];
    if ((v6 - 1) < 0xA)
    {
      v5 = (v6 - 2010);
    }
  }

  v7 = [NSNumber numberWithInteger:v5];

  return v7;
}

@end
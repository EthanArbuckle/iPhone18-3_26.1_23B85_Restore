@interface NSString
+ (id)downloadedOnlyMessage;
@end

@implementation NSString

+ (id)downloadedOnlyMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Showing only music on this iPhone" value:&stru_101107168 table:0];

  return v3;
}

@end
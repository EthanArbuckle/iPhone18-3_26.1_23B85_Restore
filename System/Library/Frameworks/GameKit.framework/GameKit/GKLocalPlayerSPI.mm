@interface GKLocalPlayerSPI
+ (NSString)playerID;
@end

@implementation GKLocalPlayerSPI

+ (NSString)playerID
{
  v2 = [objc_msgSend(off_278236550 "local")];

  return [v2 playerID];
}

@end
@interface MTROTAHeaderParser
+ (MTROTAHeader)headerFromData:(NSData *)data error:(NSError *)error;
@end

@implementation MTROTAHeaderParser

+ (MTROTAHeader)headerFromData:(NSData *)data error:(NSError *)error
{
  v5 = data;
  v6 = [[MTROTAHeader alloc] initWithData:v5];
  v7 = v6;
  if (error && !v6)
  {
    *error = sub_23921C1E4(MTRError, 0x520000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAHeader.mm");
  }

  return v7;
}

@end
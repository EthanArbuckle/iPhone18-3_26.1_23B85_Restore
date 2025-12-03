@interface AudioAssetReader
- (int)fillNextBuffer:(AudioBufferList *)buffer frameCount:(int)count;
@end

@implementation AudioAssetReader

- (int)fillNextBuffer:(AudioBufferList *)buffer frameCount:(int)count
{

  v6 = sub_1000DB91C(buffer, count);

  return v6;
}

@end
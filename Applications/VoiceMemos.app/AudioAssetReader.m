@interface AudioAssetReader
- (int)fillNextBuffer:(AudioBufferList *)a3 frameCount:(int)a4;
@end

@implementation AudioAssetReader

- (int)fillNextBuffer:(AudioBufferList *)a3 frameCount:(int)a4
{

  v6 = sub_1000DB91C(a3, a4);

  return v6;
}

@end
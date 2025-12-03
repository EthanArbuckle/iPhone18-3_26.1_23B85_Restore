@interface MPModelResponse
- (BOOL)hasVideoArtworkAt:(id)at;
@end

@implementation MPModelResponse

- (BOOL)hasVideoArtworkAt:(id)at
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v7 = variable initialization expression of Library.Context.useDownloadedContentOnly();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

@end
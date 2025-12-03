@interface GenericMapAssetView
- (CGRect)bounds;
- (CGRect)frame;
- (void)userInterfaceStyleChanged;
@end

@implementation GenericMapAssetView

- (CGRect)frame
{
  sub_10071A4C4(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_10071A4C4(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)userInterfaceStyleChanged
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapThumbnailView);
  selfCopy = self;
  [v2 setImage:0];
  sub_1007195FC();
}

@end
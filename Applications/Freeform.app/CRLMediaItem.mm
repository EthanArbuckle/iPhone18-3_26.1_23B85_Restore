@interface CRLMediaItem
- (BOOL)canResetMediaSize;
- (BOOL)hasRoundedCorners;
- (CGSize)mediaRawPixelSize;
- (void)scaleDownSizeToFitWithinSize:(CGSize)size board:(id)board;
- (void)takePropertiesFromReplacedBoardItem:(id)item;
@end

@implementation CRLMediaItem

- (BOOL)canResetMediaSize
{
  v2 = *(**&self->super.super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 368);
  selfCopy = self;

  LOBYTE(v2) = v2(v4);

  if (v2)
  {

    return 0;
  }

  else
  {
    v7 = (*((swift_isaMask & *selfCopy->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x528))(v5);
    v9 = v8;

    return v9 != 0.0 || v7 != 0.0;
  }
}

- (CGSize)mediaRawPixelSize
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)takePropertiesFromReplacedBoardItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_100B4100C(itemCopy);
}

- (BOOL)hasRoundedCorners
{
  v2 = *((swift_isaMask & *self->super.super._TtC8Freeform12CRLBoardItem_opaque) + 0x560);
  selfCopy = self;
  v4 = v2();

  return v4 != 0.0;
}

- (void)scaleDownSizeToFitWithinSize:(CGSize)size board:(id)board
{
  height = size.height;
  width = size.width;
  boardCopy = board;
  selfCopy = self;
  sub_100B416E4(width, height);
}

@end
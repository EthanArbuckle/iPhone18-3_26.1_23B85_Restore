@interface ArcadeDownloadPackCollectionViewCell
- (void)layoutSubviews;
@end

@implementation ArcadeDownloadPackCollectionViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ArcadeDownloadPackCollectionViewCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView];
  sub_1007477B4();
  [v3 setFrame:{v4.receiver, v4.super_class}];
}

@end
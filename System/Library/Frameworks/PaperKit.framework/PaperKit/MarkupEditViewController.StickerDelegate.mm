@interface MarkupEditViewController.StickerDelegate
- (_TtCC8PaperKit24MarkupEditViewController15StickerDelegate)init;
- (void)insertStickerFromItemProvider:(id)provider completionHandler:(id)handler;
@end

@implementation MarkupEditViewController.StickerDelegate

- (_TtCC8PaperKit24MarkupEditViewController15StickerDelegate)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MarkupEditViewController.StickerDelegate();
  return [(MarkupEditViewController.StickerDelegate *)&v4 init];
}

- (void)insertStickerFromItemProvider:(id)provider completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  providerCopy = provider;
  selfCopy = self;
  specialized MarkupEditViewController.StickerDelegate.insertSticker(from:completionHandler:)(providerCopy);
  _Block_release(v6);
}

@end
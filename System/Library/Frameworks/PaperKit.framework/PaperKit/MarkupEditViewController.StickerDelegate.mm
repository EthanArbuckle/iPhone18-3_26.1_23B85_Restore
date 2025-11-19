@interface MarkupEditViewController.StickerDelegate
- (_TtCC8PaperKit24MarkupEditViewController15StickerDelegate)init;
- (void)insertStickerFromItemProvider:(id)a3 completionHandler:(id)a4;
@end

@implementation MarkupEditViewController.StickerDelegate

- (_TtCC8PaperKit24MarkupEditViewController15StickerDelegate)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MarkupEditViewController.StickerDelegate();
  return [(MarkupEditViewController.StickerDelegate *)&v4 init];
}

- (void)insertStickerFromItemProvider:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  specialized MarkupEditViewController.StickerDelegate.insertSticker(from:completionHandler:)(v7);
  _Block_release(v6);
}

@end
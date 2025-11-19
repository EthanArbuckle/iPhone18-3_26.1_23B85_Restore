@interface StickerSearchClientToHostAction
- (_TtC10StickerKit31StickerSearchClientToHostAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (void)performActionForSceneController:(id)a3;
@end

@implementation StickerSearchClientToHostAction

- (void)performActionForSceneController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A6A9390(v4);
}

- (_TtC10StickerKit31StickerSearchClientToHostAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_19A66B5E0;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = a5;
  return sub_19A6AA0B8(a3, a5, v9, v10, &block_descriptor_33, type metadata accessor for StickerSearchClientToHostAction, a4);
}

@end
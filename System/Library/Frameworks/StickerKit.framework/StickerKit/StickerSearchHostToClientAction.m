@interface StickerSearchHostToClientAction
- (_TtC10StickerKit31StickerSearchHostToClientAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (void)performActionForHostedWindowScene:(id)a3;
@end

@implementation StickerSearchHostToClientAction

- (void)performActionForHostedWindowScene:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A6A9944(v4);
}

- (_TtC10StickerKit31StickerSearchHostToClientAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_19A66B2F4;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = a5;
  return sub_19A6AA0B8(a3, a5, v9, v10, &block_descriptor_10, type metadata accessor for StickerSearchHostToClientAction, a4);
}

@end
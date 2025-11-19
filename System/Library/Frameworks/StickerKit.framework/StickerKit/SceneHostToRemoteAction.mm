@interface SceneHostToRemoteAction
- (_TtC10StickerKit23SceneHostToRemoteAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
@end

@implementation SceneHostToRemoteAction

- (_TtC10StickerKit23SceneHostToRemoteAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
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
  return sub_19A716C98(a3, a5, v9, v10, &block_descriptor_24, type metadata accessor for SceneHostToRemoteAction, a4);
}

@end
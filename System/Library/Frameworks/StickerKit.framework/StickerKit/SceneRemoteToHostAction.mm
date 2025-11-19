@interface SceneRemoteToHostAction
- (_TtC10StickerKit23SceneRemoteToHostAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
@end

@implementation SceneRemoteToHostAction

- (_TtC10StickerKit23SceneRemoteToHostAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
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
  return sub_19A716C98(a3, a5, v9, v10, &block_descriptor_30, type metadata accessor for SceneRemoteToHostAction, a4);
}

@end
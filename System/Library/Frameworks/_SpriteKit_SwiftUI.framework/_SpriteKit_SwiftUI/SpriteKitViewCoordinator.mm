@interface SpriteKitViewCoordinator
- (_TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator)init;
- (_TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SpriteKitViewCoordinator

- (_TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator)init
{
  v3 = self + OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 6) = 0;
  outlined consume of SpriteKitViewState?(0, 0, 0, 0, 0, 0, 0);
  v5.receiver = self;
  v5.super_class = type metadata accessor for SpriteKitViewCoordinator();
  return [(SKView *)&v5 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = type metadata accessor for SpriteKitViewCoordinator();
  v2 = v19.receiver;
  [(SKView *)&v19 layoutSubviews];
  v3 = &v2[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState];
  v4 = *&v2[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState];
  if (v4)
  {
    v6 = *(v3 + 5);
    v5 = *(v3 + 6);
    v8 = *(v3 + 3);
    v7 = *(v3 + 4);
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    v13[0] = *&v2[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator_deferredState];
    v13[1] = v10;
    v14 = v9 & 1;
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    swift_unknownObjectRetain();
    v11 = v4;
    v12 = v10;
    SKView.assignState(state:)(v13);

    outlined consume of SpriteKitViewState?(v4, v10, v9, v8, v7, v6, v5);
  }

  else
  {
  }
}

- (_TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5324SpriteKitViewCoordinator)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
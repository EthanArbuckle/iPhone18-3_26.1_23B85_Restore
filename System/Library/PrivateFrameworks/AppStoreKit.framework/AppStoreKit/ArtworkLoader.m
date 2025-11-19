@interface ArtworkLoader
- (void)imageRequest:(id)a3 didFailWithError:(id)a4;
- (void)imageRequest:(id)a3 didLoadImage:(id)a4;
- (void)resourceLoaderDidBeginLoading;
- (void)resourceLoaderDidIdle;
- (void)resourceLoaderDidLoadAllForReason:(id)a3;
@end

@implementation ArtworkLoader

- (void)imageRequest:(id)a3 didLoadImage:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_1E1AAF6C4(v5, a4, 0);
}

- (void)imageRequest:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  v6 = a4;

  ArtworkLoader.imageRequest(_:didFailWithError:)(v5, v6);
}

- (void)resourceLoaderDidBeginLoading
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *&self->assetObserver[15];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);

    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

- (void)resourceLoaderDidLoadAllForReason:(id)a3
{
  v4 = sub_1E1AEF55C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  if (sub_1E1AB2820() && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v8 = *&self->assetObserver[15];
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
}

- (void)resourceLoaderDidIdle
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *&self->assetObserver[15];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);

    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

@end
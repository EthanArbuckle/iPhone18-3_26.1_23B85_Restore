@interface ImageResourceAdaptor
- (UIImage)image;
- (_TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor)init;
- (id)load;
- (void)dealloc;
@end

@implementation ImageResourceAdaptor

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor_resource);
  v3 = self;
  [v2 removeObserver:v3];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ImageResourceAdaptor();
  [(ImageResourceAdaptor *)&v4 dealloc];
}

- (UIImage)image
{
  v2 = self;
  v3 = sub_190690();

  return v3;
}

- (id)load
{
  v2 = self;
  v3 = sub_190760();

  return v3;
}

- (_TtC11BookStoreUIP33_5F65FBF02658678FCCE73175674AAD1F20ImageResourceAdaptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
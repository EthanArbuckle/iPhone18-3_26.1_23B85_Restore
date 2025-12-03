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
  selfCopy = self;
  [v2 removeObserver:selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ImageResourceAdaptor();
  [(ImageResourceAdaptor *)&v4 dealloc];
}

- (UIImage)image
{
  selfCopy = self;
  v3 = sub_190690();

  return v3;
}

- (id)load
{
  selfCopy = self;
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
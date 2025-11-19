@interface PhotoLibrary
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
@end

@implementation PhotoLibrary

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary);
  v3 = self;
  [v2 unregisterChangeObserver:v3];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for PhotoLibrary();
  [(PhotoLibrary *)&v4 dealloc];
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000FFFC();
}

@end
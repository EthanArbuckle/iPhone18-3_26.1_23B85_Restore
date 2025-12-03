@interface PhotoLibrary
- (void)dealloc;
- (void)photoLibraryDidChange:(id)change;
@end

@implementation PhotoLibrary

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary);
  selfCopy = self;
  [v2 unregisterChangeObserver:selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for PhotoLibrary();
  [(PhotoLibrary *)&v4 dealloc];
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100020CF0();
}

@end
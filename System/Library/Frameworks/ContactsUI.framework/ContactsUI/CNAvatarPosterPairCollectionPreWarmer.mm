@interface CNAvatarPosterPairCollectionPreWarmer
- (_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer)init;
- (_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer)initWithContact:(id)contact contactForSharedProfile:(id)profile;
- (void)dealloc;
- (void)preWarmFirstPosterSnapshotIn:(id)in;
@end

@implementation CNAvatarPosterPairCollectionPreWarmer

- (_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer)initWithContact:(id)contact contactForSharedProfile:(id)profile
{
  contactCopy = contact;
  profileCopy = profile;
  v7 = sub_199AA1DA8(contactCopy, profileCopy);

  return v7;
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModelSubscriber))
  {
    selfCopy = self;

    sub_199DF83AC();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CNAvatarPosterPairCollectionPreWarmer();
  [(CNAvatarPosterPairCollectionPreWarmer *)&v5 dealloc];
}

- (void)preWarmFirstPosterSnapshotIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_199AA1108(inCopy);
}

- (_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
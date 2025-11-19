@interface CNAvatarPosterPairCollectionPreWarmer
- (_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer)init;
- (_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer)initWithContact:(id)a3 contactForSharedProfile:(id)a4;
- (void)dealloc;
- (void)preWarmFirstPosterSnapshotIn:(id)a3;
@end

@implementation CNAvatarPosterPairCollectionPreWarmer

- (_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer)initWithContact:(id)a3 contactForSharedProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_199AA1DA8(v5, v6);

  return v7;
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer_carouselViewModelSubscriber))
  {
    v3 = self;

    sub_199DF83AC();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CNAvatarPosterPairCollectionPreWarmer();
  [(CNAvatarPosterPairCollectionPreWarmer *)&v5 dealloc];
}

- (void)preWarmFirstPosterSnapshotIn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_199AA1108(v4);
}

- (_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface MTAppCoreSpotlightEntityAnnotator
- (MTAppCoreSpotlightEntityAnnotator)init;
- (id)annotateItem:(id)item withManagedObject:(id)object;
- (id)annotateItem:(id)item withPlayerItem:(id)playerItem;
@end

@implementation MTAppCoreSpotlightEntityAnnotator

- (MTAppCoreSpotlightEntityAnnotator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppCoreSpotlightEntityAnnotator();
  return [(MTAppCoreSpotlightEntityAnnotator *)&v3 init];
}

- (id)annotateItem:(id)item withManagedObject:(id)object
{
  itemCopy = item;
  objectCopy = object;
  selfCopy = self;
  sub_10034C1F0(objectCopy, &v10);
  if (v11)
  {
    sub_1000109E4(&v10, v12);
    sub_1000044A0(v12, v12[3]);
    CSSearchableItem.associateAppEntity<A>(_:priority:)();

    sub_100004590(v12);
  }

  else
  {

    sub_10034C438(&v10);
  }

  return itemCopy;
}

- (id)annotateItem:(id)item withPlayerItem:(id)playerItem
{
  v6 = type metadata accessor for EpisodeEntity();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  itemCopy = item;
  playerItemCopy = playerItem;
  episode = [playerItemCopy episode];
  if (episode)
  {
    v13 = episode;
    EpisodeEntity.init(model:)();
    sub_10034C4A0(&qword_100580AF0, &type metadata accessor for EpisodeEntity);
    CSSearchableItem.associateAppEntity<A>(_:priority:)();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
  }

  return itemCopy;
}

@end
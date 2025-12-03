@interface MTPodcastDetailEpisodeSection
+ (id)dependentPropertyKeys;
- (MTPodcastDetailEpisodeSectionDelegate)delegate;
- (NSString)description;
- (NSString)title;
- (id)episodes;
- (unint64_t)indexOfEpisode:(id)episode;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)initializeFrc;
@end

@implementation MTPodcastDetailEpisodeSection

- (NSString)description
{
  v3 = [&off_1005023F8 objectAtIndexedSubscript:{-[MTPodcastDetailEpisodeSection sectionType](self, "sectionType")}];
  episodes = [(MTPodcastDetailEpisodeSection *)self episodes];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Section: %@ (%lu)", v3, [episodes count]);

  return v5;
}

- (NSString)title
{
  if (self->_showTitleWithNoEpisodes || (-[MTPodcastDetailEpisodeSection episodes](self, "episodes"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v5 = self->_title;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initializeFrc
{
  if (!self->_frc)
  {
    v14[7] = v2;
    v14[8] = v3;
    v5 = [NSFetchRequest alloc];
    v6 = [v5 initWithEntityName:kMTEpisodeEntityName];
    [v6 setPredicate:self->_predicate];
    [v6 setSortDescriptors:self->_sortDescriptors];
    v7 = +[MTDB sharedInstance];
    mainQueueContext = [v7 mainQueueContext];

    v9 = [[MTFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:mainQueueContext sectionNameKeyPath:0 cacheName:0];
    dependentPropertyKeys = [objc_opt_class() dependentPropertyKeys];
    [v9 setPropertyKeys:dependentPropertyKeys];

    [v9 setDelegate:self];
    v14[0] = 0;
    v11 = [v9 performFetch:v14];
    v12 = v14[0];
    v13 = v12;
    if (v11)
    {
      [(MTPodcastDetailEpisodeSection *)self setFrc:v9];
    }

    else
    {
      [v12 logAndThrow:1];
    }
  }
}

+ (id)dependentPropertyKeys
{
  v4[0] = kEpisodeUuid;
  v4[1] = kEpisodeGuid;
  v4[2] = kEpisodeTitle;
  v4[3] = kEpisodeCleanedTitle;
  v4[4] = kEpisodeDescription;
  v4[5] = kEpisodeEnclosureUrl;
  v4[6] = kEpisodeFeedDeleted;
  v4[7] = kEpisodeAssetURL;
  v4[8] = kEpisodeSuppressAutoDownload;
  v4[9] = kEpisodePubDate;
  v4[10] = kEpisodeDuration;
  v4[11] = kEpisodeAudio;
  v4[12] = kEpisodeVideo;
  v4[13] = kEpisodeExternalType;
  v4[14] = kEpisodeUti;
  v4[15] = kEpisodeExplicit;
  v4[16] = kEpisodeIsFromiTunesSync;
  v4[17] = kEpisodePlayState;
  v4[18] = kEpisodePlayStateManuallySet;
  v4[19] = kEpisodeBackCatalog;
  v2 = [NSArray arrayWithObjects:v4 count:20];

  return v2;
}

- (id)episodes
{
  v2 = [(MTPodcastDetailEpisodeSection *)self frc];
  fetchedObjects = [v2 fetchedObjects];

  return fetchedObjects;
}

- (unint64_t)indexOfEpisode:(id)episode
{
  episodeCopy = episode;
  v5 = [(MTPodcastDetailEpisodeSection *)self frc];
  v6 = [v5 indexPathForObject:episodeCopy];

  if (v6)
  {
    v7 = [v6 row];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  v15 = indexPathCopy;
  if (pathCopy)
  {
    v16 = [pathCopy row];
    if (v15)
    {
LABEL_3:
      v17 = [v15 row];
      goto LABEL_6;
    }
  }

  else
  {
    v16 = -1;
    if (indexPathCopy)
    {
      goto LABEL_3;
    }
  }

  v17 = -1;
LABEL_6:
  delegate = [(MTPodcastDetailEpisodeSection *)self delegate];
  [delegate episodeSection:self didChangeObject:objectCopy atIndex:v16 forChangeType:type newIndex:v17];
}

- (void)controllerWillChangeContent:(id)content
{
  delegate = [(MTPodcastDetailEpisodeSection *)self delegate];
  [delegate sectionWillChangeContent:self];
}

- (void)controllerDidChangeContent:(id)content
{
  delegate = [(MTPodcastDetailEpisodeSection *)self delegate];
  [delegate sectionDidChangeContent:self];
}

- (MTPodcastDetailEpisodeSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
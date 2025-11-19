@interface MTPodcastDetailEpisodeSection
+ (id)dependentPropertyKeys;
- (MTPodcastDetailEpisodeSectionDelegate)delegate;
- (NSString)description;
- (NSString)title;
- (id)episodes;
- (unint64_t)indexOfEpisode:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)initializeFrc;
@end

@implementation MTPodcastDetailEpisodeSection

- (NSString)description
{
  v3 = [&off_1005023F8 objectAtIndexedSubscript:{-[MTPodcastDetailEpisodeSection sectionType](self, "sectionType")}];
  v4 = [(MTPodcastDetailEpisodeSection *)self episodes];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Section: %@ (%lu)", v3, [v4 count]);

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
    v8 = [v7 mainQueueContext];

    v9 = [[MTFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:v8 sectionNameKeyPath:0 cacheName:0];
    v10 = [objc_opt_class() dependentPropertyKeys];
    [v9 setPropertyKeys:v10];

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
  v3 = [v2 fetchedObjects];

  return v3;
}

- (unint64_t)indexOfEpisode:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastDetailEpisodeSection *)self frc];
  v6 = [v5 indexPathForObject:v4];

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

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = v14;
  if (v13)
  {
    v16 = [v13 row];
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
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v17 = -1;
LABEL_6:
  v18 = [(MTPodcastDetailEpisodeSection *)self delegate];
  [v18 episodeSection:self didChangeObject:v12 atIndex:v16 forChangeType:a6 newIndex:v17];
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = [(MTPodcastDetailEpisodeSection *)self delegate];
  [v4 sectionWillChangeContent:self];
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = [(MTPodcastDetailEpisodeSection *)self delegate];
  [v4 sectionDidChangeContent:self];
}

- (MTPodcastDetailEpisodeSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
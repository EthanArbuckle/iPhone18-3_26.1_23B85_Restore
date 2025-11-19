@interface MTPodcastDetailDataSource
+ (id)predicateForPodcast:(id)a3 sectionType:(unint64_t)a4;
+ (id)sortDescriptorsForPodcastUuid:(id)a3;
- (MTPodcastDetailDataSource)initWithPodcastUuid:(id)a3;
- (MTPodcastDetailDataSourceDelegate)delegate;
- (id)createSectionForDarkPlacard;
- (id)createSectionForEmptyOverlay;
- (id)createSectionForFeed;
- (id)createSectionForIsFromiTunesSync;
- (id)createSectionForOtherEpisodes;
- (id)createSectionForPlayedToBeDeleted;
- (id)createSectionForUnplayed;
- (id)feedSections;
- (id)podcast;
- (id)savedSections;
- (id)unplayedSections;
- (unint64_t)indexForSection:(id)a3;
- (void)episodeSection:(id)a3 didChangeObject:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6 newIndex:(unint64_t)a7;
- (void)reloadData;
- (void)sectionDidChangeContent:(id)a3;
- (void)sectionWillChangeContent:(id)a3;
- (void)setSelectedTab:(unint64_t)a3;
@end

@implementation MTPodcastDetailDataSource

- (MTPodcastDetailDataSource)initWithPodcastUuid:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTPodcastDetailDataSource;
  v6 = [(MTPodcastDetailDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_podcastUuid, a3);
    v7->_showOnlyRssContent = 0;
  }

  return v7;
}

- (void)setSelectedTab:(unint64_t)a3
{
  if (self->_selectedTab != a3 || !self->_sections)
  {
    self->_selectedTab = a3;
    [(MTPodcastDetailDataSource *)self reloadData];
  }
}

- (void)reloadData
{
  selectedTab = self->_selectedTab;
  if (selectedTab == 2)
  {
    v4 = [(MTPodcastDetailDataSource *)self savedSections];
  }

  else if (selectedTab == 1)
  {
    v4 = [(MTPodcastDetailDataSource *)self feedSections];
  }

  else if (selectedTab)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(MTPodcastDetailDataSource *)self unplayedSections];
  }

  sections = self->_sections;
  self->_sections = v4;
}

- (id)podcast
{
  if (self->_podcastUuid)
  {
    v3 = +[MTDB sharedInstance];
    v4 = [v3 mainQueueContext];
    v5 = [v4 podcastForUuid:self->_podcastUuid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unplayedSections
{
  v3 = [(MTPodcastDetailDataSource *)self createSectionForUnplayed];
  v9[0] = v3;
  v4 = [(MTPodcastDetailDataSource *)self createSectionForOtherEpisodes];
  v9[1] = v4;
  v5 = [(MTPodcastDetailDataSource *)self createSectionForEmptyOverlay];
  v9[2] = v5;
  v6 = [(MTPodcastDetailDataSource *)self createSectionForPlayedToBeDeleted];
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)feedSections
{
  v2 = [(MTPodcastDetailDataSource *)self createSectionForFeed];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)savedSections
{
  v2 = [(MTPodcastDetailDataSource *)self createSectionForIsFromiTunesSync];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (unint64_t)indexForSection:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastDetailDataSource *)self sections];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (void)sectionWillChangeContent:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastDetailDataSource *)self delegate];
  [v5 sectionWillChangeContent:v4];
}

- (void)sectionDidChangeContent:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastDetailDataSource *)self delegate];
  [v5 sectionDidChangeContent:v4];
}

- (void)episodeSection:(id)a3 didChangeObject:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6 newIndex:(unint64_t)a7
{
  v12 = a4;
  v13 = a3;
  v14 = [(MTPodcastDetailDataSource *)self indexForSection:v13];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = +[IMLogger sharedLogger];
    [v19 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Classes/ViewControllers/PodcastsTab/PodcastDetail/MTPodcastDetailDataSource.m" lineNumber:145 format:{@"Observed change for object %@ in section %@ but can't find the section index", v12, v13}];
  }

  else
  {
    v15 = v14;
    if (a5 == -1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [NSIndexPath indexPathForRow:a5 inSection:v14];
    }

    v19 = v16;
    if (a7 == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = [NSIndexPath indexPathForRow:a7 inSection:v15];
    }

    v18 = [(MTPodcastDetailDataSource *)self delegate];
    [v18 episodeSection:v13 didChangeObject:v12 atIndexPath:v19 forChangeType:a6 newIndexPath:v17];

    v12 = v18;
    v13 = v17;
  }
}

+ (id)sortDescriptorsForPodcastUuid:(id)a3
{
  v3 = a3;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainQueueContext];

  v6 = [v5 podcastForUuid:v3];

  if (v6)
  {
    v7 = [v6 sortDescriptorsForSortOrder];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (id)createSectionForUnplayed
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  v8 = objc_opt_class();
  v9 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v10 = [v8 sortDescriptorsForPodcastUuid:v9];
  [v7 setSortDescriptors:v10];

  [v7 setSectionType:1];
  v11 = [objc_opt_class() predicateForPodcast:v6 sectionType:1];
  [v7 setPredicate:v11];

  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForOtherEpisodes
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  if (v6)
  {
    v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:3];
    [v7 setPredicate:v8];
  }

  v9 = objc_opt_class();
  v10 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:v10];
  [v7 setSortDescriptors:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"OTHER_EPISODES_SECTION" value:&stru_1004F3018 table:0];
  [v7 setTitle:v13];

  [v7 setSectionType:3];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForEmptyOverlay
{
  v2 = objc_opt_new();
  v3 = [NSPredicate predicateWithValue:0];
  [v2 setPredicate:v3];

  [v2 setSortDescriptors:&__NSArray0__struct];
  [v2 setSectionType:8];

  return v2;
}

- (id)createSectionForDarkPlacard
{
  v2 = objc_opt_new();
  v3 = [NSPredicate predicateWithValue:0];
  [v2 setPredicate:v3];

  [v2 setSortDescriptors:&__NSArray0__struct];
  [v2 setSectionType:10];

  return v2;
}

- (id)createSectionForPlayedToBeDeleted
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:4];
  [v7 setPredicate:v8];

  v9 = objc_opt_class();
  v10 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:v10];
  [v7 setSortDescriptors:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Played Episodes to be Deleted" value:&stru_1004F3018 table:0];
  [v7 setTitle:v13];

  [v7 setSectionType:4];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForIsFromiTunesSync
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:7];
  [v7 setPredicate:v8];

  v9 = objc_opt_class();
  v10 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:v10];
  [v7 setSortDescriptors:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"From Your Computer" value:&stru_1004F3018 table:0];
  [v7 setTitle:v13];

  [v7 setSectionType:7];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForFeed
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:6];
  if (self->_showOnlyRssContent)
  {
    v9 = +[MTEpisode predicateForRSSEpisodes];
    v10 = [v8 AND:v9];

    v8 = v10;
  }

  [v7 setPredicate:v8];
  v11 = objc_opt_class();
  v12 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v13 = [v11 sortDescriptorsForPodcastUuid:v12];
  [v7 setSortDescriptors:v13];

  [v7 setSectionType:6];
  [v7 setTitle:0];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

+ (id)predicateForPodcast:(id)a3 sectionType:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 deletePlayedEpisodesResolvedValue];
  v7 = 0;
  if (a4 <= 6)
  {
    if (a4 > 3)
    {
      if (a4 == 4)
      {
        v9 = [v5 uuid];
        v11 = [MTEpisode predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:v9 deletePlayedEpisodes:v6];
      }

      else
      {
        if (a4 != 6)
        {
          goto LABEL_25;
        }

        v9 = [v5 uuid];
        v11 = [MTEpisode predicateForEpisodesInFeedForPodcastUuid:v9];
      }
    }

    else
    {
      if (a4 != 1)
      {
        if (a4 != 3)
        {
          goto LABEL_25;
        }

        v8 = [v5 uuid];
        v9 = [MTEpisode predicateForEpisodesOnPodcastUuid:v8 deletePlayedEpisodes:v6];

        v10 = [v5 uuid];
        v7 = [MTEpisode predicateForOtherEpisodesOnPodcastUuid:v10 baseEpisodesPredicate:v9 deletePlayedEpisodes:v6];

        goto LABEL_24;
      }

      v9 = [v5 uuid];
      v11 = [MTEpisode predicateForEpisodesOnPodcastUuid:v9 deletePlayedEpisodes:v6];
    }

    goto LABEL_23;
  }

  if (a4 <= 10)
  {
    if (a4 == 7)
    {
      v9 = [v5 uuid];
      v11 = [MTEpisode predicateForEpisodesIsFromiTunesSyncOnPodcastUuid:v9];
    }

    else
    {
      if (a4 != 9)
      {
        goto LABEL_25;
      }

      v9 = [v5 uuid];
      v11 = [MTEpisode predicateForUserEpisodesOnPodcastUuid:v9 episodeLimit:0 deletePlayedEpisodes:v6 limitToDownloadBehaviorAutomatic:0];
    }

    goto LABEL_23;
  }

  if (a4 == 11)
  {
    v9 = [v5 nextEpisodeUuid];
    if (v9)
    {
      [MTEpisode predicateForEpisodeUuid:v9];
    }

    else
    {
      +[NSPredicate falsePredicate];
    }
    v11 = ;
LABEL_23:
    v7 = v11;
    goto LABEL_24;
  }

  if (a4 != 12)
  {
    goto LABEL_25;
  }

  v9 = [v5 uuid];
  v12 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v9];
  v13 = [MTEpisode predicateForVisuallyPlayed:0];
  v7 = [v12 AND:v13];

LABEL_24:
LABEL_25:

  return v7;
}

- (MTPodcastDetailDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
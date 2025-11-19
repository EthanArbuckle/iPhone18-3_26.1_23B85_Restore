@interface MTURLCommandRequest
- (MTURLCommandRequest)initWithURLString:(id)a3;
- (id)copyWithPlayReason:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_loadQueryParameterValuesFromString:(id)a3;
- (void)_lookupEpisodeUuidIfNecessaryFromURLString:(id)a3;
- (void)_lookupPodcastUuidIfNecessaryFromURLString:(id)a3;
@end

@implementation MTURLCommandRequest

- (MTURLCommandRequest)initWithURLString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTURLCommandRequest;
  v6 = [(MTURLCommandRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlString, a3);
    [(MTURLCommandRequest *)v7 _loadQueryParameterValuesFromString:v5];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(NSString *)self->_urlString copy];
  v6 = v4[1];
  v4[1] = v5;

  v4[2] = self->_commandType;
  v4[3] = self->_playQueueType;
  v4[4] = self->_playReason;
  v4[5] = self->_playbackOrder;
  v4[6] = self->_playContext;
  v4[7] = self->_playContextSortType;
  v7 = [(NSString *)self->_podcastUuid copy];
  v8 = v4[8];
  v4[8] = v7;

  v9 = [(NSString *)self->_podcastFeedUrl copy];
  v10 = v4[9];
  v4[9] = v9;

  v11 = [(NSString *)self->_episodeUuid copy];
  v12 = v4[10];
  v4[10] = v11;

  v13 = [(NSString *)self->_podcastAdamId copy];
  v14 = v4[11];
  v4[11] = v13;

  v15 = [(NSString *)self->_episodeAdamId copy];
  v16 = v4[12];
  v4[12] = v15;

  v17 = [(NSString *)self->_stationUuid copy];
  v18 = v4[13];
  v4[13] = v17;

  v19 = [(NSString *)self->_requesterDsid copy];
  v20 = v4[14];
  v4[14] = v19;

  return v4;
}

- (id)copyWithPlayReason:(unint64_t)a3
{
  result = [(MTURLCommandRequest *)self copy];
  *(result + 4) = a3;
  return result;
}

- (void)_loadQueryParameterValuesFromString:(id)a3
{
  v42 = a3;
  v4 = [NSURL URLWithString:v42];
  v5 = [v4 query];
  v6 = [MTPlaybackIdentifierUtil __queryStringToQueryDictionary:v5];

  v7 = +[MTPlaybackIdentifierUtil sharedInstance];
  v8 = [v7 isSubscribeCommandURLString:v42];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = +[MTPlaybackIdentifierUtil sharedInstance];
    v11 = [v10 isLocalSetPlaybackQueueURLString:v42];

    if (v11)
    {
      v9 = 2;
    }

    else
    {
      v12 = +[MTPlaybackIdentifierUtil sharedInstance];
      v13 = [v12 isUniversalPlaybackIdentifierURLString:v42];

      if (!v13)
      {
        goto LABEL_8;
      }

      v9 = 3;
    }
  }

  self->_commandType = v9;
LABEL_8:
  v14 = +[MTPlaybackIdentifierUtil sharedInstance];
  self->_playQueueType = [v14 _playQueueTypeForRequestURL:v4];

  v15 = +[MTPlaybackIdentifierUtil sharedInstance];
  v16 = [v6 objectForKeyedSubscript:@"playbackOrder"];
  self->_playbackOrder = [v15 _episodeOrderFromString:v16];

  v17 = +[MTPlaybackIdentifierUtil sharedInstance];
  v18 = [v6 objectForKeyedSubscript:@"playReason"];
  self->_playReason = [v17 _playReasonFromString:v18];

  v19 = +[MTPlaybackIdentifierUtil sharedInstance];
  v20 = [v6 objectForKeyedSubscript:@"context"];
  self->_playContext = [v19 _episodeContextFromString:v20];

  v21 = +[MTPlaybackIdentifierUtil sharedInstance];
  v22 = [v6 objectForKeyedSubscript:@"contextSortType"];
  self->_playContextSortType = [v21 _episodeContextSortFromString:v22];

  playQueueType = self->_playQueueType;
  if (playQueueType == 3)
  {
    v28 = [v6 objectForKeyedSubscript:@"uuid"];
    stationUuid = self->_stationUuid;
    self->_stationUuid = v28;

    v30 = [v6 objectForKeyedSubscript:@"episodeUuid"];
    episodeUuid = self->_episodeUuid;
    self->_episodeUuid = v30;
  }

  else
  {
    if (playQueueType != 2)
    {
      goto LABEL_13;
    }

    v24 = [v6 objectForKeyedSubscript:@"uuid"];
    podcastUuid = self->_podcastUuid;
    self->_podcastUuid = v24;

    v26 = [v6 objectForKeyedSubscript:@"episodeUuid"];
    v27 = self->_episodeUuid;
    self->_episodeUuid = v26;

    [(MTURLCommandRequest *)self _lookupPodcastUuidIfNecessaryFromURLString:v42];
  }

  [(MTURLCommandRequest *)self _lookupEpisodeUuidIfNecessaryFromURLString:v42];
LABEL_13:
  v32 = [v6 objectForKeyedSubscript:@"storeCollectionId"];
  podcastAdamId = self->_podcastAdamId;
  self->_podcastAdamId = v32;

  v34 = [v6 objectForKeyedSubscript:@"storeTrackId"];
  episodeAdamId = self->_episodeAdamId;
  self->_episodeAdamId = v34;

  v36 = [v6 objectForKeyedSubscript:@"podcastFeedUrl"];
  v37 = [MTPlaybackIdentifierUtil __stringByRemovingPercentEscapes:v36];

  v38 = [MTPlaybackIdentifierUtil __stringByRemovingPercentEscapes:v37];
  podcastFeedUrl = self->_podcastFeedUrl;
  self->_podcastFeedUrl = v38;

  v40 = [v6 objectForKeyedSubscript:@"enqueuerDSID"];
  requesterDsid = self->_requesterDsid;
  self->_requesterDsid = v40;
}

- (void)_lookupPodcastUuidIfNecessaryFromURLString:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10000F744;
  v14 = &unk_10002CD88;
  v16 = &v18;
  v7 = v6;
  v15 = v7;
  objc_copyWeak(&v17, &location);
  [v7 performBlockAndWait:&v11];
  if ((v19[3] & 1) == 0)
  {
    v8 = [MTPlaybackIdentifierUtil sharedInstance:v11];
    v9 = [v8 podcastUuidForSetPlaybackQueueRequestIdentifier:v4];
    podcastUuid = self->_podcastUuid;
    self->_podcastUuid = v9;
  }

  objc_destroyWeak(&v17);

  _Block_object_dispose(&v18, 8);
  objc_destroyWeak(&location);
}

- (void)_lookupEpisodeUuidIfNecessaryFromURLString:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10000F960;
  v14 = &unk_10002CD88;
  v16 = &v18;
  v7 = v6;
  v15 = v7;
  objc_copyWeak(&v17, &location);
  [v7 performBlockAndWait:&v11];
  if ((v19[3] & 1) == 0)
  {
    v8 = [MTPlaybackIdentifierUtil sharedInstance:v11];
    v9 = [v8 episodeUuidForSetPlaybackQueueRequestIdentifier:v4];
    episodeUuid = self->_episodeUuid;
    self->_episodeUuid = v9;
  }

  objc_destroyWeak(&v17);

  _Block_object_dispose(&v18, 8);
  objc_destroyWeak(&location);
}

@end
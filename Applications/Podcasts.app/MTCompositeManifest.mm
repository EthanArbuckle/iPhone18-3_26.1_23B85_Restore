@interface MTCompositeManifest
- (BOOL)isIndexFromUpNext:(unint64_t)next;
- (BOOL)isPlayingFromManifest:(id)manifest;
- (BOOL)networkUPPEnabled;
- (MTCompositeManifest)initWithUpNextManifest:(id)manifest userManifest:(id)userManifest loadQueue:(id)queue;
- (id)activity;
- (id)currentItem;
- (id)identifier;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)currentIndex;
- (unint64_t)determineCompositeIndexWithIndex:(unint64_t)index fromManifest:(id)manifest;
- (void)_currentItemDidChange:(id)change;
- (void)_determineManifest:(id *)manifest scalledIndex:(unint64_t *)index forIndex:(unint64_t)forIndex;
- (void)_load:(id)_load;
- (void)_setupManifestDefaults;
- (void)dealloc;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)notifyCurrentItemDidChange;
- (void)setCurrentIndex:(unint64_t)index;
@end

@implementation MTCompositeManifest

- (MTCompositeManifest)initWithUpNextManifest:(id)manifest userManifest:(id)userManifest loadQueue:(id)queue
{
  manifestCopy = manifest;
  userManifestCopy = userManifest;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = MTCompositeManifest;
  v12 = [(MTPlayerManifest *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_upNextManifest, manifest);
    objc_storeStrong(&v13->_userManifest, userManifest);
    objc_storeStrong(&v13->_loadQueue, queue);
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = IMPlayerManifestCurrentItemDidChange;
    [v14 addObserver:v13 selector:"_currentItemDidChange:" name:IMPlayerManifestCurrentItemDidChange object:v13->_upNextManifest];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v13 selector:"_currentItemDidChange:" name:v15 object:v13->_userManifest];
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTCompositeManifest;
  [(MTCompositeManifest *)&v4 dealloc];
}

- (id)identifier
{
  p_upNextManifest = &self->_upNextManifest;
  upNextManifest = self->_upNextManifest;
  if (!upNextManifest || ![(MTPlayerManifest *)upNextManifest count])
  {
    p_upNextManifest = &self->_userManifest;
  }

  identifier = [(MTPlayerManifest *)*p_upNextManifest identifier];

  return identifier;
}

- (BOOL)isPlayingFromManifest:(id)manifest
{
  manifestCopy = manifest;
  currentManifest = [(MTCompositeManifest *)self currentManifest];

  return currentManifest == manifestCopy;
}

- (BOOL)isIndexFromUpNext:(unint64_t)next
{
  v7 = 0;
  v8 = 0;
  [(MTCompositeManifest *)self _determineManifest:&v7 scalledIndex:&v8 forIndex:next];
  v4 = v7;
  upNextManifest = [(MTCompositeManifest *)self upNextManifest];

  return v4 == upNextManifest;
}

- (BOOL)networkUPPEnabled
{
  userManifest = [(MTCompositeManifest *)self userManifest];
  networkUPPEnabled = [userManifest networkUPPEnabled];

  return networkUPPEnabled;
}

- (void)_load:(id)_load
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100114228;
  v5[3] = &unk_1004D8520;
  selfCopy = self;
  _loadCopy = _load;
  v4.receiver = selfCopy;
  v4.super_class = MTCompositeManifest;
  v3 = _loadCopy;
  [(MTCompositeManifest *)&v4 _load:v5];
}

- (id)objectAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = 0;
  [(MTCompositeManifest *)self _determineManifest:&v6 scalledIndex:&v7 forIndex:index];
  v3 = v6;
  v4 = [v3 objectAtIndex:v7];

  return v4;
}

- (void)setCurrentIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || [(MTCompositeManifest *)self count]<= index)
  {
    [(MTCompositeManifest *)self setCurrentManifest:0];
    [(MTCompositeManifest *)self notifyCurrentItemDidChange];
    v5 = +[IMLogCategory player];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      indexCopy2 = index;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setCurrentIndex: %lu, not found", buf, 0xCu);
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    [(MTCompositeManifest *)self _determineManifest:&v19 scalledIndex:&v20 forIndex:index];
    v5 = v19;
    currentIndex = [v5 currentIndex];
    [(MTCompositeManifest *)self setCurrentManifest:v5];
    [v5 setCurrentIndex:v20];
    if (v20 == currentIndex)
    {
      [(MTCompositeManifest *)self notifyCurrentItemDidChange];
    }

    if ((os_feature_enabled_red_sun() & 1) == 0)
    {
      userManifest = [(MTCompositeManifest *)self userManifest];
      v12 = v20;

      if (v5 == userManifest && v12 > currentIndex)
      {
        v13 = +[MTPlayerController defaultInstance];
        player = [v13 player];
        manifest = [player manifest];
        v16 = [manifest isEqual:self];

        if (v16)
        {
          v17 = +[MTPlayerController defaultInstance];
          upNextController = [v17 upNextController];
          [upNextController clear];
        }
      }
    }

    v7 = +[IMLogCategory player];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v20;
      currentItem = [v5 currentItem];
      title = [currentItem title];
      *buf = 134218754;
      indexCopy2 = index;
      v23 = 2112;
      v24 = v5;
      v25 = 2048;
      v26 = v8;
      v27 = 2112;
      v28 = title;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setCurrentIndex: %lu, manifest: %@ scalled: %lu, item: %@", buf, 0x2Au);
    }
  }
}

- (unint64_t)currentIndex
{
  currentManifest = [(MTCompositeManifest *)self currentManifest];
  upNextManifest = [(MTCompositeManifest *)self upNextManifest];

  if (currentManifest == upNextManifest)
  {
    userManifest = [(MTCompositeManifest *)self userManifest];
    currentIndex = [userManifest currentIndex];

    if (currentIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      userManifest2 = [(MTCompositeManifest *)self userManifest];
      currentIndex2 = [userManifest2 currentIndex];
      upNextManifest2 = [(MTCompositeManifest *)self upNextManifest];
      currentIndex3 = [upNextManifest2 currentIndex] + currentIndex2 + 1;

      goto LABEL_9;
    }

    upNextManifest3 = [(MTCompositeManifest *)self upNextManifest];
LABEL_7:
    userManifest2 = upNextManifest3;
    currentIndex3 = [upNextManifest3 currentIndex];
LABEL_9:

    return currentIndex3;
  }

  currentManifest2 = [(MTCompositeManifest *)self currentManifest];
  userManifest3 = [(MTCompositeManifest *)self userManifest];

  if (currentManifest2 == userManifest3)
  {
    upNextManifest3 = [(MTCompositeManifest *)self userManifest];
    goto LABEL_7;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)currentItem
{
  currentManifest = [(MTCompositeManifest *)self currentManifest];

  if (currentManifest)
  {
    currentManifest2 = [(MTCompositeManifest *)self currentManifest];
    currentItem = [currentManifest2 currentItem];
  }

  else
  {
    currentItem = 0;
  }

  return currentItem;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100114AA8;
  v11 = &unk_1004DCD58;
  blockCopy = block;
  v12 = blockCopy;
  v13 = &v14;
  v5 = objc_retainBlock(&v8);
  v6 = [(MTCompositeManifest *)self userManifest:v8];
  [v6 enumerateObjectsUsingBlock:v5];

  if ((v15[3] & 1) == 0)
  {
    upNextManifest = [(MTCompositeManifest *)self upNextManifest];
    [upNextManifest enumerateObjectsUsingBlock:blockCopy];
  }

  _Block_object_dispose(&v14, 8);
}

- (id)activity
{
  currentManifest = [(MTCompositeManifest *)self currentManifest];

  if (currentManifest)
  {
    userManifest = [(MTCompositeManifest *)self userManifest];
    currentManifest = [userManifest activity];

    upNextManifest = [(MTCompositeManifest *)self upNextManifest];
    v6 = [(MTCompositeManifest *)self isPlayingFromManifest:upNextManifest];

    if (v6)
    {
      [currentManifest setEligibleForHandoff:0];
      [currentManifest setEligibleForSearch:0];
      [currentManifest setEligibleForPublicIndexing:0];
    }

    v7 = [NSNumber numberWithBool:v6];
    [currentManifest setValue:v7 forKey:@"MTCompositeManifestIsPlayingFromUpNext"];
  }

  return currentManifest;
}

- (unint64_t)determineCompositeIndexWithIndex:(unint64_t)index fromManifest:(id)manifest
{
  manifestCopy = manifest;
  userManifest = [(MTCompositeManifest *)self userManifest];
  v8 = [manifestCopy isEqual:userManifest];

  if (!v8)
  {
    upNextManifest = [(MTCompositeManifest *)self upNextManifest];
    v11 = [manifestCopy isEqual:upNextManifest];

    if (!v11)
    {
      index = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

    userManifest2 = [(MTCompositeManifest *)self userManifest];
    index += [userManifest2 currentIndex] + 1;
    goto LABEL_6;
  }

  if ([manifestCopy currentIndex] < index)
  {
    userManifest2 = [(MTCompositeManifest *)self upNextManifest];
    index += [userManifest2 count];
LABEL_6:
  }

LABEL_8:

  return index;
}

- (void)_determineManifest:(id *)manifest scalledIndex:(unint64_t *)index forIndex:(unint64_t)forIndex
{
  upNextManifest = [(MTCompositeManifest *)self upNextManifest];
  v10 = [upNextManifest count];

  userManifest = [(MTCompositeManifest *)self userManifest];
  v12 = userManifest;
  if (!v10)
  {
    v18 = userManifest;
    *manifest = v12;
LABEL_14:
    *index = forIndex;
    return;
  }

  v13 = [userManifest count];

  if (!v13)
  {
    upNextManifest2 = [(MTCompositeManifest *)self upNextManifest];
LABEL_13:
    *manifest = upNextManifest2;
    goto LABEL_14;
  }

  userManifest2 = [(MTCompositeManifest *)self userManifest];
  currentIndex = [userManifest2 currentIndex];

  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentIndex = -1;
  }

  if (currentIndex >= forIndex)
  {
    upNextManifest2 = [(MTCompositeManifest *)self userManifest];
    goto LABEL_13;
  }

  upNextManifest3 = [(MTCompositeManifest *)self upNextManifest];
  v17 = [upNextManifest3 count] + currentIndex;

  if (v17 >= forIndex)
  {
    *manifest = [(MTCompositeManifest *)self upNextManifest];
    *index = ~currentIndex + forIndex;
  }

  else
  {
    *manifest = [(MTCompositeManifest *)self userManifest];
    upNextManifest4 = [(MTCompositeManifest *)self upNextManifest];
    *index = forIndex - [upNextManifest4 count];
  }
}

- (void)_setupManifestDefaults
{
  userManifest = [(MTCompositeManifest *)self userManifest];
  v4 = [userManifest count];

  if (v4)
  {
    [(MTCompositeManifest *)self userManifest];
  }

  else
  {
    [(MTCompositeManifest *)self upNextManifest];
  }
  v5 = ;
  -[MTCompositeManifest setCurrentIndex:](self, "setCurrentIndex:", [v5 currentIndex]);
}

- (void)_currentItemDidChange:(id)change
{
  changeCopy = change;
  currentManifest = [(MTCompositeManifest *)self currentManifest];

  if (!currentManifest)
  {
    [(MTCompositeManifest *)self _setupManifestDefaults];
  }

  object = [changeCopy object];
  currentManifest2 = [(MTCompositeManifest *)self currentManifest];

  if (object == currentManifest2)
  {
    [(MTCompositeManifest *)self notifyCurrentItemDidChange];
  }
}

- (void)notifyCurrentItemDidChange
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:IMPlayerManifestCurrentItemDidChange object:self];
}

- (id)metricsContentIdentifier
{
  currentManifest = [(MTCompositeManifest *)self currentManifest];
  metricsContentIdentifier = [currentManifest metricsContentIdentifier];

  return metricsContentIdentifier;
}

- (id)metricsAdditionalData
{
  currentManifest = [(MTCompositeManifest *)self currentManifest];
  metricsAdditionalData = [currentManifest metricsAdditionalData];

  return metricsAdditionalData;
}

@end
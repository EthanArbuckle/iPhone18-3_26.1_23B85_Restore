@interface MTCompositeManifest
- (BOOL)isIndexFromUpNext:(unint64_t)a3;
- (BOOL)isPlayingFromManifest:(id)a3;
- (BOOL)networkUPPEnabled;
- (MTCompositeManifest)initWithUpNextManifest:(id)a3 userManifest:(id)a4 loadQueue:(id)a5;
- (id)activity;
- (id)currentItem;
- (id)identifier;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)currentIndex;
- (unint64_t)determineCompositeIndexWithIndex:(unint64_t)a3 fromManifest:(id)a4;
- (void)_currentItemDidChange:(id)a3;
- (void)_determineManifest:(id *)a3 scalledIndex:(unint64_t *)a4 forIndex:(unint64_t)a5;
- (void)_load:(id)a3;
- (void)_setupManifestDefaults;
- (void)dealloc;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)notifyCurrentItemDidChange;
- (void)setCurrentIndex:(unint64_t)a3;
@end

@implementation MTCompositeManifest

- (MTCompositeManifest)initWithUpNextManifest:(id)a3 userManifest:(id)a4 loadQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = MTCompositeManifest;
  v12 = [(MTPlayerManifest *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_upNextManifest, a3);
    objc_storeStrong(&v13->_userManifest, a4);
    objc_storeStrong(&v13->_loadQueue, a5);
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

  v5 = [(MTPlayerManifest *)*p_upNextManifest identifier];

  return v5;
}

- (BOOL)isPlayingFromManifest:(id)a3
{
  v4 = a3;
  v5 = [(MTCompositeManifest *)self currentManifest];

  return v5 == v4;
}

- (BOOL)isIndexFromUpNext:(unint64_t)a3
{
  v7 = 0;
  v8 = 0;
  [(MTCompositeManifest *)self _determineManifest:&v7 scalledIndex:&v8 forIndex:a3];
  v4 = v7;
  v5 = [(MTCompositeManifest *)self upNextManifest];

  return v4 == v5;
}

- (BOOL)networkUPPEnabled
{
  v2 = [(MTCompositeManifest *)self userManifest];
  v3 = [v2 networkUPPEnabled];

  return v3;
}

- (void)_load:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100114228;
  v5[3] = &unk_1004D8520;
  v6 = self;
  v7 = a3;
  v4.receiver = v6;
  v4.super_class = MTCompositeManifest;
  v3 = v7;
  [(MTCompositeManifest *)&v4 _load:v5];
}

- (id)objectAtIndex:(unint64_t)a3
{
  v6 = 0;
  v7 = 0;
  [(MTCompositeManifest *)self _determineManifest:&v6 scalledIndex:&v7 forIndex:a3];
  v3 = v6;
  v4 = [v3 objectAtIndex:v7];

  return v4;
}

- (void)setCurrentIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || [(MTCompositeManifest *)self count]<= a3)
  {
    [(MTCompositeManifest *)self setCurrentManifest:0];
    [(MTCompositeManifest *)self notifyCurrentItemDidChange];
    v5 = +[IMLogCategory player];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setCurrentIndex: %lu, not found", buf, 0xCu);
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    [(MTCompositeManifest *)self _determineManifest:&v19 scalledIndex:&v20 forIndex:a3];
    v5 = v19;
    v6 = [v5 currentIndex];
    [(MTCompositeManifest *)self setCurrentManifest:v5];
    [v5 setCurrentIndex:v20];
    if (v20 == v6)
    {
      [(MTCompositeManifest *)self notifyCurrentItemDidChange];
    }

    if ((os_feature_enabled_red_sun() & 1) == 0)
    {
      v11 = [(MTCompositeManifest *)self userManifest];
      v12 = v20;

      if (v5 == v11 && v12 > v6)
      {
        v13 = +[MTPlayerController defaultInstance];
        v14 = [v13 player];
        v15 = [v14 manifest];
        v16 = [v15 isEqual:self];

        if (v16)
        {
          v17 = +[MTPlayerController defaultInstance];
          v18 = [v17 upNextController];
          [v18 clear];
        }
      }
    }

    v7 = +[IMLogCategory player];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v20;
      v9 = [v5 currentItem];
      v10 = [v9 title];
      *buf = 134218754;
      v22 = a3;
      v23 = 2112;
      v24 = v5;
      v25 = 2048;
      v26 = v8;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setCurrentIndex: %lu, manifest: %@ scalled: %lu, item: %@", buf, 0x2Au);
    }
  }
}

- (unint64_t)currentIndex
{
  v3 = [(MTCompositeManifest *)self currentManifest];
  v4 = [(MTCompositeManifest *)self upNextManifest];

  if (v3 == v4)
  {
    v8 = [(MTCompositeManifest *)self userManifest];
    v9 = [v8 currentIndex];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(MTCompositeManifest *)self userManifest];
      v12 = [v11 currentIndex];
      v13 = [(MTCompositeManifest *)self upNextManifest];
      v7 = [v13 currentIndex] + v12 + 1;

      goto LABEL_9;
    }

    v10 = [(MTCompositeManifest *)self upNextManifest];
LABEL_7:
    v11 = v10;
    v7 = [v10 currentIndex];
LABEL_9:

    return v7;
  }

  v5 = [(MTCompositeManifest *)self currentManifest];
  v6 = [(MTCompositeManifest *)self userManifest];

  if (v5 == v6)
  {
    v10 = [(MTCompositeManifest *)self userManifest];
    goto LABEL_7;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)currentItem
{
  v3 = [(MTCompositeManifest *)self currentManifest];

  if (v3)
  {
    v4 = [(MTCompositeManifest *)self currentManifest];
    v5 = [v4 currentItem];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100114AA8;
  v11 = &unk_1004DCD58;
  v4 = a3;
  v12 = v4;
  v13 = &v14;
  v5 = objc_retainBlock(&v8);
  v6 = [(MTCompositeManifest *)self userManifest:v8];
  [v6 enumerateObjectsUsingBlock:v5];

  if ((v15[3] & 1) == 0)
  {
    v7 = [(MTCompositeManifest *)self upNextManifest];
    [v7 enumerateObjectsUsingBlock:v4];
  }

  _Block_object_dispose(&v14, 8);
}

- (id)activity
{
  v3 = [(MTCompositeManifest *)self currentManifest];

  if (v3)
  {
    v4 = [(MTCompositeManifest *)self userManifest];
    v3 = [v4 activity];

    v5 = [(MTCompositeManifest *)self upNextManifest];
    v6 = [(MTCompositeManifest *)self isPlayingFromManifest:v5];

    if (v6)
    {
      [v3 setEligibleForHandoff:0];
      [v3 setEligibleForSearch:0];
      [v3 setEligibleForPublicIndexing:0];
    }

    v7 = [NSNumber numberWithBool:v6];
    [v3 setValue:v7 forKey:@"MTCompositeManifestIsPlayingFromUpNext"];
  }

  return v3;
}

- (unint64_t)determineCompositeIndexWithIndex:(unint64_t)a3 fromManifest:(id)a4
{
  v6 = a4;
  v7 = [(MTCompositeManifest *)self userManifest];
  v8 = [v6 isEqual:v7];

  if (!v8)
  {
    v10 = [(MTCompositeManifest *)self upNextManifest];
    v11 = [v6 isEqual:v10];

    if (!v11)
    {
      a3 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

    v9 = [(MTCompositeManifest *)self userManifest];
    a3 += [v9 currentIndex] + 1;
    goto LABEL_6;
  }

  if ([v6 currentIndex] < a3)
  {
    v9 = [(MTCompositeManifest *)self upNextManifest];
    a3 += [v9 count];
LABEL_6:
  }

LABEL_8:

  return a3;
}

- (void)_determineManifest:(id *)a3 scalledIndex:(unint64_t *)a4 forIndex:(unint64_t)a5
{
  v9 = [(MTCompositeManifest *)self upNextManifest];
  v10 = [v9 count];

  v11 = [(MTCompositeManifest *)self userManifest];
  v12 = v11;
  if (!v10)
  {
    v18 = v11;
    *a3 = v12;
LABEL_14:
    *a4 = a5;
    return;
  }

  v13 = [v11 count];

  if (!v13)
  {
    v19 = [(MTCompositeManifest *)self upNextManifest];
LABEL_13:
    *a3 = v19;
    goto LABEL_14;
  }

  v14 = [(MTCompositeManifest *)self userManifest];
  v15 = [v14 currentIndex];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = -1;
  }

  if (v15 >= a5)
  {
    v19 = [(MTCompositeManifest *)self userManifest];
    goto LABEL_13;
  }

  v16 = [(MTCompositeManifest *)self upNextManifest];
  v17 = [v16 count] + v15;

  if (v17 >= a5)
  {
    *a3 = [(MTCompositeManifest *)self upNextManifest];
    *a4 = ~v15 + a5;
  }

  else
  {
    *a3 = [(MTCompositeManifest *)self userManifest];
    v20 = [(MTCompositeManifest *)self upNextManifest];
    *a4 = a5 - [v20 count];
  }
}

- (void)_setupManifestDefaults
{
  v3 = [(MTCompositeManifest *)self userManifest];
  v4 = [v3 count];

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

- (void)_currentItemDidChange:(id)a3
{
  v7 = a3;
  v4 = [(MTCompositeManifest *)self currentManifest];

  if (!v4)
  {
    [(MTCompositeManifest *)self _setupManifestDefaults];
  }

  v5 = [v7 object];
  v6 = [(MTCompositeManifest *)self currentManifest];

  if (v5 == v6)
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
  v2 = [(MTCompositeManifest *)self currentManifest];
  v3 = [v2 metricsContentIdentifier];

  return v3;
}

- (id)metricsAdditionalData
{
  v2 = [(MTCompositeManifest *)self currentManifest];
  v3 = [v2 metricsAdditionalData];

  return v3;
}

@end
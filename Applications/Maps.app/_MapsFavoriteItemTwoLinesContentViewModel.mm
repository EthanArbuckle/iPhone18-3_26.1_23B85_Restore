@interface _MapsFavoriteItemTwoLinesContentViewModel
- (BOOL)hasVibrantBackground;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObservedEntry:(id)entry;
@end

@implementation _MapsFavoriteItemTwoLinesContentViewModel

- (BOOL)hasVibrantBackground
{
  observedEntry = [(_MapsFavoriteItemTwoLinesContentViewModel *)self observedEntry];
  hasVibrantBackground = [observedEntry hasVibrantBackground];

  return hasVibrantBackground;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  observedEntry = [(_MapsFavoriteItemTwoLinesContentViewModel *)self observedEntry];

  if (observedEntry == objectCopy)
  {
    if ([pathCopy isEqualToString:@"title"])
    {
    }

    else
    {
      v11 = [pathCopy isEqualToString:@"subtitle"];

      if ((v11 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    observedEntry2 = [(_MapsFavoriteItemTwoLinesContentViewModel *)self observedEntry];
    title = [observedEntry2 title];
    [(_BasicTwoLinesContentViewModel *)self setTitleText:title];

    observedEntry3 = [(_MapsFavoriteItemTwoLinesContentViewModel *)self observedEntry];
    subtitle = [observedEntry3 subtitle];
    [(_BasicTwoLinesContentViewModel *)self setSubtitleText:subtitle];

    if (+[NSThread isMainThread])
    {
      [(_BasicTwoLinesContentViewModel *)self updateObservers];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100C51B08;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
  }

LABEL_3:
}

- (void)setObservedEntry:(id)entry
{
  entryCopy = entry;
  observedEntry = self->_observedEntry;
  if (observedEntry != entryCopy)
  {
    v7 = entryCopy;
    [(MapsFavoriteItem *)observedEntry removeObserver:self forKeyPath:@"title"];
    [(MapsFavoriteItem *)self->_observedEntry removeObserver:self forKeyPath:@"subtitle"];
    objc_storeStrong(&self->_observedEntry, entry);
    [(MapsFavoriteItem *)self->_observedEntry addObserver:self forKeyPath:@"title" options:1 context:0];
    [(MapsFavoriteItem *)self->_observedEntry addObserver:self forKeyPath:@"subtitle" options:1 context:0];
    entryCopy = v7;
  }
}

- (void)dealloc
{
  [(_MapsFavoriteItemTwoLinesContentViewModel *)self setObservedEntry:0];
  v3.receiver = self;
  v3.super_class = _MapsFavoriteItemTwoLinesContentViewModel;
  [(_BasicTwoLinesContentViewModel *)&v3 dealloc];
}

@end
@interface _MapsSuggestionsEntryTwoLinesContentViewModel
- (BOOL)hasVibrantBackground;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObservedEntry:(id)entry;
@end

@implementation _MapsSuggestionsEntryTwoLinesContentViewModel

- (BOOL)hasVibrantBackground
{
  observedEntry = [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self observedEntry];
  hasVibrantBackground = [observedEntry hasVibrantBackground];

  return hasVibrantBackground;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  observedEntry = [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self observedEntry];

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

    observedEntry2 = [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self observedEntry];
    title = [observedEntry2 title];
    [(_BasicTwoLinesContentViewModel *)self setTitleText:title];

    observedEntry3 = [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self observedEntry];
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
      block[2] = sub_100C47CF4;
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
    [(MapsSuggestionsEntry *)observedEntry removeObserver:self forKeyPath:@"title"];
    [(MapsSuggestionsEntry *)self->_observedEntry removeObserver:self forKeyPath:@"subtitle"];
    objc_storeStrong(&self->_observedEntry, entry);
    [(MapsSuggestionsEntry *)self->_observedEntry addObserver:self forKeyPath:@"title" options:1 context:0];
    [(MapsSuggestionsEntry *)self->_observedEntry addObserver:self forKeyPath:@"subtitle" options:1 context:0];
    entryCopy = v7;
  }
}

- (void)dealloc
{
  [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self setObservedEntry:0];
  v3.receiver = self;
  v3.super_class = _MapsSuggestionsEntryTwoLinesContentViewModel;
  [(_BasicTwoLinesContentViewModel *)&v3 dealloc];
}

@end
@interface _MapsSuggestionsEntryTwoLinesContentViewModel
- (BOOL)hasVibrantBackground;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObservedEntry:(id)a3;
@end

@implementation _MapsSuggestionsEntryTwoLinesContentViewModel

- (BOOL)hasVibrantBackground
{
  v2 = [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self observedEntry];
  v3 = [v2 hasVibrantBackground];

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self observedEntry];

  if (v10 == v9)
  {
    if ([v8 isEqualToString:@"title"])
    {
    }

    else
    {
      v11 = [v8 isEqualToString:@"subtitle"];

      if ((v11 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v12 = [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self observedEntry];
    v13 = [v12 title];
    [(_BasicTwoLinesContentViewModel *)self setTitleText:v13];

    v14 = [(_MapsSuggestionsEntryTwoLinesContentViewModel *)self observedEntry];
    v15 = [v14 subtitle];
    [(_BasicTwoLinesContentViewModel *)self setSubtitleText:v15];

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

- (void)setObservedEntry:(id)a3
{
  v5 = a3;
  observedEntry = self->_observedEntry;
  if (observedEntry != v5)
  {
    v7 = v5;
    [(MapsSuggestionsEntry *)observedEntry removeObserver:self forKeyPath:@"title"];
    [(MapsSuggestionsEntry *)self->_observedEntry removeObserver:self forKeyPath:@"subtitle"];
    objc_storeStrong(&self->_observedEntry, a3);
    [(MapsSuggestionsEntry *)self->_observedEntry addObserver:self forKeyPath:@"title" options:1 context:0];
    [(MapsSuggestionsEntry *)self->_observedEntry addObserver:self forKeyPath:@"subtitle" options:1 context:0];
    v5 = v7;
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
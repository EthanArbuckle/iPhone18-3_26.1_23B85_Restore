@interface THStudyOptions
- (BOOL)shouldShowAllAnnotationStyles;
- (BOOL)shouldShowAnnotationStyle:(int)style;
- (THStudyOptions)initWithUserDefaults:(id)defaults;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)p_registerDefaults;
- (void)p_setShouldShowAllAnnotationStyles:(BOOL)styles;
- (void)p_setShouldShowAnnotationStyle:(int)style to:(BOOL)to;
- (void)removeObserver:(id)observer;
- (void)setShowAnnotations:(BOOL)annotations;
- (void)setShowVocabulary:(BOOL)vocabulary;
- (void)setShuffle:(BOOL)shuffle;
- (void)showAll;
@end

@implementation THStudyOptions

- (THStudyOptions)initWithUserDefaults:(id)defaults
{
  if (!defaults)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v8.receiver = self;
  v8.super_class = THStudyOptions;
  v5 = [(THStudyOptions *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (defaults)
    {
      v5->_userDefaults = defaults;
      v6->_observers = objc_alloc_init(TSUMutablePointerSet);
      [(THStudyOptions *)v6 p_registerDefaults];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THStudyOptions;
  [(THStudyOptions *)&v3 dealloc];
}

- (void)setShuffle:(BOOL)shuffle
{
  shuffleCopy = shuffle;
  [(TSUMutablePointerSet *)self->_observers makeObjectsPerformSelector:"studyOptionsWillChangeShuffle:" withObject:self];
  [(THBookUserDefaults *)self->_userDefaults setBool:shuffleCopy forKey:@"THStudyOptionsShouldShuffle"];
  observers = self->_observers;

  [(TSUMutablePointerSet *)observers makeObjectsPerformSelector:"studyOptionsDidChangeShuffle:" withObject:self];
}

- (void)setShowAnnotations:(BOOL)annotations
{
  annotationsCopy = annotations;
  [(TSUMutablePointerSet *)self->_observers makeObjectsPerformSelector:"studyOptionsWillChangeFilterOptions:" withObject:self];
  [(THBookUserDefaults *)self->_userDefaults setBool:annotationsCopy forKey:@"THStudyOptionsShouldShowAnnotations"];
  observers = self->_observers;

  [(TSUMutablePointerSet *)observers makeObjectsPerformSelector:"studyOptionsDidChangeFilterOptions:" withObject:self];
}

- (void)setShowVocabulary:(BOOL)vocabulary
{
  vocabularyCopy = vocabulary;
  [(TSUMutablePointerSet *)self->_observers makeObjectsPerformSelector:"studyOptionsWillChangeFilterOptions:" withObject:self];
  [(THBookUserDefaults *)self->_userDefaults setBool:vocabularyCopy forKey:@"THStudyOptionsShouldShowVocabulary"];
  observers = self->_observers;

  [(TSUMutablePointerSet *)observers makeObjectsPerformSelector:"studyOptionsDidChangeFilterOptions:" withObject:self];
}

- (BOOL)shouldShowAnnotationStyle:(int)style
{
  v3 = 6;
  for (i = &off_5621A0; *(i - 2) != style; i += 2)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return [(THBookUserDefaults *)self->_userDefaults BOOLForKey:*i];
}

- (BOOL)shouldShowAllAnnotationStyles
{
  v3 = [(THBookUserDefaults *)self->_userDefaults BOOLForKey:off_5621A0];
  if (v3)
  {
    v4 = 0;
    v5 = &off_5621B0;
    do
    {
      v6 = v4;
      if (v4 == 5)
      {
        break;
      }

      v7 = *v5;
      v5 += 2;
      v8 = [(THBookUserDefaults *)self->_userDefaults BOOLForKey:v7];
      v4 = v6 + 1;
    }

    while ((v8 & 1) != 0);
    LOBYTE(v3) = v6 > 4;
  }

  return v3;
}

- (void)showAll
{
  [(TSUMutablePointerSet *)self->_observers makeObjectsPerformSelector:"studyOptionsWillChangeFilterOptions:" withObject:self];
  [(THBookUserDefaults *)self->_userDefaults setBool:1 forKey:@"THStudyOptionsShouldShowAnnotations"];
  [(THBookUserDefaults *)self->_userDefaults setBool:1 forKey:@"THStudyOptionsShouldShowVocabulary"];
  v3 = &dword_8;
  do
  {
    [(THBookUserDefaults *)self->_userDefaults setBool:1 forKey:*(&kHighlightInfos + v3)];
    v3 += 16;
  }

  while (v3 != 104);
  observers = self->_observers;

  [(TSUMutablePointerSet *)observers makeObjectsPerformSelector:"studyOptionsDidChangeFilterOptions:" withObject:self];
}

- (void)addObserver:(id)observer
{
  if (!self->_observers)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (observer)
    {
      goto LABEL_3;
    }

LABEL_7:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return;
  }

  if (!observer)
  {
    goto LABEL_7;
  }

LABEL_3:
  observers = self->_observers;

  [(TSUMutablePointerSet *)observers addObject:observer];
}

- (void)removeObserver:(id)observer
{
  if (!self->_observers)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (observer)
    {
      goto LABEL_3;
    }

LABEL_7:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return;
  }

  if (!observer)
  {
    goto LABEL_7;
  }

LABEL_3:
  observers = self->_observers;

  [(TSUMutablePointerSet *)observers removeObject:observer];
}

- (void)p_setShouldShowAnnotationStyle:(int)style to:(BOOL)to
{
  toCopy = to;
  [(TSUMutablePointerSet *)self->_observers makeObjectsPerformSelector:"studyOptionsWillChangeFilterOptions:" withObject:self];
  v7 = &off_5621A0;
  v8 = 6;
  while (*(v7 - 2) != style)
  {
    v7 += 2;
    if (!--v8)
    {
      goto LABEL_6;
    }
  }

  [(THBookUserDefaults *)self->_userDefaults setBool:toCopy forKey:*v7];
LABEL_6:
  observers = self->_observers;

  [(TSUMutablePointerSet *)observers makeObjectsPerformSelector:"studyOptionsDidChangeFilterOptions:" withObject:self];
}

- (void)p_setShouldShowAllAnnotationStyles:(BOOL)styles
{
  stylesCopy = styles;
  [(TSUMutablePointerSet *)self->_observers makeObjectsPerformSelector:"studyOptionsWillChangeFilterOptions:" withObject:self];
  v5 = &dword_8;
  do
  {
    [(THBookUserDefaults *)self->_userDefaults setBool:stylesCopy forKey:*(&kHighlightInfos + v5)];
    v5 += 16;
  }

  while (v5 != 104);
  observers = self->_observers;

  [(TSUMutablePointerSet *)observers makeObjectsPerformSelector:"studyOptionsDidChangeFilterOptions:" withObject:self];
}

- (void)p_registerDefaults
{
  v3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:0], @"THStudyOptionsShouldShuffle", [NSNumber numberWithBool:1], @"THStudyOptionsShouldShowAnnotations", [NSNumber numberWithBool:1], @"THStudyOptionsShouldShowVocabulary", 0];
  v4 = &dword_8;
  do
  {
    [(NSMutableDictionary *)v3 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], *(&kHighlightInfos + v4)];
    v4 += 16;
  }

  while (v4 != 104);
  v5 = +[NSUserDefaults standardUserDefaults];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)v3 allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(NSUserDefaults *)v5 objectForKey:v11];
        if (v12)
        {
          [(NSMutableDictionary *)v3 setObject:v12 forKey:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(THBookUserDefaults *)self->_userDefaults registerDefaults:v3];
}

@end
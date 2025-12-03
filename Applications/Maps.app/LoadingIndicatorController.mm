@interface LoadingIndicatorController
+ (id)sharedController;
+ (void)setAsSharedInstanceClass;
- (BOOL)_isLoading;
- (id)beginShowingLoadingIndicator;
- (void)_didInvalidateLoadingToken;
- (void)_updateLoadingIndicator;
- (void)setSuppressed:(BOOL)suppressed;
@end

@implementation LoadingIndicatorController

+ (void)setAsSharedInstanceClass
{
  if (objc_opt_class() != self)
  {
    v3 = objc_alloc_init(self);
    v4 = qword_10195F058;
    qword_10195F058 = v3;
  }
}

+ (id)sharedController
{
  v3 = qword_10195F058;
  if (!qword_10195F058)
  {
    v4 = objc_alloc_init(self);
    v5 = qword_10195F058;
    qword_10195F058 = v4;

    v3 = qword_10195F058;
  }

  return v3;
}

- (void)_didInvalidateLoadingToken
{
  v3 = dispatch_time(0, 2000000000);
  if (!self->_updateScheduled)
  {
    self->_updateScheduled = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D1F1E4;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v3, &_dispatch_main_q, block);
  }
}

- (id)beginShowingLoadingIndicator
{
  if (+[NSThread isMainThread])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100D1F3F8;
    v8[3] = &unk_101661B18;
    v8[4] = self;
    v3 = [[LoadingToken alloc] initWithInvalidationBlock:v8];
    loadingTokens = self->_loadingTokens;
    if (!loadingTokens)
    {
      v5 = +[NSHashTable weakObjectsHashTable];
      v6 = self->_loadingTokens;
      self->_loadingTokens = v5;

      loadingTokens = self->_loadingTokens;
    }

    [(NSHashTable *)loadingTokens addObject:v3];
    [(LoadingIndicatorController *)self _updateLoadingIndicator];
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_100D1F394;
    v14 = sub_100D1F3A4;
    v15 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D1F3AC;
    block[3] = &unk_101661600;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(&_dispatch_main_q, block);
    v3 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v3;
}

- (BOOL)_isLoading
{
  allObjects = [(NSHashTable *)self->_loadingTokens allObjects];
  v3 = [allObjects count] != 0;

  return v3;
}

- (void)_updateLoadingIndicator
{
  if ([(LoadingIndicatorController *)self _isLoading])
  {
    v3 = !self->_suppressed;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (self->_showing != v4)
  {
    self->_showing = v4;

    [(LoadingIndicatorController *)self showingDidChange];
  }
}

- (void)setSuppressed:(BOOL)suppressed
{
  if (self->_suppressed != suppressed)
  {
    self->_suppressed = suppressed;
    [(LoadingIndicatorController *)self _updateLoadingIndicator];
  }
}

@end
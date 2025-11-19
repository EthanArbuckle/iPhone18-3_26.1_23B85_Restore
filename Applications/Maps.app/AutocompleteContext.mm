@interface AutocompleteContext
- (AutocompleteContext)init;
- (AutocompleteContext)initWithQueryString:(id)a3;
- (AutocompleteContextDelegate)delegate;
- (id)matchInfoForObject:(id)a3;
- (void)autocompleteMatchInfoDidUpdate:(id)a3;
- (void)setMatchInfo:(id)a3 forObject:(id)a4;
@end

@implementation AutocompleteContext

- (AutocompleteContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)autocompleteMatchInfoDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(AutocompleteContext *)self delegate];
  [v5 autocompleteContext:self didUpdateMatchInfo:v4];
}

- (void)setMatchInfo:(id)a3 forObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    lock = self->_lock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009F9BEC;
    block[3] = &unk_101661A40;
    block[4] = self;
    v11 = v7;
    v12 = v6;
    dispatch_sync(lock, block);
  }
}

- (id)matchInfoForObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1009F9D90;
  v17 = sub_1009F9DA0;
  v18 = 0;
  if (v4)
  {
    lock = self->_lock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009F9DA8;
    block[3] = &unk_101660778;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(lock, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (AutocompleteContext)initWithQueryString:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = AutocompleteContext;
  v6 = [(AutocompleteContext *)&v17 init];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"%@ %p", objc_opt_class(), v6];
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    lock = v6->_lock;
    v6->_lock = v10;

    v12 = +[NSMapTable strongToStrongObjectsMapTable];
    matchInfos = v6->_matchInfos;
    v6->_matchInfos = v12;

    objc_storeStrong(&v6->_queryString, a3);
    v14 = [[AutocompleteQueryString alloc] initWithQuery:v5];
    query = v6->_query;
    v6->_query = v14;

    v6->_isCJK = [v5 _navigation_isCJK];
  }

  return v6;
}

- (AutocompleteContext)init
{
  [(AutocompleteContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end
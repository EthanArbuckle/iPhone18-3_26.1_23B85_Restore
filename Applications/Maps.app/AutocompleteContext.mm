@interface AutocompleteContext
- (AutocompleteContext)init;
- (AutocompleteContext)initWithQueryString:(id)string;
- (AutocompleteContextDelegate)delegate;
- (id)matchInfoForObject:(id)object;
- (void)autocompleteMatchInfoDidUpdate:(id)update;
- (void)setMatchInfo:(id)info forObject:(id)object;
@end

@implementation AutocompleteContext

- (AutocompleteContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)autocompleteMatchInfoDidUpdate:(id)update
{
  updateCopy = update;
  delegate = [(AutocompleteContext *)self delegate];
  [delegate autocompleteContext:self didUpdateMatchInfo:updateCopy];
}

- (void)setMatchInfo:(id)info forObject:(id)object
{
  infoCopy = info;
  objectCopy = object;
  v8 = objectCopy;
  if (infoCopy && objectCopy)
  {
    lock = self->_lock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009F9BEC;
    block[3] = &unk_101661A40;
    block[4] = self;
    v11 = objectCopy;
    v12 = infoCopy;
    dispatch_sync(lock, block);
  }
}

- (id)matchInfoForObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1009F9D90;
  v17 = sub_1009F9DA0;
  v18 = 0;
  if (objectCopy)
  {
    lock = self->_lock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009F9DA8;
    block[3] = &unk_101660778;
    v12 = &v13;
    block[4] = self;
    v11 = objectCopy;
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

- (AutocompleteContext)initWithQueryString:(id)string
{
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = AutocompleteContext;
  v6 = [(AutocompleteContext *)&v17 init];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"%@ %p", objc_opt_class(), v6];
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    lock = v6->_lock;
    v6->_lock = v10;

    v12 = +[NSMapTable strongToStrongObjectsMapTable];
    matchInfos = v6->_matchInfos;
    v6->_matchInfos = v12;

    objc_storeStrong(&v6->_queryString, string);
    v14 = [[AutocompleteQueryString alloc] initWithQuery:stringCopy];
    query = v6->_query;
    v6->_query = v14;

    v6->_isCJK = [stringCopy _navigation_isCJK];
  }

  return v6;
}

- (AutocompleteContext)init
{
  [(AutocompleteContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end
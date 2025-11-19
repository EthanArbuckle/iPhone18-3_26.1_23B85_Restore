@interface MTUuidQueryObserver
- (id)addResultsChangedHandler:(id)a3;
- (void)controllerDidChangeContent:(id)a3;
- (void)notifyObservers;
- (void)startObserving;
@end

@implementation MTUuidQueryObserver

- (void)startObserving
{
  v3.receiver = self;
  v3.super_class = MTUuidQueryObserver;
  [(MTUuidQueryObserver *)&v3 startObserving];
  [(MTUuidQueryObserver *)self notifyObservers];
}

- (void)notifyObservers
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100008A4C;
  v18 = sub_10003B4FC;
  v19 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003A0F4;
  v13[3] = &unk_1004DB750;
  v13[4] = &v14;
  [(MTUuidQueryObserver *)self results:v13];
  v3 = [(MTUuidQueryObserver *)self uuidOrder];
  v4 = [NSSet alloc];
  v5 = [v4 initWithArray:v15[5]];
  v6 = [(MTUuidQueryObserver *)self uuidSet];
  v7 = [v6 mutableCopy];
  [v7 minusSet:v5];
  v8 = [v5 mutableCopy];
  [v8 minusSet:v6];
  [(MTUuidQueryObserver *)self setUuidSet:v5];
  [(MTUuidQueryObserver *)self setUuidOrder:v15[5]];
  if ([v7 count] || objc_msgSend(v8, "count") || (objc_msgSend(v3, "isEqual:", v15[5]) & 1) == 0)
  {
    v9 = [(MTUuidQueryObserver *)self handlers];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100043B34;
    v10[3] = &unk_1004DB778;
    v11 = v7;
    v12 = v8;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }

  _Block_object_dispose(&v14, 8);
}

- (id)addResultsChangedHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  v7.receiver = self;
  v7.super_class = MTUuidQueryObserver;
  v5 = [(MTUuidQueryObserver *)&v7 addResultsChangedHandler:v4];

  return v5;
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = [a3 delegate];

  if (v4)
  {

    [(MTUuidQueryObserver *)self notifyObservers];
  }
}

@end
@interface CRLLogCatThreadSafeMutableSet
- (BOOL)containsObject:(id)object;
- (CRLLogCatThreadSafeMutableSet)init;
- (CRLLogCatThreadSafeMutableSet)initWithArray:(id)array;
- (id)allObjects;
- (id)description;
- (id)immutableSet;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation CRLLogCatThreadSafeMutableSet

- (CRLLogCatThreadSafeMutableSet)initWithArray:(id)array
{
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = CRLLogCatThreadSafeMutableSet;
  v5 = [(CRLLogCatThreadSafeMutableSet *)&v12 init];
  if (v5)
  {
    v6 = [[NSMutableSet alloc] initWithArray:arrayCopy];
    objects = v5->_objects;
    v5->_objects = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("CRLLogCatQueue", v8);
    logCatQueue = v5->_logCatQueue;
    v5->_logCatQueue = v9;
  }

  return v5;
}

- (CRLLogCatThreadSafeMutableSet)init
{
  v3 = +[NSArray array];
  v4 = [(CRLLogCatThreadSafeMutableSet *)self initWithArray:v3];

  return v4;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  logCatQueue = self->_logCatQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__CRLLogCatThreadSafeMutableSet_containsObject___block_invoke;
  block[3] = &unk_4CE30;
  v9 = objectCopy;
  v10 = &v11;
  block[4] = self;
  v6 = objectCopy;
  dispatch_sync(logCatQueue, block);
  LOBYTE(logCatQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return logCatQueue;
}

id __48__CRLLogCatThreadSafeMutableSet_containsObject___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __38__CRLLogCatThreadSafeMutableSet_count__block_invoke;
  v5[3] = &unk_4CE58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __38__CRLLogCatThreadSafeMutableSet_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)allObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __43__CRLLogCatThreadSafeMutableSet_allObjects__block_invoke;
  v5[3] = &unk_4CE58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __43__CRLLogCatThreadSafeMutableSet_allObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (id)immutableSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __45__CRLLogCatThreadSafeMutableSet_immutableSet__block_invoke;
  v5[3] = &unk_4CE58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __45__CRLLogCatThreadSafeMutableSet_immutableSet__block_invoke(uint64_t a1)
{
  v2 = [NSSet setWithSet:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (void)addObject:(id)object
{
  objectCopy = object;
  logCatQueue = self->_logCatQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __43__CRLLogCatThreadSafeMutableSet_addObject___block_invoke;
  v7[3] = &unk_4CE80;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(logCatQueue, v7);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  logCatQueue = self->_logCatQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__CRLLogCatThreadSafeMutableSet_removeObject___block_invoke;
  v7[3] = &unk_4CE80;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(logCatQueue, v7);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __44__CRLLogCatThreadSafeMutableSet_description__block_invoke;
  v5[3] = &unk_4CE58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__CRLLogCatThreadSafeMutableSet_description__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

@end
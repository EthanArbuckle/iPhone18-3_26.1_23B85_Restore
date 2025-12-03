@interface PDASMSearchStringCache
+ (id)shared;
- (BOOL)isCached:(id)cached;
- (PDASMSearchStringCache)init;
- (id)allObjects;
- (void)addToCache:(id)cache expires:(id)expires;
@end

@implementation PDASMSearchStringCache

- (PDASMSearchStringCache)init
{
  v6.receiver = self;
  v6.super_class = PDASMSearchStringCache;
  v2 = [(PDASMSearchStringCache *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:20];
    buffer = v2->_buffer;
    v2->_buffer = v3;
  }

  return v2;
}

+ (id)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100172568;
  block[3] = &unk_100202CA8;
  block[4] = self;
  if (qword_10024DBF0 != -1)
  {
    dispatch_once(&qword_10024DBF0, block);
  }

  v2 = qword_10024DBF8;

  return v2;
}

- (BOOL)isCached:(id)cached
{
  cachedCopy = cached;
  v5 = +[NSDate date];
  if ([(NSMutableArray *)self->_buffer count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_buffer objectAtIndexedSubscript:v6];
      v8 = [v7 objectAtIndexedSubscript:1];
      v9 = [v5 compare:v8];

      if (v9 != 1)
      {
        v10 = [v7 objectAtIndexedSubscript:0];
        v11 = [cachedCopy hasPrefix:v10];

        if (v11)
        {
          break;
        }
      }

      ++v6;

      if (v6 >= [(NSMutableArray *)self->_buffer count])
      {
        goto LABEL_6;
      }
    }

    v12 = 1;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (void)addToCache:(id)cache expires:(id)expires
{
  expiresCopy = expires;
  cacheCopy = cache;
  v8 = [[NSArray alloc] initWithObjects:{cacheCopy, expiresCopy, 0}];

  [(NSMutableArray *)self->_buffer insertObject:v8 atIndex:0];
  if ([(NSMutableArray *)self->_buffer count]>= 0x15)
  {
    [(NSMutableArray *)self->_buffer removeLastObject];
  }
}

- (id)allObjects
{
  v2 = [(NSMutableArray *)self->_buffer copy];

  return v2;
}

@end
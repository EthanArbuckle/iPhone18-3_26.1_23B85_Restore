@interface HomeResultCache
- (HomeResultCache)init;
- (id)resultForKey:(id)a3;
- (void)setResult:(id)a3 forKey:(id)a4;
@end

@implementation HomeResultCache

- (HomeResultCache)init
{
  v9.receiver = self;
  v9.super_class = HomeResultCache;
  v2 = [(HomeResultCache *)&v9 init];
  if (v2)
  {
    UInteger = GEOConfigGetUInteger();
    v2->_capacity = UInteger;
    v4 = [NSMutableArray arrayWithCapacity:UInteger];
    keys = v2->_keys;
    v2->_keys = v4;

    v6 = [NSMutableArray arrayWithCapacity:v2->_capacity];
    values = v2->_values;
    v2->_values = v6;
  }

  return v2;
}

- (void)setResult:(id)a3 forKey:(id)a4
{
  v6 = a3;
  if (v6 && a4)
  {
    [(NSMutableArray *)self->_keys insertObject:a4 atIndex:0];
    [(NSMutableArray *)self->_values insertObject:v6 atIndex:0];
    while ([(NSMutableArray *)self->_keys count]> self->_capacity)
    {
      [(NSMutableArray *)self->_keys removeLastObject];
      [(NSMutableArray *)self->_values removeLastObject];
    }
  }
}

- (id)resultForKey:(id)a3
{
  v4 = a3;
  keys = self->_keys;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007D9B44;
  v12[3] = &unk_10162A810;
  v6 = v4;
  v13 = v6;
  v7 = [(NSMutableArray *)keys indexOfObjectPassingTest:v12];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v8 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:v7];
    if (v9)
    {
      v10 = [(NSMutableArray *)self->_keys objectAtIndexedSubscript:v9];
      [(NSMutableArray *)self->_keys removeObjectAtIndex:v9];
      [(NSMutableArray *)self->_values removeObjectAtIndex:v9];
      [(NSMutableArray *)self->_keys insertObject:v10 atIndex:0];
      [(NSMutableArray *)self->_values insertObject:v8 atIndex:0];
    }
  }

  return v8;
}

@end
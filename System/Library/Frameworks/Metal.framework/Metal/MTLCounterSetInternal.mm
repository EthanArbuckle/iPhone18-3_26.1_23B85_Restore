@interface MTLCounterSetInternal
- (BOOL)isEqual:(id)equal;
- (MTLCounterSetInternal)initWithName:(id)name description:(id)description counters:(id)counters;
- (NSString)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLCounterSetInternal

- (MTLCounterSetInternal)initWithName:(id)name description:(id)description counters:(id)counters
{
  v10.receiver = self;
  v10.super_class = MTLCounterSetInternal;
  v8 = [(MTLCounterSetInternal *)&v10 init];
  v8->_name = name;
  v8->_description = description;
  v8->_counters = [counters copy];
  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCounterSetInternal;
  [(MTLCounterSetInternal *)&v3 dealloc];
}

- (NSString)description
{
  v2 = [(NSString *)self->_description copy];

  return v2;
}

- (unint64_t)hash
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  v6 = [(NSString *)self->_name hash];
  std::vector<MTLTagType>::push_back[abi:ne200100](&__p, &v6);
  v6 = [(NSString *)self->_description hash];
  std::vector<MTLTagType>::push_back[abi:ne200100](&__p, &v6);
  for (i = 0; [(NSArray *)self->_counters count]> i; ++i)
  {
    v6 = [-[NSArray objectAtIndexedSubscript:](self->_counters objectAtIndexedSubscript:{i), "hash"}];
    std::vector<MTLTagType>::push_back[abi:ne200100](&__p, &v6);
  }

  v4 = _MTLHashState(__p, v8 - __p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v20 = v5;
    v21 = v4;
    v22 = v3;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
LABEL_3:
      LOBYTE(v12) = 0;
      return v12;
    }

    name = self->_name;
    if (name == *(equal + 1) || (v12 = [(NSString *)name isEqual:?]) != 0)
    {
      description = self->_description;
      if (description == *(equal + 2) || (v12 = [(NSString *)description isEqual:?]) != 0)
      {
        v15 = [(NSArray *)self->_counters count:v6];
        if (v15 != [*(equal + 3) count])
        {
          goto LABEL_3;
        }

        if ([(NSArray *)self->_counters count])
        {
          v16 = 0;
          do
          {
            v17 = [(NSArray *)self->_counters objectAtIndexedSubscript:v16];
            if (v17 != [*(equal + 3) objectAtIndexedSubscript:v16])
            {
              v12 = [-[NSArray objectAtIndexedSubscript:](self->_counters objectAtIndexedSubscript:{v16), "isEqual:", objc_msgSend(*(equal + 3), "objectAtIndexedSubscript:", v16)}];
              if (!v12)
              {
                break;
              }
            }

            ++v16;
            v18 = [(NSArray *)self->_counters count];
            LOBYTE(v12) = 1;
          }

          while (v18 > v16);
        }

        else
        {
          LOBYTE(v12) = 1;
        }
      }
    }
  }

  return v12;
}

@end
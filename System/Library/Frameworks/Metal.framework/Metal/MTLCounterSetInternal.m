@interface MTLCounterSetInternal
- (BOOL)isEqual:(id)a3;
- (MTLCounterSetInternal)initWithName:(id)a3 description:(id)a4 counters:(id)a5;
- (NSString)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLCounterSetInternal

- (MTLCounterSetInternal)initWithName:(id)a3 description:(id)a4 counters:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLCounterSetInternal;
  v8 = [(MTLCounterSetInternal *)&v10 init];
  v8->_name = a3;
  v8->_description = a4;
  v8->_counters = [a5 copy];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v20 = v5;
    v21 = v4;
    v22 = v3;
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
LABEL_3:
      LOBYTE(v12) = 0;
      return v12;
    }

    name = self->_name;
    if (name == *(a3 + 1) || (v12 = [(NSString *)name isEqual:?]) != 0)
    {
      description = self->_description;
      if (description == *(a3 + 2) || (v12 = [(NSString *)description isEqual:?]) != 0)
      {
        v15 = [(NSArray *)self->_counters count:v6];
        if (v15 != [*(a3 + 3) count])
        {
          goto LABEL_3;
        }

        if ([(NSArray *)self->_counters count])
        {
          v16 = 0;
          do
          {
            v17 = [(NSArray *)self->_counters objectAtIndexedSubscript:v16];
            if (v17 != [*(a3 + 3) objectAtIndexedSubscript:v16])
            {
              v12 = [-[NSArray objectAtIndexedSubscript:](self->_counters objectAtIndexedSubscript:{v16), "isEqual:", objc_msgSend(*(a3 + 3), "objectAtIndexedSubscript:", v16)}];
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
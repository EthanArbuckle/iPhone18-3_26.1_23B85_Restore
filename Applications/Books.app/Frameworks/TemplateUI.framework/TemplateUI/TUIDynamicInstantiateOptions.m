@interface TUIDynamicInstantiateOptions
+ (id)optionsWithFetchWindow:(unint64_t)a3 fetchInitial:(unint64_t)a4 fetchDelta:(unint64_t)a5 fetchPadding:(unint64_t)a6 uniqueID:(id)a7;
- (TUIDynamicInstantiateOptions)initWithFetchWindow:(unint64_t)a3 fetchInitial:(unint64_t)a4 fetchDelta:(unint64_t)a5 fetchPadding:(unint64_t)a6 uniqueID:(id)a7;
@end

@implementation TUIDynamicInstantiateOptions

- (TUIDynamicInstantiateOptions)initWithFetchWindow:(unint64_t)a3 fetchInitial:(unint64_t)a4 fetchDelta:(unint64_t)a5 fetchPadding:(unint64_t)a6 uniqueID:(id)a7
{
  v13.receiver = self;
  v13.super_class = TUIDynamicInstantiateOptions;
  result = [(TUIDynamicInstantiateOptions *)&v13 init];
  if (result)
  {
    result->_fetchWindow = a3;
    result->_fetchDelta = a5;
    result->_fetchInitial = a4;
    result->_fetchPadding = a6;
    result->_uniqueID.offset = a7.var0;
  }

  return result;
}

+ (id)optionsWithFetchWindow:(unint64_t)a3 fetchInitial:(unint64_t)a4 fetchDelta:(unint64_t)a5 fetchPadding:(unint64_t)a6 uniqueID:(id)a7
{
  v9 = a4;
  v11 = a4 == 0x7FFFFFFFFFFFFFFFLL && a3 == 0x7FFFFFFFFFFFFFFFLL;
  var0 = a7.var0;
  v13 = v11 || a5 == 0x7FFFFFFFFFFFFFFFLL;
  if (v13 && !TUIValueNotNil(a7.var0))
  {
    v15 = 0;
  }

  else
  {
    if (a6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a6 = a5;
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL && a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = a3;
    }

    v15 = [[TUIDynamicInstantiateOptions alloc] initWithFetchWindow:a3 fetchInitial:v9 fetchDelta:a5 fetchPadding:a6 uniqueID:var0];
  }

  return v15;
}

@end
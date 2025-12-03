@interface TUIDynamicInstantiateOptions
+ (id)optionsWithFetchWindow:(unint64_t)window fetchInitial:(unint64_t)initial fetchDelta:(unint64_t)delta fetchPadding:(unint64_t)padding uniqueID:(id)d;
- (TUIDynamicInstantiateOptions)initWithFetchWindow:(unint64_t)window fetchInitial:(unint64_t)initial fetchDelta:(unint64_t)delta fetchPadding:(unint64_t)padding uniqueID:(id)d;
@end

@implementation TUIDynamicInstantiateOptions

- (TUIDynamicInstantiateOptions)initWithFetchWindow:(unint64_t)window fetchInitial:(unint64_t)initial fetchDelta:(unint64_t)delta fetchPadding:(unint64_t)padding uniqueID:(id)d
{
  v13.receiver = self;
  v13.super_class = TUIDynamicInstantiateOptions;
  result = [(TUIDynamicInstantiateOptions *)&v13 init];
  if (result)
  {
    result->_fetchWindow = window;
    result->_fetchDelta = delta;
    result->_fetchInitial = initial;
    result->_fetchPadding = padding;
    result->_uniqueID.offset = d.var0;
  }

  return result;
}

+ (id)optionsWithFetchWindow:(unint64_t)window fetchInitial:(unint64_t)initial fetchDelta:(unint64_t)delta fetchPadding:(unint64_t)padding uniqueID:(id)d
{
  windowCopy = initial;
  v11 = initial == 0x7FFFFFFFFFFFFFFFLL && window == 0x7FFFFFFFFFFFFFFFLL;
  var0 = d.var0;
  v13 = v11 || delta == 0x7FFFFFFFFFFFFFFFLL;
  if (v13 && !TUIValueNotNil(d.var0))
  {
    v15 = 0;
  }

  else
  {
    if (padding == 0x7FFFFFFFFFFFFFFFLL)
    {
      padding = delta;
    }

    if (windowCopy == 0x7FFFFFFFFFFFFFFFLL && window != 0x7FFFFFFFFFFFFFFFLL)
    {
      windowCopy = window;
    }

    v15 = [[TUIDynamicInstantiateOptions alloc] initWithFetchWindow:window fetchInitial:windowCopy fetchDelta:delta fetchPadding:padding uniqueID:var0];
  }

  return v15;
}

@end
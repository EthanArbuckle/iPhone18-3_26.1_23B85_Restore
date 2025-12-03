@interface PDURLOperationStats
- (id)failedPayloadsCountsDictionary;
- (id)successPayloadsCountsDictionary;
- (void)_incrementCounterForKey:(id)key inDictionary:(id)dictionary;
@end

@implementation PDURLOperationStats

- (void)_incrementCounterForKey:(id)key inDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy valueForKey:keyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 integerValue] + 1);
  }

  else
  {
    v8 = &off_10021B678;
  }

  [dictionaryCopy setValue:v8 forKey:keyCopy];
}

- (id)successPayloadsCountsDictionary
{
  if (self->_haveEEPayloads)
  {
    v3 = 24;
    goto LABEL_5;
  }

  if (self->_haveOrionPayloads)
  {
    v3 = 40;
LABEL_5:
    v4 = *(&self->super.isa + v3);

    return v4;
  }

  v4 = 0;

  return v4;
}

- (id)failedPayloadsCountsDictionary
{
  if (self->_haveEEPayloads)
  {
    v3 = 32;
    goto LABEL_5;
  }

  if (self->_haveOrionPayloads)
  {
    v3 = 48;
LABEL_5:
    v4 = *(&self->super.isa + v3);

    return v4;
  }

  v4 = 0;

  return v4;
}

@end
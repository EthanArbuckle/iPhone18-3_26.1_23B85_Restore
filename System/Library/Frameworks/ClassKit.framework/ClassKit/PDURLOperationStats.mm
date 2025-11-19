@interface PDURLOperationStats
- (id)failedPayloadsCountsDictionary;
- (id)successPayloadsCountsDictionary;
- (void)_incrementCounterForKey:(id)a3 inDictionary:(id)a4;
@end

@implementation PDURLOperationStats

- (void)_incrementCounterForKey:(id)a3 inDictionary:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v5 valueForKey:v9];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 integerValue] + 1);
  }

  else
  {
    v8 = &off_10021B678;
  }

  [v5 setValue:v8 forKey:v9];
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
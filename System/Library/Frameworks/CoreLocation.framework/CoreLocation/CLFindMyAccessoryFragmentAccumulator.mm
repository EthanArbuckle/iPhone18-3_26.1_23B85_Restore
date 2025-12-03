@interface CLFindMyAccessoryFragmentAccumulator
+ (id)convertDataStatusToString:(unint64_t)string;
- (BOOL)appendData:(id)data forUUID:(id)d;
- (BOOL)clearForUUID:(id)d;
- (CLFindMyAccessoryFragmentAccumulator)initWithMaxBytesPerUUID:(unint64_t)d;
- (unint64_t)getDataStatusForUUID:(id)d;
- (void)dealloc;
@end

@implementation CLFindMyAccessoryFragmentAccumulator

- (CLFindMyAccessoryFragmentAccumulator)initWithMaxBytesPerUUID:(unint64_t)d
{
  v6.receiver = self;
  v6.super_class = CLFindMyAccessoryFragmentAccumulator;
  v4 = [(CLFindMyAccessoryFragmentAccumulator *)&v6 init];
  if (v4)
  {
    v4->_uuidToData = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_maxBytesPerUUID = d;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryFragmentAccumulator;
  [(CLFindMyAccessoryFragmentAccumulator *)&v3 dealloc];
}

- (BOOL)clearForUUID:(id)d
{
  if (d)
  {
    [(NSMutableDictionary *)self->_uuidToData removeObjectForKey:d];
  }

  return d != 0;
}

- (unint64_t)getDataStatusForUUID:(id)d
{
  if (!d)
  {
    return 0;
  }

  result = [(NSMutableDictionary *)self->_uuidToData objectForKeyedSubscript:?];
  if (result)
  {
    if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData objectForKeyedSubscript:{d), "length"}] < self->_maxBytesPerUUID)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (BOOL)appendData:(id)data forUUID:(id)d
{
  if (data)
  {
    v4 = d == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    dataCopy = data;
    if (![(NSMutableDictionary *)self->_uuidToData objectForKeyedSubscript:d])
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_uuidToData, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF88] data], d);
    }

    if ([dataCopy length] >= self->_maxBytesPerUUID)
    {
      dataCopy = [dataCopy subdataWithRange:{objc_msgSend(dataCopy, "length") - self->_maxBytesPerUUID}];
      data = [MEMORY[0x1E695DF88] data];
    }

    else
    {
      v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData objectForKeyedSubscript:{d), "length"}];
      v10 = [dataCopy length] + v9;
      maxBytesPerUUID = self->_maxBytesPerUUID;
      if (v10 <= maxBytesPerUUID)
      {
LABEL_15:
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData objectForKeyedSubscript:{d), "appendData:", dataCopy}];
        return v5;
      }

      v12 = maxBytesPerUUID - [dataCopy length];
      v13 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData objectForKeyedSubscript:{d), "subdataWithRange:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData, "objectForKeyedSubscript:", d), "length") - v12, v12}];
      data = [MEMORY[0x1E695DF88] dataWithData:v13];
    }

    [(NSMutableDictionary *)self->_uuidToData setObject:data forKeyedSubscript:d];
    goto LABEL_15;
  }

  return v5;
}

+ (id)convertDataStatusToString:(unint64_t)string
{
  v3 = @"Data does not exist";
  if (string == 1)
  {
    v3 = @"Data is valid";
  }

  if (string == 2)
  {
    return @"Data exceeded maximum buffer size";
  }

  else
  {
    return v3;
  }
}

@end
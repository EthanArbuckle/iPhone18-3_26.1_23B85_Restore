@interface CLFindMyAccessoryFragmentAccumulator
+ (id)convertDataStatusToString:(unint64_t)a3;
- (BOOL)appendData:(id)a3 forUUID:(id)a4;
- (BOOL)clearForUUID:(id)a3;
- (CLFindMyAccessoryFragmentAccumulator)initWithMaxBytesPerUUID:(unint64_t)a3;
- (unint64_t)getDataStatusForUUID:(id)a3;
- (void)dealloc;
@end

@implementation CLFindMyAccessoryFragmentAccumulator

- (CLFindMyAccessoryFragmentAccumulator)initWithMaxBytesPerUUID:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CLFindMyAccessoryFragmentAccumulator;
  v4 = [(CLFindMyAccessoryFragmentAccumulator *)&v6 init];
  if (v4)
  {
    v4->_uuidToData = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_maxBytesPerUUID = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryFragmentAccumulator;
  [(CLFindMyAccessoryFragmentAccumulator *)&v3 dealloc];
}

- (BOOL)clearForUUID:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_uuidToData removeObjectForKey:a3];
  }

  return a3 != 0;
}

- (unint64_t)getDataStatusForUUID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  result = [(NSMutableDictionary *)self->_uuidToData objectForKeyedSubscript:?];
  if (result)
  {
    if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData objectForKeyedSubscript:{a3), "length"}] < self->_maxBytesPerUUID)
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

- (BOOL)appendData:(id)a3 forUUID:(id)a4
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v7 = a3;
    if (![(NSMutableDictionary *)self->_uuidToData objectForKeyedSubscript:a4])
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_uuidToData, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF88] data], a4);
    }

    if ([v7 length] >= self->_maxBytesPerUUID)
    {
      v7 = [v7 subdataWithRange:{objc_msgSend(v7, "length") - self->_maxBytesPerUUID}];
      v14 = [MEMORY[0x1E695DF88] data];
    }

    else
    {
      v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData objectForKeyedSubscript:{a4), "length"}];
      v10 = [v7 length] + v9;
      maxBytesPerUUID = self->_maxBytesPerUUID;
      if (v10 <= maxBytesPerUUID)
      {
LABEL_15:
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData objectForKeyedSubscript:{a4), "appendData:", v7}];
        return v5;
      }

      v12 = maxBytesPerUUID - [v7 length];
      v13 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData objectForKeyedSubscript:{a4), "subdataWithRange:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_uuidToData, "objectForKeyedSubscript:", a4), "length") - v12, v12}];
      v14 = [MEMORY[0x1E695DF88] dataWithData:v13];
    }

    [(NSMutableDictionary *)self->_uuidToData setObject:v14 forKeyedSubscript:a4];
    goto LABEL_15;
  }

  return v5;
}

+ (id)convertDataStatusToString:(unint64_t)a3
{
  v3 = @"Data does not exist";
  if (a3 == 1)
  {
    v3 = @"Data is valid";
  }

  if (a3 == 2)
  {
    return @"Data exceeded maximum buffer size";
  }

  else
  {
    return v3;
  }
}

@end
@interface BCCFISet
+ (id)_intersectArray:(id)array withArray:(id)withArray;
+ (id)_negateArray:(id)array;
+ (id)_unionArray:(id)array withArray:(id)withArray;
+ (id)cfiSet;
+ (id)cfiSetWithCFIString:(id)string;
+ (id)cfiSetWithCFIStrings:(id)strings;
- (BCCFI)firstCFI;
- (BCCFI)lastCFI;
- (BCCFISet)init;
- (BCCFISet)initWithCFI:(id)i;
- (BCCFISet)initWithCFIArray:(id)array;
- (BCCFISet)initWithCFIString:(id)string;
- (BCCFISet)initWithCFIStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (NSString)firstCFIString;
- (NSString)lastCFIString;
- (id)_arrayCopyWithOnlyRangeCFIsFromCFIs:(id)is;
- (id)_mutableArrayCopyWithOnlyRangeCFIsFromCFIs:(id)is;
- (id)allCFIStrings;
- (id)allCFIs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)intersectionWithCFISet:(id)set;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)unionWithCFISet:(id)set;
- (int64_t)cfiCount;
@end

@implementation BCCFISet

+ (id)cfiSet
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)cfiSetWithCFIString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithCFIString:stringCopy];

  return v5;
}

+ (id)cfiSetWithCFIStrings:(id)strings
{
  stringsCopy = strings;
  v5 = [[self alloc] initWithCFIStrings:stringsCopy];

  return v5;
}

- (BCCFISet)initWithCFIArray:(id)array
{
  arrayCopy = array;
  v10.receiver = self;
  v10.super_class = BCCFISet;
  v5 = [(BCCFISet *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCCFISet *)v5 _arrayCopyWithOnlyRangeCFIsFromCFIs:arrayCopy];
    cfis = v6->_cfis;
    v6->_cfis = v7;
  }

  return v6;
}

- (BCCFISet)init
{
  v3 = +[NSArray array];
  v4 = [(BCCFISet *)self initWithCFIArray:v3];

  return v4;
}

- (BCCFISet)initWithCFI:(id)i
{
  v4 = [NSArray arrayWithObject:i];
  v5 = [(BCCFISet *)self initWithCFIArray:v4];

  return v5;
}

- (BCCFISet)initWithCFIString:(id)string
{
  stringCopy = string;
  v15 = 0;
  v6 = [BCCFI cfiWithString:stringCopy error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = stringCopy;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cannot initialize %@ with string %@.  %@ will return nil", buf, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    v12 = [NSArray arrayWithObject:v6];
    v13 = [(BCCFISet *)self initWithCFIArray:v12];
    self = v12;
  }

  return v13;
}

- (BCCFISet)initWithCFIStrings:(id)strings
{
  aSelector = a2;
  stringsCopy = strings;
  v5 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = stringsCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v21 = 0;
        aSelector = [BCCFI cfiWithString:v11 error:&v21, aSelector];
        v13 = v21;
        if (v13)
        {
          v15 = v13;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            v18 = NSStringFromSelector(aSelector);
            *buf = 138412802;
            v27 = v17;
            v28 = 2112;
            v29 = v11;
            v30 = 2112;
            v31 = v18;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cannot initialize %@ with string %@.  %@ will return nil", buf, 0x20u);
          }

          goto LABEL_16;
        }

        if (aSelector)
        {
          [v5 addObject:aSelector];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([v5 count])
  {
    v14 = [(BCCFISet *)self initWithCFIArray:v5];
  }

  else
  {
LABEL_16:

    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BCCFISet alloc];
  v5 = [(NSArray *)self->_cfis copy];
  v6 = [(BCCFISet *)v4 initWithCFIArray:v5];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BCMutableCFISet alloc];
  v5 = [(NSArray *)self->_cfis copy];
  v6 = [(BCCFISet *)v4 initWithCFIArray:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [(NSArray *)self->_cfis isEqual:equalCopy[1]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allCFIs
{
  v2 = [(NSArray *)self->_cfis copy];

  return v2;
}

- (id)description
{
  v3 = [NSMutableString stringWithString:@"{\n"];
  allCFIs = [(BCCFISet *)self allCFIs];
  v5 = [allCFIs count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      if (i)
      {
        v8 = @", ";
      }

      else
      {
        v8 = &stru_2D2930;
      }

      v9 = [allCFIs objectAtIndexedSubscript:i];
      string = [v9 string];
      [v3 appendFormat:@"  %@%@\n", v8, string];
    }
  }

  [v3 appendString:@"}"];

  return v3;
}

- (id)allCFIStrings
{
  v3 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_cfis;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 134218242;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        string = [v10 string];
        if ([string length])
        {
          [v3 addObject:string];
        }

        else
        {
          v12 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [v10 description];
            *buf = v16;
            v22 = v10;
            v23 = 2112;
            v24 = v13;
            _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Can't generate a string for CFI %p=%@", buf, 0x16u);
          }
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];

  return v14;
}

- (int64_t)cfiCount
{
  cfis = [(BCCFISet *)self cfis];
  v3 = [cfis count];

  return v3;
}

- (BCCFI)firstCFI
{
  cfis = [(BCCFISet *)self cfis];
  if ([cfis count])
  {
    v3 = [cfis objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BCCFI)lastCFI
{
  cfis = [(BCCFISet *)self cfis];
  if ([cfis count])
  {
    v3 = [cfis objectAtIndex:{objc_msgSend(cfis, "count") - 1}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)firstCFIString
{
  firstCFI = [(BCCFISet *)self firstCFI];
  string = [firstCFI string];

  return string;
}

- (NSString)lastCFIString
{
  lastCFI = [(BCCFISet *)self lastCFI];
  string = [lastCFI string];

  return string;
}

- (id)unionWithCFISet:(id)set
{
  setCopy = set;
  cfis = [(BCCFISet *)self cfis];
  cfis2 = [setCopy cfis];

  v7 = [objc_opt_class() _unionArray:cfis withArray:cfis2];
  v8 = [[BCCFISet alloc] initWithCFIArray:v7];

  return v8;
}

- (id)intersectionWithCFISet:(id)set
{
  setCopy = set;
  cfis = [(BCCFISet *)self cfis];
  cfis2 = [setCopy cfis];

  v7 = [objc_opt_class() _intersectArray:cfis withArray:cfis2];
  v8 = [[BCCFISet alloc] initWithCFIArray:v7];

  return v8;
}

+ (id)_intersectArray:(id)array withArray:(id)withArray
{
  arrayCopy = array;
  withArrayCopy = withArray;
  v7 = +[NSMutableArray array];
  v8 = [arrayCopy count];
  v9 = [withArrayCopy count];
  if (v8 && v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [arrayCopy objectAtIndex:v10];
      v13 = [withArrayCopy objectAtIndex:v11];
      v14 = [v12 intersectWithCFI:v13];
      if ([v14 isRange])
      {
        [v7 addObject:v14];
      }

      if ([v12 compareCFITail:v13] == -1)
      {
        ++v10;
      }

      else
      {
        ++v11;
      }

      v15 = [arrayCopy count];
      v16 = [withArrayCopy count];
    }

    while (v10 != v15 && v11 != v16);
  }

  return v7;
}

+ (id)_unionArray:(id)array withArray:(id)withArray
{
  arrayCopy = array;
  withArrayCopy = withArray;
  v7 = +[NSMutableArray array];
  v8 = [arrayCopy count];
  v9 = [withArrayCopy count];
  v10 = v8 != 0;
  v11 = v9 != 0;
  if (v8 | v9)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (v10 && (!v11 || ([arrayCopy objectAtIndex:v12], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(withArrayCopy, "objectAtIndex:", v13), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "compare:", v15), v15, v14, v16 == -1)))
      {
        v17 = [arrayCopy objectAtIndex:v12];
        ++v12;
      }

      else
      {
        v17 = [withArrayCopy objectAtIndex:v13];
        ++v13;
      }

      lastObject = [v7 lastObject];
      v19 = [lastObject intersectWithCFI:v17];
      if (v19)
      {
        v20 = [lastObject unionWithCFI:v17];
        [v7 replaceObjectAtIndex:objc_msgSend(v7 withObject:{"count") - 1, v20}];
      }

      else
      {
        [v7 addObject:v17];
      }

      v21 = [arrayCopy count];
      v22 = [withArrayCopy count];
      v11 = v13 != v22;
      v10 = v12 != v21;
    }

    while (v12 != v21 || v13 != v22);
  }

  return v7;
}

+ (id)_negateArray:(id)array
{
  arrayCopy = array;
  v4 = +[NSMutableArray array];
  v5 = [arrayCopy count];
  if (v5)
  {
    v6 = v5;
    firstObject = [arrayCopy firstObject];
    v8 = +[BCCFI minimumCFI];
    v9 = [v8 rangeToCFI:firstObject];

    if ([v9 isRange])
    {
      [v4 addObject:v9];
    }

    if (v6 == &dword_0 + 1)
    {
      v10 = 0;
    }

    else
    {
      v13 = 0;
      for (i = 1; i != v6; ++i)
      {
        v15 = v9;
        v10 = firstObject;

        firstObject = [arrayCopy objectAtIndexedSubscript:i];

        v9 = [v10 rangeToCFI:firstObject];

        if ([v9 isRange])
        {
          [v4 addObject:v9];
        }

        v13 = v10;
      }
    }

    v16 = +[BCCFI maximumCFI];
    v11 = [firstObject rangeToCFI:v16];

    if ([v11 isRange])
    {
      [v4 addObject:v11];
    }
  }

  else
  {
    v10 = +[BCCFI minimumCFI];
    firstObject = +[BCCFI maximumCFI];
    v11 = [v10 rangeToCFI:firstObject];
    v12 = [NSMutableArray arrayWithObject:v11];

    v4 = v12;
  }

  return v4;
}

- (id)_mutableArrayCopyWithOnlyRangeCFIsFromCFIs:(id)is
{
  isCopy = is;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = isCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isRange])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_arrayCopyWithOnlyRangeCFIsFromCFIs:(id)is
{
  isCopy = is;
  if ([isCopy count])
  {
    v5 = [(BCCFISet *)self _mutableArrayCopyWithOnlyRangeCFIsFromCFIs:isCopy];
    v6 = [v5 copy];
  }

  else
  {
    v6 = +[NSArray array];
  }

  return v6;
}

@end
@interface BCCFISet
+ (id)_intersectArray:(id)a3 withArray:(id)a4;
+ (id)_negateArray:(id)a3;
+ (id)_unionArray:(id)a3 withArray:(id)a4;
+ (id)cfiSet;
+ (id)cfiSetWithCFIString:(id)a3;
+ (id)cfiSetWithCFIStrings:(id)a3;
- (BCCFI)firstCFI;
- (BCCFI)lastCFI;
- (BCCFISet)init;
- (BCCFISet)initWithCFI:(id)a3;
- (BCCFISet)initWithCFIArray:(id)a3;
- (BCCFISet)initWithCFIString:(id)a3;
- (BCCFISet)initWithCFIStrings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)firstCFIString;
- (NSString)lastCFIString;
- (id)_arrayCopyWithOnlyRangeCFIsFromCFIs:(id)a3;
- (id)_mutableArrayCopyWithOnlyRangeCFIsFromCFIs:(id)a3;
- (id)allCFIStrings;
- (id)allCFIs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)intersectionWithCFISet:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)unionWithCFISet:(id)a3;
- (int64_t)cfiCount;
@end

@implementation BCCFISet

+ (id)cfiSet
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)cfiSetWithCFIString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCFIString:v4];

  return v5;
}

+ (id)cfiSetWithCFIStrings:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCFIStrings:v4];

  return v5;
}

- (BCCFISet)initWithCFIArray:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BCCFISet;
  v5 = [(BCCFISet *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCCFISet *)v5 _arrayCopyWithOnlyRangeCFIsFromCFIs:v4];
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

- (BCCFISet)initWithCFI:(id)a3
{
  v4 = [NSArray arrayWithObject:a3];
  v5 = [(BCCFISet *)self initWithCFIArray:v4];

  return v5;
}

- (BCCFISet)initWithCFIString:(id)a3
{
  v5 = a3;
  v15 = 0;
  v6 = [BCCFI cfiWithString:v5 error:&v15];
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
      v19 = v5;
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

- (BCCFISet)initWithCFIStrings:(id)a3
{
  aSelector = a2;
  v4 = a3;
  v5 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
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
        v12 = [BCCFI cfiWithString:v11 error:&v21, aSelector];
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

        if (v12)
        {
          [v5 addObject:v12];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BCCFISet alloc];
  v5 = [(NSArray *)self->_cfis copy];
  v6 = [(BCCFISet *)v4 initWithCFIArray:v5];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BCMutableCFISet alloc];
  v5 = [(NSArray *)self->_cfis copy];
  v6 = [(BCCFISet *)v4 initWithCFIArray:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [(NSArray *)self->_cfis isEqual:v4[1]];
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
  v4 = [(BCCFISet *)self allCFIs];
  v5 = [v4 count];
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

      v9 = [v4 objectAtIndexedSubscript:i];
      v10 = [v9 string];
      [v3 appendFormat:@"  %@%@\n", v8, v10];
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
        v11 = [v10 string];
        if ([v11 length])
        {
          [v3 addObject:v11];
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
  v2 = [(BCCFISet *)self cfis];
  v3 = [v2 count];

  return v3;
}

- (BCCFI)firstCFI
{
  v2 = [(BCCFISet *)self cfis];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BCCFI)lastCFI
{
  v2 = [(BCCFISet *)self cfis];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:{objc_msgSend(v2, "count") - 1}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)firstCFIString
{
  v2 = [(BCCFISet *)self firstCFI];
  v3 = [v2 string];

  return v3;
}

- (NSString)lastCFIString
{
  v2 = [(BCCFISet *)self lastCFI];
  v3 = [v2 string];

  return v3;
}

- (id)unionWithCFISet:(id)a3
{
  v4 = a3;
  v5 = [(BCCFISet *)self cfis];
  v6 = [v4 cfis];

  v7 = [objc_opt_class() _unionArray:v5 withArray:v6];
  v8 = [[BCCFISet alloc] initWithCFIArray:v7];

  return v8;
}

- (id)intersectionWithCFISet:(id)a3
{
  v4 = a3;
  v5 = [(BCCFISet *)self cfis];
  v6 = [v4 cfis];

  v7 = [objc_opt_class() _intersectArray:v5 withArray:v6];
  v8 = [[BCCFISet alloc] initWithCFIArray:v7];

  return v8;
}

+ (id)_intersectArray:(id)a3 withArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v8 = [v5 count];
  v9 = [v6 count];
  if (v8 && v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v5 objectAtIndex:v10];
      v13 = [v6 objectAtIndex:v11];
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

      v15 = [v5 count];
      v16 = [v6 count];
    }

    while (v10 != v15 && v11 != v16);
  }

  return v7;
}

+ (id)_unionArray:(id)a3 withArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v8 = [v5 count];
  v9 = [v6 count];
  v10 = v8 != 0;
  v11 = v9 != 0;
  if (v8 | v9)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (v10 && (!v11 || ([v5 objectAtIndex:v12], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectAtIndex:", v13), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "compare:", v15), v15, v14, v16 == -1)))
      {
        v17 = [v5 objectAtIndex:v12];
        ++v12;
      }

      else
      {
        v17 = [v6 objectAtIndex:v13];
        ++v13;
      }

      v18 = [v7 lastObject];
      v19 = [v18 intersectWithCFI:v17];
      if (v19)
      {
        v20 = [v18 unionWithCFI:v17];
        [v7 replaceObjectAtIndex:objc_msgSend(v7 withObject:{"count") - 1, v20}];
      }

      else
      {
        [v7 addObject:v17];
      }

      v21 = [v5 count];
      v22 = [v6 count];
      v11 = v13 != v22;
      v10 = v12 != v21;
    }

    while (v12 != v21 || v13 != v22);
  }

  return v7;
}

+ (id)_negateArray:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 count];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 firstObject];
    v8 = +[BCCFI minimumCFI];
    v9 = [v8 rangeToCFI:v7];

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
        v10 = v7;

        v7 = [v3 objectAtIndexedSubscript:i];

        v9 = [v10 rangeToCFI:v7];

        if ([v9 isRange])
        {
          [v4 addObject:v9];
        }

        v13 = v10;
      }
    }

    v16 = +[BCCFI maximumCFI];
    v11 = [v7 rangeToCFI:v16];

    if ([v11 isRange])
    {
      [v4 addObject:v11];
    }
  }

  else
  {
    v10 = +[BCCFI minimumCFI];
    v7 = +[BCCFI maximumCFI];
    v11 = [v10 rangeToCFI:v7];
    v12 = [NSMutableArray arrayWithObject:v11];

    v4 = v12;
  }

  return v4;
}

- (id)_mutableArrayCopyWithOnlyRangeCFIsFromCFIs:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

- (id)_arrayCopyWithOnlyRangeCFIsFromCFIs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(BCCFISet *)self _mutableArrayCopyWithOnlyRangeCFIsFromCFIs:v4];
    v6 = [v5 copy];
  }

  else
  {
    v6 = +[NSArray array];
  }

  return v6;
}

@end
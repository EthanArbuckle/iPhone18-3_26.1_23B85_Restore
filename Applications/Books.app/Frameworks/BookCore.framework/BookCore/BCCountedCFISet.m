@interface BCCountedCFISet
+ (id)countedCFISet;
- (BCCFILengthProviding)lengthProvider;
- (BCCountedCFISet)init;
- (BOOL)addCFIString:(id)a3 count:(double)a4 error:(id *)a5;
- (BOOL)subtractCFIString:(id)a3 count:(double)a4 error:(id *)a5;
- (id)allCFICounts;
- (id)allCFIStringCounts;
- (id)cfisWithMinimumCount:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_updateCountForEntry:(id)a3 index:(unint64_t)a4 value:(double)a5 operation:(int)a6 allowMergeForward:(BOOL)a7 allowMergeBack:(BOOL)a8;
- (void)_optimize;
- (void)_updateCountForCFI:(id)a3 value:(double)a4 operation:(int)a5;
- (void)setMaximumCFICount:(unint64_t)a3;
- (void)updateWithCFISet:(id)a3 minimumCount:(double)a4;
@end

@implementation BCCountedCFISet

+ (id)countedCFISet
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)setMaximumCFICount:(unint64_t)a3
{
  if (self->_maximumCFICount != a3)
  {
    self->_maximumCFICount = a3;
    [(BCCountedCFISet *)self _optimize];
  }
}

- (BCCountedCFISet)init
{
  v6.receiver = self;
  v6.super_class = BCCountedCFISet;
  v2 = [(BCCountedCFISet *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    entries = v2->_entries;
    v2->_entries = v3;

    v2->_maximumCFICount = -1;
    v2->_optimizationTargetProportion = 0.8;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BCCountedCFISet);
  v5 = [(BCCountedCFISet *)self entries];
  v6 = [v5 mutableCopy];
  [(BCCountedCFISet *)v4 setEntries:v6];

  return v4;
}

- (id)description
{
  v3 = [NSMutableString stringWithString:@"{\n"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BCCountedCFISet *)self entries];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) description];
        [v3 appendFormat:@"    %@;\n", v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}"];

  return v3;
}

- (BOOL)addCFIString:(id)a3 count:(double)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v9 = [BCCFI cfiWithString:v8 error:&v15];
  v10 = v15;
  if (v9)
  {
    [(BCCountedCFISet *)self _updateCountForCFI:v9 value:0 operation:a4];
    if (a5)
    {
LABEL_3:
      v11 = v10;
      *a5 = v10;
    }
  }

  else
  {
    v13 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a5;
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Cannot initialize BCCFI with string %@.  addCFIString:count: will return nil. error=%@", buf, 0x16u);
    }

    if (a5)
    {
      goto LABEL_3;
    }
  }

  return v10 == 0;
}

- (BOOL)subtractCFIString:(id)a3 count:(double)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v9 = [BCCFI cfiWithString:v8 error:&v15];
  v10 = v15;
  if (v9)
  {
    [(BCCountedCFISet *)self _updateCountForCFI:v9 value:0 operation:-a4];
    if (a5)
    {
LABEL_3:
      v11 = v10;
      *a5 = v10;
    }
  }

  else
  {
    v13 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a5;
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Cannot initialize BCCFI with string %@.  subtractCFIString:count: will return nil. error=%@", buf, 0x16u);
    }

    if (a5)
    {
      goto LABEL_3;
    }
  }

  return v10 == 0;
}

- (id)allCFICounts
{
  v3 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(BCCountedCFISet *)self entries];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v19[0] = @"cfi";
        v9 = [v8 cfi];
        v19[1] = @"count";
        v20[0] = v9;
        [v8 count];
        v10 = [NSNumber numberWithDouble:?];
        v20[1] = v10;
        v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
        [v3 addObject:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = [v3 copy];

  return v12;
}

- (id)allCFIStringCounts
{
  v3 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(BCCountedCFISet *)self entries];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v19[0] = @"cfiString";
        v9 = [v8 cfi];
        v10 = [v9 string];
        v19[1] = @"count";
        v20[0] = v10;
        [v8 count];
        v11 = [NSNumber numberWithDouble:?];
        v20[1] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
        [v3 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)cfisWithMinimumCount:(double)a3
{
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(BCCountedCFISet *)self entries];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v11 count];
        if (v12 >= a3)
        {
          v13 = [v11 cfi];
          [v5 addCFI:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)updateWithCFISet:(id)a3 minimumCount:(double)a4
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 allCFIs];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BCCountedCFISet *)self updateWithCFI:*(*(&v11 + 1) + 8 * v10) minimumCount:a4];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (int64_t)_updateCountForEntry:(id)a3 index:(unint64_t)a4 value:(double)a5 operation:(int)a6 allowMergeForward:(BOOL)a7 allowMergeBack:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a3;
  v15 = [(BCCountedCFISet *)self entries];
  v16 = v14;
  v17 = v16;
  if (a6 == 1)
  {
    [v16 count];
    if (v19 < a5)
    {
      v19 = a5;
    }
  }

  else
  {
    if (a6)
    {
      goto LABEL_7;
    }

    [v16 count];
    v19 = v18 + a5;
  }

  [v17 setCount:v19];
LABEL_7:
  [v17 count];
  if (v20 > 0.0)
  {
    v21 = [v17 cfi];
    v22 = 0;
    if (a4 && v8)
    {
      v23 = a4 - 1;
      v24 = [v15 objectAtIndexedSubscript:a4 - 1];
      v25 = [v24 cfi];
      [v17 count];
      v27 = v26;
      [v24 count];
      if (v27 == v28 && ![v25 compareTailToHead:v21])
      {
        v30 = [v25 unionWithCFI:v21];
        [v24 setCfi:v30];

        [v15 removeObjectAtIndex:a4];
        v29 = v24;

        v31 = [v29 cfi];

        v22 = -1;
        v21 = v31;
        a4 = v23;
      }

      else
      {
        v22 = 0;
        v29 = v17;
      }

      if (v9)
      {
LABEL_18:
        if (a4 < [v15 count] - 1)
        {
          v32 = [v15 objectAtIndexedSubscript:a4 + 1];
          v33 = [v32 cfi];
          [v29 count];
          v35 = v34;
          [v32 count];
          if (v35 == v36 && ![v21 compareTailToHead:v33])
          {
            v37 = [v33 unionWithCFI:v21];
            [v32 setCfi:v37];

            [v15 removeObjectAtIndex:a4];
            --v22;
          }
        }
      }
    }

    else
    {
      v29 = v17;
      if (v9)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_24;
  }

  [v15 removeObjectAtIndex:a4];
  v22 = -1;
  v29 = v17;
LABEL_24:

  return v22;
}

- (void)_updateCountForCFI:(id)a3 value:(double)a4 operation:(int)a5
{
  v7 = a3;
  v8 = [v7 isRange];
  if (a4 != 0.0 && v8 != 0)
  {
    v54 = v7;
    v10 = v7;
    v11 = [(BCCountedCFISet *)self entries];
    v53 = [[BCCountedCFISetEntry alloc] initWithCFI:v10];
    v12 = [v11 indexOfObject:v53 inSortedRange:0 options:objc_msgSend(v11 usingComparator:{"count"), 1024, &stru_2C9250}];
    v13 = v12;
    v55 = v11;
    if (v12)
    {
      v14 = v12 - 1;
      v15 = [v11 objectAtIndex:v12 - 1];
      v16 = [v15 cfi];
      v17 = [v10 intersectWithCFI:v16];
      if ([v17 isRange])
      {
        v18 = +[NSMutableArray array];
        v19 = [v16 headCFI];
        v20 = [v19 rangeToCFI:v17];

        v21 = v13 - 1;
        if ([v20 isRange])
        {
          v22 = [[BCCountedCFISetEntry alloc] initWithCFI:v20];
          [v15 count];
          [(BCCountedCFISetEntry *)v22 setCount:?];
          [v18 addObject:v22];

          v21 = v13;
        }

        v51 = v20;
        v23 = [[BCCountedCFISetEntry alloc] initWithCFI:v17];
        v56 = v15;
        [v15 count];
        [(BCCountedCFISetEntry *)v23 setCount:?];
        [v18 addObject:v23];
        v52 = v16;
        v24 = [v16 tailCFI];
        v25 = [v17 rangeToCFI:v24];

        if ([v25 isRange])
        {
          v26 = [[BCCountedCFISetEntry alloc] initWithCFI:v25];
          [v56 count];
          [(BCCountedCFISetEntry *)v26 setCount:?];
          [v18 addObject:v26];
        }

        v27 = v18;
        v11 = v55;
        [v55 replaceObjectsInRange:v14 withObjectsFromArray:{1, v27}];
        v28 = [v27 count];
        v29 = v21;
        v30 = a5;
        v31 = [(BCCountedCFISet *)self _updateCountForEntry:v23 index:v29 value:a5 operation:1 allowMergeForward:1 allowMergeBack:a4];
        v50 = v23;
        v32 = v25;
        v13 = v28 + v14 + v31;
        v33 = [v10 tailCFI];
        v34 = [v17 rangeToCFI:v33];

        v10 = v34;
        v15 = v56;
        v16 = v52;
      }

      else
      {
        v30 = a5;
      }
    }

    else
    {
      v30 = a5;
    }

    if ([v10 isRange])
    {
      v57 = self;
      do
      {
        if (v13 >= [v11 count])
        {
          v35 = [[BCCountedCFISetEntry alloc] initWithCFI:v10];
          [v11 insertObject:v35 atIndex:v13];
          v13 += [(BCCountedCFISet *)self _updateCountForEntry:v35 index:v13 value:v30 operation:1 allowMergeForward:1 allowMergeBack:a4];
          v36 = v10;
          v10 = 0;
        }

        else
        {
          v35 = [v11 objectAtIndex:v13];
          v36 = [(BCCountedCFISetEntry *)v35 cfi];
          v37 = [v10 intersectWithCFI:v36];
          if ([v37 isRange])
          {
            v38 = [v10 headCFI];
            v39 = [v38 rangeToCFI:v37];

            if ([(BCCountedCFISetEntry *)v39 isRange])
            {
              v40 = [[BCCountedCFISetEntry alloc] initWithCFI:v39];
              v41 = v11;
              v42 = v40;
              [v41 insertObject:v40 atIndex:v13];
              v30 = a5;
              v13 += [(BCCountedCFISet *)self _updateCountForEntry:v42 index:v13 value:a5 operation:0 allowMergeForward:1 allowMergeBack:a4]+ 1;
              v43 = [v10 tailCFI];
              v44 = [(BCCountedCFISetEntry *)v39 rangeToCFI:v43];
            }

            else
            {
              v44 = v10;
              v30 = a5;
            }

            v46 = [v36 tailCFI];
            v10 = [v37 rangeToCFI:v46];

            if ([v10 isRange])
            {
              v47 = [[BCCountedCFISetEntry alloc] initWithCFI:v37];
              [(BCCountedCFISetEntry *)v35 count];
              [(BCCountedCFISetEntry *)v47 setCount:?];
              v48 = [[BCCountedCFISetEntry alloc] initWithCFI:v10];
              [(BCCountedCFISetEntry *)v35 count];
              [(BCCountedCFISetEntry *)v48 setCount:?];
              v59[0] = v47;
              v59[1] = v48;
              v49 = [NSArray arrayWithObjects:v59 count:2];
              [v55 replaceObjectsInRange:v13 withObjectsFromArray:{1, v49}];

              v13 += [(BCCountedCFISet *)v57 _updateCountForEntry:v47 index:v13 value:a5 operation:1 allowMergeForward:1 allowMergeBack:a4];
              v45 = 0;
              v44 = v48;
              v30 = a5;
            }

            else
            {
              v13 += [(BCCountedCFISet *)v57 _updateCountForEntry:v35 index:v13 value:v30 operation:1 allowMergeForward:1 allowMergeBack:a4]+ 1;
              v47 = [v44 tailCFI];
              v45 = [v36 rangeToCFI:v47];
            }

            v11 = v55;
            self = v57;
          }

          else
          {
            v39 = [[BCCountedCFISetEntry alloc] initWithCFI:v10];
            [v11 insertObject:v39 atIndex:v13];
            v45 = 0;
            v13 += [(BCCountedCFISet *)self _updateCountForEntry:v39 index:v13 value:v30 operation:1 allowMergeForward:1 allowMergeBack:a4];
          }

          v10 = v45;
        }
      }

      while (([v10 isRange] & 1) != 0);
    }

    [(BCCountedCFISet *)self _optimize];

    v7 = v54;
  }
}

- (void)_optimize
{
  v3 = [(BCCountedCFISet *)self maximumCFICount];
  v54 = [(BCCountedCFISet *)self entries];
  v4 = [(BCCountedCFISet *)self entries];
  v5 = [v4 count];

  v6 = objc_autoreleasePoolPush();
  v50 = [(BCCountedCFISet *)self lengthProvider];
  if (!v50 || !v3 || v3 == 0x7FFFFFFFFFFFFFFFLL || v5 <= v3)
  {
    goto LABEL_36;
  }

  v47 = v6;
  [(BCCountedCFISet *)self optimizationTargetProportion];
  v49 = v5 - llround(v7 * v3);
  v8 = +[NSMutableArray array];
  +[NSMutableArray array];
  v53 = v51 = 0;
  v9 = 0;
  v48 = v8;
  do
  {
    do
    {
      v10 = v9;
      v11 = [v54 objectAtIndexedSubscript:v9];
      v12 = [v11 cfi];
      if ([v12 spineIndex] != v51)
      {

        break;
      }

      v13 = [v50 characterCountForCFI:v12];
      if (v9)
      {
        v14 = [v8 objectAtIndexedSubscript:v9 - 1];
        v15 = [v14 touchesNext];
      }

      else
      {
        v15 = 0;
      }

      ++v9;
      if (v10 + 1 >= v5)
      {
        v18 = 0;
      }

      else
      {
        v16 = [v54 objectAtIndexedSubscript:v10 + 1];
        v17 = [v16 cfi];
        v18 = [v12 compareTailToHead:v17] != -1;

        v8 = v48;
      }

      v19 = objc_opt_new();
      [v19 setCharacterCount:v13];
      [v19 setTouchesPrev:v15];
      [v19 setTouchesNext:v18];
      [v8 addObject:v19];
      if (v15 | v18)
      {
        if ([v53 count] < v49 || (objc_msgSend(v53, "lastObject"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectAtIndexedSubscript:", objc_msgSend(v20, "unsignedIntegerValue")), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "characterCount"), v21, v20, v23 = v13 < v22, v8 = v48, v23))
        {
          v24 = [NSNumber numberWithUnsignedInteger:v10];
          v25 = [v53 count];
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_389F8;
          v55[3] = &unk_2C9278;
          v56 = v8;
          [v53 insertObject:v24 atIndex:{objc_msgSend(v53, "indexOfObject:inSortedRange:options:usingComparator:", v24, 0, v25, 1024, v55)}];
          if ([v53 count] > v49)
          {
            [v53 removeLastObject];
          }
        }
      }
    }

    while (v9 < v5);
    ++v51;
  }

  while (v9 < v5);
  [v53 sortUsingComparator:&stru_2C92B8];
  v26 = [v53 count];
  if (v26 >= 1)
  {
    v27 = v26 + 1;
    while (1)
    {
      v28 = [v53 objectAtIndexedSubscript:v27 - 2];
      v29 = [v28 unsignedIntegerValue];

      v30 = [v48 objectAtIndexedSubscript:v29];
      v31 = [v30 touchesNext];
      if (v31)
      {
        break;
      }

      if ([v30 touchesPrev])
      {
        v52 = v27 - 2;
        v32 = v29 - 1;
        goto LABEL_30;
      }

LABEL_34:

      if (--v27 <= 1)
      {
        goto LABEL_35;
      }
    }

    v52 = v27 - 2;
    v32 = v29 + 1;
LABEL_30:
    v33 = [v48 objectAtIndexedSubscript:v32];
    v34 = [v54 objectAtIndexedSubscript:v29];
    v35 = [v54 objectAtIndexedSubscript:v32];
    v36 = [v30 characterCount];
    [v34 count];
    v38 = v37;
    v39 = [v33 characterCount];
    [v35 count];
    v41 = v40 * v39 + v36 * v38;
    v42 = [v30 characterCount];
    v43 = v41 / (v42 + [v33 characterCount]);
    v44 = [v34 cfi];
    v45 = [v35 cfi];
    v46 = [v44 unionWithCFI:v45];

    [v35 setCfi:v46];
    [v35 setCount:v43];
    [v33 setCharacterCount:{objc_msgSend(v30, "characterCount") + objc_msgSend(v33, "characterCount")}];
    if (v31)
    {
      [v33 setTouchesPrev:{objc_msgSend(v30, "touchesPrev")}];
    }

    else
    {
      [v33 setTouchesNext:{objc_msgSend(v30, "touchesNext")}];
    }

    [v54 removeObjectAtIndex:v29];
    [v48 removeObjectAtIndex:v29];
    [v53 removeObjectAtIndex:v52];

    goto LABEL_34;
  }

LABEL_35:

  v6 = v47;
LABEL_36:

  objc_autoreleasePoolPop(v6);
}

- (BCCFILengthProviding)lengthProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_lengthProvider);

  return WeakRetained;
}

@end
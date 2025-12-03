@interface BCCountedCFISet
+ (id)countedCFISet;
- (BCCFILengthProviding)lengthProvider;
- (BCCountedCFISet)init;
- (BOOL)addCFIString:(id)string count:(double)count error:(id *)error;
- (BOOL)subtractCFIString:(id)string count:(double)count error:(id *)error;
- (id)allCFICounts;
- (id)allCFIStringCounts;
- (id)cfisWithMinimumCount:(double)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)_updateCountForEntry:(id)entry index:(unint64_t)index value:(double)value operation:(int)operation allowMergeForward:(BOOL)forward allowMergeBack:(BOOL)back;
- (void)_optimize;
- (void)_updateCountForCFI:(id)i value:(double)value operation:(int)operation;
- (void)setMaximumCFICount:(unint64_t)count;
- (void)updateWithCFISet:(id)set minimumCount:(double)count;
@end

@implementation BCCountedCFISet

+ (id)countedCFISet
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)setMaximumCFICount:(unint64_t)count
{
  if (self->_maximumCFICount != count)
  {
    self->_maximumCFICount = count;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BCCountedCFISet);
  entries = [(BCCountedCFISet *)self entries];
  v6 = [entries mutableCopy];
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
  entries = [(BCCountedCFISet *)self entries];
  v5 = [entries countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(entries);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) description];
        [v3 appendFormat:@"    %@;\n", v9];
      }

      v6 = [entries countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}"];

  return v3;
}

- (BOOL)addCFIString:(id)string count:(double)count error:(id *)error
{
  stringCopy = string;
  v15 = 0;
  v9 = [BCCFI cfiWithString:stringCopy error:&v15];
  v10 = v15;
  if (v9)
  {
    [(BCCountedCFISet *)self _updateCountForCFI:v9 value:0 operation:count];
    if (error)
    {
LABEL_3:
      v11 = v10;
      *error = v10;
    }
  }

  else
  {
    v13 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *error;
      *buf = 138412546;
      v17 = stringCopy;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Cannot initialize BCCFI with string %@.  addCFIString:count: will return nil. error=%@", buf, 0x16u);
    }

    if (error)
    {
      goto LABEL_3;
    }
  }

  return v10 == 0;
}

- (BOOL)subtractCFIString:(id)string count:(double)count error:(id *)error
{
  stringCopy = string;
  v15 = 0;
  v9 = [BCCFI cfiWithString:stringCopy error:&v15];
  v10 = v15;
  if (v9)
  {
    [(BCCountedCFISet *)self _updateCountForCFI:v9 value:0 operation:-count];
    if (error)
    {
LABEL_3:
      v11 = v10;
      *error = v10;
    }
  }

  else
  {
    v13 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *error;
      *buf = 138412546;
      v17 = stringCopy;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Cannot initialize BCCFI with string %@.  subtractCFIString:count: will return nil. error=%@", buf, 0x16u);
    }

    if (error)
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
        string = [v9 string];
        v19[1] = @"count";
        v20[0] = string;
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

- (id)cfisWithMinimumCount:(double)count
{
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  entries = [(BCCountedCFISet *)self entries];
  v7 = [entries countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(entries);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v11 count];
        if (v12 >= count)
        {
          v13 = [v11 cfi];
          [v5 addCFI:v13];
        }
      }

      v8 = [entries countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)updateWithCFISet:(id)set minimumCount:(double)count
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allCFIs = [set allCFIs];
  v7 = [allCFIs countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allCFIs);
        }

        [(BCCountedCFISet *)self updateWithCFI:*(*(&v11 + 1) + 8 * v10) minimumCount:count];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allCFIs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (int64_t)_updateCountForEntry:(id)entry index:(unint64_t)index value:(double)value operation:(int)operation allowMergeForward:(BOOL)forward allowMergeBack:(BOOL)back
{
  backCopy = back;
  forwardCopy = forward;
  entryCopy = entry;
  entries = [(BCCountedCFISet *)self entries];
  v16 = entryCopy;
  v17 = v16;
  if (operation == 1)
  {
    [v16 count];
    if (valueCopy < value)
    {
      valueCopy = value;
    }
  }

  else
  {
    if (operation)
    {
      goto LABEL_7;
    }

    [v16 count];
    valueCopy = v18 + value;
  }

  [v17 setCount:valueCopy];
LABEL_7:
  [v17 count];
  if (v20 > 0.0)
  {
    v21 = [v17 cfi];
    v22 = 0;
    if (index && backCopy)
    {
      v23 = index - 1;
      v24 = [entries objectAtIndexedSubscript:index - 1];
      v25 = [v24 cfi];
      [v17 count];
      v27 = v26;
      [v24 count];
      if (v27 == v28 && ![v25 compareTailToHead:v21])
      {
        v30 = [v25 unionWithCFI:v21];
        [v24 setCfi:v30];

        [entries removeObjectAtIndex:index];
        v29 = v24;

        v31 = [v29 cfi];

        v22 = -1;
        v21 = v31;
        index = v23;
      }

      else
      {
        v22 = 0;
        v29 = v17;
      }

      if (forwardCopy)
      {
LABEL_18:
        if (index < [entries count] - 1)
        {
          v32 = [entries objectAtIndexedSubscript:index + 1];
          v33 = [v32 cfi];
          [v29 count];
          v35 = v34;
          [v32 count];
          if (v35 == v36 && ![v21 compareTailToHead:v33])
          {
            v37 = [v33 unionWithCFI:v21];
            [v32 setCfi:v37];

            [entries removeObjectAtIndex:index];
            --v22;
          }
        }
      }
    }

    else
    {
      v29 = v17;
      if (forwardCopy)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_24;
  }

  [entries removeObjectAtIndex:index];
  v22 = -1;
  v29 = v17;
LABEL_24:

  return v22;
}

- (void)_updateCountForCFI:(id)i value:(double)value operation:(int)operation
{
  iCopy = i;
  isRange = [iCopy isRange];
  if (value != 0.0 && isRange != 0)
  {
    v54 = iCopy;
    v10 = iCopy;
    entries = [(BCCountedCFISet *)self entries];
    v53 = [[BCCountedCFISetEntry alloc] initWithCFI:v10];
    v12 = [entries indexOfObject:v53 inSortedRange:0 options:objc_msgSend(entries usingComparator:{"count"), 1024, &stru_2C9250}];
    v13 = v12;
    v55 = entries;
    if (v12)
    {
      v14 = v12 - 1;
      v15 = [entries objectAtIndex:v12 - 1];
      v16 = [v15 cfi];
      v17 = [v10 intersectWithCFI:v16];
      if ([v17 isRange])
      {
        v18 = +[NSMutableArray array];
        headCFI = [v16 headCFI];
        v20 = [headCFI rangeToCFI:v17];

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
        tailCFI = [v16 tailCFI];
        v25 = [v17 rangeToCFI:tailCFI];

        if ([v25 isRange])
        {
          v26 = [[BCCountedCFISetEntry alloc] initWithCFI:v25];
          [v56 count];
          [(BCCountedCFISetEntry *)v26 setCount:?];
          [v18 addObject:v26];
        }

        v27 = v18;
        entries = v55;
        [v55 replaceObjectsInRange:v14 withObjectsFromArray:{1, v27}];
        v28 = [v27 count];
        v29 = v21;
        operationCopy6 = operation;
        v31 = [(BCCountedCFISet *)self _updateCountForEntry:v23 index:v29 value:operation operation:1 allowMergeForward:1 allowMergeBack:value];
        v50 = v23;
        v32 = v25;
        v13 = v28 + v14 + v31;
        tailCFI2 = [v10 tailCFI];
        v34 = [v17 rangeToCFI:tailCFI2];

        v10 = v34;
        v15 = v56;
        v16 = v52;
      }

      else
      {
        operationCopy6 = operation;
      }
    }

    else
    {
      operationCopy6 = operation;
    }

    if ([v10 isRange])
    {
      selfCopy = self;
      do
      {
        if (v13 >= [entries count])
        {
          v35 = [[BCCountedCFISetEntry alloc] initWithCFI:v10];
          [entries insertObject:v35 atIndex:v13];
          v13 += [(BCCountedCFISet *)self _updateCountForEntry:v35 index:v13 value:operationCopy6 operation:1 allowMergeForward:1 allowMergeBack:value];
          v36 = v10;
          v10 = 0;
        }

        else
        {
          v35 = [entries objectAtIndex:v13];
          v36 = [(BCCountedCFISetEntry *)v35 cfi];
          v37 = [v10 intersectWithCFI:v36];
          if ([v37 isRange])
          {
            headCFI2 = [v10 headCFI];
            v39 = [headCFI2 rangeToCFI:v37];

            if ([(BCCountedCFISetEntry *)v39 isRange])
            {
              v40 = [[BCCountedCFISetEntry alloc] initWithCFI:v39];
              v41 = entries;
              v42 = v40;
              [v41 insertObject:v40 atIndex:v13];
              operationCopy6 = operation;
              v13 += [(BCCountedCFISet *)self _updateCountForEntry:v42 index:v13 value:operation operation:0 allowMergeForward:1 allowMergeBack:value]+ 1;
              tailCFI3 = [v10 tailCFI];
              v44 = [(BCCountedCFISetEntry *)v39 rangeToCFI:tailCFI3];
            }

            else
            {
              v44 = v10;
              operationCopy6 = operation;
            }

            tailCFI4 = [v36 tailCFI];
            v10 = [v37 rangeToCFI:tailCFI4];

            if ([v10 isRange])
            {
              tailCFI5 = [[BCCountedCFISetEntry alloc] initWithCFI:v37];
              [(BCCountedCFISetEntry *)v35 count];
              [(BCCountedCFISetEntry *)tailCFI5 setCount:?];
              v48 = [[BCCountedCFISetEntry alloc] initWithCFI:v10];
              [(BCCountedCFISetEntry *)v35 count];
              [(BCCountedCFISetEntry *)v48 setCount:?];
              v59[0] = tailCFI5;
              v59[1] = v48;
              v49 = [NSArray arrayWithObjects:v59 count:2];
              [v55 replaceObjectsInRange:v13 withObjectsFromArray:{1, v49}];

              v13 += [(BCCountedCFISet *)selfCopy _updateCountForEntry:tailCFI5 index:v13 value:operation operation:1 allowMergeForward:1 allowMergeBack:value];
              v45 = 0;
              v44 = v48;
              operationCopy6 = operation;
            }

            else
            {
              v13 += [(BCCountedCFISet *)selfCopy _updateCountForEntry:v35 index:v13 value:operationCopy6 operation:1 allowMergeForward:1 allowMergeBack:value]+ 1;
              tailCFI5 = [v44 tailCFI];
              v45 = [v36 rangeToCFI:tailCFI5];
            }

            entries = v55;
            self = selfCopy;
          }

          else
          {
            v39 = [[BCCountedCFISetEntry alloc] initWithCFI:v10];
            [entries insertObject:v39 atIndex:v13];
            v45 = 0;
            v13 += [(BCCountedCFISet *)self _updateCountForEntry:v39 index:v13 value:operationCopy6 operation:1 allowMergeForward:1 allowMergeBack:value];
          }

          v10 = v45;
        }
      }

      while (([v10 isRange] & 1) != 0);
    }

    [(BCCountedCFISet *)self _optimize];

    iCopy = v54;
  }
}

- (void)_optimize
{
  maximumCFICount = [(BCCountedCFISet *)self maximumCFICount];
  entries = [(BCCountedCFISet *)self entries];
  entries2 = [(BCCountedCFISet *)self entries];
  v5 = [entries2 count];

  v6 = objc_autoreleasePoolPush();
  lengthProvider = [(BCCountedCFISet *)self lengthProvider];
  if (!lengthProvider || !maximumCFICount || maximumCFICount == 0x7FFFFFFFFFFFFFFFLL || v5 <= maximumCFICount)
  {
    goto LABEL_36;
  }

  v47 = v6;
  [(BCCountedCFISet *)self optimizationTargetProportion];
  v49 = v5 - llround(v7 * maximumCFICount);
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
      v11 = [entries objectAtIndexedSubscript:v9];
      v12 = [v11 cfi];
      if ([v12 spineIndex] != v51)
      {

        break;
      }

      v13 = [lengthProvider characterCountForCFI:v12];
      if (v9)
      {
        v14 = [v8 objectAtIndexedSubscript:v9 - 1];
        touchesNext = [v14 touchesNext];
      }

      else
      {
        touchesNext = 0;
      }

      ++v9;
      if (v10 + 1 >= v5)
      {
        v18 = 0;
      }

      else
      {
        v16 = [entries objectAtIndexedSubscript:v10 + 1];
        v17 = [v16 cfi];
        v18 = [v12 compareTailToHead:v17] != -1;

        v8 = v48;
      }

      v19 = objc_opt_new();
      [v19 setCharacterCount:v13];
      [v19 setTouchesPrev:touchesNext];
      [v19 setTouchesNext:v18];
      [v8 addObject:v19];
      if (touchesNext | v18)
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
      unsignedIntegerValue = [v28 unsignedIntegerValue];

      v30 = [v48 objectAtIndexedSubscript:unsignedIntegerValue];
      touchesNext2 = [v30 touchesNext];
      if (touchesNext2)
      {
        break;
      }

      if ([v30 touchesPrev])
      {
        v52 = v27 - 2;
        v32 = unsignedIntegerValue - 1;
        goto LABEL_30;
      }

LABEL_34:

      if (--v27 <= 1)
      {
        goto LABEL_35;
      }
    }

    v52 = v27 - 2;
    v32 = unsignedIntegerValue + 1;
LABEL_30:
    v33 = [v48 objectAtIndexedSubscript:v32];
    v34 = [entries objectAtIndexedSubscript:unsignedIntegerValue];
    v35 = [entries objectAtIndexedSubscript:v32];
    characterCount = [v30 characterCount];
    [v34 count];
    v38 = v37;
    characterCount2 = [v33 characterCount];
    [v35 count];
    v41 = v40 * characterCount2 + characterCount * v38;
    characterCount3 = [v30 characterCount];
    v43 = v41 / (characterCount3 + [v33 characterCount]);
    v44 = [v34 cfi];
    v45 = [v35 cfi];
    v46 = [v44 unionWithCFI:v45];

    [v35 setCfi:v46];
    [v35 setCount:v43];
    [v33 setCharacterCount:{objc_msgSend(v30, "characterCount") + objc_msgSend(v33, "characterCount")}];
    if (touchesNext2)
    {
      [v33 setTouchesPrev:{objc_msgSend(v30, "touchesPrev")}];
    }

    else
    {
      [v33 setTouchesNext:{objc_msgSend(v30, "touchesNext")}];
    }

    [entries removeObjectAtIndex:unsignedIntegerValue];
    [v48 removeObjectAtIndex:unsignedIntegerValue];
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
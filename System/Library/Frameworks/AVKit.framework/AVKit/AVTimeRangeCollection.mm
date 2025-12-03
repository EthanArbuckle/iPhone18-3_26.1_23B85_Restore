@interface AVTimeRangeCollection
- (AVTimeRangeCollection)initWithInterstitialTimeRanges:(id)ranges;
- (AVTimeRangeCollection)initWithTimeRanges:(id)ranges;
- (AVTimeRangeCollection)initWithTimedMetadataGroups:(id)groups;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTimeRangeCollection:(id)collection;
- (double)displayTimeFromTime:(double)time;
- (double)timeFromDisplayTime:(double)time;
- (id)arrayOfBoundaryTimes;
- (id)arrayOfDisplayTimesMatching:(id)matching;
- (id)description;
- (id)displayTimeRangeTrimmedToTimeRange:(id)range;
- (id)timeRangeAfterTime:(double)time;
- (id)timeRangeBeforeTime:(double)time;
- (id)timeRangeClosestToTime:(double)time;
- (id)timeRangeContainingTime:(double)time;
- (id)timeRangesBetweenDisplayTime:(double)time and:(double)and;
- (unint64_t)count;
- (void)setMapDate:(id)date toTime:(double)time;
@end

@implementation AVTimeRangeCollection

- (AVTimeRangeCollection)initWithInterstitialTimeRanges:(id)ranges
{
  v21 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = rangesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v11)
        {
          [*(*(&v16 + 1) + 8 * i) timeRange];
          if ((v15 & 0x1D) == 1)
          {
            v12 = [AVTimeRange timeRangeWithInterstice:v11];
            [array addObject:v12];
          }
        }

        else
        {
          v15 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [(AVTimeRangeCollection *)self initWithTimeRanges:array];
  return v13;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_timeRanges;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) description];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = @"??";
        }

        [v3 addObject:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [(NSArray *)self->_timeRanges count];
  v16 = [v3 componentsJoinedByString:{@", "}];
  v17 = [v12 stringWithFormat:@"<%@ %p>: %d ranges [%@]", v14, self, v15, v16, v19];

  return v17;
}

- (id)displayTimeRangeTrimmedToTimeRange:(id)range
{
  rangeCopy = range;
  [rangeCopy startTime];
  v5 = [(AVTimeRangeCollection *)self timeRangeContainingTime:?];
  if (v5)
  {
    v6 = [rangeCopy timeRangeExcludingTimeRange:v5];
  }

  else
  {
    v6 = rangeCopy;
  }

  v7 = v6;
  [v6 duration];
  if (v8 == 0.0)
  {
    v9 = +[AVTimeRange timeRangeZero];
  }

  else
  {
    [v7 startTime];
    [(AVTimeRangeCollection *)self displayTimeFromTime:?];
    v11 = v10;
    [v7 endTime];
    [(AVTimeRangeCollection *)self displayTimeFromTime:?];
    v9 = [[AVTimeRange alloc] initWithStartTime:v11 endTime:v12];
  }

  v13 = v9;

  return v13;
}

- (double)timeFromDisplayTime:(double)time
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [timeRanges countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(timeRanges);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      [v9 startTime];
      if (time <= v10)
      {
        break;
      }

      if ([v9 isCollapsedInTimeLine])
      {
        [v9 duration];
        time = time + v11;
      }

      if (v6 == ++v8)
      {
        v6 = [timeRanges countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return time;
}

- (double)displayTimeFromTime:(double)time
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [timeRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = 0.0;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(timeRanges);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 containsTime:time])
        {
          if ([v10 isCollapsedInTimeLine])
          {
            [v10 startTime];
            v14 = v15 - v8;
          }

          else
          {
LABEL_18:
            v14 = time - v8;
          }

LABEL_20:

          return v14;
        }

        [v10 startTime];
        if (v11 > time)
        {
          goto LABEL_18;
        }

        if ([v10 isCollapsedInTimeLine])
        {
          [v10 duration];
          v8 = v8 + v12;
        }

        [v10 endTime];
        if (v13 == time)
        {
          v14 = time - v8 + 0.00000011920929;
          goto LABEL_20;
        }
      }

      v6 = [timeRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return time - v8;
}

- (id)timeRangesBetweenDisplayTime:(double)time and:(double)and
{
  v28 = *MEMORY[0x1E69E9840];
  [(AVTimeRangeCollection *)self timeFromDisplayTime:time];
  v7 = v6;
  [(AVTimeRangeCollection *)self timeFromDisplayTime:and];
  v9 = v8;
  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v13 = [timeRanges countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = v7 + v9 - v10;
    v16 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(timeRanges);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        [v18 startTime];
        if (v19 < v15)
        {
          [v18 endTime];
          if (v20 > v10)
          {
            [array addObject:v18];
          }
        }
      }

      v14 = [timeRanges countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  if ([array count])
  {
    v21 = [array copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)arrayOfDisplayTimesMatching:(id)matching
{
  matchingCopy = matching;
  array = [MEMORY[0x1E695DF70] array];
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__AVTimeRangeCollection_arrayOfDisplayTimesMatching___block_invoke;
  v11[3] = &unk_1E7209CB8;
  selfCopy = self;
  v14 = matchingCopy;
  v12 = array;
  v7 = array;
  v8 = matchingCopy;
  [timeRanges enumerateObjectsWithOptions:0 usingBlock:v11];

  v9 = [v7 copy];

  return v9;
}

void __53__AVTimeRangeCollection_arrayOfDisplayTimesMatching___block_invoke(void *a1, void *a2)
{
  v7 = a2;
  if ((*(a1[6] + 16))())
  {
    v3 = MEMORY[0x1E696AD98];
    v5 = a1[4];
    v4 = a1[5];
    [v7 startTime];
    [v4 displayTimeFromTime:?];
    v6 = [v3 numberWithDouble:?];
    [v5 addObject:v6];
  }
}

- (id)arrayOfBoundaryTimes
{
  v25 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [timeRanges countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(timeRanges);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = MEMORY[0x1E696B098];
        if (v9)
        {
          [*(*(&v20 + 1) + 8 * i) startCMTime];
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
        }

        v11 = [v10 valueWithCMTime:&v17];
        [array addObject:v11];

        [v9 duration];
        if (v12 > 0.0)
        {
          v13 = MEMORY[0x1E696B098];
          if (v9)
          {
            [v9 endCMTime];
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
          }

          v14 = [v13 valueWithCMTime:&v17];
          [array addObject:v14];
        }
      }

      v6 = [timeRanges countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = [array copy];

  return v15;
}

- (id)timeRangeAfterTime:(double)time
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [timeRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(timeRanges);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 startTime];
        if (v11 > time)
        {
          if (!v7 || ([v10 startTime], v13 = v12, objc_msgSend(v7, "startTime"), v13 < v14))
          {
            v15 = v10;

            v7 = v15;
          }
        }
      }

      v6 = [timeRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)timeRangeBeforeTime:(double)time
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [timeRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(timeRanges);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 endTime];
        if (v11 < time)
        {
          if (!v7 || ([v10 endTime], v13 = v12, objc_msgSend(v7, "endTime"), v13 > v14))
          {
            v15 = v10;

            v7 = v15;
          }
        }
      }

      v6 = [timeRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)timeRangeClosestToTime:(double)time
{
  v24 = *MEMORY[0x1E69E9840];
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  firstObject = [timeRanges firstObject];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  timeRanges2 = [(AVTimeRangeCollection *)self timeRanges];
  v8 = [timeRanges2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(timeRanges2);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 containsTime:time])
        {
          v17 = v12;

          goto LABEL_13;
        }

        [firstObject deltaTimeFromOutsideTime:time];
        v14 = fabs(v13);
        [v12 deltaTimeFromOutsideTime:time];
        if (v14 > fabs(v15))
        {
          v16 = v12;

          firstObject = v16;
        }
      }

      v9 = [timeRanges2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  firstObject = firstObject;
  v17 = firstObject;
LABEL_13:

  return v17;
}

- (id)timeRangeContainingTime:(double)time
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [timeRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(timeRanges);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 containsTime:time])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [timeRanges countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (unint64_t)count
{
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v3 = [timeRanges count];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AVTimeRangeCollection *)self isEqualToTimeRangeCollection:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTimeRangeCollection:(id)collection
{
  collectionCopy = collection;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  timeRanges2 = [collectionCopy timeRanges];
  v7 = [timeRanges count];
  if (v7 == [timeRanges2 count])
  {
    if ([timeRanges count])
    {
      v8 = 0;
      do
      {
        v9 = [timeRanges objectAtIndexedSubscript:v8];
        interstice = [v9 interstice];

        v11 = [timeRanges2 objectAtIndexedSubscript:v8];
        interstice2 = [v11 interstice];

        v13 = [interstice isEqual:interstice2];
        if ((v13 & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [timeRanges count]);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setMapDate:(id)date toTime:(double)time
{
  v17 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  timeRanges = [(AVTimeRangeCollection *)self timeRanges];
  v8 = [timeRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(timeRanges);
        }

        [*(*(&v12 + 1) + 8 * v11++) setMapDate:dateCopy toTime:time];
      }

      while (v9 != v11);
      v9 = [timeRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (AVTimeRangeCollection)initWithTimedMetadataGroups:(id)groups
{
  v21 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = groupsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [AVTimeRange alloc];
        v13 = [(AVTimeRange *)v12 initWithAVTimedMetadataGroup:v11, v16];
        [array addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [(AVTimeRangeCollection *)self initWithTimeRanges:array];
  return v14;
}

- (AVTimeRangeCollection)initWithTimeRanges:(id)ranges
{
  v29 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  v27.receiver = self;
  v27.super_class = AVTimeRangeCollection;
  v5 = [(AVTimeRangeCollection *)&v27 init];
  if (v5)
  {
    v6 = [rangesCopy sortedArrayUsingSelector:sel_compare_];
    timeRanges = v5->_timeRanges;
    v5->_timeRanges = v6;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5->_timeRanges;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v9)
    {
      v12 = 0.0;
      v13 = 0.0;
      goto LABEL_19;
    }

    v10 = v9;
    v11 = *v24;
    v12 = 0.0;
    v13 = 0.0;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if ([v15 isCollapsedInTimeLine])
        {
          [v15 duration];
LABEL_11:
          v12 = v12 + v16;
          goto LABEL_12;
        }

        [v15 insertedDuration];
        if (v17 > 0.0)
        {
          [v15 duration];
          v19 = v18;
          [v15 insertedDuration];
          v16 = v19 - v20;
          goto LABEL_11;
        }

LABEL_12:
        [v15 endTime];
        if (+[AVTimeRange isPrerollSupportEnabled](AVTimeRange, "isPrerollSupportEnabled") && [v15 isCollapsedInTimeLine])
        {
          [v15 duration];
          v13 = v13 + v21;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (!v10)
      {
LABEL_19:

        v5->_combinedDuration = v12;
        v5->_combinedCollapsedDuration = v13;
        break;
      }
    }
  }

  return v5;
}

@end
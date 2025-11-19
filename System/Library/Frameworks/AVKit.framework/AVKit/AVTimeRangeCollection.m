@interface AVTimeRangeCollection
- (AVTimeRangeCollection)initWithInterstitialTimeRanges:(id)a3;
- (AVTimeRangeCollection)initWithTimeRanges:(id)a3;
- (AVTimeRangeCollection)initWithTimedMetadataGroups:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTimeRangeCollection:(id)a3;
- (double)displayTimeFromTime:(double)a3;
- (double)timeFromDisplayTime:(double)a3;
- (id)arrayOfBoundaryTimes;
- (id)arrayOfDisplayTimesMatching:(id)a3;
- (id)description;
- (id)displayTimeRangeTrimmedToTimeRange:(id)a3;
- (id)timeRangeAfterTime:(double)a3;
- (id)timeRangeBeforeTime:(double)a3;
- (id)timeRangeClosestToTime:(double)a3;
- (id)timeRangeContainingTime:(double)a3;
- (id)timeRangesBetweenDisplayTime:(double)a3 and:(double)a4;
- (unint64_t)count;
- (void)setMapDate:(id)a3 toTime:(double)a4;
@end

@implementation AVTimeRangeCollection

- (AVTimeRangeCollection)initWithInterstitialTimeRanges:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
            [v5 addObject:v12];
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

  v13 = [(AVTimeRangeCollection *)self initWithTimeRanges:v5];
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

- (id)displayTimeRangeTrimmedToTimeRange:(id)a3
{
  v4 = a3;
  [v4 startTime];
  v5 = [(AVTimeRangeCollection *)self timeRangeContainingTime:?];
  if (v5)
  {
    v6 = [v4 timeRangeExcludingTimeRange:v5];
  }

  else
  {
    v6 = v4;
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

- (double)timeFromDisplayTime:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      [v9 startTime];
      if (a3 <= v10)
      {
        break;
      }

      if ([v9 isCollapsedInTimeLine])
      {
        [v9 duration];
        a3 = a3 + v11;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return a3;
}

- (double)displayTimeFromTime:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 containsTime:a3])
        {
          if ([v10 isCollapsedInTimeLine])
          {
            [v10 startTime];
            v14 = v15 - v8;
          }

          else
          {
LABEL_18:
            v14 = a3 - v8;
          }

LABEL_20:

          return v14;
        }

        [v10 startTime];
        if (v11 > a3)
        {
          goto LABEL_18;
        }

        if ([v10 isCollapsedInTimeLine])
        {
          [v10 duration];
          v8 = v8 + v12;
        }

        [v10 endTime];
        if (v13 == a3)
        {
          v14 = a3 - v8 + 0.00000011920929;
          goto LABEL_20;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

  return a3 - v8;
}

- (id)timeRangesBetweenDisplayTime:(double)a3 and:(double)a4
{
  v28 = *MEMORY[0x1E69E9840];
  [(AVTimeRangeCollection *)self timeFromDisplayTime:a3];
  v7 = v6;
  [(AVTimeRangeCollection *)self timeFromDisplayTime:a4];
  v9 = v8;
  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(AVTimeRangeCollection *)self timeRanges];
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        [v18 startTime];
        if (v19 < v15)
        {
          [v18 endTime];
          if (v20 > v10)
          {
            [v11 addObject:v18];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    v21 = [v11 copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)arrayOfDisplayTimesMatching:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(AVTimeRangeCollection *)self timeRanges];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__AVTimeRangeCollection_arrayOfDisplayTimesMatching___block_invoke;
  v11[3] = &unk_1E7209CB8;
  v13 = self;
  v14 = v4;
  v12 = v5;
  v7 = v5;
  v8 = v4;
  [v6 enumerateObjectsWithOptions:0 usingBlock:v11];

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
  v3 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
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
        [v3 addObject:v11];

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
          [v3 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];

  return v15;
}

- (id)timeRangeAfterTime:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 startTime];
        if (v11 > a3)
        {
          if (!v7 || ([v10 startTime], v13 = v12, objc_msgSend(v7, "startTime"), v13 < v14))
          {
            v15 = v10;

            v7 = v15;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)timeRangeBeforeTime:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 endTime];
        if (v11 < a3)
        {
          if (!v7 || ([v10 endTime], v13 = v12, objc_msgSend(v7, "endTime"), v13 > v14))
          {
            v15 = v10;

            v7 = v15;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)timeRangeClosestToTime:(double)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(AVTimeRangeCollection *)self timeRanges];
  v6 = [v5 firstObject];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(AVTimeRangeCollection *)self timeRanges];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 containsTime:a3])
        {
          v17 = v12;

          goto LABEL_13;
        }

        [v6 deltaTimeFromOutsideTime:a3];
        v14 = fabs(v13);
        [v12 deltaTimeFromOutsideTime:a3];
        if (v14 > fabs(v15))
        {
          v16 = v12;

          v6 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v6 = v6;
  v17 = v6;
LABEL_13:

  return v17;
}

- (id)timeRangeContainingTime:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AVTimeRangeCollection *)self timeRanges];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 containsTime:a3])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(AVTimeRangeCollection *)self timeRanges];
  v3 = [v2 count];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AVTimeRangeCollection *)self isEqualToTimeRangeCollection:v4];
  }

  return v5;
}

- (BOOL)isEqualToTimeRangeCollection:(id)a3
{
  v4 = a3;
  v5 = [(AVTimeRangeCollection *)self timeRanges];
  v6 = [v4 timeRanges];
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if ([v5 count])
    {
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        v10 = [v9 interstice];

        v11 = [v6 objectAtIndexedSubscript:v8];
        v12 = [v11 interstice];

        v13 = [v10 isEqual:v12];
        if ((v13 & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [v5 count]);
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

- (void)setMapDate:(id)a3 toTime:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(AVTimeRangeCollection *)self timeRanges];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setMapDate:v6 toTime:a4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (AVTimeRangeCollection)initWithTimedMetadataGroups:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [(AVTimeRangeCollection *)self initWithTimeRanges:v5];
  return v14;
}

- (AVTimeRangeCollection)initWithTimeRanges:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AVTimeRangeCollection;
  v5 = [(AVTimeRangeCollection *)&v27 init];
  if (v5)
  {
    v6 = [v4 sortedArrayUsingSelector:sel_compare_];
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
@interface MTLineCountLayoutGroup
- (BOOL)_hasLabelWithPriority:(int64_t)priority;
- (MTLineCountLayoutGroup)initWithTotalLineCount:(unint64_t)count;
- (void)addLabel:(id)label maxLineCount:(unint64_t)count sharingPriority:(int64_t)priority;
- (void)layoutWithSize:(CGSize)size;
@end

@implementation MTLineCountLayoutGroup

- (MTLineCountLayoutGroup)initWithTotalLineCount:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = MTLineCountLayoutGroup;
  v4 = [(MTLineCountLayoutGroup *)&v8 init];
  v5 = v4;
  if (v4)
  {
    priorityOrderedItems = v4->_priorityOrderedItems;
    v4->_totalLineCount = count;
    v4->_priorityOrderedItems = &__NSArray0__struct;
  }

  return v5;
}

- (void)addLabel:(id)label maxLineCount:(unint64_t)count sharingPriority:(int64_t)priority
{
  labelCopy = label;
  if ([(MTLineCountLayoutGroup *)self _hasLabelWithPriority:priority])
  {
    v9 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = priority;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "A label with priority %d already exists", v15, 8u);
    }
  }

  v10 = objc_opt_new();
  [v10 setLabel:labelCopy];

  [v10 setMaxLineCount:count];
  [v10 setSharingPriority:priority];
  priorityOrderedItems = [(MTLineCountLayoutGroup *)self priorityOrderedItems];
  v12 = [priorityOrderedItems arrayByAddingObject:v10];
  v13 = [v12 sortedArrayUsingComparator:&stru_10002CC08];

  priorityOrderedItems = self->_priorityOrderedItems;
  self->_priorityOrderedItems = v13;
}

- (void)layoutWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  totalLineCount = [(MTLineCountLayoutGroup *)self totalLineCount];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  priorityOrderedItems = [(MTLineCountLayoutGroup *)self priorityOrderedItems];
  v8 = [priorityOrderedItems countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(priorityOrderedItems);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        label = [v12 label];
        font = [label font];
        [font lineHeight];
        v16 = v15;

        v17 = vcvtmd_u64_f64(height / v16);
        maxLineCount = [v12 maxLineCount];
        if (maxLineCount >= totalLineCount)
        {
          v19 = totalLineCount;
        }

        else
        {
          v19 = maxLineCount;
        }

        if (v19 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        label2 = [v12 label];
        v22 = label2;
        if (v20)
        {
          v23 = width;
          if (width < 0.00000011920929)
          {
            [label2 bounds];
            v23 = v24;
          }

          [v22 setNumberOfLines:0];
          [v22 textRectForBounds:v20 limitedToNumberOfLines:{0.0, 0.0, v23, 3.40282347e38}];
          v26 = v25;
          font2 = [v22 font];
          [font2 lineHeight];
          v20 = 0;
          if (v26 > 0.0)
          {
            v29 = v28;
            [font2 lineHeight];
            v20 = vcvtad_u64_f64((v26 - v30) / v29) + 1;
          }
        }

        label3 = [v12 label];
        [label3 setNumberOfLines:v20];

        totalLineCount -= v20;
        height = height - v20 * v16;
      }

      v9 = [priorityOrderedItems countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }
}

- (BOOL)_hasLabelWithPriority:(int64_t)priority
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  priorityOrderedItems = [(MTLineCountLayoutGroup *)self priorityOrderedItems];
  v5 = [priorityOrderedItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(priorityOrderedItems);
        }

        if ([*(*(&v11 + 1) + 8 * i) sharingPriority] == priority)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [priorityOrderedItems countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end
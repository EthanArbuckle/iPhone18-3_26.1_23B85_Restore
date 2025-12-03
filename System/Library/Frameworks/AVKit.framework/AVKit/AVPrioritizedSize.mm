@interface AVPrioritizedSize
+ (id)sizesResolvingFirstPrioritizedSize:(id)size secondPrioritizedSize:(id)prioritizedSize inAvailableWidth:(double)width;
- (AVPrioritizedSize)init;
- (CGSize)currentTotalSize;
- (id)removeLastSizeOfPriority:(unint64_t)priority;
- (void)addSize:(CGSize)size withPriority:(unint64_t)priority;
@end

@implementation AVPrioritizedSize

- (CGSize)currentTotalSize
{
  width = self->_currentTotalSize.width;
  height = self->_currentTotalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)removeLastSizeOfPriority:(unint64_t)priority
{
  lowPrioritySizes = [(AVPrioritizedSize *)self lowPrioritySizes];
  if (priority <= 1)
  {
    if (priority)
    {
      if (priority != 1)
      {
        goto LABEL_13;
      }

      mediumPrioritySizes = [(AVPrioritizedSize *)self mediumPrioritySizes];
    }

    else
    {
      mediumPrioritySizes = [(AVPrioritizedSize *)self lowPrioritySizes];
    }
  }

  else
  {
    switch(priority)
    {
      case 2uLL:
        mediumPrioritySizes = [(AVPrioritizedSize *)self highPrioritySizes];
        break;
      case 3uLL:
        mediumPrioritySizes = [(AVPrioritizedSize *)self veryHighPrioritySizes];
        break;
      case 4uLL:
        mediumPrioritySizes = [(AVPrioritizedSize *)self requiredPrioritySizes];
        break;
      default:
        goto LABEL_13;
    }
  }

  v7 = mediumPrioritySizes;

  lowPrioritySizes = v7;
LABEL_13:
  lastObject = [lowPrioritySizes lastObject];
  if (lastObject)
  {
    [lowPrioritySizes removeObjectAtIndex:{objc_msgSend(lowPrioritySizes, "count") - 1}];
    [lastObject sizeValue];
    v10 = v9;
    [(AVPrioritizedSize *)self currentTotalSize];
    v12 = v11 - v10;
    [(AVPrioritizedSize *)self currentTotalSize];
    [(AVPrioritizedSize *)self setCurrentTotalSize:v12];
  }

  return lastObject;
}

- (void)addSize:(CGSize)size withPriority:(unint64_t)priority
{
  height = size.height;
  width = size.width;
  [(AVPrioritizedSize *)self currentTotalSize];
  v9 = width + v8;
  [(AVPrioritizedSize *)self currentTotalSize];
  v11 = v10 == 0.0;
  v12 = height;
  if (!v11)
  {
    [(AVPrioritizedSize *)self currentTotalSize];
    if (v12 >= height)
    {
      v12 = height;
    }
  }

  [(AVPrioritizedSize *)self setCurrentTotalSize:v9, v12];
  v13 = [MEMORY[0x1E696B098] valueWithSize:{width, height}];
  if (priority <= 1)
  {
    if (priority)
    {
      if (priority != 1)
      {
        goto LABEL_16;
      }

      v16 = v13;
      mediumPrioritySizes = [(AVPrioritizedSize *)self mediumPrioritySizes];
    }

    else
    {
      v16 = v13;
      mediumPrioritySizes = [(AVPrioritizedSize *)self lowPrioritySizes];
    }
  }

  else
  {
    switch(priority)
    {
      case 2uLL:
        v16 = v13;
        mediumPrioritySizes = [(AVPrioritizedSize *)self highPrioritySizes];
        break;
      case 3uLL:
        v16 = v13;
        mediumPrioritySizes = [(AVPrioritizedSize *)self veryHighPrioritySizes];
        break;
      case 4uLL:
        v16 = v13;
        mediumPrioritySizes = [(AVPrioritizedSize *)self requiredPrioritySizes];
        break;
      default:
        goto LABEL_16;
    }
  }

  v15 = mediumPrioritySizes;
  [mediumPrioritySizes addObject:v16];

  v13 = v16;
LABEL_16:
}

- (AVPrioritizedSize)init
{
  v14.receiver = self;
  v14.super_class = AVPrioritizedSize;
  v2 = [(AVPrioritizedSize *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requiredPrioritySizes = v2->_requiredPrioritySizes;
    v2->_requiredPrioritySizes = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    veryHighPrioritySizes = v2->_veryHighPrioritySizes;
    v2->_veryHighPrioritySizes = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    highPrioritySizes = v2->_highPrioritySizes;
    v2->_highPrioritySizes = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mediumPrioritySizes = v2->_mediumPrioritySizes;
    v2->_mediumPrioritySizes = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lowPrioritySizes = v2->_lowPrioritySizes;
    v2->_lowPrioritySizes = v11;

    v2->_currentTotalSize = *MEMORY[0x1E695F060];
  }

  return v2;
}

+ (id)sizesResolvingFirstPrioritizedSize:(id)size secondPrioritizedSize:(id)prioritizedSize inAvailableWidth:(double)width
{
  v38 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  prioritizedSizeCopy = prioritizedSize;
  array = [MEMORY[0x1E695DF70] array];
  [sizeCopy currentTotalSize];
  v11 = v10;
  [prioritizedSizeCopy currentTotalSize];
  v13 = v11 + v12;
  if (v13 > width)
  {
    v14 = sizeCopy;
    v15 = 0;
    v16 = v14;
    do
    {
      v17 = [v16 removeLastSizeOfPriority:v15];
      v18 = v17;
      if (v17)
      {
        [v17 sizeValue];
        v13 = v13 - v19;
      }

      else
      {
        if (v16 == v14)
        {
          v20 = prioritizedSizeCopy;
        }

        else
        {
          ++v15;
          v20 = v14;
        }

        v21 = v20;

        v16 = v21;
      }
    }

    while (v13 > width && v15 < 5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v36[0] = sizeCopy;
  v36[1] = prioritizedSizeCopy;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:{2, 0}];
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = MEMORY[0x1E696B098];
        [*(*(&v32 + 1) + 8 * i) currentTotalSize];
        v29 = [v28 valueWithSize:?];
        [array addObject:v29];
      }

      v25 = [v23 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v25);
  }

  v30 = [array copy];

  return v30;
}

@end
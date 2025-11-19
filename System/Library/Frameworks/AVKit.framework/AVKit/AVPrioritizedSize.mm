@interface AVPrioritizedSize
+ (id)sizesResolvingFirstPrioritizedSize:(id)a3 secondPrioritizedSize:(id)a4 inAvailableWidth:(double)a5;
- (AVPrioritizedSize)init;
- (CGSize)currentTotalSize;
- (id)removeLastSizeOfPriority:(unint64_t)a3;
- (void)addSize:(CGSize)a3 withPriority:(unint64_t)a4;
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

- (id)removeLastSizeOfPriority:(unint64_t)a3
{
  v5 = [(AVPrioritizedSize *)self lowPrioritySizes];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_13;
      }

      v6 = [(AVPrioritizedSize *)self mediumPrioritySizes];
    }

    else
    {
      v6 = [(AVPrioritizedSize *)self lowPrioritySizes];
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v6 = [(AVPrioritizedSize *)self highPrioritySizes];
        break;
      case 3uLL:
        v6 = [(AVPrioritizedSize *)self veryHighPrioritySizes];
        break;
      case 4uLL:
        v6 = [(AVPrioritizedSize *)self requiredPrioritySizes];
        break;
      default:
        goto LABEL_13;
    }
  }

  v7 = v6;

  v5 = v7;
LABEL_13:
  v8 = [v5 lastObject];
  if (v8)
  {
    [v5 removeObjectAtIndex:{objc_msgSend(v5, "count") - 1}];
    [v8 sizeValue];
    v10 = v9;
    [(AVPrioritizedSize *)self currentTotalSize];
    v12 = v11 - v10;
    [(AVPrioritizedSize *)self currentTotalSize];
    [(AVPrioritizedSize *)self setCurrentTotalSize:v12];
  }

  return v8;
}

- (void)addSize:(CGSize)a3 withPriority:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
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
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_16;
      }

      v16 = v13;
      v14 = [(AVPrioritizedSize *)self mediumPrioritySizes];
    }

    else
    {
      v16 = v13;
      v14 = [(AVPrioritizedSize *)self lowPrioritySizes];
    }
  }

  else
  {
    switch(a4)
    {
      case 2uLL:
        v16 = v13;
        v14 = [(AVPrioritizedSize *)self highPrioritySizes];
        break;
      case 3uLL:
        v16 = v13;
        v14 = [(AVPrioritizedSize *)self veryHighPrioritySizes];
        break;
      case 4uLL:
        v16 = v13;
        v14 = [(AVPrioritizedSize *)self requiredPrioritySizes];
        break;
      default:
        goto LABEL_16;
    }
  }

  v15 = v14;
  [v14 addObject:v16];

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

+ (id)sizesResolvingFirstPrioritizedSize:(id)a3 secondPrioritizedSize:(id)a4 inAvailableWidth:(double)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF70] array];
  [v7 currentTotalSize];
  v11 = v10;
  [v8 currentTotalSize];
  v13 = v11 + v12;
  if (v13 > a5)
  {
    v14 = v7;
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
          v20 = v8;
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

    while (v13 > a5 && v15 < 5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v36[0] = v7;
  v36[1] = v8;
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
        [v9 addObject:v29];
      }

      v25 = [v23 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v25);
  }

  v30 = [v9 copy];

  return v30;
}

@end
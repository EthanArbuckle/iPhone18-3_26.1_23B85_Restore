@interface NUIGridDimension
- (BOOL)isHidden;
- (NSArray)arrangedSubviews;
- (double)length;
- (double)spacingAfter;
- (id)initWithContainerGridView:(int)view isRow:;
- (int64_t)alignment;
- (void)dealloc;
- (void)invalidateArrangedSubviews;
- (void)setAlignment:(int64_t)alignment;
- (void)setHidden:(BOOL)hidden;
- (void)setLength:(double)length;
- (void)setSpacingAfter:(double)after;
@end

@implementation NUIGridDimension

- (NSArray)arrangedSubviews
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*&self->_flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
  }

  result = self->_arrangedSubviews;
  if ((*(&self->_gridView->_gridViewFlags + 2) & 2) != 0)
  {

    self->_arrangedSubviews = 0;
  }

  else if (result)
  {
    return result;
  }

  gridView = self->_gridView;
  if ((*&self->_flags & 0x100) != 0)
  {
    v14 = [(NSMutableArray *)gridView->_rows indexOfObject:self];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [MEMORY[0x277CBEB70] orderedSetWithArray:{-[NSMutableArray objectAtIndex:](self->_gridView->_viewRows, "objectAtIndex:", v14)}];
LABEL_22:
      result = [v13 array];
      self->_arrangedSubviews = result;
      return result;
    }
  }

  else
  {
    v5 = [(NSMutableArray *)gridView->_columns indexOfObject:self];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{-[NSMutableArray count](self->_gridView->_viewRows, "count")}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      viewRows = self->_gridView->_viewRows;
      v9 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(viewRows);
            }

            [v7 addObject:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "objectAtIndex:", v6)}];
          }

          v10 = [(NSMutableArray *)viewRows countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      v13 = v7;
      goto LABEL_22;
    }
  }

  v15 = MEMORY[0x277CBEA60];

  return [v15 array];
}

- (BOOL)isHidden
{
  flags = self->_flags;
  if ((*&flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
    flags = self->_flags;
  }

  return (*&flags >> 9) & 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NUIGridDimension;
  [(NUIGridDimension *)&v3 dealloc];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v32 = *MEMORY[0x277D85DE8];
  if ((*&self->_flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
  }

  [NUIContainerView _assertNotInLayoutPass:?];
  flags = self->_flags;
  if (((((flags & 0x200) == 0) ^ hiddenCopy) & 1) == 0)
  {
    if (hiddenCopy)
    {
      v6 = 512;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = flags & 0xFDFF | v6;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(NUIGridDimension *)self arrangedSubviews];
    v22 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v22)
    {
      v21 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          [(NUIContainerGridView *)self->_gridView getColumnRange:&v25 rowRange:&v23 forArrangedSubview:v8];
          isHidden = [v8 isHidden];
          v10 = v25;
          do
          {
            v11 = v10;
            v12 = v26 + v25;
            if (v10 >= v26 + v25)
            {
              break;
            }

            v13 = [(NSMutableArray *)self->_gridView->_columns objectAtIndexedSubscript:v10];
            v10 = v11 + 1;
          }

          while ((*(v13 + 40) & 0x200) != 0);
          v14 = v23;
          do
          {
            v15 = v14;
            v16 = v24 + v23;
            if (v14 >= v24 + v23)
            {
              break;
            }

            v17 = [(NSMutableArray *)self->_gridView->_rows objectAtIndexedSubscript:v14];
            v14 = v15 + 1;
          }

          while ((*(v17 + 40) & 0x200) != 0);
          v19 = v11 >= v12 || v15 >= v16;
          if (isHidden != v19)
          {
            [v8 setHidden:?];
          }
        }

        v22 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v22);
    }

    [(NUIContainerView *)self->_gridView invalidateIntrinsicContentSize];
  }
}

- (double)length
{
  if ((*&self->_flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
  }

  return self->_length;
}

- (void)setLength:(double)length
{
  if ((*&self->_flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
  }

  [NUIContainerView _assertNotInLayoutPass:?];
  if (self->_length != length)
  {
    self->_length = length;
    gridView = self->_gridView;

    [(NUIContainerView *)gridView invalidateIntrinsicContentSize];
  }
}

- (double)spacingAfter
{
  if ((*&self->_flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
  }

  return self->_spacing;
}

- (void)setSpacingAfter:(double)after
{
  if ((*&self->_flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
  }

  [NUIContainerView _assertNotInLayoutPass:?];
  if (self->_spacing != after)
  {
    self->_spacing = after;
    gridView = self->_gridView;

    [(NUIContainerView *)gridView setNeedsInvalidation:2];
  }
}

- (int64_t)alignment
{
  flags = self->_flags;
  if ((flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
    return *&self->_flags;
  }

  return flags;
}

- (void)setAlignment:(int64_t)alignment
{
  if ((*&self->_flags & 0x400) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ no longer attached to grid view <%p>.", self, self->_gridView}];
  }

  [NUIContainerView _assertNotInLayoutPass:?];
  flags = self->_flags;
  if (alignment != flags)
  {
    *&self->_flags = flags & 0xFF00 | alignment;
    gridView = self->_gridView;

    [(NUIContainerView *)gridView setNeedsInvalidation:4];
  }
}

- (void)invalidateArrangedSubviews
{
  if (self)
  {

    *(self + 16) = 0;
  }
}

- (id)initWithContainerGridView:(int)view isRow:
{
  if (result)
  {
    v7.receiver = result;
    v7.super_class = NUIGridDimension;
    result = objc_msgSendSuper2(&v7, sel_init);
    if (result)
    {
      *(result + 3) = 0x7FEFFFFFFFFFFFFFLL;
      *(result + 4) = 0x7FEFFFFFFFFFFFFFLL;
      v5 = *(result + 20);
      *(result + 1) = a2;
      if (view)
      {
        v6 = 256;
      }

      else
      {
        v6 = 0;
      }

      *(result + 20) = v5 & 0xFC00 | v6 | 0xFF;
    }
  }

  return result;
}

@end
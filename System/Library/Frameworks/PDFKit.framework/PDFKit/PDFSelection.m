@interface PDFSelection
- (BOOL)containsPoint:(CGPoint)a3 onPage:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqualToSelection:(id)a3;
- (BOOL)isStandaloneGraphic;
- (BOOL)isTableCellSelection;
- (CGPDFSelection)cgSelectionForPage:(id)a3;
- (CGPoint)firstCharCenter;
- (CGPoint)leftMostCharCenter;
- (CGPoint)rightMostCharCenter;
- (CGRect)boundsForPage:(PDFPage *)page;
- (CGRect)firstSpanBoundsForPage:(id)a3;
- (CGRect)lastSpanBoundsForPage:(id)a3;
- (CGRect)spanBoundsForPage:(id)a3 atPoint:(CGPoint)a4;
- (CGRect)tableCellSelectionRect;
- (NSArray)pages;
- (NSArray)selectionsByLine;
- (NSRange)rangeAtIndex:(NSUInteger)index onPage:(PDFPage *)page;
- (NSString)string;
- (NSUInteger)numberOfTextRangesOnPage:(PDFPage *)page;
- (PDFSelection)initWithDocument:(PDFDocument *)document;
- (PDFSelection)initWithPage:(id)a3;
- (_NSRange)previewRangeAtIndex:(unint64_t)a3 onPage:(id)a4;
- (id)asDestination;
- (id)attributedStringScaled:(double)a3;
- (id)boundsArrayForPage:(id)a3;
- (id)copyAsTextSelection;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createAttributedStringForCGSelection:(CGPDFSelection *)a3 scaled:(double)a4;
- (id)description;
- (id)document;
- (id)firstPage;
- (id)html;
- (id)htmlData;
- (id)lastPage;
- (id)rtfData;
- (int64_t)compare:(id)a3;
- (unint64_t)indexOfFirstCharacterOnPage:(id)a3;
- (unint64_t)indexOfLastCharacterOnPage:(id)a3;
- (unint64_t)pdfKitIndexOfFirstCharacterOnPage:(id)a3;
- (unint64_t)pdfKitIndexOfLastCharacterOnPage:(id)a3;
- (void)addCGSelection:(CGPDFSelection *)a3 forPage:(id)a4;
- (void)addSelectionCore:(id)a3 normalize:(BOOL)a4;
- (void)addSelectionCore:(id)a3 normalize:(BOOL)a4 withClampedRange:(id)a5;
- (void)addSelectionRange:(_NSRange)a3 page:(id)a4 normalize:(BOOL)a5;
- (void)addSelections:(NSArray *)selections;
- (void)dealloc;
- (void)drawForPage:(id)a3 withBox:(int)a4 active:(BOOL)a5 inContext:(CGContext *)a6;
- (void)enumerateRectsAndTransformsForPage:(id)a3 usingBlock:(id)a4;
- (void)extendSelectionAtEnd:(NSInteger)succeed;
- (void)extendSelectionAtStart:(NSInteger)precede;
- (void)extendSelectionForLineBoundaries;
- (void)normalize;
- (void)setColor:(UIColor *)color;
- (void)setIsTextSelection;
@end

@implementation PDFSelection

- (PDFSelection)initWithDocument:(PDFDocument *)document
{
  v4 = document;
  v13.receiver = self;
  v13.super_class = PDFSelection;
  v5 = [(PDFSelection *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_document, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pageRanges = v6->_pageRanges;
    v6->_pageRanges = v7;

    v6->_forceBreaks = 1;
    pages = v6->_pages;
    v6->_cgSelections = 0;
    v6->_pages = 0;

    v10 = [MEMORY[0x1E696AFB0] UUID];
    pdfSelectionUUID = v6->_pdfSelectionUUID;
    v6->_pdfSelectionUUID = v10;
  }

  return v6;
}

- (PDFSelection)initWithPage:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PDFSelection;
  v5 = [(PDFSelection *)&v12 init];
  if (v5)
  {
    v6 = [v4 document];
    objc_storeWeak(&v5->_document, v6);

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pageRanges = v5->_pageRanges;
    v5->_pageRanges = v7;

    v5->_forceBreaks = 0;
    v5->_cgSelections = 0;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v4, 0}];
    pages = v5->_pages;
    v5->_pages = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v6 = [v4 initWithDocument:WeakRetained];

  v7 = [(NSMutableArray *)self->_pageRanges count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [(NSMutableArray *)self->_pageRanges objectAtIndex:i];
      v11 = [v10 range];
      v13 = v12;
      v14 = [v10 page];
      [v6 addSelectionRange:v11 page:v13 normalize:{v14, 0}];
    }
  }

  cgSelections = self->_cgSelections;
  if (cgSelections)
  {
    Count = CFArrayGetCount(cgSelections);
    if (Count)
    {
      v17 = Count;
      for (j = 0; j != v17; ++j)
      {
        CFArrayGetValueAtIndex(self->_cgSelections, j);
        v19 = CGPDFSelectionCreateFromSelection();
        v20 = [(NSMutableArray *)self->_pages objectAtIndex:j];
        [v6 addCGSelection:v19 forPage:v20];
        CGPDFSelectionRelease();
      }
    }
  }

  v21 = [(PDFSelection *)self color];
  [v6 setColor:v21];

  [v6 setForceBreaks:{-[PDFSelection forceBreaks](self, "forceBreaks")}];
  v22 = [MEMORY[0x1E696AFB0] UUID];
  v23 = v6[7];
  v6[7] = v22;

  return v6;
}

- (NSArray)pages
{
  if (self->_pages)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_pages];
  }

  else
  {
    v4 = [(NSMutableArray *)self->_pageRanges count];
    if (v4 < 1)
    {
      v3 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v6 = [(NSMutableArray *)self->_pageRanges objectAtIndex:0];
      v7 = [v6 page];
      [v5 addObject:v7];

      if (v4 != 1)
      {
        v8 = v4 & 0x7FFFFFFF;
        v9 = 1;
        do
        {
          v10 = [(NSMutableArray *)self->_pageRanges objectAtIndex:v9];
          v11 = [v10 page];

          if (([v5 containsObject:v11] & 1) == 0)
          {
            [v5 addObject:v11];
          }

          ++v9;
        }

        while (v8 != v9);
      }

      v3 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
    }
  }

  return v3;
}

- (void)setColor:(UIColor *)color
{
  v4 = [(UIColor *)color copy];
  v5 = self->_color;
  self->_color = v4;

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"PDFSelectionChangedColor" object:self userInfo:0];
}

- (NSString)string
{
  cgSelections = self->_cgSelections;
  if (cgSelections && (Count = CFArrayGetCount(cgSelections)) != 0)
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    do
    {
      if (!v6)
      {
        v6 = [MEMORY[0x1E696AD60] stringWithCapacity:16];
      }

      CFArrayGetValueAtIndex(self->_cgSelections, v7);
      String = CGPDFSelectionCreateString();
      if (String)
      {
        v9 = String;
        [v6 appendString:String];
      }

      if (++v7 < v5)
      {
        [v6 appendString:@"\n"];
      }
    }

    while (v5 != v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)boundsForPage:(PDFPage *)page
{
  v4 = page;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  cgSelections = self->_cgSelections;
  if (cgSelections)
  {
    Count = CFArrayGetCount(cgSelections);
    if (Count)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        v13 = [(NSMutableArray *)self->_pages objectAtIndex:i];

        if (v13 == v4)
        {
          CFArrayGetValueAtIndex(self->_cgSelections, i);
          CGPDFSelectionGetBounds();
          v32.origin.x = v14;
          v32.origin.y = v15;
          v32.size.width = v16;
          v32.size.height = v17;
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          v30 = CGRectUnion(v29, v32);
          x = v30.origin.x;
          y = v30.origin.y;
          width = v30.size.width;
          height = v30.size.height;
        }
      }
    }
  }

  v18 = PDFRectFromCGRect(x, y, width, height);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)containsPoint:(CGPoint)a3 onPage:(id)a4
{
  y = a3.y;
  x = a3.x;
  v18 = *MEMORY[0x1E69E9840];
  v6 = [(PDFSelection *)self boundsArrayForPage:a4];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * i) PDFKitPDFRectValue];
          v19.x = x;
          v19.y = y;
          if (PDFRectContainsPoint(v20, v19))
          {
            LOBYTE(v9) = 1;
            goto LABEL_14;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (CGRect)spanBoundsForPage:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v34 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v10 = [(PDFSelection *)self boundsArrayForPage:a3];
  v11 = v10;
  if (v10 && [v10 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      v16 = 1.79769313e308;
LABEL_5:
      v25 = v6;
      v26 = v7;
      v27 = width;
      v28 = height;
      v17 = 0;
      while (1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v29 + 1) + 8 * v17) PDFKitPDFRectValue];
        v6 = v36.origin.x;
        v7 = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        v35.x = x;
        v35.y = y;
        if (PDFRectContainsPoint(v36, v35))
        {
          break;
        }

        v18 = x - PDFRectGetCenterPoint(v6, v7, width);
        PDFRectGetCenterPoint(v6, v7, width);
        v20 = sqrt((y - v19) * 1000.0 * ((y - v19) * 1000.0) + v18 * v18);
        if (v20 < v16)
        {
          v16 = v20;
          v27 = width;
          v28 = height;
          v25 = v6;
          v26 = v7;
        }

        if (v14 == ++v17)
        {
          v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
          width = v27;
          height = v28;
          v6 = v25;
          v7 = v26;
          if (v14)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  v21 = v6;
  v22 = v7;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)firstSpanBoundsForPage:(id)a3
{
  v3 = [(PDFSelection *)self boundsArrayForPage:a3];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 firstObject];
    [v5 PDFKitPDFRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)lastSpanBoundsForPage:(id)a3
{
  v3 = [(PDFSelection *)self boundsArrayForPage:a3];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 lastObject];
    [v5 PDFKitPDFRectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (NSUInteger)numberOfTextRangesOnPage:(PDFPage *)page
{
  v4 = page;
  if (v4 && (cgSelections = self->_cgSelections) != 0 && (Count = CFArrayGetCount(cgSelections)) != 0)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_pages objectAtIndex:v8];

      if (v9 == v4)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_7;
      }
    }

    CFArrayGetValueAtIndex(self->_cgSelections, v8);
    NumberOfStringRanges = CGPDFSelectionGetNumberOfStringRanges();
  }

  else
  {
LABEL_7:
    NumberOfStringRanges = 0;
  }

  return NumberOfStringRanges;
}

- (NSRange)rangeAtIndex:(NSUInteger)index onPage:(PDFPage *)page
{
  v5 = page;
  if (v5 && (cgSelections = self->_cgSelections) != 0 && (Count = CFArrayGetCount(cgSelections)) != 0)
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      v10 = [(NSMutableArray *)self->_pages objectAtIndex:v9];

      if (v10 == v5)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_7;
      }
    }

    CFArrayGetValueAtIndex(self->_cgSelections, v9);
    StringRange = CGPDFSelectionGetStringRange();
    if (StringRange == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v16;
    }

    if (StringRange == -1)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = StringRange;
    }
  }

  else
  {
LABEL_7:
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v12;
  v14 = v11;
  result.length = v14;
  result.location = v13;
  return result;
}

- (NSArray)selectionsByLine
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!self->_cgSelections)
  {
    goto LABEL_10;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];

  Count = CFArrayGetCount(self->_cgSelections);
  if (!Count)
  {
LABEL_9:
    v3 = v4;
LABEL_10:
    v4 = v3;
    v16 = v4;
    goto LABEL_11;
  }

  v5 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(self->_cgSelections, v5);
    SelectionsByLine = CGPDFSelectionCreateSelectionsByLine();
    if (!SelectionsByLine)
    {
      break;
    }

    v7 = SelectionsByLine;
    v8 = CFArrayGetCount(SelectionsByLine);
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [PDFSelection alloc];
        v12 = [(PDFSelection *)self document];
        v13 = [(PDFSelection *)v11 initWithDocument:v12];

        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        v15 = [(NSMutableArray *)self->_pages objectAtIndex:v5];
        [(PDFSelection *)v13 addCGSelection:ValueAtIndex forPage:v15];

        [v4 addObject:v13];
      }
    }

    CFRelease(v7);
    if (++v5 == Count)
    {
      goto LABEL_9;
    }
  }

  v16 = MEMORY[0x1E695E0F0];
LABEL_11:

  return v16;
}

- (void)enumerateRectsAndTransformsForPage:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  cgSelections = self->_cgSelections;
  if (cgSelections)
  {
    Count = CFArrayGetCount(cgSelections);
    if (Count)
    {
      v10 = Count;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__PDFSelection_enumerateRectsAndTransformsForPage_usingBlock___block_invoke;
      aBlock[3] = &unk_1E8152470;
      v15 = v7;
      v11 = _Block_copy(aBlock);
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          CFArrayGetValueAtIndex(self->_cgSelections, i);
          Page = CGPDFSelectionGetPage();
          if (Page == [v6 pageRef])
          {
            CGPDFSelectionEnumerateRectsAndTransforms();
          }
        }
      }
    }
  }
}

uint64_t __62__PDFSelection_enumerateRectsAndTransformsForPage_usingBlock___block_invoke(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = a2[1];
  v10[0] = *a2;
  v10[1] = v8;
  v10[2] = a2[2];
  return v7(v6, v10, a3, a4, a5, a6);
}

- (void)addSelections:(NSArray *)selections
{
  v4 = selections;
  if (v4)
  {
    v11 = v4;
    v5 = [(NSArray *)v4 count];
    if (v5 >= 2)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [(NSArray *)v11 objectAtIndex:v6];
        [(PDFSelection *)self addSelectionCore:v8 normalize:0];

        ++v6;
      }

      while (v7 != v6);
      goto LABEL_9;
    }

    v9 = v5 == 1;
    v4 = v11;
    if (v9)
    {
      v7 = 0;
LABEL_9:
      v10 = [(NSArray *)v11 objectAtIndex:v7];
      [(PDFSelection *)self addSelectionCore:v10 normalize:1];

      v4 = v11;
    }
  }
}

- (void)extendSelectionAtEnd:(NSInteger)succeed
{
  if (succeed)
  {
    v5 = [(PDFSelection *)self document];

    if (v5)
    {
      cgSelections = self->_cgSelections;
      if (cgSelections)
      {
        if (CFArrayGetCount(cgSelections))
        {
          v7 = self->_cgSelections;
          Count = CFArrayGetCount(v7);
          CFArrayGetValueAtIndex(v7, Count - 1);
          v9 = CGPDFSelectionExtendAtEnd();
          if (succeed < 0)
          {
            v10 = self->_cgSelections;
            v11 = CFArrayGetCount(v10);
            CFArrayGetValueAtIndex(v10, v11 - 1);
            if (CGPDFSelectionIsEmpty())
            {
              v12 = self->_cgSelections;
              v13 = CFArrayGetCount(v12);
              CFArrayRemoveValueAtIndex(v12, v13 - 1);
              [(NSMutableArray *)self->_pages removeLastObject];
            }
          }

          if ([(NSMutableArray *)self->_pages count])
          {
            if (succeed < 1 || (v14 = succeed - v9, succeed <= v9))
            {
              if (succeed < 0 && succeed < v9)
              {
                v28 = self->_cgSelections;
                v29 = CFArrayGetCount(v28);
                CFArrayGetValueAtIndex(v28, v29 - 1);
                if (CGPDFSelectionIsEmpty())
                {
                  v30 = self->_cgSelections;
                  v31 = CFArrayGetCount(v30);
                  CFArrayRemoveValueAtIndex(v30, v31 - 1);
                  [(NSMutableArray *)self->_pages removeLastObject];
                }

                if (CFArrayGetCount(self->_cgSelections) >= 1)
                {
                  do
                  {
                    v32 = succeed - v9;
                    v33 = self->_cgSelections;
                    v34 = CFArrayGetCount(v33);
                    CFArrayGetValueAtIndex(v33, v34 - 1);
                    v9 = CGPDFSelectionExtendAtEnd();
                    v35 = self->_cgSelections;
                    v36 = CFArrayGetCount(v35);
                    CFArrayGetValueAtIndex(v35, v36 - 1);
                    if (CGPDFSelectionIsEmpty())
                    {
                      v37 = self->_cgSelections;
                      v38 = CFArrayGetCount(v37);
                      CFArrayRemoveValueAtIndex(v37, v38 - 1);
                      [(NSMutableArray *)self->_pages removeLastObject];
                    }
                  }

                  while (v9 > v32 && CFArrayGetCount(self->_cgSelections) > 0);
                }
              }
            }

            else
            {
              v15 = [(PDFSelection *)self document];
              v16 = [(NSMutableArray *)self->_pages lastObject];
              v17 = [v15 indexForPage:v16];

              v18 = [(PDFSelection *)self document];
              v19 = [v18 pageCount];

              if (v17 + 1 < v19 && v14)
              {
                v20 = v17 + 2;
                do
                {
                  v21 = [(PDFSelection *)self document];
                  v22 = [v21 pageAtIndex:v20 - 1];
                  v23 = [v22 numberOfCharacters];

                  if (v23)
                  {
                    if (v14 >= v23)
                    {
                      v24 = v14 - v23;
                    }

                    else
                    {
                      v24 = 0;
                    }

                    if (v14 <= v23)
                    {
                      v23 = v14;
                    }

                    v25 = [(PDFSelection *)self document];
                    v26 = [v25 pageAtIndex:v20 - 1];
                    v27 = [v26 selectionForRange:{0, v23}];
                    [(PDFSelection *)self addSelectionCore:v27 normalize:1];

                    v14 = v24;
                  }

                  if (v20 >= v19)
                  {
                    break;
                  }

                  ++v20;
                }

                while (v14);
              }
            }
          }
        }
      }
    }
  }
}

- (void)extendSelectionAtStart:(NSInteger)precede
{
  if (precede)
  {
    v5 = [(PDFSelection *)self document];

    if (v5)
    {
      cgSelections = self->_cgSelections;
      if (cgSelections)
      {
        if (CFArrayGetCount(cgSelections))
        {
          CFArrayGetValueAtIndex(self->_cgSelections, 0);
          v7 = CGPDFSelectionExtendAtStart();
          v8 = v7;
          if (precede < 0)
          {
            CFArrayGetValueAtIndex(self->_cgSelections, 0);
            if (CGPDFSelectionIsEmpty())
            {
              CFArrayRemoveValueAtIndex(self->_cgSelections, 0);
              [(NSMutableArray *)self->_pages removeObjectAtIndex:0];
            }

            if (precede < v8)
            {
              CFArrayGetValueAtIndex(self->_cgSelections, 0);
              if (CGPDFSelectionIsEmpty())
              {
                CFArrayRemoveValueAtIndex(self->_cgSelections, 0);
                [(NSMutableArray *)self->_pages removeObjectAtIndex:0];
              }

              if (CFArrayGetCount(self->_cgSelections) >= 1)
              {
                do
                {
                  v23 = precede - v8;
                  v24 = self->_cgSelections;
                  Count = CFArrayGetCount(v24);
                  CFArrayGetValueAtIndex(v24, Count - 1);
                  v8 = CGPDFSelectionExtendAtStart();
                  CFArrayGetValueAtIndex(self->_cgSelections, 0);
                  if (CGPDFSelectionIsEmpty())
                  {
                    CFArrayRemoveValueAtIndex(self->_cgSelections, 0);
                    [(NSMutableArray *)self->_pages removeObjectAtIndex:0];
                  }
                }

                while (v8 > v23 && CFArrayGetCount(self->_cgSelections) > 0);
              }
            }
          }

          else
          {
            v9 = precede - v7;
            if (precede > v7)
            {
              v10 = [(PDFSelection *)self document];
              v11 = [(NSMutableArray *)self->_pages objectAtIndex:0];
              v12 = [v10 indexForPage:v11];

              if (v12)
              {
                v13 = v12 - 1;
                do
                {
                  v14 = [(PDFSelection *)self document];
                  v15 = [v14 pageAtIndex:v13];
                  v16 = [v15 numberOfCharacters];

                  if (v16)
                  {
                    if (v16 >= v9)
                    {
                      v17 = v16 - v9;
                    }

                    else
                    {
                      v17 = 0;
                    }

                    if (v9 >= v16)
                    {
                      v18 = v9 - v16;
                    }

                    else
                    {
                      v18 = 0;
                    }

                    if (v9 < v16)
                    {
                      v16 = v9;
                    }

                    v19 = [(PDFSelection *)self document];
                    v20 = [v19 pageAtIndex:v13];
                    v21 = [v20 selectionForRange:{v17, v16}];
                    [(PDFSelection *)self addSelectionCore:v21 normalize:1];

                    v9 = v18;
                  }

                  v22 = v13-- != 0;
                }

                while (v22 && v9 > 0);
              }
            }
          }
        }
      }
    }
  }
}

- (void)extendSelectionForLineBoundaries
{
  cgSelections = self->_cgSelections;
  if (cgSelections)
  {
    Count = CFArrayGetCount(cgSelections);
    WeakRetained = objc_loadWeakRetained(&self->_document);

    if (WeakRetained)
    {
      if (Count >= 1)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7 = 0;
        do
        {
          CFArrayGetValueAtIndex(self->_cgSelections, v7);
          NumberOfRectsAndTransforms = CGPDFSelectionGetNumberOfRectsAndTransforms();
          if (NumberOfRectsAndTransforms >= 1)
          {
            v9 = 0;
            v10 = 1;
            do
            {
              v11 = v10;
              if (NumberOfRectsAndTransforms == 1 && (v9 & 1) != 0)
              {
                break;
              }

              CGPDFSelectionGetRectAndTransform();
              v12 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, 0.0 * 0.5 + 0.0), 0, 0.0 * 0.5 + 0.0));
              v13 = PDFPointFromCGPoint(v12.f64[0], v12.f64[1]);
              v15 = v14;
              v16 = CGPDFSelectionGetClientProperty();
              v17 = [v16 selectionForLineAtPoint:{v13, v15}];
              if (v17)
              {
                [v6 addObject:v17];
              }

              v10 = 0;
              v9 = 1;
            }

            while ((v11 & 1) != 0);
          }

          ++v7;
        }

        while (v7 != (Count & 0x7FFFFFFF));
        [(PDFSelection *)self addSelections:v6];
      }
    }
  }
}

- (void)dealloc
{
  cgSelections = self->_cgSelections;
  if (cgSelections)
  {
    CFRelease(cgSelections);
  }

  v4.receiver = self;
  v4.super_class = PDFSelection;
  [(PDFSelection *)&v4 dealloc];
}

- (id)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (id)asDestination
{
  v3 = [(PDFSelection *)self pages];
  if (![v3 count])
  {
    v4 = 0;
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v4 = [v3 objectAtIndex:0];
  if (!v4)
  {
    goto LABEL_9;
  }

  CFArrayGetValueAtIndex(self->_cgSelections, 0);
  SelectionsByLine = CGPDFSelectionCreateSelectionsByLine();
  if (!SelectionsByLine)
  {
    goto LABEL_9;
  }

  v6 = SelectionsByLine;
  if (!CFArrayGetCount(SelectionsByLine))
  {
    goto LABEL_9;
  }

  CFArrayGetValueAtIndex(v6, 0);
  CGPDFSelectionGetBounds();
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v11 = 0;
  if (!CGRectEqualToRect(v17, *MEMORY[0x1E695F050]))
  {
    v12 = [PDFDestination alloc];
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinX = CGRectGetMinX(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MidY = CGRectGetMidY(v19);
    v11 = [(PDFDestination *)v12 initWithPage:v4 atPoint:PDFPointMake(MinX, MidY)];
  }

  CFRelease(v6);
LABEL_10:

  return v11;
}

- (BOOL)isEmpty
{
  cgSelections = self->_cgSelections;
  if (cgSelections && (Count = CFArrayGetCount(cgSelections), v5 = Count - 1, Count >= 1))
  {
    v6 = 0;
    do
    {
      CFArrayGetValueAtIndex(self->_cgSelections, v6);
      IsEmpty = CGPDFSelectionIsEmpty();
      if (IsEmpty)
      {
        v8 = v5 == v6;
      }

      else
      {
        v8 = 1;
      }

      ++v6;
    }

    while (!v8);
  }

  else
  {
    LOBYTE(IsEmpty) = 1;
  }

  return IsEmpty;
}

- (BOOL)isEqualToSelection:(id)a3
{
  v4 = a3;
  if (v4 && (Count = CFArrayGetCount(self->_cgSelections), CFArrayGetCount(v4[5]) == Count))
  {
    v6 = Count - 1;
    if (Count < 1)
    {
      v10 = 1;
    }

    else
    {
      v7 = 0;
      do
      {
        CFArrayGetValueAtIndex(self->_cgSelections, v7);
        CFArrayGetValueAtIndex(v4[5], v7);
        v8 = CGPDFSelectionEqualToSelection();
        if (v8)
        {
          v9 = v6 == v7;
        }

        else
        {
          v9 = 1;
        }

        ++v7;
      }

      while (!v9);
      v10 = v8;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 document], v6 = objc_claimAutoreleasedReturnValue(), -[PDFSelection document](self, "document"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 != v7))
  {
    v8 = 0;
LABEL_4:
    v9 = 0;
LABEL_5:
    v10 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v13 = [(PDFSelection *)self pages];
  v8 = v13;
  if (!v13 || ![v13 count])
  {
    goto LABEL_4;
  }

  v9 = [v8 objectAtIndex:0];
  v14 = [v5 pages];

  if (!v14)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if ([v14 count])
  {
    v10 = [v14 objectAtIndex:0];
    v15 = [(PDFSelection *)self document];
    v16 = [v15 indexForPage:v9];

    v17 = [v5 document];
    v18 = [v17 indexForPage:v10];

    v11 = -1;
    if (v18 != 0x7FFFFFFFFFFFFFFFLL && v16 >= v18)
    {
      if (v18 >= v16)
      {
        v19 = [(PDFSelection *)self pdfKitIndexOfFirstCharacterOnPage:v9];
        v20 = [v5 pdfKitIndexOfFirstCharacterOnPage:v10];
        if (v19 >= v20)
        {
          v11 = v20 < v19;
        }
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = -1;
  }

  v8 = v14;
LABEL_6:

  return v11;
}

- (id)boundsArrayForPage:(id)a3
{
  v4 = a3;
  cgSelections = self->_cgSelections;
  if (cgSelections && (Count = CFArrayGetCount(cgSelections)) != 0)
  {
    v7 = Count;
    v8 = 0;
    v9 = 0;
    v17 = v4;
    do
    {
      v10 = [(NSMutableArray *)self->_pages objectAtIndex:v8];

      if (v10 == v4)
      {
        memset(v19, 0, sizeof(v19));
        CFArrayGetValueAtIndex(self->_cgSelections, v8);
        NumberOfRectsAndTransforms = CGPDFSelectionGetNumberOfRectsAndTransforms();
        if (NumberOfRectsAndTransforms >= 1)
        {
          v12 = NumberOfRectsAndTransforms;
          for (i = 0; i != v12; ++i)
          {
            if (!v9)
            {
              v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
            }

            CGPDFSelectionGetRectAndTransform();
            v14 = MEMORY[0x1E696B098];
            v18 = *&v19[32];
            v21 = CGRectApplyAffineTransform(*v19, &v18);
            v15 = [v14 PDFKitValueWithPDFRect:{PDFRectFromCGRect(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height)}];
            [v9 addObject:v15];
          }
        }

        v4 = v17;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addCGSelection:(CGPDFSelection *)a3 forPage:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    if ((v10 = v6, self->_cgSelections) && self->_pages || (self->_cgSelections = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3], pages = self->_pages, self->_pages = v8, pages, v7 = v10, self->_cgSelections))
    {
      if (self->_pages)
      {
        CGPDFSelectionSetClientProperty();
        CFArrayAppendValue(self->_cgSelections, a3);
        v6 = [(NSMutableArray *)self->_pages addObject:v10];
        v7 = v10;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (CGPDFSelection)cgSelectionForPage:(id)a3
{
  v4 = a3;
  if (v4 && self->_cgSelections && ((v5 = [(NSMutableArray *)self->_pages count], CFArrayGetCount(self->_cgSelections) == v5) ? (v6 = v5 == 0) : (v6 = 1), !v6))
  {
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_pages objectAtIndex:v7];

      if (v8 == v4)
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_10;
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(self->_cgSelections, v7);
  }

  else
  {
LABEL_10:
    ValueAtIndex = 0;
  }

  return ValueAtIndex;
}

- (void)addSelectionCore:(id)a3 normalize:(BOOL)a4
{
  v4 = a4;
  v20 = a3;
  if (!v20)
  {
    goto LABEL_5;
  }

  v6 = [(PDFSelection *)self document];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(PDFSelection *)self document];
  v8 = [v20 document];

  if (v7 != v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"addSelection: selection document mismatch"];
    goto LABEL_5;
  }

  v9 = [v20 cgSelections];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  if (!self->_cgSelections)
  {
    self->_cgSelections = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  if (!self->_pages)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    pages = self->_pages;
    self->_pages = v11;
  }

  Count = CFArrayGetCount(v10);
  v14 = [v20 cgSelectionPages];
  v15 = [v14 count];

  if (Count == v15)
  {
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(v10, i);
        v17 = CGPDFSelectionCreateFromSelection();
        if (v17)
        {
          CFArrayAppendValue(self->_cgSelections, v17);
        }

        CGPDFSelectionRelease();
      }
    }

    v18 = self->_pages;
    v19 = [v20 cgSelectionPages];
    [(NSMutableArray *)v18 addObjectsFromArray:v19];

LABEL_20:
    if (v4)
    {
      [(PDFSelection *)self normalize];
    }
  }

LABEL_5:
}

- (void)addSelectionCore:(id)a3 normalize:(BOOL)a4 withClampedRange:(id)a5
{
  v5 = a4;
  v21 = a3;
  if (!v21)
  {
    goto LABEL_5;
  }

  v7 = [(PDFSelection *)self document];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [(PDFSelection *)self document];
  v9 = [v21 document];

  if (v8 != v9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"addSelection: selection document mismatch"];
    goto LABEL_5;
  }

  v10 = [v21 cgSelections];
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  if (!self->_cgSelections)
  {
    self->_cgSelections = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  if (!self->_pages)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    pages = self->_pages;
    self->_pages = v12;
  }

  Count = CFArrayGetCount(v11);
  v15 = [v21 cgSelectionPages];
  v16 = [v15 count];

  if (Count == v16)
  {
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(v11, i);
        v18 = CGPDFSelectionCreateFromSelection();
        if (v18)
        {
          CFArrayAppendValue(self->_cgSelections, v18);
        }

        CGPDFSelectionRelease();
      }
    }

    v19 = self->_pages;
    v20 = [v21 cgSelectionPages];
    [(NSMutableArray *)v19 addObjectsFromArray:v20];

LABEL_20:
    if (v5)
    {
      [(PDFSelection *)self normalize];
    }
  }

LABEL_5:
}

- (void)addSelectionRange:(_NSRange)a3 page:(id)a4 normalize:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  v11 = a4;
  v9 = [(PDFSelection *)self document];

  v10 = 0;
  if (v9)
  {
    if (length)
    {
      v10 = [[PDFPageRange alloc] initWithPage:v11 range:location, length];
      [(NSMutableArray *)self->_pageRanges addObject:v10];
      if (v5)
      {
        [(PDFSelection *)self normalize];
      }
    }
  }
}

- (CGPoint)firstCharCenter
{
  if (CFArrayGetValueAtIndex(self->_cgSelections, 0))
  {
    CGPDFSelectionGetRectAndTransform();
    v8.origin = 0u;
    v8.size = 0u;
    MidX = CGRectGetMidX(v8);
    v9.origin = 0u;
    v9.size = 0u;
    v3 = CGRectGetMidY(v9) * 0.0 + 0.0 * MidX + 0.0;
    v4 = v3;
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v5 = PDFPointFromCGPoint(v3, v4);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)leftMostCharCenter
{
  if (CFArrayGetValueAtIndex(self->_cgSelections, 0))
  {
    CGPDFSelectionGetRectAndTransform();
    v8.origin = 0u;
    v8.size = 0u;
    MinX = CGRectGetMinX(v8);
    v9.origin = 0u;
    v9.size = 0u;
    v3 = CGRectGetMidY(v9) * 0.0 + 0.0 * MinX + 0.0;
    v4 = v3;
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v5 = PDFPointFromCGPoint(v3, v4);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)rightMostCharCenter
{
  Count = CFArrayGetCount(self->_cgSelections);
  if (CFArrayGetValueAtIndex(self->_cgSelections, Count - 1))
  {
    CGPDFSelectionGetNumberOfRectsAndTransforms();
    CGPDFSelectionGetRectAndTransform();
    v10.origin = 0u;
    v10.size = 0u;
    MaxX = CGRectGetMaxX(v10);
    v11.origin = 0u;
    v11.size = 0u;
    v5 = CGRectGetMidY(v11) * 0.0 + 0.0 * MaxX + 0.0;
    v6 = v5;
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v7 = PDFPointFromCGPoint(v5, v6);
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)firstPage
{
  if ([(PDFSelection *)self isEmpty])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_pages objectAtIndex:0];
  }

  return v3;
}

- (id)lastPage
{
  if ([(PDFSelection *)self isEmpty])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_pages lastObject];
  }

  return v3;
}

- (unint64_t)indexOfFirstCharacterOnPage:(id)a3
{
  if (a3)
  {
    return [(PDFSelection *)self previewRangeAtIndex:0 onPage:a3];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)indexOfLastCharacterOnPage:(id)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3)
  {
    v5 = a3;
    v6 = [(PDFSelection *)self previewRangeAtIndex:[(PDFSelection *)self numberOfTextRangesOnPage:v5]- 1 onPage:v5];
    v8 = v7;

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v8 + v6 - 1;
    }
  }

  return v3;
}

- (unint64_t)pdfKitIndexOfFirstCharacterOnPage:(id)a3
{
  if (a3)
  {
    return [(PDFSelection *)self rangeAtIndex:0 onPage:a3];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)pdfKitIndexOfLastCharacterOnPage:(id)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3)
  {
    v5 = a3;
    v6 = [(PDFSelection *)self rangeAtIndex:[(PDFSelection *)self numberOfTextRangesOnPage:v5]- 1 onPage:v5];
    v8 = v7;

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v8 + v6 - 1;
    }
  }

  return v3;
}

- (id)createAttributedStringForCGSelection:(CGPDFSelection *)a3 scaled:(double)a4
{
  v5 = [(PDFSelection *)self document];
  AttributedString = CGPDFSelectionCreateAttributedString();
  v7 = [AttributedString mutableCopy];
  v8 = [v7 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PDFSelection_createAttributedStringForCGSelection_scaled___block_invoke;
  v11[3] = &unk_1E8152498;
  v13 = a4;
  v9 = v7;
  v12 = v9;
  [v9 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v11}];

  return v9;
}

void __60__PDFSelection_createAttributedStringForCGSelection_scaled___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v7 = [v14 mutableCopy];
  v8 = [v14 valueForKey:*MEMORY[0x1E6965658]];
  v9 = v8;
  if (v8)
  {
    [v8 pointSize];
    v11 = [v9 fontWithSize:v10 * *(a1 + 40)];
    [v7 setObject:v11 forKey:*MEMORY[0x1E69DB648]];
  }

  v12 = [v14 valueForKey:*MEMORY[0x1E695F430]];
  if (v12)
  {
    v13 = [MEMORY[0x1E69DC888] colorWithCGColor:v12];
    [v7 setObject:v13 forKey:*MEMORY[0x1E69DB650]];
  }

  [*(a1 + 32) setAttributes:v7 range:{a3, a4}];
}

- (id)attributedStringScaled:(double)a3
{
  if (!self->_cgSelections)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  Count = CFArrayGetCount(self->_cgSelections);
  NSLog(&cfstr_Attributedstri.isa, Count);
  if (!Count)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    NSLog(&cfstr_Attributedstri_0.isa, v8);
    v9 = [(PDFSelection *)self createAttributedStringForCGSelection:CFArrayGetValueAtIndex(self->_cgSelections scaled:v8), a3];
    if (v9)
    {
      if (!v7)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F416DF70];
      }

      [v7 appendAttributedString:v9];
      if (++v8 < Count && [(PDFSelection *)self forceBreaks])
      {
        v13 = 12;
        v10 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v13 length:1];
        v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
        NSLog(&cfstr_Attributedstri_1.isa);
        [v7 appendAttributedString:v11];
      }
    }

    else
    {
      ++v8;
    }
  }

  while (v8 != Count);
LABEL_15:

  return v7;
}

- (id)rtfData
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(PDFSelection *)self attributedString];
  v6 = *MEMORY[0x1E69DB628];
  v7[0] = *MEMORY[0x1E69DB6A0];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 dataFromRange:0 documentAttributes:objc_msgSend(v2 error:{"length"), v3, 0}];

  return v4;
}

- (id)htmlData
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(PDFSelection *)self attributedString];
  v6 = *MEMORY[0x1E69DB628];
  v7[0] = *MEMORY[0x1E69DB658];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 dataFromRange:0 documentAttributes:objc_msgSend(v2 error:{"length"), v3, 0}];

  return v4;
}

- (id)html
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PDFSelection *)self htmlData];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (void)drawForPage:(id)a3 withBox:(int)a4 active:(BOOL)a5 inContext:(CGContext *)a6
{
  v10 = a3;
  if (a4 <= 4)
  {
    cgSelections = self->_cgSelections;
    if (cgSelections)
    {
      Count = CFArrayGetCount(cgSelections);
      if (a6)
      {
        v13 = Count;
        if (Count)
        {
          v14 = a4;
          v15 = [(PDFSelection *)self color];
          if (!v15)
          {
            if (a5)
            {
              +[PDFSelection defaultActiveColor];
            }

            else
            {
              +[PDFSelection defaultInactiveColor];
            }
            v15 = ;
          }

          CGContextSetFillColorWithColor(a6, [v15 CGColor]);
          CGContextSaveGState(a6);
          rect = PDFRectToCGRect([v10 boundsForBox:0]);
          v17 = v16;
          v19 = v18;
          rect_16 = v20;
          v37.origin.x = PDFRectToCGRect([v10 boundsForBox:v14]);
          x = v37.origin.x;
          y = v37.origin.y;
          width = v37.size.width;
          height = v37.size.height;
          MinX = CGRectGetMinX(v37);
          v38.origin.x = rect;
          v38.origin.y = v17;
          v38.size.width = v19;
          v38.size.height = rect_16;
          rect_8 = MinX - CGRectGetMinX(v38);
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          MinY = CGRectGetMinY(v39);
          v40.origin.x = rect;
          v40.origin.y = v17;
          v40.size.width = v19;
          v40.size.height = rect_16;
          v27 = CGRectGetMinY(v40);
          CGContextTranslateCTM(a6, -rect_8, -(MinY - v27));
          v28 = [v10 renderingProperties];
          [v28 isDarkMode];
          CGContextSetCompositeOperation();
          if (v13 >= 1)
          {
            for (i = 0; i != v13; ++i)
            {
              CFArrayGetValueAtIndex(self->_cgSelections, i);
              Page = CGPDFSelectionGetPage();
              if (Page == [v10 pageRef])
              {
                CGContextBeginPath(a6);
                NumberOfRectsAndTransforms = CGPDFSelectionGetNumberOfRectsAndTransforms();
                if (NumberOfRectsAndTransforms >= 1)
                {
                  v32 = NumberOfRectsAndTransforms;
                  for (j = 0; j != v32; ++j)
                  {
                    CGPDFSelectionGetRectAndTransform();
                    CGContextMoveToPoint(a6, 0.0 * 0.0 + 0.0 * 0.0 + 0.0, 0.0 * 0.0 + 0.0 * 0.0 + 0.0);
                    CGContextAddLineToPoint(a6, (0.0 + 0.0) * 0.0 + 0.0 * 0.0 + 0.0, (0.0 + 0.0) * 0.0 + 0.0 * 0.0 + 0.0);
                    CGContextAddLineToPoint(a6, (0.0 + 0.0) * 0.0 + 0.0 * (0.0 + 0.0) + 0.0, (0.0 + 0.0) * 0.0 + 0.0 * (0.0 + 0.0) + 0.0);
                    CGContextAddLineToPoint(a6, 0.0 * 0.0 + 0.0 * (0.0 + 0.0) + 0.0, 0.0 * 0.0 + 0.0 * (0.0 + 0.0) + 0.0);
                    CGContextAddLineToPoint(a6, 0.0 * 0.0 + 0.0 * 0.0 + 0.0, 0.0 * 0.0 + 0.0 * 0.0 + 0.0);
                  }
                }

                CGContextFillPath(a6);
              }
            }
          }

          CGContextRestoreGState(a6);
        }
      }
    }
  }
}

- (void)normalize
{
  if (self->_cgSelections)
  {
    v3 = [(NSMutableArray *)self->_pages count];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v6;
        v6 = [(NSMutableArray *)self->_pages objectAtIndex:v5];

        v8 = v5 + 1;
        if (v5 + 1 < v4)
        {
          v9 = v5 + 1;
          do
          {
            v10 = [(NSMutableArray *)self->_pages objectAtIndex:v9];

            if (v10 == v6)
            {
              CFArrayGetValueAtIndex(self->_cgSelections, v5);
              CFArrayGetValueAtIndex(self->_cgSelections, v9);
              CGPDFSelectionAddSelection();
              CFArrayRemoveValueAtIndex(self->_cgSelections, v9);
              [(NSMutableArray *)self->_pages removeObjectAtIndex:v9];
              --v4;
            }

            else
            {
              ++v9;
            }
          }

          while (v9 < v4);
        }

        ++v5;
      }

      while (v8 < v4);
      [(__CFArray *)self->_cgSelections sortUsingFunction:_sortCGSelections context:0];
      [(NSMutableArray *)self->_pages removeAllObjects];
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          CFArrayGetValueAtIndex(self->_cgSelections, i);
          v12 = CGPDFSelectionGetClientProperty();
          if (v12)
          {
            [(NSMutableArray *)self->_pages addObject:v12];
          }

          else
          {
            NSLog(&cfstr_PdfselectionNo.isa);
          }
        }
      }
    }
  }

  if ([(NSMutableArray *)self->_pageRanges count]< 2)
  {
    v13 = 0;
    goto LABEL_40;
  }

  [(NSMutableArray *)self->_pageRanges sortUsingFunction:_sortPageRanges context:0];
  v35 = [(PDFSelection *)self pages];
  v34 = [v35 count];
  if (!v34)
  {
    goto LABEL_39;
  }

  v14 = 0;
  do
  {
    v36 = v14;
    v15 = [v35 objectAtIndex:v34];
    v16 = 0;
    do
    {
      v17 = [(NSMutableArray *)self->_pageRanges objectAtIndex:v16];
      v18 = [v17 page];

      if (v18 != v15)
      {
        v19 = v16 + 1;
        goto LABEL_37;
      }

      v20 = [(NSMutableArray *)self->_pageRanges objectAtIndex:v16];
      v21 = [v20 range];
      v23 = v22;

      v19 = v16 + 1;
      if (v16 + 1 < [(NSMutableArray *)self->_pageRanges count])
      {
        v37 = v23;
        v24 = v21 + v23;
        for (j = v16 + 1; j < [(NSMutableArray *)self->_pageRanges count]; ++j)
        {
          v26 = [(NSMutableArray *)self->_pageRanges objectAtIndex:j];
          v27 = [v26 page];

          if (v27 == v15)
          {
            v28 = [(NSMutableArray *)self->_pageRanges objectAtIndex:j];
            v29 = [v28 range];
            v31 = v30;

            if (v29 == v21)
            {
              if (v31 > v37)
              {
                continue;
              }
            }

            else
            {
              if (v29 <= v21 || v29 > v24)
              {
                continue;
              }

              if (v29 + v31 > v24)
              {
                v32 = v29 + v31 - v21;
                v33 = [(NSMutableArray *)self->_pageRanges objectAtIndex:v16];
                [v33 setRange:{v21, v32}];
              }
            }

            [(NSMutableArray *)self->_pageRanges removeObjectAtIndex:j];
          }
        }
      }

LABEL_37:
      v16 = v19;
    }

    while (v19 < [(NSMutableArray *)self->_pageRanges count]);

    v14 = v36 + 1;
  }

  while (v36 + 1 != v34);
LABEL_39:
  v13 = v35;
LABEL_40:
}

- (BOOL)isStandaloneGraphic
{
  Count = CFArrayGetCount(self->_cgSelections);
  if (Count)
  {
    v4 = 0;
    v5 = Count - 1;
    do
    {
      CFArrayGetValueAtIndex(self->_cgSelections, v4);
      CGPDFSelectionCreateFromSelection();
      IsStandaloneGraphic = CGPDFSelectionIsStandaloneGraphic();
      CGPDFSelectionRelease();
      if (IsStandaloneGraphic)
      {
        v7 = v5 == v4;
      }

      else
      {
        v7 = 1;
      }

      ++v4;
    }

    while (!v7);
  }

  else
  {
    LOBYTE(IsStandaloneGraphic) = 0;
  }

  return IsStandaloneGraphic;
}

- (BOOL)isTableCellSelection
{
  cgSelections = self->_cgSelections;
  if (cgSelections)
  {
    if (CFArrayGetCount(cgSelections) == 1)
    {
      CFArrayGetValueAtIndex(self->_cgSelections, 0);
      LOBYTE(cgSelections) = CGPDFSelectionGetType() == 3;
    }

    else
    {
      LOBYTE(cgSelections) = 0;
    }
  }

  return cgSelections;
}

- (CGRect)tableCellSelectionRect
{
  cgSelections = self->_cgSelections;
  if (cgSelections && CFArrayGetCount(cgSelections) == 1)
  {
    CFArrayGetValueAtIndex(self->_cgSelections, 0);
    CGPDFSelectionGetTableSelectionRect();
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setIsTextSelection
{
  cgSelections = self->_cgSelections;
  if (cgSelections)
  {
    Count = CFArrayGetCount(cgSelections);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        CFArrayGetValueAtIndex(self->_cgSelections, i);
        CGPDFSelectionSetIsTextSelection();
      }
    }
  }
}

- (id)copyAsTextSelection
{
  v2 = [(PDFSelection *)self copy];
  [v2 setIsTextSelection];
  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  if ([(PDFSelection *)self isEmpty]|| (cgSelections = self->_cgSelections) == 0)
  {
    v16 = @" empty>";
  }

  else
  {
    Count = CFArrayGetCount(cgSelections);
    [v6 appendFormat:@" selectionCount=%ld", Count];
    [v6 appendString:@"\n  cgSelections: {\n"];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_cgSelections, i);
        v11 = [(NSMutableArray *)self->_pages objectAtIndex:i];
        v12 = [v11 document];
        v13 = [v12 indexForPage:v11];

        [v6 appendFormat:@"    [%ld] page=%ld: ", i, v13];
        v14 = CFCopyDescription(ValueAtIndex);
        if (v14)
        {
          v15 = v14;
          [v6 appendString:v14];
          CFRelease(v15);
        }

        else
        {
          [v6 appendString:@"<null cgSelection>"];
        }

        [v6 appendString:@"\n"];
      }
    }

    [v6 appendString:@"  }\n"];
    v16 = @">";
  }

  [v6 appendString:v16];

  return v6;
}

- (_NSRange)previewRangeAtIndex:(unint64_t)a3 onPage:(id)a4
{
  v5 = a4;
  if (v5 && (cgSelections = self->_cgSelections) != 0 && (Count = CFArrayGetCount(cgSelections)) != 0)
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      v10 = [(NSMutableArray *)self->_pages objectAtIndex:v9];

      if (v10 == v5)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_7;
      }
    }

    CFArrayGetValueAtIndex(self->_cgSelections, v9);
    TextRange = CGPDFSelectionGetTextRange();
    if (TextRange == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v16;
    }

    if (TextRange == -1)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = TextRange;
    }
  }

  else
  {
LABEL_7:
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v12;
  v14 = v11;
  result.length = v14;
  result.location = v13;
  return result;
}

@end
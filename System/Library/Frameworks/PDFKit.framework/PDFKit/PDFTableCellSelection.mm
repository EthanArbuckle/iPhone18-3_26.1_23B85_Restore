@interface PDFTableCellSelection
- (BOOL)isPointInHandle:(CGPoint)a3 whichHandle:(int64_t *)a4;
- (CGPoint)startPoint;
- (CGRect)selectionRect;
- (PDFTableCellSelection)initWithTable:(CGPDFPageLayoutTable *)a3 onPage:(id)a4;
- (void)dealloc;
- (void)setTable:(CGPDFPageLayoutTable *)a3;
@end

@implementation PDFTableCellSelection

- (PDFTableCellSelection)initWithTable:(CGPDFPageLayoutTable *)a3 onPage:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PDFTableCellSelection;
  v8 = [(PDFTableCellSelection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_table = a3;
    CFRetain(a3);
    objc_storeStrong(&v9->_page, a4);
    v9->_startCellIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (void)dealloc
{
  table = self->_table;
  if (table)
  {
    CFRelease(table);
  }

  v4.receiver = self;
  v4.super_class = PDFTableCellSelection;
  [(PDFTableCellSelection *)&v4 dealloc];
}

- (void)setTable:(CGPDFPageLayoutTable *)a3
{
  table = self->_table;
  if (table != a3)
  {
    if (table)
    {
      CFRelease(table);
    }

    self->_table = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (CGRect)selectionRect
{
  v3 = [(PDFTableCellSelection *)self selection];

  if (v3)
  {
    v4 = [(PDFTableCellSelection *)self selection];
    [v4 tableCellSelectionRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)isPointInHandle:(CGPoint)a3 whichHandle:(int64_t *)a4
{
  y = a3.y;
  x = a3.x;
  [(PDFTableCellSelection *)self selectionRect];
  v7 = v18.origin.x;
  v8 = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v7;
  v19.origin.y = v8;
  v19.size.width = width;
  v19.size.height = height;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v7;
  v20.origin.y = v8;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = v7;
  v21.origin.y = v8;
  v21.size.width = width;
  v21.size.height = height;
  MinY = CGRectGetMinY(v21);
  if (hypot(x - MinX, y - MaxY) <= 3.0)
  {
    LOBYTE(v14) = 1;
    if (a4)
    {
      v15 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = hypot(x - MaxX, y - MinY) <= 3.0;
    if (a4)
    {
      v15 = 2 * v14;
LABEL_6:
      *a4 = v15;
    }
  }

  return v14;
}

- (CGPoint)startPoint
{
  objc_copyStruct(v4, &self->_startPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end
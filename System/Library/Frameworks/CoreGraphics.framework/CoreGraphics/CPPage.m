@interface CPPage
+ (void)sortByReadingOrder:(id)a3;
- (BOOL)populatePDFLayout:(CGPDFLayout *)a3;
- (CGPDFLayout)layout;
- (CGRect)pageCropBox;
- (CPPage)init;
- (CPPage)initWithPDFPage:(CGPDFPage *)a3;
- (id)bodyZone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hitTest;
- (id)textLinesOnPage;
- (unsigned)setCellPositionsOf:(id)a3 from:(unsigned int)a4;
- (unsigned)setGraphicPositions:(id)a3 from:(unsigned int)a4;
- (unsigned)setPositionsOf:(id)a3 from:(unsigned int)a4;
- (unsigned)setReadingOrder:(id)a3 from:(unsigned int)a4;
- (unsigned)traverse:(id)a3 ordinal:(unsigned int)a4;
- (void)addAnnotation:(id)a3;
- (void)addColumns:(id)a3;
- (void)addImage:(id)a3;
- (void)addShape:(id)a3;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)layDownObjectsOnPage;
- (void)layDownObjectsOnPageOld;
- (void)reconstruct;
- (void)restoreBackGroundObjectToPage;
- (void)setBackground:(id)a3;
- (void)setRotation:(int)a3;
@end

@implementation CPPage

- (void)addColumns:(id)a3
{
  columnsOnPage = self->columnsOnPage;
  if (!columnsOnPage)
  {
    columnsOnPage = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->columnsOnPage = columnsOnPage;
  }

  [(NSMutableArray *)columnsOnPage addObjectsFromArray:a3];
}

- (id)textLinesOnPage
{
  result = self->textLinesOnPage;
  if (!result)
  {
    self->textLinesOnPage = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(CPObject *)self descendantsOfClass:objc_opt_class() to:self->textLinesOnPage];
    return self->textLinesOnPage;
  }

  return result;
}

- (void)layDownObjectsOnPageOld
{
  v35 = *MEMORY[0x1E69E9840];
  obj = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  [(CPObject *)self descendantsOfClass:objc_opt_class() to:obj];
  v3 = [obj count];
  v4 = (v3 - 1);
  if (v3 - 1 >= 0)
  {
    do
    {
      v5 = [obj objectAtIndex:v4];
      v6 = [v5 count];
      v7 = 0;
      if (v6)
      {
        while (1)
        {
          [v5 childAtIndex:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          v7 = (v7 + 1);
          if (v6 == v7)
          {
            goto LABEL_8;
          }
        }
      }

      if (v7 == v6)
      {
LABEL_8:
        [obj removeObjectAtIndex:v4];
      }
    }

    while (v4-- > 0);
  }

  if ([obj count])
  {
    [obj sortUsingFunction:compareZoneReadingOrder context:0];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v24)
    {
      goto LABEL_33;
    }

    v10 = 0;
    v23 = *v30;
    while (1)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        [v12 setChunkPosition:v10];
        v13 = [v12 count];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          while (1)
          {
            v16 = [v12 childAtIndex:v15];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_22;
            }

LABEL_23:
            v15 = (v15 + 1);
            if (v14 == v15)
            {
              goto LABEL_24;
            }
          }

          v16 = [v16 firstChild];
LABEL_22:
          [v9 addObject:v16];
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1);
        [v9 sortUsingFunction:compareLayoutReadingOrder context:0];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v17 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v26;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v9);
              }

              v21 = *(*(&v25 + 1) + 8 * j);
              [v21 setChunkPosition:v10];
              v10 = [(CPPage *)self setPositionsOf:v21 from:(v10 + 1)];
            }

            v18 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v18);
        }

        [v9 removeAllObjects];
      }

      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (!v24)
      {
LABEL_33:

        return;
      }
    }
  }
}

- (void)layDownObjectsOnPage
{
  v3 = [(CPPage *)self bodyZone];

  [(CPPage *)self setReadingOrder:v3 from:0];
}

- (unsigned)setReadingOrder:(id)a3 from:(unsigned int)a4
{
  v4 = *&a4;
  v27 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v21 = a3;
  v8 = [a3 count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v11 = [a3 childAtIndex:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v7 addObject:v11];
      }

      v10 = (v10 + 1);
    }

    while (v9 != v10);
  }

  if (([v7 count] & 0xFFFFFFFELL) != 0)
  {
    [v7 sortUsingFunction:compareKeyOrder context:0];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [(CPPage *)self setReadingOrder:v16 from:v4];
LABEL_22:
          v4 = v17;
          goto LABEL_23;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [(CPPage *)self setPositionsOf:v16 from:v4];
          goto LABEL_22;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [(CPPage *)self setCellPositionsOf:v16 from:v4];
          }

          else
          {
            v17 = [(CPPage *)self setGraphicPositions:v16 from:v4];
          }

          goto LABEL_22;
        }

        v18 = -[CPPage setPositionsOf:from:](self, "setPositionsOf:from:", [v16 firstChild], v4);
        v4 = (v18 + 1);
        [v16 setChunkPosition:v18];
LABEL_23:
        ++v15;
      }

      while (v13 != v15);
      v19 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v13 = v19;
    }

    while (v19);
  }

  [v21 setChunkPosition:v4];

  return v4 + 1;
}

- (unsigned)setGraphicPositions:(id)a3 from:(unsigned int)a4
{
  v4 = *&a4;
  v7 = [a3 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v4 = -[CPPage setGraphicPositions:from:](self, "setGraphicPositions:from:", [a3 childAtIndex:v9], v4);
      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  [a3 setChunkPosition:v4];
  return v4 + 1;
}

- (unsigned)setCellPositionsOf:(id)a3 from:(unsigned int)a4
{
  v4 = *&a4;
  v7 = [a3 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v4 = -[CPPage setReadingOrder:from:](self, "setReadingOrder:from:", [a3 childAtIndex:v9], v4);
      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  [a3 setChunkPosition:v4];
  return v4 + 1;
}

- (unsigned)setPositionsOf:(id)a3 from:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [a3 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = [a3 childAtIndex:v8];
      v10 = [v9 count];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        do
        {
          v13 = (v4 + 1);
          [objc_msgSend(v9 childAtIndex:{v12), "setChunkPosition:", v4}];
          v12 = (v12 + 1);
          v4 = v13;
        }

        while (v11 != v12);
      }

      else
      {
        v13 = v4;
      }

      v4 = (v13 + 1);
      [v9 setChunkPosition:v13];
      v8 = (v8 + 1);
    }

    while (v8 != v7);
  }

  [a3 setChunkPosition:v4];
  return v4 + 1;
}

- (unsigned)traverse:(id)a3 ordinal:(unsigned int)a4
{
  v6 = a4 + 1;
  [a3 setChunkPosition:*&a4];
  v7 = [a3 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v6 = -[CPPage traverse:ordinal:](self, "traverse:ordinal:", [a3 childAtIndex:v9], v6);
      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  return v6;
}

- (void)restoreBackGroundObjectToPage
{
  background = self->background;
  if (background)
  {
    [(CPChunk *)self add:background atIndex:0];
  }
}

- (void)setBackground:(id)a3
{
  background = self->background;
  if (background != a3)
  {

    self->background = a3;
  }
}

- (void)setRotation:(int)a3
{
  if (a3 / -90 >= 0)
  {
    v3 = -((a3 / -90) & 3);
  }

  else
  {
    v3 = (a3 / 90) & 3;
  }

  if (v3 >= 0)
  {
    v4 = 90 * v3;
  }

  else
  {
    v4 = 90 * v3 + 360;
  }

  self->rotation = v4;
}

- (id)bodyZone
{
  v3 = [(NSMutableArray *)self->super.super.children count];
  if (v3 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = v3 & 0x7FFFFFFF;
  while (1)
  {
    v6 = [(NSMutableArray *)self->super.super.children objectAtIndex:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v5 == ++v4)
    {
      return 0;
    }
  }

  return v6;
}

- (void)addAnnotation:(id)a3
{
  [(NSMutableArray *)self->graphicsOnPage addObject:?];
  annotationsOnPage = self->annotationsOnPage;

  [(NSMutableArray *)annotationsOnPage addObject:a3];
}

- (void)addImage:(id)a3
{
  [(NSMutableArray *)self->graphicsOnPage addObject:?];
  imagesOnPage = self->imagesOnPage;

  [(NSMutableArray *)imagesOnPage addObject:a3];
}

- (void)addShape:(id)a3
{
  [(NSMutableArray *)self->graphicsOnPage addObject:?];
  shapesOnPage = self->shapesOnPage;

  [(NSMutableArray *)shapesOnPage addObject:a3];
}

- (CGRect)pageCropBox
{
  x = self->pageCropBox.origin.x;
  y = self->pageCropBox.origin.y;
  width = self->pageCropBox.size.width;
  height = self->pageCropBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CPPage;
  v4 = [(CPChunk *)&v8 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v4[3] = self->super.super.document;
    pdfPage = self->pdfPage;
    if (pdfPage)
    {
      CFRetain(self->pdfPage);
    }

    v5[28] = pdfPage;
    v5[26] = self->pdfContext;
    *(v5 + 216) = 0;
    v5[19] = [(CPChunk *)self->background copy];
    v5[21] = [(NSMutableArray *)self->shapesOnPage mutableCopy];
    v5[22] = [(NSMutableArray *)self->imagesOnPage mutableCopy];
    v5[25] = [(NSMutableArray *)self->annotationsOnPage mutableCopy];
    v5[23] = [(NSMutableArray *)self->graphicsOnPage mutableCopy];
    v5[29] = [(NSMutableArray *)self->textLinesOnPage mutableCopy];
    v5[31] = self->hitTest;
  }

  return v5;
}

- (void)reconstruct
{
  if (self->pdfPage)
  {
    pthread_mutex_lock(&self->mutex);
    v3 = 256;
    if (!self->reconstructed)
    {
      pdfPage = self->pdfPage;
      BoxRect = CGPDFPageGetBoxRect(pdfPage, kCGPDFCropBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      v8 = fabs(BoxRect.size.height);
      if (fabs(BoxRect.size.width) >= 1.0 && v8 >= 1.0)
      {
        height = BoxRect.size.height;
        [(CPPage *)self setRotation:CGPDFPageGetRotationAngle(pdfPage)];
        [(CPPage *)self setPageCropBox:x, y, width, height];
        if (pdfPage)
        {
          v11 = CPPDFContextCreate();
          if (v11)
          {
            *v11->i8 = CGPDFPageGetBoxRect(pdfPage, kCGPDFCropBox);
            pthread_mutex_lock((pdfPage + 216));
            v12 = *(pdfPage + 12);
            pthread_mutex_unlock((pdfPage + 216));
            v11[285].i32[1] = v12;
            v11[286] = pdfPage;
            v11[293] = 0;
            v13 = CGPDFOperatorTableCreate();
            AddPdfOperators(v13);
            v14 = CGPDFContentStreamCreate(*(pdfPage + 5));
            v15 = v11[257].u32[0];
            v11[257].i32[0] = v15 + 1;
            v11[v15 + 7] = v14;
            v16 = CGPDFScannerCreate(v14, v13, v11);
            *(*&v11[5] + 8) = 1;
            CPPDFContextSaveGState(v11);
            *(*&v11[5] + 8) = 0;
            CGPDFScannerScan(v16);
            CPPDFContextRestoreGState(v11);
            v17 = v11[5];
            if (v17)
            {
              *(*&v17 + 8) = 0;
            }

            if (v14)
            {
              CFRelease(v14);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            if (v13)
            {
              CFRelease(v13);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        [(CPPage *)self setPDFContext:v11, 256];
        for (i = v11[270]; *&i < *&v11[271]; *&i += 184)
        {
          v19 = [[CPImage alloc] initWithPDFImage:*&i];
          [(CPGraphicObject *)v19 setClipIndex:*(*&i + 64)];
          [(CPPage *)self addImage:v19];
        }

        v20 = v11[264];
        v21 = v11[265];
        if (*&v20 < *&v21)
        {
          while (1)
          {
            v22 = *(*&v20 + 88);
            if (v22 != 4)
            {
              break;
            }

LABEL_36:
            *&v20 += 216;
            if (*&v20 >= *&v21)
            {
              goto LABEL_37;
            }
          }

          v23 = *(*&v20 + 96);
          if (v23)
          {
            info = 0x100000000;
            CGPathApply(v23, &info, countSubpaths);
            v24 = info;
            if (info == 1 || (*(*&v20 + 88) & 1) != 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v24 = 0;
            if (v22)
            {
LABEL_26:
              v25 = [[CPShape alloc] initWithPDFShape:*&v20];
              [(CPGraphicObject *)v25 setClipIndex:*(*&v20 + 64)];
              [(CPPage *)self addShape:v25];

LABEL_35:
              v21 = v11[265];
              goto LABEL_36;
            }
          }

          v26 = malloc_type_malloc(0xD8uLL, 0x1060040AFBA4986uLL);
          v27 = *(*&v20 + 16);
          *v26 = **&v20;
          v26[1] = v27;
          v28 = *(*&v20 + 80);
          v30 = *(*&v20 + 32);
          v29 = *(*&v20 + 48);
          v26[4] = *(*&v20 + 64);
          v26[5] = v28;
          v26[2] = v30;
          v26[3] = v29;
          v31 = *(*&v20 + 144);
          v33 = *(*&v20 + 96);
          v32 = *(*&v20 + 112);
          v26[8] = *(*&v20 + 128);
          v26[9] = v31;
          v26[6] = v33;
          v26[7] = v32;
          v35 = *(*&v20 + 176);
          v34 = *(*&v20 + 192);
          v36 = *(*&v20 + 160);
          *(v26 + 26) = *(*&v20 + 208);
          v26[11] = v35;
          v26[12] = v34;
          v26[10] = v36;
          v37 = malloc_type_malloc(8 * v24, 0x2004093837F09uLL);
          v38 = *(*&v20 + 96);
          if (v38)
          {
            v55 = 1;
            info = v37;
            v52 = 0;
            v53 = 0;
            v54 = v24;
            CGPathApply(v38, &info, createSubpaths);
            v39 = HIDWORD(v54);
            if (HIDWORD(v54))
            {
              v40 = v37;
              do
              {
                v41 = *v40;
                *(v26 + 12) = *v40;
                *v26 = CGPathGetPathBoundingBox(v41);
                v42 = [[CPShape alloc] initWithPDFShape:v26];
                v43 = *(v26 + 12);
                if (v43)
                {
                  CFRelease(v43);
                }

                [(CPGraphicObject *)v42 setClipIndex:*(v26 + 16)];
                [(CPPage *)self addShape:v42];

                ++v40;
                --v39;
              }

              while (v39);
            }
          }

          free(v37);
          free(v26);
          goto LABEL_35;
        }

LABEL_37:
        v44 = [(CPPage *)self pdfPage];
        info = MEMORY[0x1E69E9820];
        v52 = 3221225472;
        v53 = __MapContextToPage_block_invoke;
        v54 = &unk_1E6E18E78;
        v55 = self;
        CGPDFPageEnumerateAnnotations(v44, &info);
        v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[CPPage graphicsOnPage](self, "graphicsOnPage")}];
        [(CPChunk *)self setChildren:v45];

        v3 = v50;
      }

      v46 = objc_alloc_init(CPZoneMaker);
      [(CPZoneMaker *)v46 makeZonesIn:self];

      v47 = [(CPPage *)self bodyZone];
      if (v47)
      {
        v48 = v47;
        v49 = objc_alloc_init(CPBuilder);
        [(CPBuilder *)v49 prepareZone:v48];
      }

      ReconstructZone([(CPPage *)self bodyZone]);
      [CPListMaker makeListsInPage:self];
      [CPLineBreaker breakLinesInPage:self];
      [CPPreformatter preformatInPage:self];
      [CPTableMaker makeTablesInPage:self];
      [CPZoneFilter filterZonesInPage:self];
      [(CPPage *)self layDownObjectsOnPage];
      [(CPPage *)self sortByReadingOrder];
      *(&self->super.super.super.isa + v3) = 1;
    }

    pthread_mutex_unlock(&self->mutex);
  }
}

- (void)dealloc
{
  [(CPPage *)self dispose];

  v3.receiver = self;
  v3.super_class = CPPage;
  [(CPObject *)&v3 dealloc];
}

- (void)finalize
{
  [(CPPage *)self dispose];
  v3.receiver = self;
  v3.super_class = CPPage;
  [(CPPage *)&v3 finalize];
}

- (void)dispose
{
  if (self->pdfPage)
  {
    [(CPObject *)self disposeDescendants];
    pdfContext = self->pdfContext;
    if (pdfContext && self->contextOwner)
    {
      CPPDFContextRelease(pdfContext);
      self->pdfContext = 0;
    }

    layout = self->_layout;
    if (layout)
    {
      CFRelease(layout);
      self->_layout = 0;
    }

    pdfPage = self->pdfPage;
    if (pdfPage)
    {
      CFRelease(pdfPage);
    }

    pthread_mutex_destroy(&self->mutex);
    self->pdfPage = 0;
  }
}

- (CPPage)initWithPDFPage:(CGPDFPage *)a3
{
  v4 = [(CPPage *)self init];
  v5 = v4;
  if (v4)
  {
    v4->pdfPage = a3;
    if (a3)
    {
      CFRetain(a3);
      pdfPage = v5->pdfPage;
      if (pdfPage)
      {
        LODWORD(pdfPage) = *(*(pdfPage + 5) + 8);
      }
    }

    else
    {
      LODWORD(pdfPage) = 0;
    }

    v5->pageNumber = pdfPage;
    pthread_mutex_init(&v5->mutex, 0);
  }

  return v5;
}

- (CPPage)init
{
  v5.receiver = self;
  v5.super_class = CPPage;
  v2 = [(CPChunk *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->hasTextLines = 0;
    v2->isStartOfSection = 0;
    v2->complexity = 0.0;
    v2->shapesOnPage = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v3->imagesOnPage = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v3->annotationsOnPage = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v3->graphicsOnPage = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v3->textLinesOnPage = 0;
    v3->pdfContext = 0;
    v3->pdfPage = 0;
    v3->_layout = 0;
    v3->columnsOnPage = 0;
    v3->reconstructed = 0;
    v3->hitTest = 0;
  }

  return v3;
}

+ (void)sortByReadingOrder:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [a3 sortUsingSelector:sel_compareChunkPosition_];
      }

      v4 = [a3 count];
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        do
        {
          +[CPPage sortByReadingOrder:](CPPage, "sortByReadingOrder:", [a3 childAtIndex:v6]);
          v6 = (v6 + 1);
        }

        while (v5 != v6);
      }
    }
  }
}

- (CGPDFLayout)layout
{
  result = self->_layout;
  if (!result)
  {
    v4 = CGPDFCountElementsInCPChunk(self);
    if (!CGPDFLayoutGetTypeID_id)
    {
      CGPDFLayoutGetTypeID_id = _CFRuntimeRegisterClass();
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      goto LABEL_11;
    }

    v6 = Instance;
    *(Instance + 16) = 0;
    if (v4 < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = malloc_type_malloc(24 * v4, 0x1020040EDCEB4C7uLL);
    }

    *(v6 + 24) = v7;
    *(v6 + 32) = 0;
    *(v6 + 40) = v4;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v6 + 96) = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
    pthread_mutex_init((v6 + 120), 0);
    self->_layout = v6;
    *(v6 + 16) = [(CPPage *)self pdfPage];
    v8 = [(CPPage *)self populatePDFLayout:self->_layout];
    result = self->_layout;
    if (!v8)
    {
      if (result)
      {
        CFRelease(result);
      }

LABEL_11:
      result = 0;
      self->_layout = 0;
    }
  }

  return result;
}

- (BOOL)populatePDFLayout:(CGPDFLayout *)a3
{
  v10 = 0;
  cf = 0;
  v9 = 0;
  v5 = CGPDFNodeMakeFromCPChunk(self, a3, 0, &v9, &cf);
  if (v5)
  {
    v6 = CGPDFNodePopulateFromCPChunk(v5, self, a3, &v10, &v9, &cf);
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

- (id)hitTest
{
  result = self->hitTest;
  if (!result)
  {
    result = [[CPHitTest alloc] initWithPage:self];
    self->hitTest = result;
  }

  return result;
}

@end
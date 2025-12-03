@interface PKTitleQuery
- (NSString)transcribedTitle;
- (PKTitleQuery)initWithDrawing:(id)drawing;
- (PKTitleQueryDelegate)delegate;
- (void)dealloc;
- (void)pause;
- (void)queryDidUpdateResult:(id)result;
- (void)start;
@end

@implementation PKTitleQuery

- (PKTitleQuery)initWithDrawing:(id)drawing
{
  drawingCopy = drawing;
  selfCopy = [drawingCopy recognitionSession];

  if (selfCopy)
  {
    v15.receiver = self;
    v15.super_class = PKTitleQuery;
    v7 = [(PKTitleQuery *)&v15 init];
    objc_storeStrong(&v7->_drawing, drawing);
    v8 = objc_alloc(MEMORY[0x1E6997BF0]);
    drawing = [(PKTitleQuery *)v7 drawing];
    recognitionSession = [drawing recognitionSession];
    v11 = [v8 initWithRecognitionSession:recognitionSession];
    titleQuery = v7->_titleQuery;
    v7->_titleQuery = v11;

    titleQuery = [(PKTitleQuery *)v7 titleQuery];
    [titleQuery setDelegate:v7];

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)start
{
  titleQuery = [(PKTitleQuery *)self titleQuery];
  [titleQuery start];
}

- (void)pause
{
  titleQuery = [(PKTitleQuery *)self titleQuery];
  [titleQuery pause];
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(CHTitleQuery *)self->_titleQuery setDelegate:0];
  v3.receiver = self;
  v3.super_class = PKTitleQuery;
  [(PKTitleQuery *)&v3 dealloc];
}

- (NSString)transcribedTitle
{
  titleQuery = [(PKTitleQuery *)self titleQuery];
  transcribedTitle = [titleQuery transcribedTitle];

  return transcribedTitle;
}

- (void)queryDidUpdateResult:(id)result
{
  resultCopy = result;
  transcribedTitle = [resultCopy transcribedTitle];
  titleStrokeIdentifiers = [resultCopy titleStrokeIdentifiers];
  delegate = [(PKTitleQuery *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __37__PKTitleQuery_queryDidUpdateResult___block_invoke;
    v14 = &unk_1E82D75F0;
    v15 = titleStrokeIdentifiers;
    selfCopy = self;
    v17 = transcribedTitle;
    v8 = delegate;
    v18 = v8;
    v9 = _Block_copy(&v11);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v8 titleQueryDrawingDispatchQueue:{self, v11, v12, v13, v14, v15, selfCopy, v17}];
      dispatch_async(v10, v9);
    }

    else
    {
      v9[2](v9);
    }
  }
}

void __37__PKTitleQuery_queryDidUpdateResult___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [*(a1 + 40) drawing];
        v12 = [v10 strokeUUID];
        v13 = [v11 _visibleStrokeForIdentifier:v12];

        [v13 _bounds];
        v27.origin.x = v14;
        v27.origin.y = v15;
        v27.size.width = v16;
        v27.size.height = v17;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v27);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v18 = [[PKTitleQueryItem alloc] initWithTranscribedTitle:*(a1 + 48) bounds:x, y, width, height];
  [*(a1 + 56) titleQuery:*(a1 + 40) didUpdateWithItem:v18];
}

- (PKTitleQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
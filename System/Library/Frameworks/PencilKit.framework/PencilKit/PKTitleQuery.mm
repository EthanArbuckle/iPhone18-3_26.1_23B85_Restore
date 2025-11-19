@interface PKTitleQuery
- (NSString)transcribedTitle;
- (PKTitleQuery)initWithDrawing:(id)a3;
- (PKTitleQueryDelegate)delegate;
- (void)dealloc;
- (void)pause;
- (void)queryDidUpdateResult:(id)a3;
- (void)start;
@end

@implementation PKTitleQuery

- (PKTitleQuery)initWithDrawing:(id)a3
{
  v5 = a3;
  v6 = [v5 recognitionSession];

  if (v6)
  {
    v15.receiver = self;
    v15.super_class = PKTitleQuery;
    v7 = [(PKTitleQuery *)&v15 init];
    objc_storeStrong(&v7->_drawing, a3);
    v8 = objc_alloc(MEMORY[0x1E6997BF0]);
    v9 = [(PKTitleQuery *)v7 drawing];
    v10 = [v9 recognitionSession];
    v11 = [v8 initWithRecognitionSession:v10];
    titleQuery = v7->_titleQuery;
    v7->_titleQuery = v11;

    v13 = [(PKTitleQuery *)v7 titleQuery];
    [v13 setDelegate:v7];

    self = v7;
    v6 = self;
  }

  return v6;
}

- (void)start
{
  v2 = [(PKTitleQuery *)self titleQuery];
  [v2 start];
}

- (void)pause
{
  v2 = [(PKTitleQuery *)self titleQuery];
  [v2 pause];
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
  v2 = [(PKTitleQuery *)self titleQuery];
  v3 = [v2 transcribedTitle];

  return v3;
}

- (void)queryDidUpdateResult:(id)a3
{
  v4 = a3;
  v5 = [v4 transcribedTitle];
  v6 = [v4 titleStrokeIdentifiers];
  v7 = [(PKTitleQuery *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __37__PKTitleQuery_queryDidUpdateResult___block_invoke;
    v14 = &unk_1E82D75F0;
    v15 = v6;
    v16 = self;
    v17 = v5;
    v8 = v7;
    v18 = v8;
    v9 = _Block_copy(&v11);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v8 titleQueryDrawingDispatchQueue:{self, v11, v12, v13, v14, v15, v16, v17}];
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
@interface PKAutoRefineLogEntry
- (PKAutoRefineLogEntry)initWithRefinedStrokes:(id)a3 originalStrokes:(id)a4 unchangedStrokes:(id)a5 locale:(id)a6 refinedWordCount:(int64_t)a7 duration:(double)a8 isAutoRefined:(BOOL)a9 debugInfo:(id)a10;
- (void)estimateMetricsWithTokenDeviation:(double)a3 tokenHeight:(double)a4;
@end

@implementation PKAutoRefineLogEntry

- (PKAutoRefineLogEntry)initWithRefinedStrokes:(id)a3 originalStrokes:(id)a4 unchangedStrokes:(id)a5 locale:(id)a6 refinedWordCount:(int64_t)a7 duration:(double)a8 isAutoRefined:(BOOL)a9 debugInfo:(id)a10
{
  v10 = a9;
  v26 = a3;
  v18 = a4;
  v19 = a5;
  v27.receiver = self;
  v27.super_class = PKAutoRefineLogEntry;
  v20 = [(PKHandwritingSynthesisLogEntry *)&v27 initWithLocale:a6 duration:a10 debugInfo:a8];
  objc_storeStrong(&v20->_refinedStrokes, a3);
  objc_storeStrong(&v20->_unrefinedStrokes, a4);
  objc_storeStrong(&v20->_unchangedStrokes, a5);
  v20->_refinedWordCount = a7;
  v20->_tokenDeviation = 0.0;
  v20->_tokenTranslation = -1.0;
  v20->_isAutoRefined = v10;
  if (v10)
  {
    v21 = @"refine";
  }

  else
  {
    v21 = @"autorefine";
  }

  v22 = [(PKHandwritingSynthesisLogEntry *)v20 debugInfo];
  [v22 setObject:v21 forKeyedSubscript:@"type"];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v20->_refinedWordCount];
  v24 = [(PKHandwritingSynthesisLogEntry *)v20 debugInfo];
  [v24 setObject:v23 forKeyedSubscript:@"refinedWordCount"];

  return v20;
}

- (void)estimateMetricsWithTokenDeviation:(double)a3 tokenHeight:(double)a4
{
  v43 = *MEMORY[0x1E69E9840];
  self->_tokenDeviation = a3;
  if (a4 > 0.0)
  {
    v5 = *MEMORY[0x1E695F050];
    v6 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = self->_unrefinedStrokes;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    height = v7;
    width = v8;
    y = v6;
    x = v5;
    if (v10)
    {
      v15 = v10;
      v16 = *v38;
      height = v7;
      width = v8;
      y = v6;
      x = v5;
      do
      {
        v17 = 0;
        do
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v37 + 1) + 8 * v17) _bounds];
          v48.origin.x = v18;
          v48.origin.y = v19;
          v48.size.width = v20;
          v48.size.height = v21;
          v44.origin.x = x;
          v44.origin.y = y;
          v44.size.width = width;
          v44.size.height = height;
          v45 = CGRectUnion(v44, v48);
          x = v45.origin.x;
          y = v45.origin.y;
          width = v45.size.width;
          height = v45.size.height;
          ++v17;
        }

        while (v15 != v17);
        v15 = [(NSArray *)v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v15);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = self->_refinedStrokes;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        v26 = 0;
        do
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v33 + 1) + 8 * v26) _bounds];
          v49.origin.x = v27;
          v49.origin.y = v28;
          v49.size.width = v29;
          v49.size.height = v30;
          v46.origin.x = v5;
          v46.origin.y = v6;
          v46.size.width = v8;
          v46.size.height = v7;
          v47 = CGRectUnion(v46, v49);
          v5 = v47.origin.x;
          v6 = v47.origin.y;
          v8 = v47.size.width;
          v7 = v47.size.height;
          ++v26;
        }

        while (v24 != v26);
        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v24);
    }

    v31 = v8 * 0.5 + v5 - (width * 0.5 + x);
    self->_tokenTranslation = sqrt((v7 * 0.5 + v6 - (height * 0.5 + y)) * (v7 * 0.5 + v6 - (height * 0.5 + y)) + v31 * v31) / a4;
  }
}

@end
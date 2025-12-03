@interface THDocumentReflowableLayoutConfiguration
- (CGPoint)pageNumberPosition;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)noteEdgeInsetsAtScale:(double)scale;
- (double)_contentInsetScrubberVerticalPadding;
- (double)noteSideLength;
- (double)scrubberLeftRightInset;
- (int64_t)columnCount;
@end

@implementation THDocumentReflowableLayoutConfiguration

- (int64_t)columnCount
{
  if ([(THDocumentReflowableLayoutConfiguration *)self hasSpreadPages])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGPoint)pageNumberPosition
{
  bottomFullWidthToolbarFrame = [(THDocumentReflowableLayoutConfiguration *)self bottomFullWidthToolbarFrame];

  _CGRectGetCenter(bottomFullWidthToolbarFrame);
  result.y = v4;
  result.x = v3;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  v16.receiver = self;
  v16.super_class = THDocumentReflowableLayoutConfiguration;
  [(THDocumentReflowableLayoutConfiguration *)&v16 contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(THDocumentReflowableLayoutConfiguration *)self layout]!= &dword_0 + 2)
  {
    [(THDocumentReflowableLayoutConfiguration *)self _contentInsetScrubberVerticalPadding];
    v8 = v8 + v11;
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (double)scrubberLeftRightInset
{
  v9.receiver = self;
  v9.super_class = THDocumentReflowableLayoutConfiguration;
  [(THDocumentReflowableLayoutConfiguration *)&v9 scrubberLeftRightInset];
  v4 = v3;
  if ([(THDocumentReflowableLayoutConfiguration *)self layout]== &dword_0 + 1)
  {
    [-[THDocumentReflowableLayoutConfiguration environment](self "environment")];
    if (v5 >= v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    return v4 + v7;
  }

  return v4;
}

- (double)noteSideLength
{
  [+[UIScreen mainScreen](UIScreen scale];

  [(THDocumentReflowableLayoutConfiguration *)self _noteSideLengthAtScale:?];
  return result;
}

- (UIEdgeInsets)noteEdgeInsetsAtScale:(double)scale
{
  [-[THDocumentReflowableLayoutConfiguration environment](self "environment")];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(THDocumentReflowableLayoutConfiguration *)self _noteSideLengthAtScale:scale];
  v14 = v13;
  [(THDocumentReflowableLayoutConfiguration *)self gutterWidth];
  v16 = ceil((v15 - v14) * 0.5);
  v17 = v8 + v16;
  v18 = v12 + v16;
  v19 = v6;
  v20 = v10;
  result.right = v18;
  result.bottom = v20;
  result.left = v17;
  result.top = v19;
  return result;
}

- (double)_contentInsetScrubberVerticalPadding
{
  v2 = [-[THDocumentReflowableLayoutConfiguration environment](self "environment")];
  result = 20.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

@end
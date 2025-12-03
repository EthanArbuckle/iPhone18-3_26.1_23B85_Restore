@interface MFSendLaterHeaderCollectionViewHelper
- (BOOL)updateLayoutMarginsIfNeeded:(UIEdgeInsets)needed;
- (BOOL)updateWidthIfNeeded:(double)needed;
- (BOOL)willContentTruncate;
- (MFSendLaterHeaderCollectionViewHelper)initWithWidth:(double)width layoutMargins:(UIEdgeInsets)margins viewScale:(double)scale;
- (UIEdgeInsets)layoutMargins;
- (double)_widthOfString:(void *)string;
- (id)_convertDateToString:(uint64_t)string;
- (id)_convertTimeToString:(uint64_t)string;
- (void)precalculateWidthsWithDescription:(id)description;
@end

@implementation MFSendLaterHeaderCollectionViewHelper

- (MFSendLaterHeaderCollectionViewHelper)initWithWidth:(double)width layoutMargins:(UIEdgeInsets)margins viewScale:(double)scale
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  v12.receiver = self;
  v12.super_class = MFSendLaterHeaderCollectionViewHelper;
  result = [(MFSendLaterHeaderCollectionViewHelper *)&v12 init];
  if (result)
  {
    result->_layoutMargins.top = top;
    result->_layoutMargins.left = left;
    result->_layoutMargins.bottom = bottom;
    result->_layoutMargins.right = right;
    result->_width = width;
    result->_viewScale = scale;
  }

  return result;
}

- (void)precalculateWidthsWithDescription:(id)description
{
  descriptionCopy = description;
  [(MFSendLaterHeaderCollectionViewHelper *)self setSendLaterLabelWidth:[(MFSendLaterHeaderCollectionViewHelper *)self _widthOfString:descriptionCopy]];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setDay:30];
  [v4 setYear:2888];
  [v4 setHour:12];
  [v4 setMinute:0];
  for (i = 1; i != 13; ++i)
  {
    [v4 setMonth:i];
    v6 = [(MFSendLaterHeaderCollectionViewHelper *)self _convertDateToString:v4];
    v7 = [(MFSendLaterHeaderCollectionViewHelper *)self _widthOfString:v6];
    [(MFSendLaterHeaderCollectionViewHelper *)self longestDateWidth];
    if (v7 >= v8)
    {
      v8 = v7;
    }

    [(MFSendLaterHeaderCollectionViewHelper *)self setLongestDateWidth:v8];
  }

  v9 = [(MFSendLaterHeaderCollectionViewHelper *)self _convertTimeToString:v4];
  [(MFSendLaterHeaderCollectionViewHelper *)self setLongestTimeWidth:[(MFSendLaterHeaderCollectionViewHelper *)self _widthOfString:v9]];
}

- (double)_widthOfString:(void *)string
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (string)
  {
    v10 = *MEMORY[0x1E69DB648];
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v11[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:v5];
    [v6 size];
    [string viewScale];
    UIRoundToScale();
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)_convertDateToString:(uint64_t)string
{
  v3 = a2;
  if (string)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [currentCalendar dateFromComponents:v3];
    v6 = [MEMORY[0x1E696AB78] localizedStringFromDate:v5 dateStyle:2 timeStyle:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_convertTimeToString:(uint64_t)string
{
  v3 = a2;
  if (string)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [currentCalendar dateFromComponents:v3];
    v6 = [MEMORY[0x1E696AB78] localizedStringFromDate:v5 dateStyle:0 timeStyle:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)willContentTruncate
{
  [(MFSendLaterHeaderCollectionViewHelper *)self layoutMargins];
  v4 = v3 + 48.0;
  [(MFSendLaterHeaderCollectionViewHelper *)self layoutMargins];
  v6 = v4 + v5;
  [(MFSendLaterHeaderCollectionViewHelper *)self sendLaterLabelWidth];
  v8 = v7;
  [(MFSendLaterHeaderCollectionViewHelper *)self longestDateWidth];
  v10 = v8 + v9;
  [(MFSendLaterHeaderCollectionViewHelper *)self longestTimeWidth];
  v12 = v6 + v10 + v11 + 4.0 + 8.0 + 3.0;
  [(MFSendLaterHeaderCollectionViewHelper *)self width];
  return v12 >= v13;
}

- (BOOL)updateLayoutMarginsIfNeeded:(UIEdgeInsets)needed
{
  right = needed.right;
  bottom = needed.bottom;
  left = needed.left;
  top = needed.top;
  [(MFSendLaterHeaderCollectionViewHelper *)self layoutMargins];
  v9 = left - v8;
  v10 = -(left - v8);
  if (v9 < 0.0)
  {
    v9 = v10;
  }

  if (v9 < 2.22044605e-16)
  {
    [(MFSendLaterHeaderCollectionViewHelper *)self layoutMargins];
    v12 = right - v11;
    if (right - v11 < 0.0)
    {
      v12 = -(right - v11);
    }

    if (v12 < 2.22044605e-16)
    {
      return 0;
    }
  }

  [(MFSendLaterHeaderCollectionViewHelper *)self setLayoutMargins:top, left, bottom, right];
  return 1;
}

- (BOOL)updateWidthIfNeeded:(double)needed
{
  [(MFSendLaterHeaderCollectionViewHelper *)self width];
  v6 = v5 - needed;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  if (v7 >= 2.22044605e-16)
  {
    [(MFSendLaterHeaderCollectionViewHelper *)self setWidth:needed];
  }

  return v7 >= 2.22044605e-16;
}

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
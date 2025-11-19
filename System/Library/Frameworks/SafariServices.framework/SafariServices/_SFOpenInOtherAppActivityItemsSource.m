@interface _SFOpenInOtherAppActivityItemsSource
- (_SFOpenInOtherAppActivityItemsSource)initWithFilePath:(id)a3;
- (id)activityViewController:(id)a3 itemsForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItems:(id)a3;
@end

@implementation _SFOpenInOtherAppActivityItemsSource

- (_SFOpenInOtherAppActivityItemsSource)initWithFilePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFOpenInOtherAppActivityItemsSource;
  v5 = [(_SFOpenInOtherAppActivityItemsSource *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v4];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;
  }

  return v5;
}

- (id)activityViewControllerPlaceholderItems:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (self->_fileURL)
  {
    [v4 addObject:?];
  }

  return v5;
}

- (id)activityViewController:(id)a3 itemsForActivityType:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    v7 = [(_SFOpenInOtherAppActivityItemsSource *)self activityViewControllerPlaceholderItems:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

@end
@interface _SFOpenInOtherAppActivityItemsSource
- (_SFOpenInOtherAppActivityItemsSource)initWithFilePath:(id)path;
- (id)activityViewController:(id)controller itemsForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItems:(id)items;
@end

@implementation _SFOpenInOtherAppActivityItemsSource

- (_SFOpenInOtherAppActivityItemsSource)initWithFilePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _SFOpenInOtherAppActivityItemsSource;
  v5 = [(_SFOpenInOtherAppActivityItemsSource *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:pathCopy];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;
  }

  return v5;
}

- (id)activityViewControllerPlaceholderItems:(id)items
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (self->_fileURL)
  {
    [array addObject:?];
  }

  return v5;
}

- (id)activityViewController:(id)controller itemsForActivityType:(id)type
{
  controllerCopy = controller;
  if ([type isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    v7 = [(_SFOpenInOtherAppActivityItemsSource *)self activityViewControllerPlaceholderItems:controllerCopy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

@end
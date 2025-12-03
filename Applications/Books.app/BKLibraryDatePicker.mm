@interface BKLibraryDatePicker
+ (void)pickDate:(id)date title:(id)title presentingViewController:(id)controller sourceRect:(CGRect)rect completion:(id)completion;
@end

@implementation BKLibraryDatePicker

+ (void)pickDate:(id)date title:(id)title presentingViewController:(id)controller sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  controllerCopy = controller;
  titleCopy = title;
  v22 = objc_alloc_init(UIViewController);
  v16 = [[BKLibraryDatePickerView alloc] initWithTitle:titleCopy];

  [(BKLibraryDatePickerView *)v16 setPresentingViewController:controllerCopy];
  [(BKLibraryDatePickerView *)v16 setCompletionBlock:completionCopy];

  [v22 setView:v16];
  [(BKLibraryDatePickerView *)v16 bounds];
  [v22 setPreferredContentSize:{v17, v18}];
  [v22 setModalPresentationStyle:7];
  view = [controllerCopy view];
  popoverPresentationController = [v22 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  popoverPresentationController2 = [v22 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{x, y, width, height}];

  [controllerCopy presentViewController:v22 animated:1 completion:0];
}

@end
@interface BKLibraryDatePicker
+ (void)pickDate:(id)a3 title:(id)a4 presentingViewController:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7;
@end

@implementation BKLibraryDatePicker

+ (void)pickDate:(id)a3 title:(id)a4 presentingViewController:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v22 = objc_alloc_init(UIViewController);
  v16 = [[BKLibraryDatePickerView alloc] initWithTitle:v15];

  [(BKLibraryDatePickerView *)v16 setPresentingViewController:v14];
  [(BKLibraryDatePickerView *)v16 setCompletionBlock:v13];

  [v22 setView:v16];
  [(BKLibraryDatePickerView *)v16 bounds];
  [v22 setPreferredContentSize:{v17, v18}];
  [v22 setModalPresentationStyle:7];
  v19 = [v14 view];
  v20 = [v22 popoverPresentationController];
  [v20 setSourceView:v19];

  v21 = [v22 popoverPresentationController];
  [v21 setSourceRect:{x, y, width, height}];

  [v14 presentViewController:v22 animated:1 completion:0];
}

@end
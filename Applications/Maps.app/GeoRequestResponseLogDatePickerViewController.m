@interface GeoRequestResponseLogDatePickerViewController
- (void)loadView;
@end

@implementation GeoRequestResponseLogDatePickerViewController

- (void)loadView
{
  v3 = [[UIDatePicker alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setDatePickerMode:2];
  [(GeoRequestResponseLogDatePickerViewController *)self setView:v3];
}

@end
@interface MapsDebugDataPickerViewController
- (void)loadView;
@end

@implementation MapsDebugDataPickerViewController

- (void)loadView
{
  v3 = [[UIDatePicker alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setDatePickerMode:1];
  [(MapsDebugDataPickerViewController *)self setView:v3];
}

@end
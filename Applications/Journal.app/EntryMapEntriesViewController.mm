@interface EntryMapEntriesViewController
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation EntryMapEntriesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1004CE198();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1004CE410(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1004CE4FC(a3);
}

@end
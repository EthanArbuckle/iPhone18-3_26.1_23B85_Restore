@interface PerformanceDebugController
- (PerformanceDebugController)init;
- (id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PerformanceDebugController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  section = [NSBundle bundleWithIdentifier:@"com.apple.Maps", section];
  v5 = [section pathForResource:@"testDefinitions" ofType:@"plist"];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  [(PerformanceDebugController *)self dismissViewControllerAnimated:1 completion:0];
  tests = self->_tests;
  v8 = [pathCopy row];

  v12 = [(NSMutableArray *)tests objectAtIndexedSubscript:v8];
  v9 = +[UIApplication sharedMapsDelegate];
  v10 = +[UIApplication sharedApplication];
  v11 = [v12 objectForKeyedSubscript:@"testName"];
  [v9 application:v10 runTest:v11 options:v12];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PerformanceCell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"PerformanceCell"];
  }

  [v7 setAccessoryView:0];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:0];

  tests = self->_tests;
  v10 = [pathCopy row];

  v11 = [(NSMutableArray *)tests objectAtIndexedSubscript:v10];
  v12 = [v11 objectForKeyedSubscript:@"testName"];
  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  return v7;
}

- (PerformanceDebugController)init
{
  v9.receiver = self;
  v9.super_class = PerformanceDebugController;
  v2 = [(AuxiliaryDebugViewController *)&v9 init];
  if (v2)
  {
    v3 = [NSBundle bundleWithIdentifier:@"com.apple.Maps"];
    v4 = [v3 pathForResource:@"testDefinitions" ofType:@"plist"];

    v5 = [[NSMutableArray alloc] initWithContentsOfFile:v4];
    tests = v2->_tests;
    v2->_tests = v5;

    v7 = v2;
  }

  return v2;
}

@end
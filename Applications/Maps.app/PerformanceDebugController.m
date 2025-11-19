@interface PerformanceDebugController
- (PerformanceDebugController)init;
- (id)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PerformanceDebugController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.Maps", a4];
  v5 = [v4 pathForResource:@"testDefinitions" ofType:@"plist"];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  [(PerformanceDebugController *)self dismissViewControllerAnimated:1 completion:0];
  tests = self->_tests;
  v8 = [v6 row];

  v12 = [(NSMutableArray *)tests objectAtIndexedSubscript:v8];
  v9 = +[UIApplication sharedMapsDelegate];
  v10 = +[UIApplication sharedApplication];
  v11 = [v12 objectForKeyedSubscript:@"testName"];
  [v9 application:v10 runTest:v11 options:v12];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PerformanceCell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"PerformanceCell"];
  }

  [v7 setAccessoryView:0];
  v8 = [v7 detailTextLabel];
  [v8 setText:0];

  tests = self->_tests;
  v10 = [v6 row];

  v11 = [(NSMutableArray *)tests objectAtIndexedSubscript:v10];
  v12 = [v11 objectForKeyedSubscript:@"testName"];
  v13 = [v7 textLabel];
  [v13 setText:v12];

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
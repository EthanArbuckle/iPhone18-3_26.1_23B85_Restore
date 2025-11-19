@interface BatteryUsageQueryModule
+ (id)sharedModule;
- (BatteryUsageQueryModule)init;
- (void)populateBatteryGraphModelsWithCompletion:(id)a3;
- (void)populateBatteryModelsWithCompletion:(id)a3;
- (void)populateBatteryUsageWithCompletion:(id)a3;
- (void)queryBackend:(id)a3 withCompletion:(id)a4;
@end

@implementation BatteryUsageQueryModule

+ (id)sharedModule
{
  if (qword_187B68 != -1)
  {
    sub_10F7A0();
  }

  v3 = qword_187B60;

  return v3;
}

- (BatteryUsageQueryModule)init
{
  v8.receiver = self;
  v8.super_class = BatteryUsageQueryModule;
  v2 = [(BatteryUsageQueryModule *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    queryUsageQueue = v2->_queryUsageQueue;
    v2->_queryUsageQueue = v3;

    [(NSOperationQueue *)v2->_queryUsageQueue setName:@"com.apple.preferences.battery_ui_query"];
    [(NSOperationQueue *)v2->_queryUsageQueue setMaxConcurrentOperationCount:1];
    v2->_type = 0;
    v5 = objc_alloc_init(NSOperationQueue);
    queryModelQueue = v2->_queryModelQueue;
    v2->_queryModelQueue = v5;

    [(NSOperationQueue *)v2->_queryModelQueue setName:@"com.apple.preferences.battery_model_query"];
    [(NSOperationQueue *)v2->_queryModelQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)populateBatteryUsageWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [[QueryOperations alloc] initWithCompletion:v4];

  [(QueryOperations *)v6 setFunctionName:@"PLBatteryUIQueryFunctionKey"];
  [(QueryOperations *)v6 setQueryType:[(BatteryUsageQueryModule *)self type]];
  v5 = [(BatteryUsageQueryModule *)self manualFileName];
  [(QueryOperations *)v6 setManualFileName:v5];

  [(NSOperationQueue *)self->_queryUsageQueue addOperation:v6];
}

- (void)populateBatteryModelsWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [[QueryOperations alloc] initWithCompletion:v4];

  [(QueryOperations *)v6 setFunctionName:@"PLBatteryUIModelsQueryFunctionKey"];
  v5 = [(BatteryUsageQueryModule *)self graphNames];
  [(QueryOperations *)v6 setGraphArray:v5];

  [(NSOperationQueue *)self->_queryModelQueue addOperation:v6];
}

- (void)populateBatteryGraphModelsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[QueryOperations alloc] initWithCompletion:v4];

  [(QueryOperations *)v5 setFunctionName:@"PLBatteryUIGraphKey"];
  NSLog(@"Operation is: %@", v5);
  [(NSOperationQueue *)self->_queryModelQueue addOperation:v5];
}

- (void)queryBackend:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[QueryOperations alloc] initWithCompletion:v6];

  [(QueryOperations *)v9 setFunctionName:@"PLBatteryUIQueryFunctionKey"];
  [(QueryOperations *)v9 setQueryType:[(BatteryUsageQueryModule *)self type]];
  [(QueryOperations *)v9 setBackend:v7];

  v8 = [(BatteryUsageQueryModule *)self manualFileName];
  [(QueryOperations *)v9 setManualFileName:v8];

  [(NSOperationQueue *)self->_queryUsageQueue addOperation:v9];
}

@end
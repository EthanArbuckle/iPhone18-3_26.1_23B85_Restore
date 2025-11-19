@interface PFCloudKitBaseMetric
- (NSString)description;
- (NSString)name;
- (PFCloudKitBaseMetric)initWithContainerIdentifier:(id)a3;
- (id)createPayload;
- (void)dealloc;
@end

@implementation PFCloudKitBaseMetric

- (PFCloudKitBaseMetric)initWithContainerIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PFCloudKitBaseMetric;
  v4 = [(PFCloudKitBaseMetric *)&v6 init];
  if (v4)
  {
    v4->_containerIdentifier = a3;
    v4->_processName = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitBaseMetric;
  [(PFCloudKitBaseMetric *)&v3 dealloc];
}

- (NSString)name
{
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempt to log metric with PFCloudKitBaseMetric, but each subclass must provide it's own name.\n", buf, 2u);
  }

  v3 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: Attempt to log metric with PFCloudKitBaseMetric, but each subclass must provide it's own name.", v5, 2u);
  }

  return @"com.apple.coredata.cloudkit.base";
}

- (id)createPayload
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  processName = self->_processName;
  if (!processName)
  {
    processName = [MEMORY[0x1E695DFB0] null];
  }

  containerIdentifier = self->_containerIdentifier;
  if (!containerIdentifier)
  {
    containerIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  return [v3 initWithObjectsAndKeys:{processName, @"processName", containerIdentifier, @"containerIdentifier", 0}];
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PFCloudKitBaseMetric *)self createPayload];
  v8.receiver = self;
  v8.super_class = PFCloudKitBaseMetric;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@\n%@", -[PFCloudKitBaseMetric description](&v8, sel_description), -[PFCloudKitBaseMetric name](self, "name"), v4];

  v6 = v5;
  objc_autoreleasePoolPop(v3);
  return v5;
}

@end
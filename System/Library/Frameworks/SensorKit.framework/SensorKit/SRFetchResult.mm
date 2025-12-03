@interface SRFetchResult
+ (void)initialize;
- (SRFetchResult)init;
- (SRFetchResult)initWithBytes:(void *)bytes length:(unint64_t)length timestamp:(double)timestamp metadata:(id)metadata configuration:(id)configuration cursor:(id)cursor sampleClass:(Class)class;
- (SRFetchResult)initWithData:(id)data timestamp:(double)timestamp metadata:(id)metadata configuration:(id)configuration cursor:(id)cursor sampleClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sample;
- (void)dealloc;
@end

@implementation SRFetchResult

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogFetchRequest = os_log_create("com.apple.SensorKit", "SRFetchRequest");
  }
}

- (SRFetchResult)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRFetchResult)initWithData:(id)data timestamp:(double)timestamp metadata:(id)metadata configuration:(id)configuration cursor:(id)cursor sampleClass:(Class)class
{
  v17.receiver = self;
  v17.super_class = SRFetchResult;
  v14 = [(SRFetchResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_timestamp = timestamp;
    v14->_sampleData = data;
    v15->_metadata = metadata;
    v15->_configuration = configuration;
    v15->_sampleClass = class;
    v15->__cursor = cursor;
  }

  return v15;
}

- (SRFetchResult)initWithBytes:(void *)bytes length:(unint64_t)length timestamp:(double)timestamp metadata:(id)metadata configuration:(id)configuration cursor:(id)cursor sampleClass:(Class)class
{
  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:bytes length:length freeWhenDone:0];
  v16 = [(SRFetchResult *)self initWithData:v15 timestamp:metadata metadata:configuration configuration:cursor cursor:class sampleClass:timestamp];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(NSData *)self->_sampleData copy];
  v5 = [[SRFetchResult alloc] initWithData:v4 timestamp:self->_metadata metadata:self->_configuration configuration:self->__cursor cursor:self->_sampleClass sampleClass:self->_timestamp];

  return v5;
}

- (void)dealloc
{
  [(SRFetchResult *)self setSampleClass:0];
  [(SRFetchResult *)self setMetadata:0];
  [(SRFetchResult *)self setConfiguration:0];
  [(SRFetchResult *)self setSampleClass:0];
  [(SRFetchResult *)self setSampleData:0];
  [(SRFetchResult *)self set_cursor:0];
  v3.receiver = self;
  v3.super_class = SRFetchResult;
  [(SRFetchResult *)&v3 dealloc];
}

- (id)sample
{
  v19 = *MEMORY[0x1E69E9840];
  sampleClass = self->_sampleClass;
  if (!sampleClass)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    sampleClass = self->_sampleClass;
    if (!sampleClass)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D930];
      v9 = @"Failed to find a sample class to construct the sample object";
      v10 = 0;
      goto LABEL_11;
    }
  }

  v4 = [[sampleClass alloc] initWithBinarySampleRepresentation:self->_sampleData metadata:self->_metadata timestamp:self->_timestamp];
  if (!v4)
  {
    v11 = NSStringFromClass(self->_sampleClass);
    v12 = SRLogFetchRequest;
    if (os_log_type_enabled(SRLogFetchRequest, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_fault_impl(&dword_1C914D000, v12, OS_LOG_TYPE_FAULT, "Failed to instantiate a sample of type %{public}@ with the given data", buf, 0xCu);
    }

    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = @"SRSampleClass";
    v16 = v11;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = @"Unable to construct a sample object";
    v7 = v13;
    v8 = v14;
LABEL_11:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:v10]);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
@interface SRFetchResult
+ (void)initialize;
- (SRFetchResult)init;
- (SRFetchResult)initWithBytes:(void *)a3 length:(unint64_t)a4 timestamp:(double)a5 metadata:(id)a6 configuration:(id)a7 cursor:(id)a8 sampleClass:(Class)a9;
- (SRFetchResult)initWithData:(id)a3 timestamp:(double)a4 metadata:(id)a5 configuration:(id)a6 cursor:(id)a7 sampleClass:(Class)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sample;
- (void)dealloc;
@end

@implementation SRFetchResult

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogFetchRequest = os_log_create("com.apple.SensorKit", "SRFetchRequest");
  }
}

- (SRFetchResult)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRFetchResult)initWithData:(id)a3 timestamp:(double)a4 metadata:(id)a5 configuration:(id)a6 cursor:(id)a7 sampleClass:(Class)a8
{
  v17.receiver = self;
  v17.super_class = SRFetchResult;
  v14 = [(SRFetchResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_timestamp = a4;
    v14->_sampleData = a3;
    v15->_metadata = a5;
    v15->_configuration = a6;
    v15->_sampleClass = a8;
    v15->__cursor = a7;
  }

  return v15;
}

- (SRFetchResult)initWithBytes:(void *)a3 length:(unint64_t)a4 timestamp:(double)a5 metadata:(id)a6 configuration:(id)a7 cursor:(id)a8 sampleClass:(Class)a9
{
  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v16 = [(SRFetchResult *)self initWithData:v15 timestamp:a6 metadata:a7 configuration:a8 cursor:a9 sampleClass:a5];

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
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
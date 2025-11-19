@interface PHPTPConversionDestinationAssetReader
- (PHPTPConversionDestinationAssetReader)initWithDestination:(id)a3;
- (id)dataSourcePathForDataRange:(_NSRange)a3 error:(id *)a4;
- (id)path;
@end

@implementation PHPTPConversionDestinationAssetReader

- (id)path
{
  v4 = [(PHPTPConversionDestinationAssetReader *)self destination];
  v5 = [v4 usesSinglePassVideoConversion];

  if (v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"PHPTPFormatConversionManager.m" lineNumber:78 description:{@"Call to method %@ is incompatible with a wrapped single pass video conversion destination", v11}];
  }

  v6 = [(PHPTPConversionDestinationAssetReader *)self destination];
  v7 = [v6 fileURL];
  v8 = [v7 path];

  return v8;
}

- (id)dataSourcePathForDataRange:(_NSRange)a3 error:(id *)a4
{
  length = a3.length;
  location = a3.location;
  *&v28[13] = *MEMORY[0x1E69E9840];
  v8 = [(PHPTPConversionDestinationAssetReader *)self destination];
  v9 = [v8 usesSinglePassVideoConversion];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = PLPTPGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v30.location = location;
    v30.length = length;
    v11 = NSStringFromRange(v30);
    *buf = 138412546;
    v26 = v11;
    v27 = 2048;
    *v28 = location + length;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "Begin wait for data availability of range %@ (= file size %lu)", buf, 0x16u);
  }

  v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v13 = [(PHPTPConversionDestinationAssetReader *)self destination];
  v24 = 0;
  v14 = [v13 waitForAvailabilityOfRange:location timeout:length error:{dispatch_time(0, 10000000000), &v24}];
  v15 = v24;

  v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v17 = PLPTPGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v31.location = location;
    v31.length = length;
    v18 = NSStringFromRange(v31);
    *buf = 138412802;
    v26 = v18;
    v27 = 1024;
    *v28 = v14;
    v28[2] = 2048;
    *&v28[3] = (v16 - v12) / 1000000000.0;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "End wait for data availability of range %@: %d (%.3fs)", buf, 0x1Cu);
  }

  if (v14)
  {

LABEL_8:
    v15 = [(PHPTPConversionDestinationAssetReader *)self destination];
    v19 = [v15 fileURL];
    v20 = [v19 path];

    goto LABEL_9;
  }

  v22 = PLPTPGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v15;
    _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Wait for data availability failed %@", buf, 0xCu);
  }

  if (a4)
  {
    v23 = v15;
    v20 = 0;
    *a4 = v15;
  }

  else
  {
    v20 = 0;
  }

LABEL_9:

  return v20;
}

- (PHPTPConversionDestinationAssetReader)initWithDestination:(id)a3
{
  v6 = a3;
  v7 = [v6 fileURL];
  v8 = [v7 path];

  if (!v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHPTPFormatConversionManager.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"path"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    objc_storeStrong(&self->_destination, a3);
  }

LABEL_4:

  return self;
}

@end
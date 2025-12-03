@interface PHPTPConversionDestinationAssetReader
- (PHPTPConversionDestinationAssetReader)initWithDestination:(id)destination;
- (id)dataSourcePathForDataRange:(_NSRange)range error:(id *)error;
- (id)path;
@end

@implementation PHPTPConversionDestinationAssetReader

- (id)path
{
  destination = [(PHPTPConversionDestinationAssetReader *)self destination];
  usesSinglePassVideoConversion = [destination usesSinglePassVideoConversion];

  if (usesSinglePassVideoConversion)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPFormatConversionManager.m" lineNumber:78 description:{@"Call to method %@ is incompatible with a wrapped single pass video conversion destination", v11}];
  }

  destination2 = [(PHPTPConversionDestinationAssetReader *)self destination];
  fileURL = [destination2 fileURL];
  path = [fileURL path];

  return path;
}

- (id)dataSourcePathForDataRange:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  *&v28[13] = *MEMORY[0x1E69E9840];
  destination = [(PHPTPConversionDestinationAssetReader *)self destination];
  usesSinglePassVideoConversion = [destination usesSinglePassVideoConversion];

  if (!usesSinglePassVideoConversion)
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
  destination2 = [(PHPTPConversionDestinationAssetReader *)self destination];
  v24 = 0;
  v14 = [destination2 waitForAvailabilityOfRange:location timeout:length error:{dispatch_time(0, 10000000000), &v24}];
  destination3 = v24;

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
    destination3 = [(PHPTPConversionDestinationAssetReader *)self destination];
    fileURL = [destination3 fileURL];
    path = [fileURL path];

    goto LABEL_9;
  }

  v22 = PLPTPGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = destination3;
    _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Wait for data availability failed %@", buf, 0xCu);
  }

  if (error)
  {
    v23 = destination3;
    path = 0;
    *error = destination3;
  }

  else
  {
    path = 0;
  }

LABEL_9:

  return path;
}

- (PHPTPConversionDestinationAssetReader)initWithDestination:(id)destination
{
  destinationCopy = destination;
  fileURL = [destinationCopy fileURL];
  path = [fileURL path];

  if (!path)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPFormatConversionManager.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"path"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    objc_storeStrong(&self->_destination, destination);
  }

LABEL_4:

  return self;
}

@end
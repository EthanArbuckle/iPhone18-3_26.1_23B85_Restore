@interface CIContext(_createCGImageInternal)
@end

@implementation CIContext(_createCGImageInternal)

- (void)_createCGImage:()_createCGImageInternal fromRect:format:premultiplied:colorSpace:deferred:renderCallback:.cold.3(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446210;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Cannot create a CGImageProvider for %{public}s\n", buf, 0xCu);
}

@end
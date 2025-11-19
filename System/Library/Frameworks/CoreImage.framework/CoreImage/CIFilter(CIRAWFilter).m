@interface CIFilter(CIRAWFilter)
@end

@implementation CIFilter(CIRAWFilter)

+ (void)filterWithImageURL:()CIRAWFilter options:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446467;
  v3 = "+[CIFilter(CIRAWFilter) filterWithImageURL:options:]";
  v4 = 2113;
  v5 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "%{public}s unable to read file %{private}@.", &v2, 0x16u);
}

@end
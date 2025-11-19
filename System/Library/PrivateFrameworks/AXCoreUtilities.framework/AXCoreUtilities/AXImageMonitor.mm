@interface AXImageMonitor
@end

@implementation AXImageMonitor

void __AXImageMonitor_dyld_image_callback_block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:*(a1 + 32) encoding:_NSDefaultFileSystemEncoding()];
  free(*(a1 + 32));
  v2 = +[_AXDyldImageMonitor sharedInstance];
  [v2 _dyldDidAddImage:v3];
}

@end
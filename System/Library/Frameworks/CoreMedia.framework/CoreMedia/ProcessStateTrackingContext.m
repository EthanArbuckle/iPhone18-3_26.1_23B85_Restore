@interface ProcessStateTrackingContext
- (void)dealloc;
@end

@implementation ProcessStateTrackingContext

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = ProcessStateTrackingContext;
  [(ProcessStateTrackingContext *)&v3 dealloc];
}

@end
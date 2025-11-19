@interface CFPDContainerSource
- (void)dealloc;
@end

@implementation CFPDContainerSource

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  containerPath = self->_containerPath;
  if (containerPath)
  {
    CFRelease(containerPath);
  }

  v5.receiver = self;
  v5.super_class = CFPDContainerSource;
  [(CFPDSource *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

@end
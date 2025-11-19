@interface SKRequestInternal
- (SKRequestInternal)init;
- (void)dealloc;
@end

@implementation SKRequestInternal

- (SKRequestInternal)init
{
  v3.receiver = self;
  v3.super_class = SKRequestInternal;
  result = [(SKRequestInternal *)&v3 init];
  if (result)
  {
    result->_backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
  }

  return result;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69DDBE8];
  if (self->_backgroundTaskIdentifier != *MEMORY[0x1E69DDBE8])
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    [v4 endBackgroundTask:self->_backgroundTaskIdentifier];

    self->_backgroundTaskIdentifier = v3;
  }

  v5.receiver = self;
  v5.super_class = SKRequestInternal;
  [(SKRequestInternal *)&v5 dealloc];
}

@end
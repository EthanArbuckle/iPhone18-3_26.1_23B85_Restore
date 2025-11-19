@interface _NSTimerBlockTarget
- (void)dealloc;
@end

@implementation _NSTimerBlockTarget

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  _Block_release(self->_block);
  v3.receiver = self;
  v3.super_class = _NSTimerBlockTarget;
  [(_NSTimerBlockTarget *)&v3 dealloc];
}

@end
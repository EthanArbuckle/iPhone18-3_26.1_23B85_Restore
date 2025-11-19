@interface DismissalHandle
- (void)dealloc;
@end

@implementation DismissalHandle

- (void)dealloc
{
  dismissalBlock = self->_dismissalBlock;
  self->_dismissalBlock = 0;

  v4.receiver = self;
  v4.super_class = DismissalHandle;
  [(DismissalHandle *)&v4 dealloc];
}

@end
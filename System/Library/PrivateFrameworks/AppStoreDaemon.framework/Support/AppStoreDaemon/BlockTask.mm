@interface BlockTask
- (void)main;
@end

@implementation BlockTask

- (void)main
{
  (*(self->_block + 2))();

  [(Task *)self completeWithSuccess];
}

@end
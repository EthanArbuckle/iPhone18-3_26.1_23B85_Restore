@interface AXThreadTimerTask
- (void)run;
- (void)setBlock:(id)block;
@end

@implementation AXThreadTimerTask

- (void)setBlock:(id)block
{
  v4 = [block copy];
  block = self->_block;
  self->_block = v4;

  MEMORY[0x1EEE66BB8](v4, block);
}

- (void)run
{
  if (![(AXThreadTimerTask *)self isCancelled])
  {
    [(AXThreadTimerTask *)self setActive:1];
    (*(self->_block + 2))();
    [(AXThreadTimerTask *)self setActive:0];
  }

  [(AXThreadTimerTask *)self setFinished:1];
}

@end
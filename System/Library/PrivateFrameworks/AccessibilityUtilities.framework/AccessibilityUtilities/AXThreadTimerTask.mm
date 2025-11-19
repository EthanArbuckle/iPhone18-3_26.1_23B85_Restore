@interface AXThreadTimerTask
- (void)run;
- (void)setBlock:(id)a3;
@end

@implementation AXThreadTimerTask

- (void)setBlock:(id)a3
{
  v4 = [a3 copy];
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
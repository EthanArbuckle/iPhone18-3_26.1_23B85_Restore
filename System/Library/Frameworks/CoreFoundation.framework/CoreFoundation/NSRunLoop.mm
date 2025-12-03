@interface NSRunLoop
- (id)_initWithRl:(id)rl dperf:(id)dperf perft:(id)perft info:(id)info ports:(id)ports;
- (void)_deallocHelper;
@end

@implementation NSRunLoop

- (void)_deallocHelper
{
  objc_sync_enter(self);
  rl = self->_rl;
  dperf = self->_dperf;
  perft = self->_perft;
  info = self->_info;
  ports = self->_ports;
  *&self->_rl = 0u;
  *&self->_perft = 0u;
  self->_ports = 0;

  objc_sync_exit(self);
}

- (id)_initWithRl:(id)rl dperf:(id)dperf perft:(id)perft info:(id)info ports:(id)ports
{
  self->_rl = rl;
  self->_dperf = dperf;
  self->_perft = perft;
  self->_info = info;
  self->_ports = ports;
  return self;
}

@end
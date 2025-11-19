@interface NSRunLoop
- (id)_initWithRl:(id)a3 dperf:(id)a4 perft:(id)a5 info:(id)a6 ports:(id)a7;
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

- (id)_initWithRl:(id)a3 dperf:(id)a4 perft:(id)a5 info:(id)a6 ports:(id)a7
{
  self->_rl = a3;
  self->_dperf = a4;
  self->_perft = a5;
  self->_info = a6;
  self->_ports = a7;
  return self;
}

@end
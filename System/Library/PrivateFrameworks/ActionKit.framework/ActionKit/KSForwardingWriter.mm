@interface KSForwardingWriter
- (KSForwardingWriter)initWithOutputWriter:(id)a3;
- (void)close;
- (void)dealloc;
@end

@implementation KSForwardingWriter

- (void)close
{
  writer = self->_writer;
  self->_writer = 0;
}

- (void)dealloc
{
  [(KSForwardingWriter *)self close];
  if (self->_writer)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"KSForwardingWriter.m" lineNumber:52 description:@"-close failed to dispose of output writer"];
  }

  v5.receiver = self;
  v5.super_class = KSForwardingWriter;
  [(KSForwardingWriter *)&v5 dealloc];
}

- (KSForwardingWriter)initWithOutputWriter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KSForwardingWriter;
  v6 = [(KSForwardingWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_writer, a3);
  }

  return v7;
}

@end
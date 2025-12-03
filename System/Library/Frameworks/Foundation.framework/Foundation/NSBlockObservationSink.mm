@interface NSBlockObservationSink
- (NSBlockObservationSink)initWithBlock:(id)block tag:(int)tag;
- (void)_receiveBox:(id)box;
- (void)dealloc;
@end

@implementation NSBlockObservationSink

- (NSBlockObservationSink)initWithBlock:(id)block tag:(int)tag
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSBlockObservationSink;
  v6 = [(NSBlockObservationSink *)&v8 init];
  if (v6)
  {
    v6->_block = [block copy];
    v6->_tag = tag;
  }

  return v6;
}

- (void)_receiveBox:(id)box
{
  v8 = *MEMORY[0x1E69E9840];
  tag = self->_tag;
  if (*(box + 6) == tag && tag != 3)
  {
    (*(self->_block + 2))();
  }

  v7.receiver = self;
  v7.super_class = NSBlockObservationSink;
  [(NSBlockObservationSink *)&v7 _receiveBox:box];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSBlockObservationSink;
  [(NSBlockObservationSink *)&v3 dealloc];
}

@end
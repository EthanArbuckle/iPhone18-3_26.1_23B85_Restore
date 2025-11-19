@interface VCSessionMessageBufferElement
- (VCSessionMessageBufferElement)initWithMessage:(id)a3 sequenceNumber:(unint64_t)a4 retryNumber:(unint64_t)a5;
- (void)dealloc;
@end

@implementation VCSessionMessageBufferElement

- (VCSessionMessageBufferElement)initWithMessage:(id)a3 sequenceNumber:(unint64_t)a4 retryNumber:(unint64_t)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCSessionMessageBufferElement;
  v8 = [(VCSessionMessageBufferElement *)&v10 init];
  if (v8)
  {
    v8->_message = a3;
    v8->_sequenceNumber = a4;
    v8->_retryNumber = a5;
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionMessageBufferElement;
  [(VCSessionMessageBufferElement *)&v3 dealloc];
}

@end
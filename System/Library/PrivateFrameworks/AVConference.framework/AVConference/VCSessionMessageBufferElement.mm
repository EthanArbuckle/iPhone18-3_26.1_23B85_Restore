@interface VCSessionMessageBufferElement
- (VCSessionMessageBufferElement)initWithMessage:(id)message sequenceNumber:(unint64_t)number retryNumber:(unint64_t)retryNumber;
- (void)dealloc;
@end

@implementation VCSessionMessageBufferElement

- (VCSessionMessageBufferElement)initWithMessage:(id)message sequenceNumber:(unint64_t)number retryNumber:(unint64_t)retryNumber
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCSessionMessageBufferElement;
  v8 = [(VCSessionMessageBufferElement *)&v10 init];
  if (v8)
  {
    v8->_message = message;
    v8->_sequenceNumber = number;
    v8->_retryNumber = retryNumber;
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
@interface AVAudioConnectionPoint
+ (AVAudioConnectionPoint)connectionPointWithNode:(id)node bus:(unint64_t)bus;
- (AVAudioConnectionPoint)initWithNode:(AVAudioNode *)node bus:(AVAudioNodeBus)bus;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation AVAudioConnectionPoint

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [equal node] == self->_node && objc_msgSend(equal, "bus") == self->_bus;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVAudioConnectionPoint;
  [(AVAudioConnectionPoint *)&v2 dealloc];
}

- (AVAudioConnectionPoint)initWithNode:(AVAudioNode *)node bus:(AVAudioNodeBus)bus
{
  if (node)
  {
    v7.receiver = self;
    v7.super_class = AVAudioConnectionPoint;
    result = [(AVAudioConnectionPoint *)&v7 init];
    if (result)
    {
      result->_node = node;
      result->_bus = bus;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

+ (AVAudioConnectionPoint)connectionPointWithNode:(id)node bus:(unint64_t)bus
{
  v4 = [[AVAudioConnectionPoint alloc] initWithNode:node bus:bus];

  return v4;
}

@end
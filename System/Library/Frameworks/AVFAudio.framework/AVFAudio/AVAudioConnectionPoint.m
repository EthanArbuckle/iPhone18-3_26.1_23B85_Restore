@interface AVAudioConnectionPoint
+ (AVAudioConnectionPoint)connectionPointWithNode:(id)a3 bus:(unint64_t)a4;
- (AVAudioConnectionPoint)initWithNode:(AVAudioNode *)node bus:(AVAudioNodeBus)bus;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation AVAudioConnectionPoint

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [a3 node] == self->_node && objc_msgSend(a3, "bus") == self->_bus;
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

+ (AVAudioConnectionPoint)connectionPointWithNode:(id)a3 bus:(unint64_t)a4
{
  v4 = [[AVAudioConnectionPoint alloc] initWithNode:a3 bus:a4];

  return v4;
}

@end
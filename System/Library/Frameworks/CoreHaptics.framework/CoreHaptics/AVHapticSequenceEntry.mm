@interface AVHapticSequenceEntry
- (AVHapticSequenceEntry)initWithHandler:(id)a3;
@end

@implementation AVHapticSequenceEntry

- (AVHapticSequenceEntry)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVHapticSequenceEntry;
  v5 = [(AVHapticSequenceEntry *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x21606F540](v4);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

@end
@interface AVMIDISysexEvent
- (AVMIDISysexEvent)initWithData:(NSData *)data;
- (AVMIDISysexEvent)initWithMIDIRawData:(MIDIRawData *)a3;
@end

@implementation AVMIDISysexEvent

- (AVMIDISysexEvent)initWithMIDIRawData:(MIDIRawData *)a3
{
  v11.receiver = self;
  v11.super_class = AVMIDISysexEvent;
  v4 = [(AVMIDISysexEvent *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
    sysexData = v4->_sysexData;
    v4->_sysexData = v5;

    length = a3->length;
    [(NSMutableData *)v4->_sysexData appendBytes:&length length:4];
    v7 = v4->_sysexData;
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:a3->data length:length];
    [(NSMutableData *)v7 appendData:v8];
  }

  return v4;
}

- (AVMIDISysexEvent)initWithData:(NSData *)data
{
  v4 = data;
  v10.receiver = self;
  v10.super_class = AVMIDISysexEvent;
  v5 = [(AVMIDISysexEvent *)&v10 init];
  if (v5)
  {
    v9 = [(NSData *)v4 length];
    v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
    sysexData = v5->_sysexData;
    v5->_sysexData = v6;

    [(NSMutableData *)v5->_sysexData appendBytes:&v9 length:4];
    [(NSMutableData *)v5->_sysexData appendData:v4];
  }

  return v5;
}

@end
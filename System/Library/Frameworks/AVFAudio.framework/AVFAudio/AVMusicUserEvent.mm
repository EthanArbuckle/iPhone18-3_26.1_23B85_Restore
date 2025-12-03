@interface AVMusicUserEvent
- (AVMusicUserEvent)initWithData:(NSData *)data;
- (AVMusicUserEvent)initWithUserData:(MusicEventUserData *)data;
@end

@implementation AVMusicUserEvent

- (AVMusicUserEvent)initWithUserData:(MusicEventUserData *)data
{
  v11.receiver = self;
  v11.super_class = AVMusicUserEvent;
  v4 = [(AVMusicUserEvent *)&v11 init];
  if (v4)
  {
    length = data->length;
    v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
    userData = v4->_userData;
    v4->_userData = v5;

    [(NSMutableData *)v4->_userData appendBytes:&length length:4];
    v7 = v4->_userData;
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:data->data length:data->length];
    [(NSMutableData *)v7 appendData:v8];
  }

  return v4;
}

- (AVMusicUserEvent)initWithData:(NSData *)data
{
  v4 = data;
  v10.receiver = self;
  v10.super_class = AVMusicUserEvent;
  v5 = [(AVMusicUserEvent *)&v10 init];
  if (v5)
  {
    v9 = [(NSData *)v4 length];
    v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
    userData = v5->_userData;
    v5->_userData = v6;

    [(NSMutableData *)v5->_userData appendBytes:&v9 length:4];
    [(NSMutableData *)v5->_userData appendData:v4];
  }

  return v5;
}

@end
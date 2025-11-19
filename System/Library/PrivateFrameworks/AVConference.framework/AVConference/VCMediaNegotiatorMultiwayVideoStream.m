@interface VCMediaNegotiatorMultiwayVideoStream
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VCMediaNegotiatorMultiwayVideoStream

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaNegotiatorMultiwayVideoStream;
  v4 = [(VCMediaNegotiatorMultiwayMediaStream *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setSize:{self->_size.width, self->_size.height}];
    [v5 setFrameRate:self->_frameRate];
    [v5 setKeyFrameInterval:self->_keyFrameInterval];
    [v5 setPayload:self->_payload];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9.receiver = self;
  v9.super_class = VCMediaNegotiatorMultiwayVideoStream;
  v5 = [(VCMediaNegotiatorMultiwayMediaStream *)&v9 isEqual:a3];
  if (v5)
  {
    [a3 size];
    if (v6 == self->_size.width)
    {
      [a3 size];
      if (v7 == self->_size.height && [a3 frameRate] == self->_frameRate && objc_msgSend(a3, "keyFrameInterval") == self->_keyFrameInterval)
      {
        LOBYTE(v5) = [a3 payload] == self->_payload;
        return v5;
      }
    }

LABEL_8:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
@interface VCMediaNegotiatorMultiwayVideoStream
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VCMediaNegotiatorMultiwayVideoStream

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaNegotiatorMultiwayVideoStream;
  v4 = [(VCMediaNegotiatorMultiwayMediaStream *)&v7 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9.receiver = self;
  v9.super_class = VCMediaNegotiatorMultiwayVideoStream;
  v5 = [(VCMediaNegotiatorMultiwayMediaStream *)&v9 isEqual:equal];
  if (v5)
  {
    [equal size];
    if (v6 == self->_size.width)
    {
      [equal size];
      if (v7 == self->_size.height && [equal frameRate] == self->_frameRate && objc_msgSend(equal, "keyFrameInterval") == self->_keyFrameInterval)
      {
        LOBYTE(v5) = [equal payload] == self->_payload;
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
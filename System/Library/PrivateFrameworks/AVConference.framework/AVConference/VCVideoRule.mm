@interface VCVideoRule
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (VCVideoRule)initWithFrameWidth:(int)a3 frameHeight:(int)a4 frameRate:(float)a5 payload:(int)a6 priority:(float)a7;
- (int64_t)compare:(id)a3;
- (int64_t)compareByPref:(id)a3;
- (void)setFrameWidth:(int)a3 frameHeight:(int)a4 frameRate:(float)a5;
- (void)setToVideoRule:(id)a3;
@end

@implementation VCVideoRule

- (VCVideoRule)initWithFrameWidth:(int)a3 frameHeight:(int)a4 frameRate:(float)a5 payload:(int)a6 priority:(float)a7
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCVideoRule;
  result = [(VCVideoRule *)&v13 init];
  if (result)
  {
    result->_width = a3;
    result->_height = a4;
    result->_frameRate = a5;
    result->_priority = a7;
    result->_payload = a6;
  }

  return result;
}

- (int64_t)compare:(id)a3
{
  v5 = self->_height * self->_width;
  v6 = [a3 iWidth];
  if (v5 > ([a3 iHeight] * v6))
  {
    return 1;
  }

  v8 = self->_height * self->_width;
  v9 = [a3 iWidth];
  if (v8 != [a3 iHeight] * v9)
  {
    return -1;
  }

  frameRate = self->_frameRate;
  [a3 fRate];
  if (frameRate > v11)
  {
    return 1;
  }

  v12 = self->_frameRate;
  [a3 fRate];
  if (v12 == v13)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    payload = self->_payload;
    if (payload == [a3 iPayload] && (width = self->_width, width == objc_msgSend(a3, "iWidth")) && (height = self->_height, height == objc_msgSend(a3, "iHeight")) && (frameRate = self->_frameRate, objc_msgSend(a3, "fRate"), frameRate == v10))
    {
      priority = self->_priority;
      [a3 fPref];
      LOBYTE(v5) = priority == v12;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (int64_t)compareByPref:(id)a3
{
  priority = self->_priority;
  [a3 fPref];
  if (priority > v6)
  {
    return 1;
  }

  v8 = self->_priority;
  [a3 fPref];
  if (v8 == v9)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  frameRate = self->_frameRate;
  width = self->_width;
  height = self->_height;
  [(VCVideoRule *)self fPref];
  return [v3 stringWithFormat:@"Video rule width %d height %d frame rate %.1f pref %.2f payload: %d", width, height, *&frameRate, v7, self->_payload];
}

- (void)setToVideoRule:(id)a3
{
  v4 = a3;
  v5 = [a3 iWidth];
  v6 = [a3 iHeight];
  [a3 fRate];
  [(VCVideoRule *)self setFrameWidth:v5 frameHeight:v6 frameRate:?];
}

- (void)setFrameWidth:(int)a3 frameHeight:(int)a4 frameRate:(float)a5
{
  self->_width = a3;
  self->_height = a4;
  self->_frameRate = a5;
}

@end
@interface VCVideoRule
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VCVideoRule)initWithFrameWidth:(int)width frameHeight:(int)height frameRate:(float)rate payload:(int)payload priority:(float)priority;
- (int64_t)compare:(id)compare;
- (int64_t)compareByPref:(id)pref;
- (void)setFrameWidth:(int)width frameHeight:(int)height frameRate:(float)rate;
- (void)setToVideoRule:(id)rule;
@end

@implementation VCVideoRule

- (VCVideoRule)initWithFrameWidth:(int)width frameHeight:(int)height frameRate:(float)rate payload:(int)payload priority:(float)priority
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCVideoRule;
  result = [(VCVideoRule *)&v13 init];
  if (result)
  {
    result->_width = width;
    result->_height = height;
    result->_frameRate = rate;
    result->_priority = priority;
    result->_payload = payload;
  }

  return result;
}

- (int64_t)compare:(id)compare
{
  v5 = self->_height * self->_width;
  iWidth = [compare iWidth];
  if (v5 > ([compare iHeight] * iWidth))
  {
    return 1;
  }

  v8 = self->_height * self->_width;
  iWidth2 = [compare iWidth];
  if (v8 != [compare iHeight] * iWidth2)
  {
    return -1;
  }

  frameRate = self->_frameRate;
  [compare fRate];
  if (frameRate > v11)
  {
    return 1;
  }

  v12 = self->_frameRate;
  [compare fRate];
  if (v12 == v13)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    payload = self->_payload;
    if (payload == [equal iPayload] && (width = self->_width, width == objc_msgSend(equal, "iWidth")) && (height = self->_height, height == objc_msgSend(equal, "iHeight")) && (frameRate = self->_frameRate, objc_msgSend(equal, "fRate"), frameRate == v10))
    {
      priority = self->_priority;
      [equal fPref];
      LOBYTE(v5) = priority == v12;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (int64_t)compareByPref:(id)pref
{
  priority = self->_priority;
  [pref fPref];
  if (priority > v6)
  {
    return 1;
  }

  v8 = self->_priority;
  [pref fPref];
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

- (void)setToVideoRule:(id)rule
{
  ruleCopy = rule;
  iWidth = [rule iWidth];
  iHeight = [rule iHeight];
  [rule fRate];
  [(VCVideoRule *)self setFrameWidth:iWidth frameHeight:iHeight frameRate:?];
}

- (void)setFrameWidth:(int)width frameHeight:(int)height frameRate:(float)rate
{
  self->_width = width;
  self->_height = height;
  self->_frameRate = rate;
}

@end
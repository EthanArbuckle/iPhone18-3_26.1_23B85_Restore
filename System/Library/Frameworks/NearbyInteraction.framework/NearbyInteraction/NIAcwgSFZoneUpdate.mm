@interface NIAcwgSFZoneUpdate
- (NIAcwgSFZoneUpdate)initWithCoder:(id)a3;
- (NIAcwgSFZoneUpdate)initWithSFZone:(int64_t)a3 btConnHandle:(unsigned __int16)a4 lastBtRssiValue:(char)a5 ioStateDisplacing:(BOOL)a6 explicitPAITriggered:(BOOL)a7 currentSFInBubble:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIAcwgSFZoneUpdate

- (NIAcwgSFZoneUpdate)initWithSFZone:(int64_t)a3 btConnHandle:(unsigned __int16)a4 lastBtRssiValue:(char)a5 ioStateDisplacing:(BOOL)a6 explicitPAITriggered:(BOOL)a7 currentSFInBubble:(BOOL)a8
{
  v15.receiver = self;
  v15.super_class = NIAcwgSFZoneUpdate;
  result = [(NIAcwgSFZoneUpdate *)&v15 init];
  if (result)
  {
    result->_currentZone = a3;
    result->_btConnHandle = a4;
    result->_lastBtRssiValue = a5;
    result->_ioStateDisplacing = a6;
    result->_explicitPAITriggered = a7;
    result->_currentSFInBubble = a8;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n", v5];

  currentZone = self->_currentZone;
  v8 = @"Unknown";
  if (currentZone == 1)
  {
    v8 = @"Closer";
  }

  if (currentZone == 2)
  {
    v9 = @"Further";
  }

  else
  {
    v9 = v8;
  }

  [v6 appendFormat:@"currentZone:%@\n", v9];
  [v6 appendFormat:@"btConnHandle:(0x%04x)\n", self->_btConnHandle];
  [v6 appendFormat:@"lastBtRssiValue:%d\n", self->_lastBtRssiValue];
  [v6 appendFormat:@"ioStateDisplacing:%d\n", self->_ioStateDisplacing];
  [v6 appendFormat:@"explicitPAITriggered:%d\n", self->_explicitPAITriggered];
  [v6 appendFormat:@"currentSFInBubble:%d>\n", self->_currentSFInBubble];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  currentZone = self->_currentZone;
  btConnHandle = self->_btConnHandle;
  lastBtRssiValue = self->_lastBtRssiValue;
  ioStateDisplacing = self->_ioStateDisplacing;
  explicitPAITriggered = self->_explicitPAITriggered;
  currentSFInBubble = self->_currentSFInBubble;

  return [v4 initWithSFZone:currentZone btConnHandle:btConnHandle lastBtRssiValue:lastBtRssiValue ioStateDisplacing:ioStateDisplacing explicitPAITriggered:explicitPAITriggered currentSFInBubble:currentSFInBubble];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:LODWORD(self->_currentZone) forKey:@"currentZone"];
  [v4 encodeInt:self->_btConnHandle forKey:@"btConnHandle"];
  [v4 encodeInt:self->_lastBtRssiValue forKey:@"lastBtRssiValue"];
  [v4 encodeBool:self->_ioStateDisplacing forKey:@"ioStateDisplacing"];
  [v4 encodeBool:self->_explicitPAITriggered forKey:@"explicitPAITriggered"];
  [v4 encodeBool:self->_currentSFInBubble forKey:@"currentSFInBubble"];
}

- (NIAcwgSFZoneUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    self->_currentZone = [v4 decodeIntForKey:@"currentZone"];
    self->_btConnHandle = [v5 decodeIntForKey:@"btConnHandle"];
    self->_lastBtRssiValue = [v5 decodeIntForKey:@"lastBtRssiValue"];
    self->_ioStateDisplacing = [v5 decodeBoolForKey:@"ioStateDisplacing"];
    self->_explicitPAITriggered = [v5 decodeBoolForKey:@"explicitPAITriggered"];
    self->_currentSFInBubble = [v5 decodeBoolForKey:@"currentSFInBubble"];
  }

  return self;
}

@end
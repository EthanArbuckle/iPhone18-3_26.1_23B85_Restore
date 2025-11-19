@interface AXSpeakingRange
- (_NSRange)range;
- (id)description;
@end

@implementation AXSpeakingRange

- (id)description
{
  v8.receiver = self;
  v8.super_class = AXSpeakingRange;
  v3 = [(AXSpeakingRange *)&v8 description];
  v4 = [(AXSpeakingRange *)self element];
  v10.location = [(AXSpeakingRange *)self range];
  v5 = NSStringFromRange(v10);
  v6 = [v3 stringByAppendingFormat:@" - %@, %@", v4, v5];

  return v6;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
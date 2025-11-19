@interface AXTypingPrediction
- (_NSRange)rangeToReplace;
- (id)description;
@end

@implementation AXTypingPrediction

- (id)description
{
  v9.receiver = self;
  v9.super_class = AXTypingPrediction;
  v3 = [(AXTypingPrediction *)&v9 description];
  v8 = *&self->_fullWord;
  prefix = self->_prefix;
  v5 = NSStringFromRange(self->_rangeToReplace);
  v6 = [v3 stringByAppendingFormat:@" - fullWord %@, textToInsert %@, prefix %@, range to replace %@", v8, prefix, v5];

  return v6;
}

- (_NSRange)rangeToReplace
{
  length = self->_rangeToReplace.length;
  location = self->_rangeToReplace.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
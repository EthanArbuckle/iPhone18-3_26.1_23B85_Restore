@interface BCSKeyValueParser
- (BCSKeyValueParser)initWithString:(id)string startIndex:(unint64_t)index;
- (BOOL)_parseNextKeyValuePair;
- (NSDictionary)keyValuePairs;
- (unint64_t)_indexOfDelimiter:(id)delimiter range:(_NSRange)range;
- (unint64_t)_numberOfPreviousBackSlashesFromIndex:(unint64_t)index withinRange:(_NSRange)range;
@end

@implementation BCSKeyValueParser

- (BCSKeyValueParser)initWithString:(id)string startIndex:(unint64_t)index
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = BCSKeyValueParser;
  v7 = [(BCSKeyValueParser *)&v12 init];
  if (v7)
  {
    v8 = [stringCopy copy];
    string = v7->_string;
    v7->_string = v8;

    v7->_currentIndex = index;
    v7->_stringLength = [stringCopy length];
    v10 = v7;
  }

  return v7;
}

- (NSDictionary)keyValuePairs
{
  keyValuePairs = self->_keyValuePairs;
  if (!keyValuePairs)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_keyValuePairs;
    self->_keyValuePairs = dictionary;

      ;
    }

    keyValuePairs = self->_keyValuePairs;
  }

  v6 = keyValuePairs;

  return v6;
}

- (BOOL)_parseNextKeyValuePair
{
  v3 = [(BCSKeyValueParser *)self _indexOfDelimiter:@";" range:self->_currentIndex, self->_stringLength - self->_currentIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = v3;
  if (v3 == self->_currentIndex)
  {
    return 0;
  }

  v5 = [(BCSKeyValueParser *)self _indexOfDelimiter:@":" range:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v5;
  v9 = [(NSString *)self->_string substringWithRange:self->_currentIndex, v5 - self->_currentIndex];
  _bcs_trimmedString = [v9 _bcs_trimmedString];

  _bcs_unescapedString = [_bcs_trimmedString _bcs_unescapedString];

  v12 = [_bcs_unescapedString length];
  v6 = v12 != 0;
  if (v12)
  {
    v13 = [(NSString *)self->_string substringWithRange:v8 + 1, v4 + ~v8];
    _bcs_unescapedString2 = [v13 _bcs_unescapedString];

    [(NSMutableDictionary *)self->_keyValuePairs setObject:_bcs_unescapedString2 forKeyedSubscript:_bcs_unescapedString];
    self->_currentIndex = v4 + 1;
  }

  return v6;
}

- (unint64_t)_indexOfDelimiter:(id)delimiter range:(_NSRange)range
{
  v4 = range.location + range.length;
  if (range.location < range.location + range.length)
  {
    length = range.length;
    location = range.location;
    v9 = range.location;
    do
    {
      v10 = [(NSString *)self->_string rangeOfString:delimiter options:0 range:v9, v4 - v9];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v11 = v10;
      if (v10 == v9)
      {
        return v9;
      }

      v9 = v10;
      if (([(BCSKeyValueParser *)self _numberOfPreviousBackSlashesFromIndex:v10 withinRange:location, length]& 1) == 0)
      {
        return v9;
      }

      v9 = v11 + 1;
    }

    while (v11 + 1 < v4);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)_numberOfPreviousBackSlashesFromIndex:(unint64_t)index withinRange:(_NSRange)range
{
  if (index >= range.location)
  {
    v5 = index - range.location;
  }

  else
  {
    v5 = 0;
  }

  v6 = index - 1;
  v7 = -1;
  v8 = v5;
  while (v8)
  {
    v9 = [(NSString *)self->_string characterAtIndex:v6];
    --v8;
    ++v7;
    --v6;
    if (v9 != 92)
    {
      return v7;
    }
  }

  return v5;
}

@end
@interface BCSKeyValueParser
- (BCSKeyValueParser)initWithString:(id)a3 startIndex:(unint64_t)a4;
- (BOOL)_parseNextKeyValuePair;
- (NSDictionary)keyValuePairs;
- (unint64_t)_indexOfDelimiter:(id)a3 range:(_NSRange)a4;
- (unint64_t)_numberOfPreviousBackSlashesFromIndex:(unint64_t)a3 withinRange:(_NSRange)a4;
@end

@implementation BCSKeyValueParser

- (BCSKeyValueParser)initWithString:(id)a3 startIndex:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = BCSKeyValueParser;
  v7 = [(BCSKeyValueParser *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    string = v7->_string;
    v7->_string = v8;

    v7->_currentIndex = a4;
    v7->_stringLength = [v6 length];
    v10 = v7;
  }

  return v7;
}

- (NSDictionary)keyValuePairs
{
  keyValuePairs = self->_keyValuePairs;
  if (!keyValuePairs)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_keyValuePairs;
    self->_keyValuePairs = v4;

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
  v10 = [v9 _bcs_trimmedString];

  v11 = [v10 _bcs_unescapedString];

  v12 = [v11 length];
  v6 = v12 != 0;
  if (v12)
  {
    v13 = [(NSString *)self->_string substringWithRange:v8 + 1, v4 + ~v8];
    v14 = [v13 _bcs_unescapedString];

    [(NSMutableDictionary *)self->_keyValuePairs setObject:v14 forKeyedSubscript:v11];
    self->_currentIndex = v4 + 1;
  }

  return v6;
}

- (unint64_t)_indexOfDelimiter:(id)a3 range:(_NSRange)a4
{
  v4 = a4.location + a4.length;
  if (a4.location < a4.location + a4.length)
  {
    length = a4.length;
    location = a4.location;
    v9 = a4.location;
    do
    {
      v10 = [(NSString *)self->_string rangeOfString:a3 options:0 range:v9, v4 - v9];
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

- (unint64_t)_numberOfPreviousBackSlashesFromIndex:(unint64_t)a3 withinRange:(_NSRange)a4
{
  if (a3 >= a4.location)
  {
    v5 = a3 - a4.location;
  }

  else
  {
    v5 = 0;
  }

  v6 = a3 - 1;
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
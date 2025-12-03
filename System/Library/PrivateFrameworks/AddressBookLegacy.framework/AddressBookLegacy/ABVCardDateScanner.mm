@interface ABVCardDateScanner
+ (id)scannerWithString:(id)string;
- (ABVCardDateScanner)initWithString:(id)string;
- (BOOL)scanLeapMarker;
- (int64_t)scanCalendarUnit:(unint64_t)unit;
- (int64_t)scanComponentValueOfLength:(unint64_t)length;
- (unint64_t)lengthOfCalendarUnit:(unint64_t)unit;
@end

@implementation ABVCardDateScanner

+ (id)scannerWithString:(id)string
{
  v3 = [[self alloc] initWithString:string];

  return v3;
}

- (ABVCardDateScanner)initWithString:(id)string
{
  v6.receiver = self;
  v6.super_class = ABVCardDateScanner;
  v4 = [(ABVCardDateScanner *)&v6 init];
  if (v4)
  {
    v4->_string = [string copy];
    v4->_position = 0;
  }

  return v4;
}

- (int64_t)scanComponentValueOfLength:(unint64_t)length
{
  if ([(ABVCardDateScanner *)self isAtEnd])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  nextCharacter = [(ABVCardDateScanner *)self nextCharacter];
  position = self->_position;
  if (nextCharacter == 45)
  {
    self->_position = position + 1;
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = length + 1;
  do
  {
    --v8;
  }

  while (position + v8 > [(NSString *)self->_string length]);
  v9 = [(NSString *)self->_string substringWithRange:position, v8];
  self->_position += v8;

  return [(NSString *)v9 integerValue];
}

- (int64_t)scanCalendarUnit:(unint64_t)unit
{
  v4 = [(ABVCardDateScanner *)self lengthOfCalendarUnit:unit];

  return [(ABVCardDateScanner *)self scanComponentValueOfLength:v4];
}

- (unint64_t)lengthOfCalendarUnit:(unint64_t)unit
{
  v3 = __ROR8__(unit - 2, 1);
  if (v3 > 7)
  {
    return 0;
  }

  else
  {
    return qword_1B7F76ED0[v3];
  }
}

- (BOOL)scanLeapMarker
{
  if ([(ABVCardDateScanner *)self isAtEnd]|| [(ABVCardDateScanner *)self nextCharacter]!= 76)
  {
    return 0;
  }

  ++self->_position;
  return 1;
}

@end
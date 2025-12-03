@interface DATouchButtonTargetEvent
- (DATouchButtonTargetEvent)initWithDictionary:(id)dictionary;
@end

@implementation DATouchButtonTargetEvent

- (DATouchButtonTargetEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13 = 0;
  v12.receiver = self;
  v12.super_class = DATouchButtonTargetEvent;
  v5 = [(DASpecification *)&v12 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy dk_numberFromRequiredKey:@"eventType" lowerBound:&off_100011140 upperBound:&off_100011170 failed:&v13];
    v5->_eventType = [v6 integerValue];

    v7 = [dictionaryCopy dk_numberFromRequiredKey:@"value" lowerBound:&off_100011188 upperBound:&off_1000111A0 failed:&v13];
    value = v5->_value;
    v5->_value = v7;

    v5->_performHapticOnEvent = [dictionaryCopy dk_BOOLFromKey:@"performHapticOnEvent" defaultValue:0 failed:&v13];
    v9 = [[DAStateRange alloc] initWithDictionary:dictionaryCopy];
    range = v5->_range;
    v5->_range = v9;

    if (v13)
    {

      v5 = 0;
    }
  }

  return v5;
}

@end
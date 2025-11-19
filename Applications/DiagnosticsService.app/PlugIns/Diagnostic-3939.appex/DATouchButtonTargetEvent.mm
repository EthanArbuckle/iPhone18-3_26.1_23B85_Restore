@interface DATouchButtonTargetEvent
- (DATouchButtonTargetEvent)initWithDictionary:(id)a3;
@end

@implementation DATouchButtonTargetEvent

- (DATouchButtonTargetEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v13 = 0;
  v12.receiver = self;
  v12.super_class = DATouchButtonTargetEvent;
  v5 = [(DASpecification *)&v12 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 dk_numberFromRequiredKey:@"eventType" lowerBound:&off_100011140 upperBound:&off_100011170 failed:&v13];
    v5->_eventType = [v6 integerValue];

    v7 = [v4 dk_numberFromRequiredKey:@"value" lowerBound:&off_100011188 upperBound:&off_1000111A0 failed:&v13];
    value = v5->_value;
    v5->_value = v7;

    v5->_performHapticOnEvent = [v4 dk_BOOLFromKey:@"performHapticOnEvent" defaultValue:0 failed:&v13];
    v9 = [[DAStateRange alloc] initWithDictionary:v4];
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
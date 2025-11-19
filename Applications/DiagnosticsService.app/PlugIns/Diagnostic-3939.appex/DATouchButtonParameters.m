@interface DATouchButtonParameters
- (DATouchButtonParameters)initWithDictionary:(id)a3;
@end

@implementation DATouchButtonParameters

- (DATouchButtonParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v12 = 0;
  v11.receiver = self;
  v11.super_class = DATouchButtonParameters;
  v5 = [(DAParameters *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [NSSet setWithObject:objc_opt_class()];
    v7 = [v4 dk_arrayFromRequiredKey:@"targetEvents" types:v6 maxLength:100 failed:&v12];

    v8 = [(DASpecification *)DATouchButtonTargetEvent specificationFromArray:v7];
    targetEvents = v5->_targetEvents;
    v5->_targetEvents = v8;
  }

  if (!v5->_targetEvents || v12 == 1)
  {

    v5 = 0;
  }

  return v5;
}

@end
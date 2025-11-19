@interface DASwitchParameters
- (DASwitchParameters)initWithDictionary:(id)a3;
@end

@implementation DASwitchParameters

- (DASwitchParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v15 = 0;
  v14.receiver = self;
  v14.super_class = DASwitchParameters;
  v5 = [(DAParameters *)&v14 initWithDictionary:v4];
  if (v5)
  {
    v6 = [NSSet setWithObjects:@"on", @"off", 0];
    v7 = [v4 dk_stringFromRequiredKey:@"startingState" inSet:v6 failed:&v15];

    if ([v7 isEqualToString:@"on"])
    {
      v8 = 1;
    }

    else
    {
      if (![v7 isEqualToString:@"off"])
      {
LABEL_8:
        v9 = [NSSet setWithObject:objc_opt_class()];
        v10 = [v4 dk_arrayFromRequiredKey:@"states" types:v9 maxLength:100 failed:&v15];

        v11 = [(DASpecification *)DASwitchState specificationFromArray:v10];
        states = v5->_states;
        v5->_states = v11;

        goto LABEL_9;
      }

      v8 = 0;
    }

    v5->_startingState = v8;
    goto LABEL_8;
  }

LABEL_9:
  if (!v5->_states || v15 == 1)
  {

    v5 = 0;
  }

  return v5;
}

@end
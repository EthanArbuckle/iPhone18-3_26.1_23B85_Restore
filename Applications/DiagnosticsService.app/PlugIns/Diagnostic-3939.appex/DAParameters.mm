@interface DAParameters
- (DAParameters)initWithDictionary:(id)a3;
@end

@implementation DAParameters

- (DAParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v16 = 0;
  v15.receiver = self;
  v15.super_class = DAParameters;
  v5 = [(DASpecification *)&v15 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [v4 dk_numberFromKey:@"totalPressEvents" lowerBound:&off_100011110 upperBound:&off_100011128 defaultValue:0 failed:&v16];
  v7 = [v4 dk_numberFromKey:@"listenForInputTimeout" lowerBound:&off_1000112C0 upperBound:&off_1000112D0 defaultValue:0 failed:&v16];
  v8 = [v4 dk_numberFromKey:@"noInputTimeout" lowerBound:&off_1000112C0 upperBound:&off_1000112D0 defaultValue:0 failed:&v16];
  v9 = v8;
  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v10 && v7)
  {
    goto LABEL_10;
  }

  if (v11)
  {
    v5->_resetTimer = 1;
    v5->_totalPressEvents = [v6 intValue];
LABEL_14:
    [v9 doubleValue];
    v13 = 24;
    goto LABEL_15;
  }

  if (v6 && v7)
  {
LABEL_10:
    v5->_totalPressEvents = [v6 intValue];
LABEL_11:
    [v7 doubleValue];
    v13 = 16;
LABEL_15:
    *(&v5->super.super.isa + v13) = v12;
    goto LABEL_16;
  }

  if (v8 && v7)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v5->_totalPressEvents = [v6 intValue];
  }

  else
  {
    if (v8)
    {
      v5->_resetTimer = 1;
      v5->_totalPressEvents = 1;
      goto LABEL_14;
    }

    if (v7)
    {
      goto LABEL_11;
    }

    v5->_totalPressEvents = 1;
  }

LABEL_16:

  if (v16)
  {

    v5 = 0;
  }

LABEL_18:

  return v5;
}

@end
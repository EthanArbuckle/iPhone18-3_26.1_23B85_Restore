@interface CBSystemHealthBluetooth
- (CBSystemHealthBluetooth)init;
- (CBSystemHealthBluetooth)initWithComponentType:(unint64_t)type;
- (unint64_t)getComponentStatusWithError:(id *)error;
@end

@implementation CBSystemHealthBluetooth

- (CBSystemHealthBluetooth)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Please use initWithComponentType"];

  return 0;
}

- (CBSystemHealthBluetooth)initWithComponentType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = CBSystemHealthBluetooth;
  result = [(CBSystemHealthBluetooth *)&v5 init];
  if (result)
  {
    result->componentType = type;
  }

  return result;
}

- (unint64_t)getComponentStatusWithError:(id *)error
{
  v4 = [CBController controllerInfoAndReturnError:?];
  lastChipsetInitError = [v4 lastChipsetInitError];
  v6 = lastChipsetInitError;
  if (!lastChipsetInitError)
  {
    v8 = 2;
    goto LABEL_9;
  }

  if (error)
  {
    *error = [lastChipsetInitError copy];
  }

  code = [v6 code];
  v8 = 1;
  if (code > 310212)
  {
    if ((code - 310213) < 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (code != 310001)
  {
LABEL_6:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

@end
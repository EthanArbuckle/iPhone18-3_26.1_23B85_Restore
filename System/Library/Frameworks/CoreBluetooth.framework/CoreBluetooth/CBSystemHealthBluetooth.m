@interface CBSystemHealthBluetooth
- (CBSystemHealthBluetooth)init;
- (CBSystemHealthBluetooth)initWithComponentType:(unint64_t)a3;
- (unint64_t)getComponentStatusWithError:(id *)a3;
@end

@implementation CBSystemHealthBluetooth

- (CBSystemHealthBluetooth)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Please use initWithComponentType"];

  return 0;
}

- (CBSystemHealthBluetooth)initWithComponentType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CBSystemHealthBluetooth;
  result = [(CBSystemHealthBluetooth *)&v5 init];
  if (result)
  {
    result->componentType = a3;
  }

  return result;
}

- (unint64_t)getComponentStatusWithError:(id *)a3
{
  v4 = [CBController controllerInfoAndReturnError:?];
  v5 = [v4 lastChipsetInitError];
  v6 = v5;
  if (!v5)
  {
    v8 = 2;
    goto LABEL_9;
  }

  if (a3)
  {
    *a3 = [v5 copy];
  }

  v7 = [v6 code];
  v8 = 1;
  if (v7 > 310212)
  {
    if ((v7 - 310213) < 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (v7 != 310001)
  {
LABEL_6:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

@end
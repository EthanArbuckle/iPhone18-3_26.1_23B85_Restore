@interface AKRatchetState
- (AKRatchetState)initWithRawState:(unint64_t)a3 data:(id)a4;
- (id)toString:(unint64_t)a3;
@end

@implementation AKRatchetState

- (AKRatchetState)initWithRawState:(unint64_t)a3 data:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v12;
  v12 = 0;
  v8.receiver = v4;
  v8.super_class = AKRatchetState;
  v7 = [(AKRatchetState *)&v8 init];
  v12 = v7;
  objc_storeStrong(&v12, v7);
  if (v7)
  {
    v12->_rawState = v10;
    objc_storeStrong(&v12->_data, location);
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (id)toString:(unint64_t)a3
{
  if (a3)
  {
    switch(a3)
    {
      case 1uLL:
        v4 = MEMORY[0x1E69E5928](@"waitingCoolOff");
        break;
      case 2uLL:
        v4 = MEMORY[0x1E69E5928](@"waitingSecondAuth");
        break;
      case 3uLL:
        v4 = MEMORY[0x1E69E5928](@"ready");
        break;
      case 4uLL:
        v4 = MEMORY[0x1E69E5928](@"collapsed");
        break;
      default:
        v4 = MEMORY[0x1E69E5928](@"unknown");
        break;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E5928](@"initial");
  }

  return v4;
}

@end
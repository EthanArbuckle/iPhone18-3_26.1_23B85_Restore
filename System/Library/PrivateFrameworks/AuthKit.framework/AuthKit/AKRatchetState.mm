@interface AKRatchetState
- (AKRatchetState)initWithRawState:(unint64_t)state data:(id)data;
- (id)toString:(unint64_t)string;
@end

@implementation AKRatchetState

- (AKRatchetState)initWithRawState:(unint64_t)state data:(id)data
{
  selfCopy = self;
  v11 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, data);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKRatchetState;
  v7 = [(AKRatchetState *)&v8 init];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    selfCopy->_rawState = stateCopy;
    objc_storeStrong(&selfCopy->_data, location);
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)toString:(unint64_t)string
{
  if (string)
  {
    switch(string)
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
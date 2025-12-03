@interface TCControlLabel
+ (TCControlLabel)buttonA;
+ (TCControlLabel)buttonB;
+ (TCControlLabel)buttonLeftShoulder;
+ (TCControlLabel)buttonLeftTrigger;
+ (TCControlLabel)buttonMenu;
+ (TCControlLabel)buttonOptions;
+ (TCControlLabel)buttonRightShoulder;
+ (TCControlLabel)buttonRightTrigger;
+ (TCControlLabel)buttonX;
+ (TCControlLabel)buttonY;
+ (TCControlLabel)directionPad;
+ (TCControlLabel)labelWithName:(id)name role:(int64_t)role;
+ (TCControlLabel)leftThumbstick;
+ (TCControlLabel)leftThumbstickButton;
+ (TCControlLabel)rightThumbstick;
+ (TCControlLabel)rightThumbstickButton;
- (BOOL)isEqual:(id)equal;
- (GCSJSONObject)jsonObject;
- (TCControlLabel)initWithJSONObject:(id)object;
- (TCControlLabel)initWithName:(id)name role:(int64_t)role;
@end

@implementation TCControlLabel

- (TCControlLabel)initWithName:(id)name role:(int64_t)role
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = TCControlLabel;
  v8 = [(TCControlLabel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_role = role;
  }

  return v9;
}

+ (TCControlLabel)labelWithName:(id)name role:(int64_t)role
{
  nameCopy = name;
  v6 = [[TCControlLabel alloc] initWithName:nameCopy role:role];

  return v6;
}

+ (TCControlLabel)buttonA
{
  if (buttonA_onceToken != -1)
  {
    +[TCControlLabel buttonA];
  }

  v3 = buttonA__label;

  return v3;
}

uint64_t __25__TCControlLabel_buttonA__block_invoke()
{
  buttonA__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAF78] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonB
{
  if (buttonB_onceToken != -1)
  {
    +[TCControlLabel buttonB];
  }

  v3 = buttonB__label;

  return v3;
}

uint64_t __25__TCControlLabel_buttonB__block_invoke()
{
  buttonB__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAF80] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonX
{
  if (buttonX_onceToken != -1)
  {
    +[TCControlLabel buttonX];
  }

  v3 = buttonX__label;

  return v3;
}

uint64_t __25__TCControlLabel_buttonX__block_invoke()
{
  buttonX__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFA0] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonY
{
  if (buttonY_onceToken != -1)
  {
    +[TCControlLabel buttonY];
  }

  v3 = buttonY__label;

  return v3;
}

uint64_t __25__TCControlLabel_buttonY__block_invoke()
{
  buttonY__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFA8] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonMenu
{
  if (buttonMenu_onceToken != -1)
  {
    +[TCControlLabel buttonMenu];
  }

  v3 = buttonMenu__label;

  return v3;
}

uint64_t __28__TCControlLabel_buttonMenu__block_invoke()
{
  buttonMenu__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAF88] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonOptions
{
  if (buttonOptions_onceToken != -1)
  {
    +[TCControlLabel buttonOptions];
  }

  v3 = buttonOptions__label;

  return v3;
}

uint64_t __31__TCControlLabel_buttonOptions__block_invoke()
{
  buttonOptions__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAF90] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonLeftShoulder
{
  if (buttonLeftShoulder_onceToken != -1)
  {
    +[TCControlLabel buttonLeftShoulder];
  }

  v3 = buttonLeftShoulder__label;

  return v3;
}

uint64_t __36__TCControlLabel_buttonLeftShoulder__block_invoke()
{
  buttonLeftShoulder__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFC0] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonLeftTrigger
{
  if (buttonLeftTrigger_onceToken != -1)
  {
    +[TCControlLabel buttonLeftTrigger];
  }

  v3 = buttonLeftTrigger__label;

  return v3;
}

uint64_t __35__TCControlLabel_buttonLeftTrigger__block_invoke()
{
  buttonLeftTrigger__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFD8] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonRightShoulder
{
  if (buttonRightShoulder_onceToken != -1)
  {
    +[TCControlLabel buttonRightShoulder];
  }

  v3 = buttonRightShoulder__label;

  return v3;
}

uint64_t __37__TCControlLabel_buttonRightShoulder__block_invoke()
{
  buttonRightShoulder__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFE8] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)buttonRightTrigger
{
  if (buttonRightTrigger_onceToken != -1)
  {
    +[TCControlLabel buttonRightTrigger];
  }

  v3 = buttonRightTrigger__label;

  return v3;
}

uint64_t __36__TCControlLabel_buttonRightTrigger__block_invoke()
{
  buttonRightTrigger__label = [TCControlLabel labelWithName:*MEMORY[0x277CCB000] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)leftThumbstick
{
  if (leftThumbstick_onceToken != -1)
  {
    +[TCControlLabel leftThumbstick];
  }

  v3 = leftThumbstick__label;

  return v3;
}

uint64_t __32__TCControlLabel_leftThumbstick__block_invoke()
{
  leftThumbstick__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFC8] role:1];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)leftThumbstickButton
{
  if (leftThumbstickButton_onceToken != -1)
  {
    +[TCControlLabel leftThumbstickButton];
  }

  v3 = leftThumbstickButton__label;

  return v3;
}

uint64_t __38__TCControlLabel_leftThumbstickButton__block_invoke()
{
  leftThumbstickButton__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFD0] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)rightThumbstick
{
  if (rightThumbstick_onceToken != -1)
  {
    +[TCControlLabel rightThumbstick];
  }

  v3 = rightThumbstick__label;

  return v3;
}

uint64_t __33__TCControlLabel_rightThumbstick__block_invoke()
{
  rightThumbstick__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFF0] role:1];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)rightThumbstickButton
{
  if (rightThumbstickButton_onceToken != -1)
  {
    +[TCControlLabel rightThumbstickButton];
  }

  v3 = rightThumbstickButton__label;

  return v3;
}

uint64_t __39__TCControlLabel_rightThumbstickButton__block_invoke()
{
  rightThumbstickButton__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFF8] role:0];

  return MEMORY[0x2821F96F8]();
}

+ (TCControlLabel)directionPad
{
  if (directionPad_onceToken != -1)
  {
    +[TCControlLabel directionPad];
  }

  v3 = directionPad__label;

  return v3;
}

uint64_t __30__TCControlLabel_directionPad__block_invoke()
{
  directionPad__label = [TCControlLabel labelWithName:*MEMORY[0x277CCAFB0] role:1];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TCControlLabel;
    if ([(TCControlLabel *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      name = [(TCControlLabel *)equalCopy name];
      v6 = [name isEqualToString:self->_name];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (TCControlLabel)initWithJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v6 = [v5 objectForKey:@"name"];
    v7 = [v5 objectForKey:@"role"];

    self = -[TCControlLabel initWithName:role:](self, "initWithName:role:", v6, [v7 unsignedIntValue]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GCSJSONObject)jsonObject
{
  v9[2] = *MEMORY[0x277D85DE8];
  name = self->_name;
  role = self->_role;
  v8[0] = @"name";
  v8[1] = @"role";
  v9[0] = name;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:role];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end
@interface AXSwitchGameControlButtonPress
- (AXSwitchGameControlButtonPress)initWithCoder:(id)coder;
- (AXSwitchGameControlButtonPress)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXSwitchGameControlButtonPress

- (AXSwitchGameControlButtonPress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AXSwitchGameControlButtonPress;
  v5 = [(AXSwitchGameControlButtonPress *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AXSwitchGameControlButtonPressButton"];
    v5->_button = [v6 unsignedIntegerValue];

    v5->_toggle = [coderCopy decodeBoolForKey:@"AXSwitchGameControlButtonPressToggle"];
    [coderCopy decodeFloatForKey:@"AXSwitchGameControlButtonPressXMagnitude"];
    v5->_xMagnitude = v7;
    [coderCopy decodeFloatForKey:@"AXSwitchGameControlButtonPressYMagnitude"];
    v5->_yMagnitude = v8;
    v5->_joystickPress = [coderCopy decodeBoolForKey:@"AXSwitchGameControlButtonPressJoystickPress"];
  }

  return v5;
}

- (AXSwitchGameControlButtonPress)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = AXSwitchGameControlButtonPress;
  v5 = [(AXSwitchGameControlButtonPress *)&v14 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"AXSwitchGameControlButtonPressButton"];
    v5->_button = [v6 unsignedIntegerValue];

    v7 = [representationCopy objectForKeyedSubscript:@"AXSwitchGameControlButtonPressToggle"];
    v5->_toggle = [v7 BOOLValue];

    v8 = [representationCopy objectForKeyedSubscript:@"AXSwitchGameControlButtonPressXMagnitude"];
    [v8 floatValue];
    v5->_xMagnitude = v9;

    v10 = [representationCopy objectForKeyedSubscript:@"AXSwitchGameControlButtonPressYMagnitude"];
    [v10 floatValue];
    v5->_yMagnitude = v11;

    v12 = [representationCopy objectForKeyedSubscript:@"AXSwitchGameControlButtonPressJoystickPress"];
    v5->_joystickPress = [v12 BOOLValue];
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"AXSwitchGameControlButtonPressButton";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXSwitchGameControlButtonPress button](self, "button")}];
  v13[0] = v3;
  v12[1] = @"AXSwitchGameControlButtonPressToggle";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSwitchGameControlButtonPress isToggle](self, "isToggle")}];
  v13[1] = v4;
  v12[2] = @"AXSwitchGameControlButtonPressXMagnitude";
  v5 = MEMORY[0x1E696AD98];
  [(AXSwitchGameControlButtonPress *)self xMagnitude];
  v6 = [v5 numberWithFloat:?];
  v13[2] = v6;
  v12[3] = @"AXSwitchGameControlButtonPressYMagnitude";
  v7 = MEMORY[0x1E696AD98];
  [(AXSwitchGameControlButtonPress *)self yMagnitude];
  v8 = [v7 numberWithFloat:?];
  v13[3] = v8;
  v12[4] = @"AXSwitchGameControlButtonPressJoystickPress";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSwitchGameControlButtonPress isJoystickPress](self, "isJoystickPress")}];
  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v5 = [v4 numberWithUnsignedInteger:{-[AXSwitchGameControlButtonPress button](self, "button")}];
  [coderCopy encodeObject:v5 forKey:@"AXSwitchGameControlButtonPressButton"];

  [coderCopy encodeBool:-[AXSwitchGameControlButtonPress isToggle](self forKey:{"isToggle"), @"AXSwitchGameControlButtonPressToggle"}];
  [(AXSwitchGameControlButtonPress *)self xMagnitude];
  [coderCopy encodeFloat:@"AXSwitchGameControlButtonPressXMagnitude" forKey:?];
  [(AXSwitchGameControlButtonPress *)self yMagnitude];
  [coderCopy encodeFloat:@"AXSwitchGameControlButtonPressYMagnitude" forKey:?];
  [coderCopy encodeBool:-[AXSwitchGameControlButtonPress isJoystickPress](self forKey:{"isJoystickPress"), @"AXSwitchGameControlButtonPressJoystickPress"}];
}

@end
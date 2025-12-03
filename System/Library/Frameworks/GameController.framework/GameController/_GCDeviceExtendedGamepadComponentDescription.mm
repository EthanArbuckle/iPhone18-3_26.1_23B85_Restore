@interface _GCDeviceExtendedGamepadComponentDescription
- (id)createWithContext:(id)context;
@end

@implementation _GCDeviceExtendedGamepadComponentDescription

- (id)createWithContext:(id)context
{
  v70 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  bzero(v68, 0x638uLL);
  v4 = [GCExtendedGamepad alloc];
  identifier = [(_GCDevicePhysicalInputComponentDescription *)self identifier];
  v6 = [(GCExtendedGamepad *)v4 initWithIdentifier:identifier info:v68];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  elementDescriptions = [(_GCDevicePhysicalInputComponentDescription *)self elementDescriptions];
  v8 = [elementDescriptions countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v8)
  {
    v9 = *v65;
    do
    {
      v10 = 0;
      do
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(elementDescriptions);
        }

        v11 = *(*(&v64 + 1) + 8 * v10);
        name = [v11 name];
        v13 = [name isEqualToString:@"Button A"];

        if (v13)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_button0"];
LABEL_38:

          goto LABEL_39;
        }

        name2 = [v11 name];
        v16 = [name2 isEqualToString:@"Button B"];

        if (v16)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_button1"];
          goto LABEL_38;
        }

        name3 = [v11 name];
        v18 = [name3 isEqualToString:@"Button X"];

        if (v18)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_button2"];
          goto LABEL_38;
        }

        name4 = [v11 name];
        v20 = [name4 isEqualToString:@"Button Y"];

        if (v20)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_button3"];
          goto LABEL_38;
        }

        name5 = [v11 name];
        v22 = [name5 isEqualToString:@"Left Shoulder"];

        if (v22)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_leftShoulder"];
          goto LABEL_38;
        }

        name6 = [v11 name];
        v24 = [name6 isEqualToString:@"Right Shoulder"];

        if (v24)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_rightShoulder"];
          goto LABEL_38;
        }

        name7 = [v11 name];
        v26 = [name7 isEqualToString:@"Left Trigger"];

        if (v26)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_leftTrigger"];
          goto LABEL_38;
        }

        name8 = [v11 name];
        v28 = [name8 isEqualToString:@"Right Trigger"];

        if (v28)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_rightTrigger"];
          goto LABEL_38;
        }

        name9 = [v11 name];
        v30 = [name9 isEqualToString:@"Left Thumbstick Button"];

        if (v30)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_leftThumbstickButton"];
          goto LABEL_38;
        }

        name10 = [v11 name];
        v32 = [name10 isEqualToString:@"Right Thumbstick Button"];

        if (v32)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_rightThumbstickButton"];
          goto LABEL_38;
        }

        name11 = [v11 name];
        v34 = [name11 isEqualToString:@"Direction Pad"];

        if (v34)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _directionPadWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_dpad"];
          goto LABEL_38;
        }

        name12 = [v11 name];
        v36 = [name12 isEqualToString:@"Left Thumbstick"];

        if (v36)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _directionPadWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_leftThumbstick"];
          goto LABEL_38;
        }

        name13 = [v11 name];
        v38 = [name13 isEqualToString:@"Right Thumbstick"];

        if (v38)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _directionPadWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_rightThumbstick"];
          goto LABEL_38;
        }

        name14 = [v11 name];
        v40 = [name14 isEqualToString:@"Button Menu"];

        if (v40)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_buttonMenu"];
          goto LABEL_38;
        }

        name15 = [v11 name];
        v42 = [name15 isEqualToString:@"Button Options"];

        if (v42)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_buttonOptions"];
          goto LABEL_38;
        }

        name16 = [v11 name];
        v44 = [name16 isEqualToString:@"Button Home"];

        if (v44)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_buttonHome"];
          goto LABEL_38;
        }

        name17 = [v11 name];
        v46 = [name17 isEqualToString:@"Left Bumper"];

        if (v46)
        {
          goto LABEL_48;
        }

        name18 = [v11 name];
        v48 = [name18 isEqualToString:@"Right Bumper"];

        if (v48)
        {
          goto LABEL_48;
        }

        name19 = [v11 name];
        v50 = [name19 isEqualToString:@"Back Left Button 0"];

        if (v50)
        {
          goto LABEL_48;
        }

        name20 = [v11 name];
        v52 = [name20 isEqualToString:@"Back Right Button 0"];

        if (v52)
        {
          goto LABEL_48;
        }

        name21 = [v11 name];
        v54 = [name21 isEqualToString:@"Back Left Button 1"];

        if (v54 & 1) != 0 || ([v11 name], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "isEqualToString:", @"Back Right Button 1"), v55, (v56) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
LABEL_48:
          v57 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = [(GCPhysicalInputProfile *)v6 _directionPadWithDescription:v11];
          }
        }

LABEL_39:
        ++v10;
      }

      while (v8 != v10);
      v59 = [elementDescriptions countByEnumeratingWithState:&v64 objects:v69 count:16];
      v8 = v59;
    }

    while (v59);
  }

  for (i = 0; i != 1584; i += 72)
  {
    __destructor_8_s0_s48_s56_s64(&v68[i]);
  }

  v61 = *MEMORY[0x1E69E9840];

  return v6;
}

@end
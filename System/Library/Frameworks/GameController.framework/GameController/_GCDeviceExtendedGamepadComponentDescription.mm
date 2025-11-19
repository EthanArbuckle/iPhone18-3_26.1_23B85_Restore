@interface _GCDeviceExtendedGamepadComponentDescription
- (id)createWithContext:(id)a3;
@end

@implementation _GCDeviceExtendedGamepadComponentDescription

- (id)createWithContext:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v63 = a3;
  bzero(v68, 0x638uLL);
  v4 = [GCExtendedGamepad alloc];
  v5 = [(_GCDevicePhysicalInputComponentDescription *)self identifier];
  v6 = [(GCExtendedGamepad *)v4 initWithIdentifier:v5 info:v68];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v7 = [(_GCDevicePhysicalInputComponentDescription *)self elementDescriptions];
  v8 = [v7 countByEnumeratingWithState:&v64 objects:v69 count:16];
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
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v64 + 1) + 8 * v10);
        v12 = [v11 name];
        v13 = [v12 isEqualToString:@"Button A"];

        if (v13)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_button0"];
LABEL_38:

          goto LABEL_39;
        }

        v15 = [v11 name];
        v16 = [v15 isEqualToString:@"Button B"];

        if (v16)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_button1"];
          goto LABEL_38;
        }

        v17 = [v11 name];
        v18 = [v17 isEqualToString:@"Button X"];

        if (v18)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_button2"];
          goto LABEL_38;
        }

        v19 = [v11 name];
        v20 = [v19 isEqualToString:@"Button Y"];

        if (v20)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_button3"];
          goto LABEL_38;
        }

        v21 = [v11 name];
        v22 = [v21 isEqualToString:@"Left Shoulder"];

        if (v22)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_leftShoulder"];
          goto LABEL_38;
        }

        v23 = [v11 name];
        v24 = [v23 isEqualToString:@"Right Shoulder"];

        if (v24)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_rightShoulder"];
          goto LABEL_38;
        }

        v25 = [v11 name];
        v26 = [v25 isEqualToString:@"Left Trigger"];

        if (v26)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_leftTrigger"];
          goto LABEL_38;
        }

        v27 = [v11 name];
        v28 = [v27 isEqualToString:@"Right Trigger"];

        if (v28)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_rightTrigger"];
          goto LABEL_38;
        }

        v29 = [v11 name];
        v30 = [v29 isEqualToString:@"Left Thumbstick Button"];

        if (v30)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_leftThumbstickButton"];
          goto LABEL_38;
        }

        v31 = [v11 name];
        v32 = [v31 isEqualToString:@"Right Thumbstick Button"];

        if (v32)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_rightThumbstickButton"];
          goto LABEL_38;
        }

        v33 = [v11 name];
        v34 = [v33 isEqualToString:@"Direction Pad"];

        if (v34)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _directionPadWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_dpad"];
          goto LABEL_38;
        }

        v35 = [v11 name];
        v36 = [v35 isEqualToString:@"Left Thumbstick"];

        if (v36)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _directionPadWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_leftThumbstick"];
          goto LABEL_38;
        }

        v37 = [v11 name];
        v38 = [v37 isEqualToString:@"Right Thumbstick"];

        if (v38)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _directionPadWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_rightThumbstick"];
          goto LABEL_38;
        }

        v39 = [v11 name];
        v40 = [v39 isEqualToString:@"Button Menu"];

        if (v40)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_buttonMenu"];
          goto LABEL_38;
        }

        v41 = [v11 name];
        v42 = [v41 isEqualToString:@"Button Options"];

        if (v42)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_buttonOptions"];
          goto LABEL_38;
        }

        v43 = [v11 name];
        v44 = [v43 isEqualToString:@"Button Home"];

        if (v44)
        {
          v14 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v11];
          [(GCExtendedGamepad *)v6 setValue:v14 forKey:@"_buttonHome"];
          goto LABEL_38;
        }

        v45 = [v11 name];
        v46 = [v45 isEqualToString:@"Left Bumper"];

        if (v46)
        {
          goto LABEL_48;
        }

        v47 = [v11 name];
        v48 = [v47 isEqualToString:@"Right Bumper"];

        if (v48)
        {
          goto LABEL_48;
        }

        v49 = [v11 name];
        v50 = [v49 isEqualToString:@"Back Left Button 0"];

        if (v50)
        {
          goto LABEL_48;
        }

        v51 = [v11 name];
        v52 = [v51 isEqualToString:@"Back Right Button 0"];

        if (v52)
        {
          goto LABEL_48;
        }

        v53 = [v11 name];
        v54 = [v53 isEqualToString:@"Back Left Button 1"];

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
      v59 = [v7 countByEnumeratingWithState:&v64 objects:v69 count:16];
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
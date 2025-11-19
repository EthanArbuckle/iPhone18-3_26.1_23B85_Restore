@interface _HMCameraSettingsControl
- (_HMCameraSettingsControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4 service:(id)a5;
@end

@implementation _HMCameraSettingsControl

- (_HMCameraSettingsControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4 service:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v41.receiver = self;
  v41.super_class = _HMCameraSettingsControl;
  v9 = [(_HMCameraControl *)&v41 initWithCameraProfile:a3 profileUniqueIdentifier:a4];
  if (v9)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = [v8 characteristics];
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [v15 characteristicType];
          v17 = [v16 isEqualToString:@"0000011B-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__nightVision;
          if (v17)
          {
            goto LABEL_16;
          }

          v19 = [v15 characteristicType];
          v20 = [v19 isEqualToString:@"0000007B-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__targetHorizontalTilt;
          if (v20)
          {
            goto LABEL_16;
          }

          v21 = [v15 characteristicType];
          v22 = [v21 isEqualToString:@"0000006C-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__currentHorizontalTilt;
          if (v22)
          {
            goto LABEL_16;
          }

          v23 = [v15 characteristicType];
          v24 = [v23 isEqualToString:@"0000007D-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__targetVerticalTilt;
          if (v24)
          {
            goto LABEL_16;
          }

          v25 = [v15 characteristicType];
          v26 = [v25 isEqualToString:@"0000006E-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__currentVerticalTilt;
          if (v26)
          {
            goto LABEL_16;
          }

          v27 = [v15 characteristicType];
          v28 = [v27 isEqualToString:@"0000011C-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__opticalZoom;
          if (v28)
          {
            goto LABEL_16;
          }

          v29 = [v15 characteristicType];
          v30 = [v29 isEqualToString:@"0000011D-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__digitalZoom;
          if (v30)
          {
            goto LABEL_16;
          }

          v31 = [v15 characteristicType];
          v32 = [v31 isEqualToString:@"0000011E-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__imageRotation;
          if ((v32 & 1) == 0)
          {
            v33 = [v15 characteristicType];
            v34 = [v33 isEqualToString:@"0000011F-0000-1000-8000-0026BB765291"];

            v18 = &OBJC_IVAR____HMCameraSettingsControl__imageMirroring;
            if (!v34)
            {
              continue;
            }
          }

LABEL_16:
          objc_storeStrong((&v9->super.super.isa + *v18), v15);
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v12);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return v9;
}

@end
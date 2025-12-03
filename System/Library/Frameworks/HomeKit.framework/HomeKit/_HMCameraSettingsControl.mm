@interface _HMCameraSettingsControl
- (_HMCameraSettingsControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier service:(id)service;
@end

@implementation _HMCameraSettingsControl

- (_HMCameraSettingsControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier service:(id)service
{
  v43 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v41.receiver = self;
  v41.super_class = _HMCameraSettingsControl;
  v9 = [(_HMCameraControl *)&v41 initWithCameraProfile:profile profileUniqueIdentifier:identifier];
  if (v9)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    characteristics = [serviceCopy characteristics];
    v11 = [characteristics countByEnumeratingWithState:&v37 objects:v42 count:16];
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
            objc_enumerationMutation(characteristics);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          characteristicType = [v15 characteristicType];
          v17 = [characteristicType isEqualToString:@"0000011B-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__nightVision;
          if (v17)
          {
            goto LABEL_16;
          }

          characteristicType2 = [v15 characteristicType];
          v20 = [characteristicType2 isEqualToString:@"0000007B-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__targetHorizontalTilt;
          if (v20)
          {
            goto LABEL_16;
          }

          characteristicType3 = [v15 characteristicType];
          v22 = [characteristicType3 isEqualToString:@"0000006C-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__currentHorizontalTilt;
          if (v22)
          {
            goto LABEL_16;
          }

          characteristicType4 = [v15 characteristicType];
          v24 = [characteristicType4 isEqualToString:@"0000007D-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__targetVerticalTilt;
          if (v24)
          {
            goto LABEL_16;
          }

          characteristicType5 = [v15 characteristicType];
          v26 = [characteristicType5 isEqualToString:@"0000006E-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__currentVerticalTilt;
          if (v26)
          {
            goto LABEL_16;
          }

          characteristicType6 = [v15 characteristicType];
          v28 = [characteristicType6 isEqualToString:@"0000011C-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__opticalZoom;
          if (v28)
          {
            goto LABEL_16;
          }

          characteristicType7 = [v15 characteristicType];
          v30 = [characteristicType7 isEqualToString:@"0000011D-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__digitalZoom;
          if (v30)
          {
            goto LABEL_16;
          }

          characteristicType8 = [v15 characteristicType];
          v32 = [characteristicType8 isEqualToString:@"0000011E-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraSettingsControl__imageRotation;
          if ((v32 & 1) == 0)
          {
            characteristicType9 = [v15 characteristicType];
            v34 = [characteristicType9 isEqualToString:@"0000011F-0000-1000-8000-0026BB765291"];

            v18 = &OBJC_IVAR____HMCameraSettingsControl__imageMirroring;
            if (!v34)
            {
              continue;
            }
          }

LABEL_16:
          objc_storeStrong((&v9->super.super.isa + *v18), v15);
        }

        v12 = [characteristics countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v12);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return v9;
}

@end
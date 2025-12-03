@interface _HMCameraAudioControl
- (_HMCameraAudioControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier service:(id)service;
@end

@implementation _HMCameraAudioControl

- (_HMCameraAudioControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier service:(id)service
{
  v29 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v27.receiver = self;
  v27.super_class = _HMCameraAudioControl;
  v9 = [(_HMCameraControl *)&v27 initWithCameraProfile:profile profileUniqueIdentifier:identifier];
  if (v9)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    characteristics = [serviceCopy characteristics];
    v11 = [characteristics countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(characteristics);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          characteristicType = [v15 characteristicType];
          v17 = [characteristicType isEqualToString:@"0000011A-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraAudioControl__mute;
          if ((v17 & 1) == 0)
          {
            characteristicType2 = [v15 characteristicType];
            v20 = [characteristicType2 isEqualToString:@"00000119-0000-1000-8000-0026BB765291"];

            v18 = &OBJC_IVAR____HMCameraAudioControl__volume;
            if (!v20)
            {
              continue;
            }
          }

          objc_storeStrong((&v9->super.super.isa + *v18), v15);
        }

        v12 = [characteristics countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

@end
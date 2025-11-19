@interface _HMCameraAudioControl
- (_HMCameraAudioControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4 service:(id)a5;
@end

@implementation _HMCameraAudioControl

- (_HMCameraAudioControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4 service:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v27.receiver = self;
  v27.super_class = _HMCameraAudioControl;
  v9 = [(_HMCameraControl *)&v27 initWithCameraProfile:a3 profileUniqueIdentifier:a4];
  if (v9)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v8 characteristics];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 characteristicType];
          v17 = [v16 isEqualToString:@"0000011A-0000-1000-8000-0026BB765291"];

          v18 = &OBJC_IVAR____HMCameraAudioControl__mute;
          if ((v17 & 1) == 0)
          {
            v19 = [v15 characteristicType];
            v20 = [v19 isEqualToString:@"00000119-0000-1000-8000-0026BB765291"];

            v18 = &OBJC_IVAR____HMCameraAudioControl__volume;
            if (!v20)
            {
              continue;
            }
          }

          objc_storeStrong((&v9->super.super.isa + *v18), v15);
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

@end
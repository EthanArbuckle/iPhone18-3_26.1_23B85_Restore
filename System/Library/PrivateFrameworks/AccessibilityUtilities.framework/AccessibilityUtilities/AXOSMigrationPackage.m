@interface AXOSMigrationPackage
- (AXOSMigrationPackage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXOSMigrationPackage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXOSMigrationPackage *)self screenReader];
  [v4 encodeObject:v5 forKey:@"screenReader"];

  v6 = [(AXOSMigrationPackage *)self textSize];
  [v4 encodeObject:v6 forKey:@"textSize"];

  v7 = [(AXOSMigrationPackage *)self boldText];
  [v4 encodeObject:v7 forKey:@"boldText"];

  v8 = [(AXOSMigrationPackage *)self grayscaleFilter];
  [v4 encodeObject:v8 forKey:@"grayscaleFilter"];

  v9 = [(AXOSMigrationPackage *)self redGreenFilter];
  [v4 encodeObject:v9 forKey:@"redGreenFilter"];

  v10 = [(AXOSMigrationPackage *)self greenRedFilter];
  [v4 encodeObject:v10 forKey:@"greenRedFilter"];

  v11 = [(AXOSMigrationPackage *)self blueYellowFilter];
  [v4 encodeObject:v11 forKey:@"blueYellowFilter"];

  v12 = [(AXOSMigrationPackage *)self darkMode];
  [v4 encodeObject:v12 forKey:@"darkMode"];

  v13 = [(AXOSMigrationPackage *)self zoom];
  [v4 encodeObject:v13 forKey:@"zoom"];

  v14 = [(AXOSMigrationPackage *)self speakSelection];
  [v4 encodeObject:v14 forKey:@"speakSelection"];

  v15 = [(AXOSMigrationPackage *)self voiceControl];
  [v4 encodeObject:v15 forKey:@"voiceControl"];

  v16 = [(AXOSMigrationPackage *)self powerButtonEndsCall];
  [v4 encodeObject:v16 forKey:@"powerButtonEndsCall"];

  v17 = [(AXOSMigrationPackage *)self autoRotateScreen];
  [v4 encodeObject:v17 forKey:@"autoRotateScreen"];

  v18 = [(AXOSMigrationPackage *)self liveCaptions];
  [v4 encodeObject:v18 forKey:@"liveCaptions"];

  v19 = [(AXOSMigrationPackage *)self liveTranscribe];
  [v4 encodeObject:v19 forKey:@"liveTranscribe"];

  v20 = [(AXOSMigrationPackage *)self audioDescription];
  [v4 encodeObject:v20 forKey:@"audioDescription"];

  v21 = [(AXOSMigrationPackage *)self flashForAlerts];
  [v4 encodeObject:v21 forKey:@"flashForAlerts"];

  v22 = [(AXOSMigrationPackage *)self monoAudio];
  [v4 encodeObject:v22 forKey:@"monoAudio"];

  v23 = [(AXOSMigrationPackage *)self audioBalance];
  [v4 encodeObject:v23 forKey:@"audioBalance"];

  v24 = [(AXOSMigrationPackage *)self preferCaptionsSDH];
  [v4 encodeObject:v24 forKey:@"preferCaptionsSDH"];

  v25 = [(AXOSMigrationPackage *)self captionStyles];
  [v4 encodeObject:v25 forKey:@"captionStyles"];
}

- (AXOSMigrationPackage)initWithCoder:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AXOSMigrationPackage;
  v3 = a3;
  v4 = [(AXOSMigrationPackage *)&v30 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"screenReader"];
  [(AXOSMigrationPackage *)v4 setScreenReader:v5];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textSize"];
  [(AXOSMigrationPackage *)v4 setTextSize:v6];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"boldText"];
  [(AXOSMigrationPackage *)v4 setBoldText:v7];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"grayscaleFilter"];
  [(AXOSMigrationPackage *)v4 setGrayscaleFilter:v8];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"redGreenFilter"];
  [(AXOSMigrationPackage *)v4 setRedGreenFilter:v9];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"greenRedFilter"];
  [(AXOSMigrationPackage *)v4 setGreenRedFilter:v10];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"blueYellowFilter"];
  [(AXOSMigrationPackage *)v4 setBlueYellowFilter:v11];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"darkMode"];
  [(AXOSMigrationPackage *)v4 setDarkMode:v12];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"zoom"];
  [(AXOSMigrationPackage *)v4 setZoom:v13];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"speakSelection"];
  [(AXOSMigrationPackage *)v4 setSpeakSelection:v14];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"voiceControl"];
  [(AXOSMigrationPackage *)v4 setVoiceControl:v15];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"powerButtonEndsCall"];
  [(AXOSMigrationPackage *)v4 setPowerButtonEndsCall:v16];

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"autoRotateScreen"];
  [(AXOSMigrationPackage *)v4 setAutoRotateScreen:v17];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"liveCaptions"];
  [(AXOSMigrationPackage *)v4 setLiveCaptions:v18];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"liveTranscribe"];
  [(AXOSMigrationPackage *)v4 setLiveTranscribe:v19];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"audioDescription"];
  [(AXOSMigrationPackage *)v4 setAudioDescription:v20];

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"flashForAlerts"];
  [(AXOSMigrationPackage *)v4 setFlashForAlerts:v21];

  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"monoAudio"];
  [(AXOSMigrationPackage *)v4 setMonoAudio:v22];

  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"audioBalance"];
  [(AXOSMigrationPackage *)v4 setAudioBalance:v23];

  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"preferCaptionsSDH"];
  [(AXOSMigrationPackage *)v4 setPreferCaptionsSDH:v24];

  v25 = MEMORY[0x1E695DFD8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v27 = [v25 setWithArray:v26];
  v28 = [v3 decodeObjectOfClasses:v27 forKey:@"captionStyles"];

  [(AXOSMigrationPackage *)v4 setCaptionStyles:v28];
  return v4;
}

@end
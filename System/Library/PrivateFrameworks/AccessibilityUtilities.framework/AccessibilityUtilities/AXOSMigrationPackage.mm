@interface AXOSMigrationPackage
- (AXOSMigrationPackage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXOSMigrationPackage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  screenReader = [(AXOSMigrationPackage *)self screenReader];
  [coderCopy encodeObject:screenReader forKey:@"screenReader"];

  textSize = [(AXOSMigrationPackage *)self textSize];
  [coderCopy encodeObject:textSize forKey:@"textSize"];

  boldText = [(AXOSMigrationPackage *)self boldText];
  [coderCopy encodeObject:boldText forKey:@"boldText"];

  grayscaleFilter = [(AXOSMigrationPackage *)self grayscaleFilter];
  [coderCopy encodeObject:grayscaleFilter forKey:@"grayscaleFilter"];

  redGreenFilter = [(AXOSMigrationPackage *)self redGreenFilter];
  [coderCopy encodeObject:redGreenFilter forKey:@"redGreenFilter"];

  greenRedFilter = [(AXOSMigrationPackage *)self greenRedFilter];
  [coderCopy encodeObject:greenRedFilter forKey:@"greenRedFilter"];

  blueYellowFilter = [(AXOSMigrationPackage *)self blueYellowFilter];
  [coderCopy encodeObject:blueYellowFilter forKey:@"blueYellowFilter"];

  darkMode = [(AXOSMigrationPackage *)self darkMode];
  [coderCopy encodeObject:darkMode forKey:@"darkMode"];

  zoom = [(AXOSMigrationPackage *)self zoom];
  [coderCopy encodeObject:zoom forKey:@"zoom"];

  speakSelection = [(AXOSMigrationPackage *)self speakSelection];
  [coderCopy encodeObject:speakSelection forKey:@"speakSelection"];

  voiceControl = [(AXOSMigrationPackage *)self voiceControl];
  [coderCopy encodeObject:voiceControl forKey:@"voiceControl"];

  powerButtonEndsCall = [(AXOSMigrationPackage *)self powerButtonEndsCall];
  [coderCopy encodeObject:powerButtonEndsCall forKey:@"powerButtonEndsCall"];

  autoRotateScreen = [(AXOSMigrationPackage *)self autoRotateScreen];
  [coderCopy encodeObject:autoRotateScreen forKey:@"autoRotateScreen"];

  liveCaptions = [(AXOSMigrationPackage *)self liveCaptions];
  [coderCopy encodeObject:liveCaptions forKey:@"liveCaptions"];

  liveTranscribe = [(AXOSMigrationPackage *)self liveTranscribe];
  [coderCopy encodeObject:liveTranscribe forKey:@"liveTranscribe"];

  audioDescription = [(AXOSMigrationPackage *)self audioDescription];
  [coderCopy encodeObject:audioDescription forKey:@"audioDescription"];

  flashForAlerts = [(AXOSMigrationPackage *)self flashForAlerts];
  [coderCopy encodeObject:flashForAlerts forKey:@"flashForAlerts"];

  monoAudio = [(AXOSMigrationPackage *)self monoAudio];
  [coderCopy encodeObject:monoAudio forKey:@"monoAudio"];

  audioBalance = [(AXOSMigrationPackage *)self audioBalance];
  [coderCopy encodeObject:audioBalance forKey:@"audioBalance"];

  preferCaptionsSDH = [(AXOSMigrationPackage *)self preferCaptionsSDH];
  [coderCopy encodeObject:preferCaptionsSDH forKey:@"preferCaptionsSDH"];

  captionStyles = [(AXOSMigrationPackage *)self captionStyles];
  [coderCopy encodeObject:captionStyles forKey:@"captionStyles"];
}

- (AXOSMigrationPackage)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AXOSMigrationPackage;
  coderCopy = coder;
  v4 = [(AXOSMigrationPackage *)&v30 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenReader"];
  [(AXOSMigrationPackage *)v4 setScreenReader:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textSize"];
  [(AXOSMigrationPackage *)v4 setTextSize:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boldText"];
  [(AXOSMigrationPackage *)v4 setBoldText:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"grayscaleFilter"];
  [(AXOSMigrationPackage *)v4 setGrayscaleFilter:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redGreenFilter"];
  [(AXOSMigrationPackage *)v4 setRedGreenFilter:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"greenRedFilter"];
  [(AXOSMigrationPackage *)v4 setGreenRedFilter:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blueYellowFilter"];
  [(AXOSMigrationPackage *)v4 setBlueYellowFilter:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"darkMode"];
  [(AXOSMigrationPackage *)v4 setDarkMode:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoom"];
  [(AXOSMigrationPackage *)v4 setZoom:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speakSelection"];
  [(AXOSMigrationPackage *)v4 setSpeakSelection:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceControl"];
  [(AXOSMigrationPackage *)v4 setVoiceControl:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"powerButtonEndsCall"];
  [(AXOSMigrationPackage *)v4 setPowerButtonEndsCall:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoRotateScreen"];
  [(AXOSMigrationPackage *)v4 setAutoRotateScreen:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"liveCaptions"];
  [(AXOSMigrationPackage *)v4 setLiveCaptions:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"liveTranscribe"];
  [(AXOSMigrationPackage *)v4 setLiveTranscribe:v19];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioDescription"];
  [(AXOSMigrationPackage *)v4 setAudioDescription:v20];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flashForAlerts"];
  [(AXOSMigrationPackage *)v4 setFlashForAlerts:v21];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"monoAudio"];
  [(AXOSMigrationPackage *)v4 setMonoAudio:v22];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioBalance"];
  [(AXOSMigrationPackage *)v4 setAudioBalance:v23];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferCaptionsSDH"];
  [(AXOSMigrationPackage *)v4 setPreferCaptionsSDH:v24];

  v25 = MEMORY[0x1E695DFD8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v27 = [v25 setWithArray:v26];
  v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"captionStyles"];

  [(AXOSMigrationPackage *)v4 setCaptionStyles:v28];
  return v4;
}

@end
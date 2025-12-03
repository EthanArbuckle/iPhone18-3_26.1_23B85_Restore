@interface AXVoiceOverActivity
- (AXVoiceOverActivity)init;
- (AXVoiceOverActivity)initWithCoder:(id)coder;
- (BOOL)identicalProperty:(id)property property2:(id)property2;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIdenticalTo:(id)to;
- (NSNumber)speechRate;
- (NSNumber)volume;
- (NSString)voiceIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setSpeechRate:(id)rate;
- (void)setVoiceIdentifier:(id)identifier;
- (void)setVolume:(id)volume;
@end

@implementation AXVoiceOverActivity

- (AXVoiceOverActivity)init
{
  v5.receiver = self;
  v5.super_class = AXVoiceOverActivity;
  v2 = [(AXVoiceOverActivity *)&v5 init];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(AXVoiceOverActivity *)v2 setUuid:uUID];

  return v2;
}

- (NSNumber)speechRate
{
  voiceSelection = [(AXVoiceOverActivity *)self voiceSelection];
  rate = [voiceSelection rate];

  return rate;
}

- (NSNumber)volume
{
  voiceSelection = [(AXVoiceOverActivity *)self voiceSelection];
  volume = [voiceSelection volume];

  return volume;
}

- (NSString)voiceIdentifier
{
  voiceSelection = [(AXVoiceOverActivity *)self voiceSelection];
  voiceId = [voiceSelection voiceId];

  return voiceId;
}

- (void)setVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  voiceSelection = [(AXVoiceOverActivity *)self voiceSelection];

  if (!voiceSelection)
  {
    v5 = objc_alloc(MEMORY[0x1E6988768]);
    speechRate = [(AXVoiceOverActivity *)self speechRate];
    volume = [(AXVoiceOverActivity *)self volume];
    v8 = [v5 initWithVoiceId:identifierCopy rate:speechRate pitch:0 volume:volume voiceSettings:0 effects:0 boundLanguage:0];
    [(AXVoiceOverActivity *)self setVoiceSelection:v8];
  }

  voiceSelection2 = [(AXVoiceOverActivity *)self voiceSelection];
  [voiceSelection2 setVoiceId:identifierCopy];
}

- (void)setSpeechRate:(id)rate
{
  rateCopy = rate;
  voiceSelection = [(AXVoiceOverActivity *)self voiceSelection];

  if (!voiceSelection)
  {
    v5 = objc_alloc(MEMORY[0x1E6988768]);
    voiceIdentifier = [(AXVoiceOverActivity *)self voiceIdentifier];
    volume = [(AXVoiceOverActivity *)self volume];
    v8 = [v5 initWithVoiceId:voiceIdentifier rate:rateCopy pitch:0 volume:volume voiceSettings:0 effects:0 boundLanguage:0];
    [(AXVoiceOverActivity *)self setVoiceSelection:v8];
  }

  voiceSelection2 = [(AXVoiceOverActivity *)self voiceSelection];
  [voiceSelection2 setRate:rateCopy];
}

- (void)setVolume:(id)volume
{
  volumeCopy = volume;
  voiceSelection = [(AXVoiceOverActivity *)self voiceSelection];

  if (!voiceSelection)
  {
    v5 = objc_alloc(MEMORY[0x1E6988768]);
    voiceIdentifier = [(AXVoiceOverActivity *)self voiceIdentifier];
    speechRate = [(AXVoiceOverActivity *)self speechRate];
    v8 = [v5 initWithVoiceId:voiceIdentifier rate:speechRate pitch:0 volume:volumeCopy voiceSettings:0 effects:0 boundLanguage:0];
    [(AXVoiceOverActivity *)self setVoiceSelection:v8];
  }

  voiceSelection2 = [(AXVoiceOverActivity *)self voiceSelection];
  [voiceSelection2 setVolume:volumeCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AXVoiceOverActivity builtIn](self forKey:{"builtIn"), @"builtIn"}];
  uuid = [(AXVoiceOverActivity *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  name = [(AXVoiceOverActivity *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  textualContexts = [(AXVoiceOverActivity *)self textualContexts];
  [coderCopy encodeObject:textualContexts forKey:@"textualContext"];

  appIdentifiers = [(AXVoiceOverActivity *)self appIdentifiers];
  [coderCopy encodeObject:appIdentifiers forKey:@"appIdentifier"];

  punctuationGroup = [(AXVoiceOverActivity *)self punctuationGroup];
  [coderCopy encodeObject:punctuationGroup forKey:@"punctuationGroup"];

  voiceIdentifier = [(AXVoiceOverActivity *)self voiceIdentifier];
  [coderCopy encodeObject:voiceIdentifier forKey:@"voiceIdentifier"];

  speechRate = [(AXVoiceOverActivity *)self speechRate];
  [coderCopy encodeObject:speechRate forKey:@"speechRate"];

  volume = [(AXVoiceOverActivity *)self volume];
  [coderCopy encodeObject:volume forKey:@"volume"];

  soundMuted = [(AXVoiceOverActivity *)self soundMuted];
  [coderCopy encodeObject:soundMuted forKey:@"soundMuted"];

  speechMuted = [(AXVoiceOverActivity *)self speechMuted];
  [coderCopy encodeObject:speechMuted forKey:@"speechMuted"];

  audioDucking = [(AXVoiceOverActivity *)self audioDucking];
  [coderCopy encodeObject:audioDucking forKey:@"audioDucking"];

  audioDuckingAmount = [(AXVoiceOverActivity *)self audioDuckingAmount];
  [coderCopy encodeObject:audioDuckingAmount forKey:@"audioDuckingAmount"];

  modifierKeys = [(AXVoiceOverActivity *)self modifierKeys];
  [coderCopy encodeObject:modifierKeys forKey:@"modifierKeys"];

  brailleTable = [(AXVoiceOverActivity *)self brailleTable];
  [coderCopy encodeObject:brailleTable forKey:@"brailleTable"];

  brailleInputTable = [(AXVoiceOverActivity *)self brailleInputTable];
  [coderCopy encodeObject:brailleInputTable forKey:@"brailleInputTable"];

  brailleStatusCellGeneral = [(AXVoiceOverActivity *)self brailleStatusCellGeneral];
  [coderCopy encodeObject:brailleStatusCellGeneral forKey:@"brailleStatusCellGeneral"];

  brailleStatusCellText = [(AXVoiceOverActivity *)self brailleStatusCellText];
  [coderCopy encodeObject:brailleStatusCellText forKey:@"brailleStatusCellText"];

  tableHeaders = [(AXVoiceOverActivity *)self tableHeaders];
  [coderCopy encodeObject:tableHeaders forKey:@"tableHeaders"];

  tableRowAndColumn = [(AXVoiceOverActivity *)self tableRowAndColumn];
  [coderCopy encodeObject:tableRowAndColumn forKey:@"tableRowAndColumn"];

  speakEmojis = [(AXVoiceOverActivity *)self speakEmojis];
  [coderCopy encodeObject:speakEmojis forKey:@"speakEmojis"];

  imageDescriptions = [(AXVoiceOverActivity *)self imageDescriptions];
  [coderCopy encodeObject:imageDescriptions forKey:@"imageDescriptions"];

  containerFeedback = [(AXVoiceOverActivity *)self containerFeedback];
  [coderCopy encodeObject:containerFeedback forKey:@"containerFeedback"];

  numberFeedback = [(AXVoiceOverActivity *)self numberFeedback];
  [coderCopy encodeObject:numberFeedback forKey:@"numberFeedback"];

  brailleOutput = [(AXVoiceOverActivity *)self brailleOutput];
  [coderCopy encodeObject:brailleOutput forKey:@"brailleOutput"];

  brailleInput = [(AXVoiceOverActivity *)self brailleInput];
  [coderCopy encodeObject:brailleInput forKey:@"brailleInput"];

  brailleAutoAdvanceDuration = [(AXVoiceOverActivity *)self brailleAutoAdvanceDuration];
  [coderCopy encodeObject:brailleAutoAdvanceDuration forKey:@"brailleAutoAdvanceDuration"];

  hints = [(AXVoiceOverActivity *)self hints];
  [coderCopy encodeObject:hints forKey:@"hints"];

  typingStyle = [(AXVoiceOverActivity *)self typingStyle];
  [coderCopy encodeObject:typingStyle forKey:@"typingStyle"];

  navigationStyle = [(AXVoiceOverActivity *)self navigationStyle];
  [coderCopy encodeObject:navigationStyle forKey:@"navigationStyle"];

  brailleAlerts = [(AXVoiceOverActivity *)self brailleAlerts];
  [coderCopy encodeObject:brailleAlerts forKey:@"brailleAlerts"];

  brailleFormatting = [(AXVoiceOverActivity *)self brailleFormatting];
  [coderCopy encodeObject:brailleFormatting forKey:@"brailleFormatting"];

  brailleStartAutoActivateOnTextFields = [(AXVoiceOverActivity *)self brailleStartAutoActivateOnTextFields];
  [coderCopy encodeObject:brailleStartAutoActivateOnTextFields forKey:@"brailleStartAutoActivateOnTextFields"];
}

- (AXVoiceOverActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  [(AXVoiceOverActivity *)v5 setUuid:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  [(AXVoiceOverActivity *)v5 setName:v7];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"textualContext"];
  [(AXVoiceOverActivity *)v5 setTextualContexts:v11];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"appIdentifier"];
  [(AXVoiceOverActivity *)v5 setAppIdentifiers:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"punctuationGroup"];
  [(AXVoiceOverActivity *)v5 setPunctuationGroup:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceIdentifier"];
  [(AXVoiceOverActivity *)v5 setVoiceIdentifier:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechRate"];
  [(AXVoiceOverActivity *)v5 setSpeechRate:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
  [(AXVoiceOverActivity *)v5 setVolume:v19];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"soundMuted"];
  [(AXVoiceOverActivity *)v5 setSoundMuted:v20];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechMuted"];
  [(AXVoiceOverActivity *)v5 setSpeechMuted:v21];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioDucking"];
  [(AXVoiceOverActivity *)v5 setAudioDucking:v22];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioDuckingAmount"];
  [(AXVoiceOverActivity *)v5 setAudioDuckingAmount:v23];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifierKeys"];
  [(AXVoiceOverActivity *)v5 setModifierKeys:v24];

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleStatusCellGeneral"];
  [(AXVoiceOverActivity *)v5 setBrailleStatusCellGeneral:v25];

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleStatusCellText"];
  [(AXVoiceOverActivity *)v5 setBrailleStatusCellText:v26];

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleTable"];
  [(AXVoiceOverActivity *)v5 setBrailleTable:v27];

  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleInputTable"];
  [(AXVoiceOverActivity *)v5 setBrailleInputTable:v28];

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speakEmojis"];
  [(AXVoiceOverActivity *)v5 setSpeakEmojis:v29];

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageDescriptions"];
  [(AXVoiceOverActivity *)v5 setImageDescriptions:v30];

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerFeedback"];
  [(AXVoiceOverActivity *)v5 setContainerFeedback:v31];

  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberFeedback"];
  [(AXVoiceOverActivity *)v5 setNumberFeedback:v32];

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tableRowAndColumn"];
  [(AXVoiceOverActivity *)v5 setTableRowAndColumn:v33];

  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tableHeaders"];
  [(AXVoiceOverActivity *)v5 setTableHeaders:v34];

  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleOutput"];
  [(AXVoiceOverActivity *)v5 setBrailleOutput:v35];

  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleInput"];
  [(AXVoiceOverActivity *)v5 setBrailleInput:v36];

  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleAutoAdvanceDuration"];
  [(AXVoiceOverActivity *)v5 setBrailleAutoAdvanceDuration:v37];

  v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hints"];
  [(AXVoiceOverActivity *)v5 setHints:v38];

  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typingStyle"];
  [(AXVoiceOverActivity *)v5 setTypingStyle:v39];

  v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"navigationStyle"];
  [(AXVoiceOverActivity *)v5 setNavigationStyle:v40];

  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleAlerts"];
  [(AXVoiceOverActivity *)v5 setBrailleAlerts:v41];

  v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleFormatting"];
  [(AXVoiceOverActivity *)v5 setBrailleFormatting:v42];

  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brailleStartAutoActivateOnTextFields"];
  [(AXVoiceOverActivity *)v5 setBrailleStartAutoActivateOnTextFields:v43];

  v44 = [coderCopy decodeBoolForKey:@"builtIn"];
  [(AXVoiceOverActivity *)v5 setBuiltIn:v44];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  uuid = [(AXVoiceOverActivity *)self uuid];
  [v4 setUuid:uuid];

  name = [(AXVoiceOverActivity *)self name];
  [v4 setName:name];

  textualContexts = [(AXVoiceOverActivity *)self textualContexts];
  [v4 setTextualContexts:textualContexts];

  appIdentifiers = [(AXVoiceOverActivity *)self appIdentifiers];
  [v4 setAppIdentifiers:appIdentifiers];

  punctuationGroup = [(AXVoiceOverActivity *)self punctuationGroup];
  [v4 setPunctuationGroup:punctuationGroup];

  voiceIdentifier = [(AXVoiceOverActivity *)self voiceIdentifier];
  [v4 setVoiceIdentifier:voiceIdentifier];

  speechRate = [(AXVoiceOverActivity *)self speechRate];
  [v4 setSpeechRate:speechRate];

  volume = [(AXVoiceOverActivity *)self volume];
  [v4 setVolume:volume];

  speechMuted = [(AXVoiceOverActivity *)self speechMuted];
  [v4 setSpeechMuted:speechMuted];

  audioDucking = [(AXVoiceOverActivity *)self audioDucking];
  [v4 setAudioDucking:audioDucking];

  audioDuckingAmount = [(AXVoiceOverActivity *)self audioDuckingAmount];
  [v4 setAudioDuckingAmount:audioDuckingAmount];

  soundMuted = [(AXVoiceOverActivity *)self soundMuted];
  [v4 setSoundMuted:soundMuted];

  [v4 setBuiltIn:{-[AXVoiceOverActivity builtIn](self, "builtIn")}];
  modifierKeys = [(AXVoiceOverActivity *)self modifierKeys];
  [v4 setModifierKeys:modifierKeys];

  brailleStatusCellGeneral = [(AXVoiceOverActivity *)self brailleStatusCellGeneral];
  [v4 setBrailleStatusCellGeneral:brailleStatusCellGeneral];

  brailleStatusCellText = [(AXVoiceOverActivity *)self brailleStatusCellText];
  [v4 setBrailleStatusCellText:brailleStatusCellText];

  brailleTable = [(AXVoiceOverActivity *)self brailleTable];
  [v4 setBrailleTable:brailleTable];

  brailleInputTable = [(AXVoiceOverActivity *)self brailleInputTable];
  [v4 setBrailleInputTable:brailleInputTable];

  tableHeaders = [(AXVoiceOverActivity *)self tableHeaders];
  [v4 setTableHeaders:tableHeaders];

  tableRowAndColumn = [(AXVoiceOverActivity *)self tableRowAndColumn];
  [v4 setTableRowAndColumn:tableRowAndColumn];

  speakEmojis = [(AXVoiceOverActivity *)self speakEmojis];
  [v4 setSpeakEmojis:speakEmojis];

  imageDescriptions = [(AXVoiceOverActivity *)self imageDescriptions];
  [v4 setImageDescriptions:imageDescriptions];

  containerFeedback = [(AXVoiceOverActivity *)self containerFeedback];
  [v4 setContainerFeedback:containerFeedback];

  numberFeedback = [(AXVoiceOverActivity *)self numberFeedback];
  [v4 setNumberFeedback:numberFeedback];

  brailleInput = [(AXVoiceOverActivity *)self brailleInput];
  [v4 setBrailleInput:brailleInput];

  brailleOutput = [(AXVoiceOverActivity *)self brailleOutput];
  [v4 setBrailleOutput:brailleOutput];

  brailleAutoAdvanceDuration = [(AXVoiceOverActivity *)self brailleAutoAdvanceDuration];
  [v4 setBrailleAutoAdvanceDuration:brailleAutoAdvanceDuration];

  hints = [(AXVoiceOverActivity *)self hints];
  [v4 setHints:hints];

  typingStyle = [(AXVoiceOverActivity *)self typingStyle];
  [v4 setTypingStyle:typingStyle];

  navigationStyle = [(AXVoiceOverActivity *)self navigationStyle];
  [v4 setNavigationStyle:navigationStyle];

  brailleAlerts = [(AXVoiceOverActivity *)self brailleAlerts];
  [v4 setBrailleAlerts:brailleAlerts];

  brailleFormatting = [(AXVoiceOverActivity *)self brailleFormatting];
  [v4 setBrailleFormatting:brailleFormatting];

  brailleStartAutoActivateOnTextFields = [(AXVoiceOverActivity *)self brailleStartAutoActivateOnTextFields];
  [v4 setBrailleStartAutoActivateOnTextFields:brailleStartAutoActivateOnTextFields];

  return v4;
}

- (BOOL)identicalProperty:(id)property property2:(id)property2
{
  propertyCopy = property;
  property2Copy = property2;
  v7 = property2Copy;
  v8 = (propertyCopy || !property2Copy) && (!propertyCopy || property2Copy) && (!propertyCopy || !property2Copy || [propertyCopy isEqual:property2Copy]);

  return v8;
}

- (BOOL)isIdenticalTo:(id)to
{
  toCopy = to;
  speechRate = [(AXVoiceOverActivity *)self speechRate];
  speechRate2 = [toCopy speechRate];
  v7 = [(AXVoiceOverActivity *)self identicalProperty:speechRate property2:speechRate2];

  if (v7
    && (-[AXVoiceOverActivity volume](self, "volume"), v8 = objc_claimAutoreleasedReturnValue(), [toCopy volume], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v8, v9), v9, v8, v10)
    && (-[AXVoiceOverActivity speechMuted](self, "speechMuted"), v11 = objc_claimAutoreleasedReturnValue(), [toCopy speechMuted], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v11, v12), v12, v11, v13)
    && (-[AXVoiceOverActivity soundMuted](self, "soundMuted"), v14 = objc_claimAutoreleasedReturnValue(), [toCopy soundMuted], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v14, v15), v15, v14, v16)
    && (-[AXVoiceOverActivity voiceIdentifier](self, "voiceIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), [toCopy voiceIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v17, v18), v18, v17, v19)
    && (-[AXVoiceOverActivity textualContexts](self, "textualContexts"), v20 = objc_claimAutoreleasedReturnValue(), [toCopy textualContexts], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v20, v21), v21, v20, v22)
    && (-[AXVoiceOverActivity name](self, "name"), v23 = objc_claimAutoreleasedReturnValue(), [toCopy name], v24 = objc_claimAutoreleasedReturnValue(), v25 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v23, v24), v24, v23, v25)
    && (-[AXVoiceOverActivity appIdentifiers](self, "appIdentifiers"), v26 = objc_claimAutoreleasedReturnValue(), [toCopy appIdentifiers], v27 = objc_claimAutoreleasedReturnValue(), v28 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v26, v27), v27, v26, v28)
    && (-[AXVoiceOverActivity modifierKeys](self, "modifierKeys"), v29 = objc_claimAutoreleasedReturnValue(), [toCopy modifierKeys], v30 = objc_claimAutoreleasedReturnValue(), v31 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v29, v30), v30, v29, v31)
    && (-[AXVoiceOverActivity brailleStatusCellText](self, "brailleStatusCellText"), v32 = objc_claimAutoreleasedReturnValue(), [toCopy brailleStatusCellText], v33 = objc_claimAutoreleasedReturnValue(), v34 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v32, v33), v33, v32, v34)
    && (-[AXVoiceOverActivity brailleStatusCellGeneral](self, "brailleStatusCellGeneral"), v35 = objc_claimAutoreleasedReturnValue(), [toCopy brailleStatusCellGeneral], v36 = objc_claimAutoreleasedReturnValue(), v37 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v35, v36), v36, v35, v37)
    && (-[AXVoiceOverActivity brailleTable](self, "brailleTable"), v38 = objc_claimAutoreleasedReturnValue(), [toCopy brailleTable], v39 = objc_claimAutoreleasedReturnValue(), v40 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v38, v39), v39, v38, v40)
    && (-[AXVoiceOverActivity brailleInputTable](self, "brailleInputTable"), v41 = objc_claimAutoreleasedReturnValue(), [toCopy brailleInputTable], v42 = objc_claimAutoreleasedReturnValue(), v43 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v41, v42), v42, v41, v43)
    && (-[AXVoiceOverActivity tableHeaders](self, "tableHeaders"), v44 = objc_claimAutoreleasedReturnValue(), [toCopy tableHeaders], v45 = objc_claimAutoreleasedReturnValue(), v46 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v44, v45), v45, v44, v46)
    && (-[AXVoiceOverActivity tableRowAndColumn](self, "tableRowAndColumn"), v47 = objc_claimAutoreleasedReturnValue(), [toCopy tableRowAndColumn], v48 = objc_claimAutoreleasedReturnValue(), v49 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v47, v48), v48, v47, v49)
    && (-[AXVoiceOverActivity speakEmojis](self, "speakEmojis"), v50 = objc_claimAutoreleasedReturnValue(), [toCopy speakEmojis], v51 = objc_claimAutoreleasedReturnValue(), v52 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v50, v51), v51, v50, v52)
    && (-[AXVoiceOverActivity imageDescriptions](self, "imageDescriptions"), v53 = objc_claimAutoreleasedReturnValue(), [toCopy imageDescriptions], v54 = objc_claimAutoreleasedReturnValue(), v55 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v53, v54), v54, v53, v55)
    && (-[AXVoiceOverActivity containerFeedback](self, "containerFeedback"), v56 = objc_claimAutoreleasedReturnValue(), [toCopy containerFeedback], v57 = objc_claimAutoreleasedReturnValue(), v58 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v56, v57), v57, v56, v58)
    && (-[AXVoiceOverActivity numberFeedback](self, "numberFeedback"), v59 = objc_claimAutoreleasedReturnValue(), [toCopy numberFeedback], v60 = objc_claimAutoreleasedReturnValue(), v61 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v59, v60), v60, v59, v61)
    && (-[AXVoiceOverActivity brailleOutput](self, "brailleOutput"), v62 = objc_claimAutoreleasedReturnValue(), [toCopy brailleOutput], v63 = objc_claimAutoreleasedReturnValue(), v64 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v62, v63), v63, v62, v64)
    && (-[AXVoiceOverActivity brailleInput](self, "brailleInput"), v65 = objc_claimAutoreleasedReturnValue(), [toCopy brailleInput], v66 = objc_claimAutoreleasedReturnValue(), v67 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v65, v66), v66, v65, v67)
    && (-[AXVoiceOverActivity brailleAutoAdvanceDuration](self, "brailleAutoAdvanceDuration"), v68 = objc_claimAutoreleasedReturnValue(), [toCopy brailleAutoAdvanceDuration], v69 = objc_claimAutoreleasedReturnValue(), v70 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v68, v69), v69, v68, v70)
    && (-[AXVoiceOverActivity audioDucking](self, "audioDucking"), v71 = objc_claimAutoreleasedReturnValue(), [toCopy audioDucking], v72 = objc_claimAutoreleasedReturnValue(), v73 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v71, v72), v72, v71, v73)
    && (-[AXVoiceOverActivity audioDuckingAmount](self, "audioDuckingAmount"), v74 = objc_claimAutoreleasedReturnValue(), [toCopy audioDuckingAmount], v75 = objc_claimAutoreleasedReturnValue(), v76 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v74, v75), v75, v74, v76)
    && (-[AXVoiceOverActivity hints](self, "hints"), v77 = objc_claimAutoreleasedReturnValue(), [toCopy hints], v78 = objc_claimAutoreleasedReturnValue(), v79 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v77, v78), v78, v77, v79)
    && (-[AXVoiceOverActivity typingStyle](self, "typingStyle"), v80 = objc_claimAutoreleasedReturnValue(), [toCopy typingStyle], v81 = objc_claimAutoreleasedReturnValue(), v82 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v80, v81), v81, v80, v82)
    && (-[AXVoiceOverActivity navigationStyle](self, "navigationStyle"), v83 = objc_claimAutoreleasedReturnValue(), [toCopy navigationStyle], v84 = objc_claimAutoreleasedReturnValue(), v85 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v83, v84), v84, v83, v85)
    && (-[AXVoiceOverActivity brailleAlerts](self, "brailleAlerts"), v86 = objc_claimAutoreleasedReturnValue(), [toCopy brailleAlerts], v87 = objc_claimAutoreleasedReturnValue(), v88 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v86, v87), v87, v86, v88)
    && (-[AXVoiceOverActivity brailleFormatting](self, "brailleFormatting"), v89 = objc_claimAutoreleasedReturnValue(), [toCopy brailleFormatting], v90 = objc_claimAutoreleasedReturnValue(), v91 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v89, v90), v90, v89, v91))
  {
    brailleStartAutoActivateOnTextFields = [(AXVoiceOverActivity *)self brailleStartAutoActivateOnTextFields];
    brailleStartAutoActivateOnTextFields2 = [toCopy brailleStartAutoActivateOnTextFields];
    v94 = [(AXVoiceOverActivity *)self identicalProperty:brailleStartAutoActivateOnTextFields property2:brailleStartAutoActivateOnTextFields2];
  }

  else
  {
    v94 = 0;
  }

  return v94;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [(AXVoiceOverActivity *)self uuid];
    uuid2 = [equalCopy uuid];
    v7 = [uuid isEqual:uuid2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = AXVoiceOverActivity;
  v4 = [(AXVoiceOverActivity *)&v13 description];
  name = [(AXVoiceOverActivity *)self name];
  appIdentifiers = [(AXVoiceOverActivity *)self appIdentifiers];
  voiceIdentifier = [(AXVoiceOverActivity *)self voiceIdentifier];
  punctuationGroup = [(AXVoiceOverActivity *)self punctuationGroup];
  volume = [(AXVoiceOverActivity *)self volume];
  speechRate = [(AXVoiceOverActivity *)self speechRate];
  v11 = [v3 stringWithFormat:@"%@: name: %@, apps: %@, voice: %@, punctuation: %@, volume: %@, rate: %@", v4, name, appIdentifiers, voiceIdentifier, punctuationGroup, volume, speechRate];

  return v11;
}

@end
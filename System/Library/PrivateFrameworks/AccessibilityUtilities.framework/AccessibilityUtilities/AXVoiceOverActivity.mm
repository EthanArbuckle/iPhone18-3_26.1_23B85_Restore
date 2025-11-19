@interface AXVoiceOverActivity
- (AXVoiceOverActivity)init;
- (AXVoiceOverActivity)initWithCoder:(id)a3;
- (BOOL)identicalProperty:(id)a3 property2:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIdenticalTo:(id)a3;
- (NSNumber)speechRate;
- (NSNumber)volume;
- (NSString)voiceIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setSpeechRate:(id)a3;
- (void)setVoiceIdentifier:(id)a3;
- (void)setVolume:(id)a3;
@end

@implementation AXVoiceOverActivity

- (AXVoiceOverActivity)init
{
  v5.receiver = self;
  v5.super_class = AXVoiceOverActivity;
  v2 = [(AXVoiceOverActivity *)&v5 init];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  [(AXVoiceOverActivity *)v2 setUuid:v3];

  return v2;
}

- (NSNumber)speechRate
{
  v2 = [(AXVoiceOverActivity *)self voiceSelection];
  v3 = [v2 rate];

  return v3;
}

- (NSNumber)volume
{
  v2 = [(AXVoiceOverActivity *)self voiceSelection];
  v3 = [v2 volume];

  return v3;
}

- (NSString)voiceIdentifier
{
  v2 = [(AXVoiceOverActivity *)self voiceSelection];
  v3 = [v2 voiceId];

  return v3;
}

- (void)setVoiceIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(AXVoiceOverActivity *)self voiceSelection];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E6988768]);
    v6 = [(AXVoiceOverActivity *)self speechRate];
    v7 = [(AXVoiceOverActivity *)self volume];
    v8 = [v5 initWithVoiceId:v10 rate:v6 pitch:0 volume:v7 voiceSettings:0 effects:0 boundLanguage:0];
    [(AXVoiceOverActivity *)self setVoiceSelection:v8];
  }

  v9 = [(AXVoiceOverActivity *)self voiceSelection];
  [v9 setVoiceId:v10];
}

- (void)setSpeechRate:(id)a3
{
  v10 = a3;
  v4 = [(AXVoiceOverActivity *)self voiceSelection];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E6988768]);
    v6 = [(AXVoiceOverActivity *)self voiceIdentifier];
    v7 = [(AXVoiceOverActivity *)self volume];
    v8 = [v5 initWithVoiceId:v6 rate:v10 pitch:0 volume:v7 voiceSettings:0 effects:0 boundLanguage:0];
    [(AXVoiceOverActivity *)self setVoiceSelection:v8];
  }

  v9 = [(AXVoiceOverActivity *)self voiceSelection];
  [v9 setRate:v10];
}

- (void)setVolume:(id)a3
{
  v10 = a3;
  v4 = [(AXVoiceOverActivity *)self voiceSelection];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E6988768]);
    v6 = [(AXVoiceOverActivity *)self voiceIdentifier];
    v7 = [(AXVoiceOverActivity *)self speechRate];
    v8 = [v5 initWithVoiceId:v6 rate:v7 pitch:0 volume:v10 voiceSettings:0 effects:0 boundLanguage:0];
    [(AXVoiceOverActivity *)self setVoiceSelection:v8];
  }

  v9 = [(AXVoiceOverActivity *)self voiceSelection];
  [v9 setVolume:v10];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[AXVoiceOverActivity builtIn](self forKey:{"builtIn"), @"builtIn"}];
  v5 = [(AXVoiceOverActivity *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(AXVoiceOverActivity *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(AXVoiceOverActivity *)self textualContexts];
  [v4 encodeObject:v7 forKey:@"textualContext"];

  v8 = [(AXVoiceOverActivity *)self appIdentifiers];
  [v4 encodeObject:v8 forKey:@"appIdentifier"];

  v9 = [(AXVoiceOverActivity *)self punctuationGroup];
  [v4 encodeObject:v9 forKey:@"punctuationGroup"];

  v10 = [(AXVoiceOverActivity *)self voiceIdentifier];
  [v4 encodeObject:v10 forKey:@"voiceIdentifier"];

  v11 = [(AXVoiceOverActivity *)self speechRate];
  [v4 encodeObject:v11 forKey:@"speechRate"];

  v12 = [(AXVoiceOverActivity *)self volume];
  [v4 encodeObject:v12 forKey:@"volume"];

  v13 = [(AXVoiceOverActivity *)self soundMuted];
  [v4 encodeObject:v13 forKey:@"soundMuted"];

  v14 = [(AXVoiceOverActivity *)self speechMuted];
  [v4 encodeObject:v14 forKey:@"speechMuted"];

  v15 = [(AXVoiceOverActivity *)self audioDucking];
  [v4 encodeObject:v15 forKey:@"audioDucking"];

  v16 = [(AXVoiceOverActivity *)self audioDuckingAmount];
  [v4 encodeObject:v16 forKey:@"audioDuckingAmount"];

  v17 = [(AXVoiceOverActivity *)self modifierKeys];
  [v4 encodeObject:v17 forKey:@"modifierKeys"];

  v18 = [(AXVoiceOverActivity *)self brailleTable];
  [v4 encodeObject:v18 forKey:@"brailleTable"];

  v19 = [(AXVoiceOverActivity *)self brailleInputTable];
  [v4 encodeObject:v19 forKey:@"brailleInputTable"];

  v20 = [(AXVoiceOverActivity *)self brailleStatusCellGeneral];
  [v4 encodeObject:v20 forKey:@"brailleStatusCellGeneral"];

  v21 = [(AXVoiceOverActivity *)self brailleStatusCellText];
  [v4 encodeObject:v21 forKey:@"brailleStatusCellText"];

  v22 = [(AXVoiceOverActivity *)self tableHeaders];
  [v4 encodeObject:v22 forKey:@"tableHeaders"];

  v23 = [(AXVoiceOverActivity *)self tableRowAndColumn];
  [v4 encodeObject:v23 forKey:@"tableRowAndColumn"];

  v24 = [(AXVoiceOverActivity *)self speakEmojis];
  [v4 encodeObject:v24 forKey:@"speakEmojis"];

  v25 = [(AXVoiceOverActivity *)self imageDescriptions];
  [v4 encodeObject:v25 forKey:@"imageDescriptions"];

  v26 = [(AXVoiceOverActivity *)self containerFeedback];
  [v4 encodeObject:v26 forKey:@"containerFeedback"];

  v27 = [(AXVoiceOverActivity *)self numberFeedback];
  [v4 encodeObject:v27 forKey:@"numberFeedback"];

  v28 = [(AXVoiceOverActivity *)self brailleOutput];
  [v4 encodeObject:v28 forKey:@"brailleOutput"];

  v29 = [(AXVoiceOverActivity *)self brailleInput];
  [v4 encodeObject:v29 forKey:@"brailleInput"];

  v30 = [(AXVoiceOverActivity *)self brailleAutoAdvanceDuration];
  [v4 encodeObject:v30 forKey:@"brailleAutoAdvanceDuration"];

  v31 = [(AXVoiceOverActivity *)self hints];
  [v4 encodeObject:v31 forKey:@"hints"];

  v32 = [(AXVoiceOverActivity *)self typingStyle];
  [v4 encodeObject:v32 forKey:@"typingStyle"];

  v33 = [(AXVoiceOverActivity *)self navigationStyle];
  [v4 encodeObject:v33 forKey:@"navigationStyle"];

  v34 = [(AXVoiceOverActivity *)self brailleAlerts];
  [v4 encodeObject:v34 forKey:@"brailleAlerts"];

  v35 = [(AXVoiceOverActivity *)self brailleFormatting];
  [v4 encodeObject:v35 forKey:@"brailleFormatting"];

  v36 = [(AXVoiceOverActivity *)self brailleStartAutoActivateOnTextFields];
  [v4 encodeObject:v36 forKey:@"brailleStartAutoActivateOnTextFields"];
}

- (AXVoiceOverActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  [(AXVoiceOverActivity *)v5 setUuid:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  [(AXVoiceOverActivity *)v5 setName:v7];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"textualContext"];
  [(AXVoiceOverActivity *)v5 setTextualContexts:v11];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"appIdentifier"];
  [(AXVoiceOverActivity *)v5 setAppIdentifiers:v15];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"punctuationGroup"];
  [(AXVoiceOverActivity *)v5 setPunctuationGroup:v16];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceIdentifier"];
  [(AXVoiceOverActivity *)v5 setVoiceIdentifier:v17];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speechRate"];
  [(AXVoiceOverActivity *)v5 setSpeechRate:v18];

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
  [(AXVoiceOverActivity *)v5 setVolume:v19];

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"soundMuted"];
  [(AXVoiceOverActivity *)v5 setSoundMuted:v20];

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speechMuted"];
  [(AXVoiceOverActivity *)v5 setSpeechMuted:v21];

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioDucking"];
  [(AXVoiceOverActivity *)v5 setAudioDucking:v22];

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioDuckingAmount"];
  [(AXVoiceOverActivity *)v5 setAudioDuckingAmount:v23];

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifierKeys"];
  [(AXVoiceOverActivity *)v5 setModifierKeys:v24];

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleStatusCellGeneral"];
  [(AXVoiceOverActivity *)v5 setBrailleStatusCellGeneral:v25];

  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleStatusCellText"];
  [(AXVoiceOverActivity *)v5 setBrailleStatusCellText:v26];

  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleTable"];
  [(AXVoiceOverActivity *)v5 setBrailleTable:v27];

  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleInputTable"];
  [(AXVoiceOverActivity *)v5 setBrailleInputTable:v28];

  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speakEmojis"];
  [(AXVoiceOverActivity *)v5 setSpeakEmojis:v29];

  v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageDescriptions"];
  [(AXVoiceOverActivity *)v5 setImageDescriptions:v30];

  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerFeedback"];
  [(AXVoiceOverActivity *)v5 setContainerFeedback:v31];

  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberFeedback"];
  [(AXVoiceOverActivity *)v5 setNumberFeedback:v32];

  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tableRowAndColumn"];
  [(AXVoiceOverActivity *)v5 setTableRowAndColumn:v33];

  v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tableHeaders"];
  [(AXVoiceOverActivity *)v5 setTableHeaders:v34];

  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleOutput"];
  [(AXVoiceOverActivity *)v5 setBrailleOutput:v35];

  v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleInput"];
  [(AXVoiceOverActivity *)v5 setBrailleInput:v36];

  v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleAutoAdvanceDuration"];
  [(AXVoiceOverActivity *)v5 setBrailleAutoAdvanceDuration:v37];

  v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hints"];
  [(AXVoiceOverActivity *)v5 setHints:v38];

  v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typingStyle"];
  [(AXVoiceOverActivity *)v5 setTypingStyle:v39];

  v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"navigationStyle"];
  [(AXVoiceOverActivity *)v5 setNavigationStyle:v40];

  v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleAlerts"];
  [(AXVoiceOverActivity *)v5 setBrailleAlerts:v41];

  v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleFormatting"];
  [(AXVoiceOverActivity *)v5 setBrailleFormatting:v42];

  v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brailleStartAutoActivateOnTextFields"];
  [(AXVoiceOverActivity *)v5 setBrailleStartAutoActivateOnTextFields:v43];

  v44 = [v4 decodeBoolForKey:@"builtIn"];
  [(AXVoiceOverActivity *)v5 setBuiltIn:v44];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(AXVoiceOverActivity *)self uuid];
  [v4 setUuid:v5];

  v6 = [(AXVoiceOverActivity *)self name];
  [v4 setName:v6];

  v7 = [(AXVoiceOverActivity *)self textualContexts];
  [v4 setTextualContexts:v7];

  v8 = [(AXVoiceOverActivity *)self appIdentifiers];
  [v4 setAppIdentifiers:v8];

  v9 = [(AXVoiceOverActivity *)self punctuationGroup];
  [v4 setPunctuationGroup:v9];

  v10 = [(AXVoiceOverActivity *)self voiceIdentifier];
  [v4 setVoiceIdentifier:v10];

  v11 = [(AXVoiceOverActivity *)self speechRate];
  [v4 setSpeechRate:v11];

  v12 = [(AXVoiceOverActivity *)self volume];
  [v4 setVolume:v12];

  v13 = [(AXVoiceOverActivity *)self speechMuted];
  [v4 setSpeechMuted:v13];

  v14 = [(AXVoiceOverActivity *)self audioDucking];
  [v4 setAudioDucking:v14];

  v15 = [(AXVoiceOverActivity *)self audioDuckingAmount];
  [v4 setAudioDuckingAmount:v15];

  v16 = [(AXVoiceOverActivity *)self soundMuted];
  [v4 setSoundMuted:v16];

  [v4 setBuiltIn:{-[AXVoiceOverActivity builtIn](self, "builtIn")}];
  v17 = [(AXVoiceOverActivity *)self modifierKeys];
  [v4 setModifierKeys:v17];

  v18 = [(AXVoiceOverActivity *)self brailleStatusCellGeneral];
  [v4 setBrailleStatusCellGeneral:v18];

  v19 = [(AXVoiceOverActivity *)self brailleStatusCellText];
  [v4 setBrailleStatusCellText:v19];

  v20 = [(AXVoiceOverActivity *)self brailleTable];
  [v4 setBrailleTable:v20];

  v21 = [(AXVoiceOverActivity *)self brailleInputTable];
  [v4 setBrailleInputTable:v21];

  v22 = [(AXVoiceOverActivity *)self tableHeaders];
  [v4 setTableHeaders:v22];

  v23 = [(AXVoiceOverActivity *)self tableRowAndColumn];
  [v4 setTableRowAndColumn:v23];

  v24 = [(AXVoiceOverActivity *)self speakEmojis];
  [v4 setSpeakEmojis:v24];

  v25 = [(AXVoiceOverActivity *)self imageDescriptions];
  [v4 setImageDescriptions:v25];

  v26 = [(AXVoiceOverActivity *)self containerFeedback];
  [v4 setContainerFeedback:v26];

  v27 = [(AXVoiceOverActivity *)self numberFeedback];
  [v4 setNumberFeedback:v27];

  v28 = [(AXVoiceOverActivity *)self brailleInput];
  [v4 setBrailleInput:v28];

  v29 = [(AXVoiceOverActivity *)self brailleOutput];
  [v4 setBrailleOutput:v29];

  v30 = [(AXVoiceOverActivity *)self brailleAutoAdvanceDuration];
  [v4 setBrailleAutoAdvanceDuration:v30];

  v31 = [(AXVoiceOverActivity *)self hints];
  [v4 setHints:v31];

  v32 = [(AXVoiceOverActivity *)self typingStyle];
  [v4 setTypingStyle:v32];

  v33 = [(AXVoiceOverActivity *)self navigationStyle];
  [v4 setNavigationStyle:v33];

  v34 = [(AXVoiceOverActivity *)self brailleAlerts];
  [v4 setBrailleAlerts:v34];

  v35 = [(AXVoiceOverActivity *)self brailleFormatting];
  [v4 setBrailleFormatting:v35];

  v36 = [(AXVoiceOverActivity *)self brailleStartAutoActivateOnTextFields];
  [v4 setBrailleStartAutoActivateOnTextFields:v36];

  return v4;
}

- (BOOL)identicalProperty:(id)a3 property2:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = (v5 || !v6) && (!v5 || v6) && (!v5 || !v6 || [v5 isEqual:v6]);

  return v8;
}

- (BOOL)isIdenticalTo:(id)a3
{
  v4 = a3;
  v5 = [(AXVoiceOverActivity *)self speechRate];
  v6 = [v4 speechRate];
  v7 = [(AXVoiceOverActivity *)self identicalProperty:v5 property2:v6];

  if (v7
    && (-[AXVoiceOverActivity volume](self, "volume"), v8 = objc_claimAutoreleasedReturnValue(), [v4 volume], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v8, v9), v9, v8, v10)
    && (-[AXVoiceOverActivity speechMuted](self, "speechMuted"), v11 = objc_claimAutoreleasedReturnValue(), [v4 speechMuted], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v11, v12), v12, v11, v13)
    && (-[AXVoiceOverActivity soundMuted](self, "soundMuted"), v14 = objc_claimAutoreleasedReturnValue(), [v4 soundMuted], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v14, v15), v15, v14, v16)
    && (-[AXVoiceOverActivity voiceIdentifier](self, "voiceIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), [v4 voiceIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v17, v18), v18, v17, v19)
    && (-[AXVoiceOverActivity textualContexts](self, "textualContexts"), v20 = objc_claimAutoreleasedReturnValue(), [v4 textualContexts], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v20, v21), v21, v20, v22)
    && (-[AXVoiceOverActivity name](self, "name"), v23 = objc_claimAutoreleasedReturnValue(), [v4 name], v24 = objc_claimAutoreleasedReturnValue(), v25 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v23, v24), v24, v23, v25)
    && (-[AXVoiceOverActivity appIdentifiers](self, "appIdentifiers"), v26 = objc_claimAutoreleasedReturnValue(), [v4 appIdentifiers], v27 = objc_claimAutoreleasedReturnValue(), v28 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v26, v27), v27, v26, v28)
    && (-[AXVoiceOverActivity modifierKeys](self, "modifierKeys"), v29 = objc_claimAutoreleasedReturnValue(), [v4 modifierKeys], v30 = objc_claimAutoreleasedReturnValue(), v31 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v29, v30), v30, v29, v31)
    && (-[AXVoiceOverActivity brailleStatusCellText](self, "brailleStatusCellText"), v32 = objc_claimAutoreleasedReturnValue(), [v4 brailleStatusCellText], v33 = objc_claimAutoreleasedReturnValue(), v34 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v32, v33), v33, v32, v34)
    && (-[AXVoiceOverActivity brailleStatusCellGeneral](self, "brailleStatusCellGeneral"), v35 = objc_claimAutoreleasedReturnValue(), [v4 brailleStatusCellGeneral], v36 = objc_claimAutoreleasedReturnValue(), v37 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v35, v36), v36, v35, v37)
    && (-[AXVoiceOverActivity brailleTable](self, "brailleTable"), v38 = objc_claimAutoreleasedReturnValue(), [v4 brailleTable], v39 = objc_claimAutoreleasedReturnValue(), v40 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v38, v39), v39, v38, v40)
    && (-[AXVoiceOverActivity brailleInputTable](self, "brailleInputTable"), v41 = objc_claimAutoreleasedReturnValue(), [v4 brailleInputTable], v42 = objc_claimAutoreleasedReturnValue(), v43 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v41, v42), v42, v41, v43)
    && (-[AXVoiceOverActivity tableHeaders](self, "tableHeaders"), v44 = objc_claimAutoreleasedReturnValue(), [v4 tableHeaders], v45 = objc_claimAutoreleasedReturnValue(), v46 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v44, v45), v45, v44, v46)
    && (-[AXVoiceOverActivity tableRowAndColumn](self, "tableRowAndColumn"), v47 = objc_claimAutoreleasedReturnValue(), [v4 tableRowAndColumn], v48 = objc_claimAutoreleasedReturnValue(), v49 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v47, v48), v48, v47, v49)
    && (-[AXVoiceOverActivity speakEmojis](self, "speakEmojis"), v50 = objc_claimAutoreleasedReturnValue(), [v4 speakEmojis], v51 = objc_claimAutoreleasedReturnValue(), v52 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v50, v51), v51, v50, v52)
    && (-[AXVoiceOverActivity imageDescriptions](self, "imageDescriptions"), v53 = objc_claimAutoreleasedReturnValue(), [v4 imageDescriptions], v54 = objc_claimAutoreleasedReturnValue(), v55 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v53, v54), v54, v53, v55)
    && (-[AXVoiceOverActivity containerFeedback](self, "containerFeedback"), v56 = objc_claimAutoreleasedReturnValue(), [v4 containerFeedback], v57 = objc_claimAutoreleasedReturnValue(), v58 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v56, v57), v57, v56, v58)
    && (-[AXVoiceOverActivity numberFeedback](self, "numberFeedback"), v59 = objc_claimAutoreleasedReturnValue(), [v4 numberFeedback], v60 = objc_claimAutoreleasedReturnValue(), v61 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v59, v60), v60, v59, v61)
    && (-[AXVoiceOverActivity brailleOutput](self, "brailleOutput"), v62 = objc_claimAutoreleasedReturnValue(), [v4 brailleOutput], v63 = objc_claimAutoreleasedReturnValue(), v64 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v62, v63), v63, v62, v64)
    && (-[AXVoiceOverActivity brailleInput](self, "brailleInput"), v65 = objc_claimAutoreleasedReturnValue(), [v4 brailleInput], v66 = objc_claimAutoreleasedReturnValue(), v67 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v65, v66), v66, v65, v67)
    && (-[AXVoiceOverActivity brailleAutoAdvanceDuration](self, "brailleAutoAdvanceDuration"), v68 = objc_claimAutoreleasedReturnValue(), [v4 brailleAutoAdvanceDuration], v69 = objc_claimAutoreleasedReturnValue(), v70 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v68, v69), v69, v68, v70)
    && (-[AXVoiceOverActivity audioDucking](self, "audioDucking"), v71 = objc_claimAutoreleasedReturnValue(), [v4 audioDucking], v72 = objc_claimAutoreleasedReturnValue(), v73 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v71, v72), v72, v71, v73)
    && (-[AXVoiceOverActivity audioDuckingAmount](self, "audioDuckingAmount"), v74 = objc_claimAutoreleasedReturnValue(), [v4 audioDuckingAmount], v75 = objc_claimAutoreleasedReturnValue(), v76 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v74, v75), v75, v74, v76)
    && (-[AXVoiceOverActivity hints](self, "hints"), v77 = objc_claimAutoreleasedReturnValue(), [v4 hints], v78 = objc_claimAutoreleasedReturnValue(), v79 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v77, v78), v78, v77, v79)
    && (-[AXVoiceOverActivity typingStyle](self, "typingStyle"), v80 = objc_claimAutoreleasedReturnValue(), [v4 typingStyle], v81 = objc_claimAutoreleasedReturnValue(), v82 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v80, v81), v81, v80, v82)
    && (-[AXVoiceOverActivity navigationStyle](self, "navigationStyle"), v83 = objc_claimAutoreleasedReturnValue(), [v4 navigationStyle], v84 = objc_claimAutoreleasedReturnValue(), v85 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v83, v84), v84, v83, v85)
    && (-[AXVoiceOverActivity brailleAlerts](self, "brailleAlerts"), v86 = objc_claimAutoreleasedReturnValue(), [v4 brailleAlerts], v87 = objc_claimAutoreleasedReturnValue(), v88 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v86, v87), v87, v86, v88)
    && (-[AXVoiceOverActivity brailleFormatting](self, "brailleFormatting"), v89 = objc_claimAutoreleasedReturnValue(), [v4 brailleFormatting], v90 = objc_claimAutoreleasedReturnValue(), v91 = -[AXVoiceOverActivity identicalProperty:property2:](self, "identicalProperty:property2:", v89, v90), v90, v89, v91))
  {
    v92 = [(AXVoiceOverActivity *)self brailleStartAutoActivateOnTextFields];
    v93 = [v4 brailleStartAutoActivateOnTextFields];
    v94 = [(AXVoiceOverActivity *)self identicalProperty:v92 property2:v93];
  }

  else
  {
    v94 = 0;
  }

  return v94;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AXVoiceOverActivity *)self uuid];
    v6 = [v4 uuid];
    v7 = [v5 isEqual:v6];
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
  v5 = [(AXVoiceOverActivity *)self name];
  v6 = [(AXVoiceOverActivity *)self appIdentifiers];
  v7 = [(AXVoiceOverActivity *)self voiceIdentifier];
  v8 = [(AXVoiceOverActivity *)self punctuationGroup];
  v9 = [(AXVoiceOverActivity *)self volume];
  v10 = [(AXVoiceOverActivity *)self speechRate];
  v11 = [v3 stringWithFormat:@"%@: name: %@, apps: %@, voice: %@, punctuation: %@, volume: %@, rate: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end
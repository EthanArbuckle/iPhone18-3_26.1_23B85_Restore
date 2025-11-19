@interface CPVoiceControlTemplate
- (CPVoiceControlTemplate)initWithCoder:(id)a3;
- (CPVoiceControlTemplate)initWithVoiceControlStates:(NSArray *)voiceControlStates;
- (void)activateVoiceControlStateWithIdentifier:(NSString *)identifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPVoiceControlTemplate

- (CPVoiceControlTemplate)initWithVoiceControlStates:(NSArray *)voiceControlStates
{
  v4 = voiceControlStates;
  v14.receiver = self;
  v14.super_class = CPVoiceControlTemplate;
  v5 = [(CPTemplate *)&v14 init];
  if (v5)
  {
    if ([(NSArray *)v4 count]< 6)
    {
      v9 = v4;
      v6 = v5->_voiceControlStates;
      v5->_voiceControlStates = v9;
    }

    else
    {
      v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, 5}];
      v7 = [(NSArray *)v4 objectsAtIndexes:v6];
      v8 = v5->_voiceControlStates;
      v5->_voiceControlStates = v7;
    }

    v10 = [(NSArray *)v4 firstObject];
    v11 = [v10 identifier];
    activeStateIdentifier = v5->_activeStateIdentifier;
    v5->_activeStateIdentifier = v11;
  }

  return v5;
}

- (CPVoiceControlTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CPVoiceControlTemplate;
  v5 = [(CPTemplate *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCPVoiceControlStatesKey"];

    if ([v9 count] < 6)
    {
      v13 = v9;
      voiceControlStates = v5->_voiceControlStates;
      v5->_voiceControlStates = v13;
    }

    else
    {
      voiceControlStates = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, 5}];
      v11 = [v9 objectsAtIndexes:voiceControlStates];
      v12 = v5->_voiceControlStates;
      v5->_voiceControlStates = v11;
    }

    v14 = [(CPVoiceControlTemplate *)v5 voiceControlStates];
    v15 = [v14 firstObject];
    v16 = [v15 identifier];
    activeStateIdentifier = v5->_activeStateIdentifier;
    v5->_activeStateIdentifier = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPVoiceControlTemplate;
  v4 = a3;
  [(CPTemplate *)&v6 encodeWithCoder:v4];
  v5 = [(CPVoiceControlTemplate *)self voiceControlStates:v6.receiver];
  [v4 encodeObject:v5 forKey:@"kCPVoiceControlStatesKey"];
}

- (void)activateVoiceControlStateWithIdentifier:(NSString *)identifier
{
  v5 = identifier;
  objc_storeStrong(&self->_activeStateIdentifier, identifier);
  v6 = [(CPTemplate *)self templateProviderFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CPVoiceControlTemplate_activateVoiceControlStateWithIdentifier___block_invoke;
  v9[3] = &unk_278A11028;
  v10 = v5;
  v7 = v5;
  v8 = [v6 addSuccessBlock:v9];
}

@end
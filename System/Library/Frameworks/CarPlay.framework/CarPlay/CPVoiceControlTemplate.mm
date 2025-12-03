@interface CPVoiceControlTemplate
- (CPVoiceControlTemplate)initWithCoder:(id)coder;
- (CPVoiceControlTemplate)initWithVoiceControlStates:(NSArray *)voiceControlStates;
- (void)activateVoiceControlStateWithIdentifier:(NSString *)identifier;
- (void)encodeWithCoder:(id)coder;
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

    firstObject = [(NSArray *)v4 firstObject];
    identifier = [firstObject identifier];
    activeStateIdentifier = v5->_activeStateIdentifier;
    v5->_activeStateIdentifier = identifier;
  }

  return v5;
}

- (CPVoiceControlTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CPVoiceControlTemplate;
  v5 = [(CPTemplate *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCPVoiceControlStatesKey"];

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

    voiceControlStates = [(CPVoiceControlTemplate *)v5 voiceControlStates];
    firstObject = [voiceControlStates firstObject];
    identifier = [firstObject identifier];
    activeStateIdentifier = v5->_activeStateIdentifier;
    v5->_activeStateIdentifier = identifier;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CPVoiceControlTemplate;
  coderCopy = coder;
  [(CPTemplate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CPVoiceControlTemplate *)self voiceControlStates:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPVoiceControlStatesKey"];
}

- (void)activateVoiceControlStateWithIdentifier:(NSString *)identifier
{
  v5 = identifier;
  objc_storeStrong(&self->_activeStateIdentifier, identifier);
  templateProviderFuture = [(CPTemplate *)self templateProviderFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CPVoiceControlTemplate_activateVoiceControlStateWithIdentifier___block_invoke;
  v9[3] = &unk_278A11028;
  v10 = v5;
  v7 = v5;
  v8 = [templateProviderFuture addSuccessBlock:v9];
}

@end
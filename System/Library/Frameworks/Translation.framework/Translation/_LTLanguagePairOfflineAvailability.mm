@interface _LTLanguagePairOfflineAvailability
- (_LTLanguagePairOfflineAvailability)initWithCoder:(id)coder;
- (_LTLanguagePairOfflineAvailability)initWithLocales:(id)locales;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTLanguagePairOfflineAvailability

- (_LTLanguagePairOfflineAvailability)initWithLocales:(id)locales
{
  localesCopy = locales;
  v14.receiver = self;
  v14.super_class = _LTLanguagePairOfflineAvailability;
  v6 = [(_LTLanguagePairOfflineAvailability *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pair, locales);
    v7->_pairState = 3;
    sourceASRState = v7->_sourceASRState;
    v7->_sourceASRState = @"Unknown";

    targetASRState = v7->_targetASRState;
    v7->_targetASRState = @"Unknown";

    sourceTTSState = v7->_sourceTTSState;
    v7->_sourceTTSState = @"Unimplemented";

    targetTTSState = v7->_targetTTSState;
    v7->_targetTTSState = @"Unimplemented";

    mtState = v7->_mtState;
    v7->_mtState = @"Unknown";

    v7->_needsUpdate = 0;
  }

  return v7;
}

- (id)description
{
  pair = [(_LTLanguagePairOfflineAvailability *)self pair];
  sourceLocale = [pair sourceLocale];
  localeIdentifier = [sourceLocale localeIdentifier];

  pair2 = [(_LTLanguagePairOfflineAvailability *)self pair];
  targetLocale = [pair2 targetLocale];
  localeIdentifier2 = [targetLocale localeIdentifier];

  pairState = self->_pairState;
  if (pairState > 2)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = off_278B6D048[pairState];
  }

  if (self->_needsUpdate)
  {
    v11 = @"Update";
  }

  else
  {
    v11 = &stru_284DBB9B8;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <-> %@ | pair: %@ MT: %@ ASR-%@ : %@ ASR-%@: %@ %@", localeIdentifier, localeIdentifier2, v10, self->_mtState, localeIdentifier, self->_sourceASRState, localeIdentifier2, self->_targetASRState, v11];

  return v12;
}

- (_LTLanguagePairOfflineAvailability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _LTLanguagePairOfflineAvailability;
  v5 = [(_LTLanguagePairOfflineAvailability *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pair"];
    pair = v5->_pair;
    v5->_pair = v6;

    v5->_pairState = [coderCopy decodeIntegerForKey:@"pairState"];
    v8 = [coderCopy decodeObjectForKey:@"sourceASRState"];
    sourceASRState = v5->_sourceASRState;
    v5->_sourceASRState = v8;

    v10 = [coderCopy decodeObjectForKey:@"targetASRState"];
    targetASRState = v5->_targetASRState;
    v5->_targetASRState = v10;

    v12 = [coderCopy decodeObjectForKey:@"sourceTTSState"];
    sourceTTSState = v5->_sourceTTSState;
    v5->_sourceTTSState = v12;

    v14 = [coderCopy decodeObjectForKey:@"targetTTSState"];
    targetTTSState = v5->_targetTTSState;
    v5->_targetTTSState = v14;

    v16 = [coderCopy decodeObjectForKey:@"mtState"];
    mtState = v5->_mtState;
    v5->_mtState = v16;

    v5->_needsUpdate = [coderCopy decodeBoolForKey:@"needsUpdate"];
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pair = self->_pair;
  coderCopy = coder;
  [coderCopy encodeObject:pair forKey:@"pair"];
  [coderCopy encodeInteger:self->_pairState forKey:@"pairState"];
  [coderCopy encodeObject:self->_sourceASRState forKey:@"sourceASRState"];
  [coderCopy encodeObject:self->_targetASRState forKey:@"targetASRState"];
  [coderCopy encodeObject:self->_sourceTTSState forKey:@"sourceTTSState"];
  [coderCopy encodeObject:self->_targetTTSState forKey:@"targetTTSState"];
  [coderCopy encodeObject:self->_mtState forKey:@"mtState"];
  [coderCopy encodeBool:self->_needsUpdate forKey:@"needsUpdate"];
}

@end
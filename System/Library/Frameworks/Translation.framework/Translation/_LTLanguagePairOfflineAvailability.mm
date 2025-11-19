@interface _LTLanguagePairOfflineAvailability
- (_LTLanguagePairOfflineAvailability)initWithCoder:(id)a3;
- (_LTLanguagePairOfflineAvailability)initWithLocales:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTLanguagePairOfflineAvailability

- (_LTLanguagePairOfflineAvailability)initWithLocales:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _LTLanguagePairOfflineAvailability;
  v6 = [(_LTLanguagePairOfflineAvailability *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pair, a3);
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
  v3 = [(_LTLanguagePairOfflineAvailability *)self pair];
  v4 = [v3 sourceLocale];
  v5 = [v4 localeIdentifier];

  v6 = [(_LTLanguagePairOfflineAvailability *)self pair];
  v7 = [v6 targetLocale];
  v8 = [v7 localeIdentifier];

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

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <-> %@ | pair: %@ MT: %@ ASR-%@ : %@ ASR-%@: %@ %@", v5, v8, v10, self->_mtState, v5, self->_sourceASRState, v8, self->_targetASRState, v11];

  return v12;
}

- (_LTLanguagePairOfflineAvailability)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _LTLanguagePairOfflineAvailability;
  v5 = [(_LTLanguagePairOfflineAvailability *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pair"];
    pair = v5->_pair;
    v5->_pair = v6;

    v5->_pairState = [v4 decodeIntegerForKey:@"pairState"];
    v8 = [v4 decodeObjectForKey:@"sourceASRState"];
    sourceASRState = v5->_sourceASRState;
    v5->_sourceASRState = v8;

    v10 = [v4 decodeObjectForKey:@"targetASRState"];
    targetASRState = v5->_targetASRState;
    v5->_targetASRState = v10;

    v12 = [v4 decodeObjectForKey:@"sourceTTSState"];
    sourceTTSState = v5->_sourceTTSState;
    v5->_sourceTTSState = v12;

    v14 = [v4 decodeObjectForKey:@"targetTTSState"];
    targetTTSState = v5->_targetTTSState;
    v5->_targetTTSState = v14;

    v16 = [v4 decodeObjectForKey:@"mtState"];
    mtState = v5->_mtState;
    v5->_mtState = v16;

    v5->_needsUpdate = [v4 decodeBoolForKey:@"needsUpdate"];
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pair = self->_pair;
  v5 = a3;
  [v5 encodeObject:pair forKey:@"pair"];
  [v5 encodeInteger:self->_pairState forKey:@"pairState"];
  [v5 encodeObject:self->_sourceASRState forKey:@"sourceASRState"];
  [v5 encodeObject:self->_targetASRState forKey:@"targetASRState"];
  [v5 encodeObject:self->_sourceTTSState forKey:@"sourceTTSState"];
  [v5 encodeObject:self->_targetTTSState forKey:@"targetTTSState"];
  [v5 encodeObject:self->_mtState forKey:@"mtState"];
  [v5 encodeBool:self->_needsUpdate forKey:@"needsUpdate"];
}

@end
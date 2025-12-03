@interface _LTTextResult
- (BOOL)isEqual:(id)equal;
- (_LTTextResult)initWithLocalePair:(id)pair sourceText:(id)text targetText:(id)targetText clientIdentifier:(id)identifier;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation _LTTextResult

- (_LTTextResult)initWithLocalePair:(id)pair sourceText:(id)text targetText:(id)targetText clientIdentifier:(id)identifier
{
  pairCopy = pair;
  textCopy = text;
  targetTextCopy = targetText;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = _LTTextResult;
  v15 = [(_LTTextResult *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_localePair, pair);
    v17 = [textCopy copy];
    sourceText = v16->_sourceText;
    v16->_sourceText = v17;

    v19 = [targetTextCopy copy];
    targetText = v16->_targetText;
    v16->_targetText = v19;

    v21 = [identifierCopy copy];
    clientIdentifier = v16->_clientIdentifier;
    v16->_clientIdentifier = v21;

    v23 = v16;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    clientIdentifier = [(_LTTextResult *)self clientIdentifier];
    clientIdentifier2 = [v5 clientIdentifier];
    if ([clientIdentifier isEqualToString:clientIdentifier2])
    {
      v8 = 1;
    }

    else
    {
      clientIdentifier3 = [(_LTTextResult *)self clientIdentifier];
      if (clientIdentifier3)
      {
        v8 = 0;
      }

      else
      {
        clientIdentifier4 = [(_LTTextResult *)self clientIdentifier];
        v8 = clientIdentifier4 == 0;
      }
    }

    localePair = [(_LTTextResult *)self localePair];
    localePair2 = [v5 localePair];
    if ([localePair isEqual:localePair2])
    {
      sourceText = [(_LTTextResult *)self sourceText];
      sourceText2 = [v5 sourceText];
      if ([sourceText isEqualToString:sourceText2])
      {
        targetText = [(_LTTextResult *)self targetText];
        targetText2 = [v5 targetText];
        v9 = [targetText isEqualToString:targetText2] & v8;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  localePair = [(_LTTextResult *)self localePair];
  v4 = [localePair hash];
  sourceText = [(_LTTextResult *)self sourceText];
  v6 = [sourceText hash] ^ v4;
  targetText = [(_LTTextResult *)self targetText];
  v8 = [targetText hash];
  clientIdentifier = [(_LTTextResult *)self clientIdentifier];
  v10 = v8 ^ [clientIdentifier hash];

  return v6 ^ v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sourceText = [(_LTTextResult *)self sourceText];
  v6 = [v3 stringWithFormat:@"<%@: %p source: %@>", v4, self, sourceText];

  return v6;
}

@end
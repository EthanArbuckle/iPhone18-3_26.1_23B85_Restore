@interface _LTTextResult
- (BOOL)isEqual:(id)a3;
- (_LTTextResult)initWithLocalePair:(id)a3 sourceText:(id)a4 targetText:(id)a5 clientIdentifier:(id)a6;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation _LTTextResult

- (_LTTextResult)initWithLocalePair:(id)a3 sourceText:(id)a4 targetText:(id)a5 clientIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = _LTTextResult;
  v15 = [(_LTTextResult *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_localePair, a3);
    v17 = [v12 copy];
    sourceText = v16->_sourceText;
    v16->_sourceText = v17;

    v19 = [v13 copy];
    targetText = v16->_targetText;
    v16->_targetText = v19;

    v21 = [v14 copy];
    clientIdentifier = v16->_clientIdentifier;
    v16->_clientIdentifier = v21;

    v23 = v16;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_LTTextResult *)self clientIdentifier];
    v7 = [v5 clientIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = 1;
    }

    else
    {
      v10 = [(_LTTextResult *)self clientIdentifier];
      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v11 = [(_LTTextResult *)self clientIdentifier];
        v8 = v11 == 0;
      }
    }

    v12 = [(_LTTextResult *)self localePair];
    v13 = [v5 localePair];
    if ([v12 isEqual:v13])
    {
      v14 = [(_LTTextResult *)self sourceText];
      v15 = [v5 sourceText];
      if ([v14 isEqualToString:v15])
      {
        v16 = [(_LTTextResult *)self targetText];
        v17 = [v5 targetText];
        v9 = [v16 isEqualToString:v17] & v8;
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
  v3 = [(_LTTextResult *)self localePair];
  v4 = [v3 hash];
  v5 = [(_LTTextResult *)self sourceText];
  v6 = [v5 hash] ^ v4;
  v7 = [(_LTTextResult *)self targetText];
  v8 = [v7 hash];
  v9 = [(_LTTextResult *)self clientIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(_LTTextResult *)self sourceText];
  v6 = [v3 stringWithFormat:@"<%@: %p source: %@>", v4, self, v5];

  return v6;
}

@end
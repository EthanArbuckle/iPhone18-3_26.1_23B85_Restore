@interface MPServerObjectDatabaseAsset
- (MPServerObjectDatabaseAsset)initWithSQLRowResult:(id)result;
- (id)_initWithIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor url:(id)url miniSINF:(id)f sinfs:(id)sinfs;
- (id)description;
@end

@implementation MPServerObjectDatabaseAsset

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_sinfs;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v19 + 1) + 8 * v7) objectForKeyedSubscript:@"sinf2"];
        if (_NSIsNSString())
        {
          v9 = [v8 length];

          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  identifier = self->_identifier;
  hashedPersonID = self->_hashedPersonID;
  v14 = self->_flavor - 1;
  if (v14 > 3)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E767C3B0[v14];
  }

  v16 = [(NSData *)self->_miniSINF length];
  v17 = [v10 stringWithFormat:@"<%@: %p hashedPersonID=%@ identifier=%@ flavor=%@ miniSinf=%lld bytes sinf2=%lld bytes url=%@", v11, self, hashedPersonID, identifier, v15, v16, v9, self->_url, v19];

  return v17;
}

- (MPServerObjectDatabaseAsset)initWithSQLRowResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy stringValueAtColumnIndex:0];
  v6 = 1;
  v7 = [resultCopy stringValueAtColumnIndex:1];
  v8 = [resultCopy stringValueAtColumnIndex:2];
  if (([&unk_1F1509DF0 containsObject:v8] & 1) == 0)
  {
    if ([&unk_1F1509E08 containsObject:v8])
    {
      v6 = 2;
    }

    else if ([&unk_1F1509E20 containsObject:v8])
    {
      v6 = 3;
    }

    else if ([&unk_1F1509E38 containsObject:v8])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = [resultCopy stringValueAtColumnIndex:3];
  v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  v11 = [resultCopy dataValueAtColumnIndex:4];
  if ([v11 length] == 1)
  {

    v11 = 0;
  }

  v12 = [resultCopy jsonValueAtColumnIndex:5 error:0];
  v13 = [(MPServerObjectDatabaseAsset *)self _initWithIdentifier:v5 hashedPersonID:v7 flavor:v6 url:v10 miniSINF:v11 sinfs:v12];

  return v13;
}

- (id)_initWithIdentifier:(id)identifier hashedPersonID:(id)d flavor:(int64_t)flavor url:(id)url miniSINF:(id)f sinfs:(id)sinfs
{
  identifierCopy = identifier;
  dCopy = d;
  urlCopy = url;
  fCopy = f;
  sinfsCopy = sinfs;
  v31.receiver = self;
  v31.super_class = MPServerObjectDatabaseAsset;
  v19 = [(MPServerObjectDatabaseAsset *)&v31 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [dCopy copy];
    hashedPersonID = v19->_hashedPersonID;
    v19->_hashedPersonID = v22;

    v19->_flavor = flavor;
    v24 = [urlCopy copy];
    url = v19->_url;
    v19->_url = v24;

    v26 = [sinfsCopy copy];
    sinfs = v19->_sinfs;
    v19->_sinfs = v26;

    v28 = [fCopy copy];
    miniSINF = v19->_miniSINF;
    v19->_miniSINF = v28;
  }

  return v19;
}

@end
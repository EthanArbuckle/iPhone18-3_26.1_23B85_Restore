@interface SHMatch
- (BOOL)containsMediaItemWithFuzzyTolerance:(id)a3;
- (SHMatch)initWithCoder:(id)a3;
- (SHMatch)initWithMediaItems:(id)a3 forSignature:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHMatch

- (SHMatch)initWithMediaItems:(id)a3 forSignature:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHMatch;
  v9 = [(SHMatch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaItems, a3);
    objc_storeStrong(&v10->_querySignature, a4);
  }

  return v10;
}

- (BOOL)containsMediaItemWithFuzzyTolerance:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(SHMatch *)self mediaItems];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 shazamID];
          v12 = [v4 shazamID];
          if ([v11 isEqualToString:v12])
          {

LABEL_15:
            v16 = 1;
            goto LABEL_16;
          }

          v13 = [v10 fuzzyRepresentation];
          v14 = [v4 fuzzyRepresentation];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v16 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_16:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  querySignature = self->_querySignature;
  v5 = a3;
  [v5 encodeObject:querySignature forKey:@"signature"];
  [v5 encodeObject:self->_mediaItems forKey:@"mediaItems"];
}

- (SHMatch)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"mediaItems"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];

  v10 = [(SHMatch *)self initWithMediaItems:v8 forSignature:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end
@interface SHMatch
- (BOOL)containsMediaItemWithFuzzyTolerance:(id)tolerance;
- (SHMatch)initWithCoder:(id)coder;
- (SHMatch)initWithMediaItems:(id)items forSignature:(id)signature;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMatch

- (SHMatch)initWithMediaItems:(id)items forSignature:(id)signature
{
  itemsCopy = items;
  signatureCopy = signature;
  v12.receiver = self;
  v12.super_class = SHMatch;
  v9 = [(SHMatch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaItems, items);
    objc_storeStrong(&v10->_querySignature, signature);
  }

  return v10;
}

- (BOOL)containsMediaItemWithFuzzyTolerance:(id)tolerance
{
  v24 = *MEMORY[0x277D85DE8];
  toleranceCopy = tolerance;
  if (toleranceCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    mediaItems = [(SHMatch *)self mediaItems];
    v6 = [mediaItems countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(mediaItems);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          shazamID = [v10 shazamID];
          shazamID2 = [toleranceCopy shazamID];
          if ([shazamID isEqualToString:shazamID2])
          {

LABEL_15:
            v16 = 1;
            goto LABEL_16;
          }

          fuzzyRepresentation = [v10 fuzzyRepresentation];
          fuzzyRepresentation2 = [toleranceCopy fuzzyRepresentation];
          v15 = [fuzzyRepresentation isEqualToString:fuzzyRepresentation2];

          if (v15)
          {
            goto LABEL_15;
          }
        }

        v7 = [mediaItems countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)encodeWithCoder:(id)coder
{
  querySignature = self->_querySignature;
  coderCopy = coder;
  [coderCopy encodeObject:querySignature forKey:@"signature"];
  [coderCopy encodeObject:self->_mediaItems forKey:@"mediaItems"];
}

- (SHMatch)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"mediaItems"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];

  v10 = [(SHMatch *)self initWithMediaItems:v8 forSignature:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end
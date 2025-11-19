@interface LPiTunesMediaOffer
+ (id)previewURLForOffer:(id)a3;
+ (id)typeForOffer:(id)a3;
- (LPiTunesMediaOffer)initWithDictionary:(id)a3;
@end

@implementation LPiTunesMediaOffer

- (LPiTunesMediaOffer)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LPiTunesMediaOffer;
  v5 = [(LPiTunesMediaOffer *)&v12 init];
  if (v5 && ([LPiTunesMediaOffer typeForOffer:v4], v6 = objc_claimAutoreleasedReturnValue(), type = v5->_type, v5->_type = v6, type, v5->_type))
  {
    v8 = [LPiTunesMediaOffer previewURLForOffer:v4];
    previewURL = v5->_previewURL;
    v5->_previewURL = v8;

    v5->_hasAudio = [LPiTunesMediaOffer hasAudioForOffer:v4];
    v5->_hasVideo = [LPiTunesMediaOffer hasVideoForOffer:v4];
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)previewURLForOffer:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v3 = [v20 objectForKeyedSubscript:@"assets"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 count])
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v6 = 0;
    if (v5)
    {
      v7 = *v22;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = [v11 objectForKeyedSubscript:@"flavor"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [&unk_1F24838D8 indexOfObject:v12];
              if (v13 < v8)
              {
                v14 = v11;
                v15 = v6;
                v6 = v14;

                v8 = v13;
              }
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v5);
    }

    if (v6)
    {
      v16 = [v6 objectForKeyedSubscript:@"preview"];
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v17 = [v16 objectForKeyedSubscript:@"url"];
        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)typeForOffer:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"type"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
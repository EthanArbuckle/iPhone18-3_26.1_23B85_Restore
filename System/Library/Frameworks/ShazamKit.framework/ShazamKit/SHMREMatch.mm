@interface SHMREMatch
- (SHMREMatch)initWithResult:(id)a3 mediaItems:(id)a4 signatureAlignments:(id)a5 querySignature:(id)a6;
- (SHMREMatch)initWithTrackID:(unint64_t)a3 matchOffset:(double)a4 timeSkew:(id)a5 frequencySkew:(id)a6 score:(id)a7 mediaItems:(id)a8 querySignature:(id)a9 signatureAlignments:(id)a10;
- (id)toMatchedMediaItems;
@end

@implementation SHMREMatch

- (SHMREMatch)initWithResult:(id)a3 mediaItems:(id)a4 signatureAlignments:(id)a5 querySignature:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 trackID];
  [v13 offset];
  v16 = v15;
  v17 = [v13 timeSkew];
  v18 = [v13 freqSkew];
  v19 = [v13 score];

  v20 = [(SHMREMatch *)self initWithTrackID:v14 matchOffset:v17 timeSkew:v18 frequencySkew:v19 score:v12 mediaItems:v10 querySignature:v16 signatureAlignments:v11];
  return v20;
}

- (SHMREMatch)initWithTrackID:(unint64_t)a3 matchOffset:(double)a4 timeSkew:(id)a5 frequencySkew:(id)a6 score:(id)a7 mediaItems:(id)a8 querySignature:(id)a9 signatureAlignments:(id)a10
{
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v27.receiver = self;
  v27.super_class = SHMREMatch;
  v20 = [(SHMREMatch *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_trackID = a3;
    v20->_offset = a4;
    objc_storeStrong(&v20->_timeSkew, a5);
    objc_storeStrong(&v21->_freqSkew, a6);
    objc_storeStrong(&v21->_score, a7);
    objc_storeStrong(&v21->_mediaItems, a8);
    objc_storeStrong(&v21->_signatureAlignments, a10);
    objc_storeStrong(&v21->_querySignature, a9);
  }

  return v21;
}

- (id)toMatchedMediaItems
{
  v40[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v39[0] = @"sh_matchOffset";
  v4 = MEMORY[0x277CCABB0];
  [(SHMREMatch *)self offset];
  v5 = [v4 numberWithDouble:?];
  v40[0] = v5;
  v39[1] = @"sh_speedSkew";
  v6 = [(SHMREMatch *)self timeSkew];
  v40[1] = v6;
  v39[2] = @"sh_frequencySkew";
  v7 = [(SHMREMatch *)self freqSkew];
  v40[2] = v7;
  v39[3] = @"sh_score";
  v8 = [(SHMREMatch *)self score];
  v40[3] = v8;
  v39[4] = @"sh_audioStartDate";
  v9 = [(SHMREMatch *)self querySignature];
  v10 = [v9 audioStartDate];
  v40[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];
  v12 = [v3 dictionaryWithDictionary:v11];

  v13 = [(SHMREMatch *)self signatureAlignments];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(SHMREMatch *)self signatureAlignments];
    [v12 setValue:v15 forKey:@"sh_signatureAlignments"];
  }

  v16 = [(SHMREMatch *)self mediaItems];
  v17 = [v16 count];

  if (v17)
  {
    v18 = MEMORY[0x277CBEB18];
    v19 = [(SHMREMatch *)self mediaItems];
    v20 = [v18 arrayWithCapacity:{objc_msgSend(v19, "count")}];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = [(SHMREMatch *)self mediaItems];
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v33 + 1) + 8 * i) properties];
          v27 = [v26 mutableCopy];

          [v27 addEntriesFromDictionary:v12];
          v28 = [[SHMatchedMediaItem alloc] initWithMatchedMediaItemDictionary:v27];
          [(SHMatchedMediaItem *)v20 addObject:v28];
        }

        v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v23);
    }

    v29 = [(SHMatchedMediaItem *)v20 copy];
  }

  else
  {
    v20 = [[SHMatchedMediaItem alloc] initWithMatchedMediaItemDictionary:v12];
    v38 = v20;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  }

  v30 = v29;

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

@end
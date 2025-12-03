@interface SHMREMatch
- (SHMREMatch)initWithResult:(id)result mediaItems:(id)items signatureAlignments:(id)alignments querySignature:(id)signature;
- (SHMREMatch)initWithTrackID:(unint64_t)d matchOffset:(double)offset timeSkew:(id)skew frequencySkew:(id)frequencySkew score:(id)score mediaItems:(id)items querySignature:(id)signature signatureAlignments:(id)self0;
- (id)toMatchedMediaItems;
@end

@implementation SHMREMatch

- (SHMREMatch)initWithResult:(id)result mediaItems:(id)items signatureAlignments:(id)alignments querySignature:(id)signature
{
  signatureCopy = signature;
  alignmentsCopy = alignments;
  itemsCopy = items;
  resultCopy = result;
  trackID = [resultCopy trackID];
  [resultCopy offset];
  v16 = v15;
  timeSkew = [resultCopy timeSkew];
  freqSkew = [resultCopy freqSkew];
  score = [resultCopy score];

  v20 = [(SHMREMatch *)self initWithTrackID:trackID matchOffset:timeSkew timeSkew:freqSkew frequencySkew:score score:itemsCopy mediaItems:signatureCopy querySignature:v16 signatureAlignments:alignmentsCopy];
  return v20;
}

- (SHMREMatch)initWithTrackID:(unint64_t)d matchOffset:(double)offset timeSkew:(id)skew frequencySkew:(id)frequencySkew score:(id)score mediaItems:(id)items querySignature:(id)signature signatureAlignments:(id)self0
{
  skewCopy = skew;
  frequencySkewCopy = frequencySkew;
  scoreCopy = score;
  itemsCopy = items;
  signatureCopy = signature;
  alignmentsCopy = alignments;
  v27.receiver = self;
  v27.super_class = SHMREMatch;
  v20 = [(SHMREMatch *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_trackID = d;
    v20->_offset = offset;
    objc_storeStrong(&v20->_timeSkew, skew);
    objc_storeStrong(&v21->_freqSkew, frequencySkew);
    objc_storeStrong(&v21->_score, score);
    objc_storeStrong(&v21->_mediaItems, items);
    objc_storeStrong(&v21->_signatureAlignments, alignments);
    objc_storeStrong(&v21->_querySignature, signature);
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
  timeSkew = [(SHMREMatch *)self timeSkew];
  v40[1] = timeSkew;
  v39[2] = @"sh_frequencySkew";
  freqSkew = [(SHMREMatch *)self freqSkew];
  v40[2] = freqSkew;
  v39[3] = @"sh_score";
  score = [(SHMREMatch *)self score];
  v40[3] = score;
  v39[4] = @"sh_audioStartDate";
  querySignature = [(SHMREMatch *)self querySignature];
  audioStartDate = [querySignature audioStartDate];
  v40[4] = audioStartDate;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];
  v12 = [v3 dictionaryWithDictionary:v11];

  signatureAlignments = [(SHMREMatch *)self signatureAlignments];
  v14 = [signatureAlignments count];

  if (v14)
  {
    signatureAlignments2 = [(SHMREMatch *)self signatureAlignments];
    [v12 setValue:signatureAlignments2 forKey:@"sh_signatureAlignments"];
  }

  mediaItems = [(SHMREMatch *)self mediaItems];
  v17 = [mediaItems count];

  if (v17)
  {
    v18 = MEMORY[0x277CBEB18];
    mediaItems2 = [(SHMREMatch *)self mediaItems];
    v20 = [v18 arrayWithCapacity:{objc_msgSend(mediaItems2, "count")}];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    mediaItems3 = [(SHMREMatch *)self mediaItems];
    v22 = [mediaItems3 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(mediaItems3);
          }

          properties = [*(*(&v33 + 1) + 8 * i) properties];
          v27 = [properties mutableCopy];

          [v27 addEntriesFromDictionary:v12];
          v28 = [[SHMatchedMediaItem alloc] initWithMatchedMediaItemDictionary:v27];
          [(SHMatchedMediaItem *)v20 addObject:v28];
        }

        v23 = [mediaItems3 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
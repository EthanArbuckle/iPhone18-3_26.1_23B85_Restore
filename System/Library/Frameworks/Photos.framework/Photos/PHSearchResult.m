@interface PHSearchResult
- (BOOL)isEligibleForSuggestions;
- (BOOL)isSyndicationAsset;
- (PHSearchResult)initWithCoder:(id)a3;
- (PHSearchResult)initWithSearchResultType:(unint64_t)a3 uuid:(id)a4 retrievalType:(unint64_t)a5 hasOCRTextMatch:(BOOL)a6 isSensitiveLocation:(BOOL)a7 embeddingDistances:(id)a8 l1Score:(id)a9 l2Score:(id)a10 collectionScore:(id)a11 creationDate:(id)a12 addedDate:(id)a13 matchedThumbnailIdentifier:(id)a14 bundleIdentifier:(id)a15;
- (id)description;
- (id)jsonDictionary;
- (id)redactedJSONDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHSearchResult

- (PHSearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchResultResultType"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchResultPropertyUUID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchResultPropertyBundleIdentifier"];

  v9 = [(PHSearchResult *)self initWithSearchResultType:v6 uuid:v7 retrievalType:0 hasOCRTextMatch:0 isSensitiveLocation:0 embeddingDistances:MEMORY[0x1E695E0F0] l1Score:0 l2Score:0 collectionScore:0 creationDate:0 addedDate:0 matchedThumbnailIdentifier:0 bundleIdentifier:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"PHSearchResultPropertyUUID"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"PHSearchResultPropertyBundleIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [v5 encodeObject:v6 forKey:@"PHSearchResultResultType"];
}

- (id)redactedJSONDictionary
{
  v44[16] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v36 = objc_alloc(MEMORY[0x1E695DF90]);
  v43[0] = @"type";
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult type](self, "type")}];
  v44[0] = v41;
  v43[1] = @"type_humanReadable";
  v4 = [(PHSearchResult *)self type];
  if (v4 > 5)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E75A4318[v4];
  }

  v40 = v5;
  v44[1] = v40;
  v43[2] = @"uuid";
  v39 = [(PHSearchResult *)self uuid];
  v44[2] = v39;
  v43[3] = @"retrievalType";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult retrievalType](self, "retrievalType")}];
  v44[3] = v38;
  v43[4] = @"retrievalType_humanReadable";
  v6 = [(PHSearchResult *)self retrievalType];
  if (v6 > 3)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E75A4348[v6];
  }

  v44[4] = v7;
  v43[5] = @"hasOCRTextMatch";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchResult hasOCRTextMatch](self, "hasOCRTextMatch")}];
  v44[5] = v37;
  v43[6] = @"isSensitiveLocation";
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchResult isSensitiveLocation](self, "isSensitiveLocation")}];
  v44[6] = v35;
  v43[7] = @"rankingScore_L1";
  v8 = [(PHSearchResult *)self l1Score];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v8;
  v44[7] = v8;
  v43[8] = @"rankingScore_L2";
  v10 = [(PHSearchResult *)self l2Score];
  v11 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v9;
  v30 = v10;
  v44[8] = v10;
  v43[9] = @"collectionScore";
  v12 = [(PHSearchResult *)self collectionScore];
  v13 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v11;
  v29 = v12;
  v44[9] = v12;
  v43[10] = @"semanticEmbeddingDistances";
  v14 = [(PHSearchResult *)self embeddingDistances];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v14;
  v44[10] = v14;
  v43[11] = @"matchType";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult matchType](self, "matchType")}];
  v44[11] = v32;
  v43[12] = @"matchType_humanReadable";
  v16 = [(PHSearchResult *)self matchType];
  if (v16 > 3)
  {
    v17 = @"Unknown";
  }

  else
  {
    v17 = off_1E75A4368[v16];
  }

  v44[12] = v17;
  v43[13] = @"creationDate";
  v18 = [v3 stringFromDate:self->_creationDate];
  v19 = v18;
  if (!v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v44[13] = v19;
  v43[14] = @"addedDate";
  v42 = v3;
  v20 = [v3 stringFromDate:self->_addedDate];
  v21 = v20;
  if (!v20)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v44[14] = v21;
  v43[15] = @"matchedThumbnailIdentifier";
  v22 = [(PHSearchResult *)self matchedThumbnailIdentifier];
  v23 = v22;
  if (!v22)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v44[15] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:16];
  v25 = [v36 initWithDictionary:v24];

  if (!v22)
  {
  }

  if (!v20)
  {
  }

  if (!v18)
  {
  }

  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v33)
  {
  }

  if (!v34)
  {
  }

  v26 = [v25 copy];

  return v26;
}

- (id)jsonDictionary
{
  v46[17] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v39 = objc_alloc(MEMORY[0x1E695DF90]);
  v45[0] = @"type";
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult type](self, "type")}];
  v46[0] = v44;
  v45[1] = @"type_humanReadable";
  v4 = [(PHSearchResult *)self type];
  if (v4 > 5)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E75A4318[v4];
  }

  v43 = v5;
  v46[1] = v43;
  v45[2] = @"uuid";
  v42 = [(PHSearchResult *)self uuid];
  v46[2] = v42;
  v45[3] = @"retrievalType";
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult retrievalType](self, "retrievalType")}];
  v46[3] = v41;
  v45[4] = @"retrievalType_humanReadable";
  v6 = [(PHSearchResult *)self retrievalType];
  if (v6 > 3)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E75A4348[v6];
  }

  v46[4] = v7;
  v45[5] = @"hasOCRTextMatch";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchResult hasOCRTextMatch](self, "hasOCRTextMatch")}];
  v46[5] = v40;
  v45[6] = @"isSensitiveLocation";
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchResult isSensitiveLocation](self, "isSensitiveLocation")}];
  v46[6] = v38;
  v45[7] = @"rankingScore_L1";
  v8 = [(PHSearchResult *)self l1Score];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v8;
  v46[7] = v8;
  v45[8] = @"rankingScore_L2";
  v10 = [(PHSearchResult *)self l2Score];
  v36 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v10;
  v46[8] = v10;
  v45[9] = @"collectionScore";
  v11 = [(PHSearchResult *)self collectionScore];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v9;
  v30 = v11;
  v46[9] = v11;
  v45[10] = @"semanticEmbeddingDistances";
  v13 = [(PHSearchResult *)self embeddingDistances];
  v34 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v13;
  v46[10] = v13;
  v45[11] = @"matchType";
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult matchType](self, "matchType")}];
  v46[11] = v33;
  v45[12] = @"matchType_humanReadable";
  v14 = [(PHSearchResult *)self matchType];
  if (v14 > 3)
  {
    v15 = @"Unknown";
  }

  else
  {
    v15 = off_1E75A4368[v14];
  }

  v46[12] = v15;
  v45[13] = @"creationDate";
  v16 = [v3 stringFromDate:self->_creationDate];
  v17 = v16;
  if (!v16)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v16;
  v46[13] = v16;
  v45[14] = @"addedDate";
  v18 = [v3 stringFromDate:self->_addedDate];
  v19 = v18;
  if (!v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v46[14] = v19;
  v45[15] = @"matchedThumbnailIdentifier";
  v20 = [(PHSearchResult *)self matchedThumbnailIdentifier];
  v21 = v20;
  if (!v20)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v3;
  v46[15] = v21;
  v45[16] = @"bundleIdentifier";
  v22 = [(PHSearchResult *)self bundleIdentifier];
  if ([v22 length])
  {
    [(PHSearchResult *)self bundleIdentifier];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v23 = ;
  v46[16] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:17];
  v25 = [v39 initWithDictionary:v24];

  if (!v20)
  {
  }

  if (!v18)
  {
  }

  if (!v17)
  {
  }

  if (!v34)
  {
  }

  if (!v12)
  {
  }

  if (!v36)
  {
  }

  if (!v37)
  {
  }

  v26 = [v25 copy];

  return v26;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@:%p\n", v5, self];

  v6 = self->_type - 1;
  if (v6 > 4)
  {
    v7 = @"PHSearchResultTypeUndefined";
  }

  else
  {
    v7 = off_1E75A42D8[v6];
  }

  [v3 appendFormat:@"type: '%@'\n", v7];
  [v3 appendFormat:@"uuid: '%@'\n", self->_uuid];
  v8 = self->_retrievalType - 1;
  if (v8 > 2)
  {
    v9 = @"PHSearchResultRetrievalTypeUndefined";
  }

  else
  {
    v9 = off_1E75A4300[v8];
  }

  [v3 appendFormat:@"retrievalType: %@\n", v9];
  matchType = self->_matchType;
  if (matchType > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E75A4368[matchType];
  }

  [v3 appendFormat:@"matchType: %@\n", v11];
  if (self->_hasOCRTextMatch)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 appendFormat:@"hasOCRTextMatch: %@\n", v12];
  if (self->_isSensitiveLocation)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 appendFormat:@"isSensitiveLocation: %@\n", v13];
  [v3 appendFormat:@"L1 Score: %@\n", self->_l1Score];
  [v3 appendFormat:@"L2 Score: %@\n", self->_l2Score];
  [v3 appendFormat:@"collection score: %@\n", self->_collectionScore];
  [v3 appendFormat:@"embedding distances: %@\n", self->_embeddingDistances];
  [v3 appendFormat:@"creationDate: %@\n", self->_creationDate];
  [v3 appendFormat:@"addedDate: %@\n", self->_addedDate];
  [v3 appendFormat:@"matchedThumbnailIdentifier: %@\n", self->_matchedThumbnailIdentifier];
  [v3 appendFormat:@"bundleIdentifier: %@\n", self->_bundleIdentifier];

  return v3;
}

- (BOOL)isSyndicationAsset
{
  v3 = +[PHSearchUtility syndicationLibraryBundleIdentifiers];
  v4 = [(PHSearchResult *)self bundleIdentifier];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (BOOL)isEligibleForSuggestions
{
  v3 = [(PHSearchResult *)self retrievalType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(PHSearchResult *)self retrievalType]== 3;
  }

  return v3;
}

- (PHSearchResult)initWithSearchResultType:(unint64_t)a3 uuid:(id)a4 retrievalType:(unint64_t)a5 hasOCRTextMatch:(BOOL)a6 isSensitiveLocation:(BOOL)a7 embeddingDistances:(id)a8 l1Score:(id)a9 l2Score:(id)a10 collectionScore:(id)a11 creationDate:(id)a12 addedDate:(id)a13 matchedThumbnailIdentifier:(id)a14 bundleIdentifier:(id)a15
{
  v17 = a4;
  v46 = a8;
  v45 = a9;
  v44 = a10;
  v43 = a11;
  v42 = a12;
  v41 = a13;
  v18 = a14;
  v19 = a15;
  if (!v17)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PHSearchResult.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  v47.receiver = self;
  v47.super_class = PHSearchResult;
  v20 = [(PHSearchResult *)&v47 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = a3;
    v22 = [v17 copy];
    uuid = v21->_uuid;
    v21->_uuid = v22;

    v21->_retrievalType = a5;
    v21->_hasOCRTextMatch = a6;
    v24 = [v46 copy];
    embeddingDistances = v21->_embeddingDistances;
    v21->_embeddingDistances = v24;

    objc_storeStrong(&v21->_l1Score, a9);
    objc_storeStrong(&v21->_l2Score, a10);
    objc_storeStrong(&v21->_collectionScore, a11);
    v21->_isSensitiveLocation = a7;
    objc_storeStrong(&v21->_creationDate, a12);
    objc_storeStrong(&v21->_addedDate, a13);
    v26 = [v18 copy];
    matchedThumbnailIdentifier = v21->_matchedThumbnailIdentifier;
    v21->_matchedThumbnailIdentifier = v26;

    v28 = [v19 copy];
    bundleIdentifier = v21->_bundleIdentifier;
    v21->_bundleIdentifier = v28;

    [(NSNumber *)v21->_l1Score doubleValue];
    if (v30 >= 100.0)
    {
      v21->_matchType = 1;
      [(NSNumber *)v21->_l1Score doubleValue];
      if (v33 == 100.0)
      {
        v21->_isExclusivelyExactOCRTextMatch = 1;
      }
    }

    else
    {
      [(NSNumber *)v21->_l1Score doubleValue];
      if (v31 >= 10.0)
      {
        v32 = 2;
      }

      else
      {
        v32 = 3;
      }

      v21->_matchType = v32;
    }
  }

  return v21;
}

@end
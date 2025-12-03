@interface PHSearchResult
- (BOOL)isEligibleForSuggestions;
- (BOOL)isSyndicationAsset;
- (PHSearchResult)initWithCoder:(id)coder;
- (PHSearchResult)initWithSearchResultType:(unint64_t)type uuid:(id)uuid retrievalType:(unint64_t)retrievalType hasOCRTextMatch:(BOOL)match isSensitiveLocation:(BOOL)location embeddingDistances:(id)distances l1Score:(id)score l2Score:(id)self0 collectionScore:(id)self1 creationDate:(id)self2 addedDate:(id)self3 matchedThumbnailIdentifier:(id)self4 bundleIdentifier:(id)self5;
- (id)description;
- (id)jsonDictionary;
- (id)redactedJSONDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHSearchResult

- (PHSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchResultResultType"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchResultPropertyUUID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchResultPropertyBundleIdentifier"];

  v9 = [(PHSearchResult *)self initWithSearchResultType:unsignedIntegerValue uuid:v7 retrievalType:0 hasOCRTextMatch:0 isSensitiveLocation:0 embeddingDistances:MEMORY[0x1E695E0F0] l1Score:0 l2Score:0 collectionScore:0 creationDate:0 addedDate:0 matchedThumbnailIdentifier:0 bundleIdentifier:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"PHSearchResultPropertyUUID"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"PHSearchResultPropertyBundleIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v6 forKey:@"PHSearchResultResultType"];
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
  type = [(PHSearchResult *)self type];
  if (type > 5)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E75A4318[type];
  }

  v40 = v5;
  v44[1] = v40;
  v43[2] = @"uuid";
  uuid = [(PHSearchResult *)self uuid];
  v44[2] = uuid;
  v43[3] = @"retrievalType";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult retrievalType](self, "retrievalType")}];
  v44[3] = v38;
  v43[4] = @"retrievalType_humanReadable";
  retrievalType = [(PHSearchResult *)self retrievalType];
  if (retrievalType > 3)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E75A4348[retrievalType];
  }

  v44[4] = v7;
  v43[5] = @"hasOCRTextMatch";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchResult hasOCRTextMatch](self, "hasOCRTextMatch")}];
  v44[5] = v37;
  v43[6] = @"isSensitiveLocation";
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchResult isSensitiveLocation](self, "isSensitiveLocation")}];
  v44[6] = v35;
  v43[7] = @"rankingScore_L1";
  l1Score = [(PHSearchResult *)self l1Score];
  v9 = l1Score;
  if (!l1Score)
  {
    l1Score = [MEMORY[0x1E695DFB0] null];
  }

  v31 = l1Score;
  v44[7] = l1Score;
  v43[8] = @"rankingScore_L2";
  l2Score = [(PHSearchResult *)self l2Score];
  v11 = l2Score;
  if (!l2Score)
  {
    l2Score = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v9;
  v30 = l2Score;
  v44[8] = l2Score;
  v43[9] = @"collectionScore";
  collectionScore = [(PHSearchResult *)self collectionScore];
  v13 = collectionScore;
  if (!collectionScore)
  {
    collectionScore = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v11;
  v29 = collectionScore;
  v44[9] = collectionScore;
  v43[10] = @"semanticEmbeddingDistances";
  embeddingDistances = [(PHSearchResult *)self embeddingDistances];
  v15 = embeddingDistances;
  if (!embeddingDistances)
  {
    embeddingDistances = [MEMORY[0x1E695DFB0] null];
  }

  v28 = embeddingDistances;
  v44[10] = embeddingDistances;
  v43[11] = @"matchType";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult matchType](self, "matchType")}];
  v44[11] = v32;
  v43[12] = @"matchType_humanReadable";
  matchType = [(PHSearchResult *)self matchType];
  if (matchType > 3)
  {
    v17 = @"Unknown";
  }

  else
  {
    v17 = off_1E75A4368[matchType];
  }

  v44[12] = v17;
  v43[13] = @"creationDate";
  v18 = [v3 stringFromDate:self->_creationDate];
  null = v18;
  if (!v18)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v44[13] = null;
  v43[14] = @"addedDate";
  v42 = v3;
  v20 = [v3 stringFromDate:self->_addedDate];
  null2 = v20;
  if (!v20)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v44[14] = null2;
  v43[15] = @"matchedThumbnailIdentifier";
  matchedThumbnailIdentifier = [(PHSearchResult *)self matchedThumbnailIdentifier];
  null3 = matchedThumbnailIdentifier;
  if (!matchedThumbnailIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v44[15] = null3;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:16];
  v25 = [v36 initWithDictionary:v24];

  if (!matchedThumbnailIdentifier)
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
  type = [(PHSearchResult *)self type];
  if (type > 5)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E75A4318[type];
  }

  v43 = v5;
  v46[1] = v43;
  v45[2] = @"uuid";
  uuid = [(PHSearchResult *)self uuid];
  v46[2] = uuid;
  v45[3] = @"retrievalType";
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult retrievalType](self, "retrievalType")}];
  v46[3] = v41;
  v45[4] = @"retrievalType_humanReadable";
  retrievalType = [(PHSearchResult *)self retrievalType];
  if (retrievalType > 3)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E75A4348[retrievalType];
  }

  v46[4] = v7;
  v45[5] = @"hasOCRTextMatch";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchResult hasOCRTextMatch](self, "hasOCRTextMatch")}];
  v46[5] = v40;
  v45[6] = @"isSensitiveLocation";
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchResult isSensitiveLocation](self, "isSensitiveLocation")}];
  v46[6] = v38;
  v45[7] = @"rankingScore_L1";
  l1Score = [(PHSearchResult *)self l1Score];
  v9 = l1Score;
  if (!l1Score)
  {
    l1Score = [MEMORY[0x1E695DFB0] null];
  }

  v32 = l1Score;
  v46[7] = l1Score;
  v45[8] = @"rankingScore_L2";
  l2Score = [(PHSearchResult *)self l2Score];
  v36 = l2Score;
  if (!l2Score)
  {
    l2Score = [MEMORY[0x1E695DFB0] null];
  }

  v31 = l2Score;
  v46[8] = l2Score;
  v45[9] = @"collectionScore";
  collectionScore = [(PHSearchResult *)self collectionScore];
  v12 = collectionScore;
  if (!collectionScore)
  {
    collectionScore = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v9;
  v30 = collectionScore;
  v46[9] = collectionScore;
  v45[10] = @"semanticEmbeddingDistances";
  embeddingDistances = [(PHSearchResult *)self embeddingDistances];
  v34 = embeddingDistances;
  if (!embeddingDistances)
  {
    embeddingDistances = [MEMORY[0x1E695DFB0] null];
  }

  v29 = embeddingDistances;
  v46[10] = embeddingDistances;
  v45[11] = @"matchType";
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchResult matchType](self, "matchType")}];
  v46[11] = v33;
  v45[12] = @"matchType_humanReadable";
  matchType = [(PHSearchResult *)self matchType];
  if (matchType > 3)
  {
    v15 = @"Unknown";
  }

  else
  {
    v15 = off_1E75A4368[matchType];
  }

  v46[12] = v15;
  v45[13] = @"creationDate";
  null = [v3 stringFromDate:self->_creationDate];
  v17 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v46[13] = null;
  v45[14] = @"addedDate";
  v18 = [v3 stringFromDate:self->_addedDate];
  null2 = v18;
  if (!v18)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v46[14] = null2;
  v45[15] = @"matchedThumbnailIdentifier";
  matchedThumbnailIdentifier = [(PHSearchResult *)self matchedThumbnailIdentifier];
  null3 = matchedThumbnailIdentifier;
  if (!matchedThumbnailIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v3;
  v46[15] = null3;
  v45[16] = @"bundleIdentifier";
  bundleIdentifier = [(PHSearchResult *)self bundleIdentifier];
  if ([bundleIdentifier length])
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

  if (!matchedThumbnailIdentifier)
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
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"%@:%p\n", v5, self];

  v6 = self->_type - 1;
  if (v6 > 4)
  {
    v7 = @"PHSearchResultTypeUndefined";
  }

  else
  {
    v7 = off_1E75A42D8[v6];
  }

  [string appendFormat:@"type: '%@'\n", v7];
  [string appendFormat:@"uuid: '%@'\n", self->_uuid];
  v8 = self->_retrievalType - 1;
  if (v8 > 2)
  {
    v9 = @"PHSearchResultRetrievalTypeUndefined";
  }

  else
  {
    v9 = off_1E75A4300[v8];
  }

  [string appendFormat:@"retrievalType: %@\n", v9];
  matchType = self->_matchType;
  if (matchType > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E75A4368[matchType];
  }

  [string appendFormat:@"matchType: %@\n", v11];
  if (self->_hasOCRTextMatch)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [string appendFormat:@"hasOCRTextMatch: %@\n", v12];
  if (self->_isSensitiveLocation)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [string appendFormat:@"isSensitiveLocation: %@\n", v13];
  [string appendFormat:@"L1 Score: %@\n", self->_l1Score];
  [string appendFormat:@"L2 Score: %@\n", self->_l2Score];
  [string appendFormat:@"collection score: %@\n", self->_collectionScore];
  [string appendFormat:@"embedding distances: %@\n", self->_embeddingDistances];
  [string appendFormat:@"creationDate: %@\n", self->_creationDate];
  [string appendFormat:@"addedDate: %@\n", self->_addedDate];
  [string appendFormat:@"matchedThumbnailIdentifier: %@\n", self->_matchedThumbnailIdentifier];
  [string appendFormat:@"bundleIdentifier: %@\n", self->_bundleIdentifier];

  return string;
}

- (BOOL)isSyndicationAsset
{
  v3 = +[PHSearchUtility syndicationLibraryBundleIdentifiers];
  bundleIdentifier = [(PHSearchResult *)self bundleIdentifier];
  v5 = [v3 containsObject:bundleIdentifier];

  return v5;
}

- (BOOL)isEligibleForSuggestions
{
  retrievalType = [(PHSearchResult *)self retrievalType];
  if (retrievalType != 1)
  {
    LOBYTE(retrievalType) = [(PHSearchResult *)self retrievalType]== 3;
  }

  return retrievalType;
}

- (PHSearchResult)initWithSearchResultType:(unint64_t)type uuid:(id)uuid retrievalType:(unint64_t)retrievalType hasOCRTextMatch:(BOOL)match isSensitiveLocation:(BOOL)location embeddingDistances:(id)distances l1Score:(id)score l2Score:(id)self0 collectionScore:(id)self1 creationDate:(id)self2 addedDate:(id)self3 matchedThumbnailIdentifier:(id)self4 bundleIdentifier:(id)self5
{
  uuidCopy = uuid;
  distancesCopy = distances;
  scoreCopy = score;
  l2ScoreCopy = l2Score;
  collectionScoreCopy = collectionScore;
  dateCopy = date;
  addedDateCopy = addedDate;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (!uuidCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchResult.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  v47.receiver = self;
  v47.super_class = PHSearchResult;
  v20 = [(PHSearchResult *)&v47 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = type;
    v22 = [uuidCopy copy];
    uuid = v21->_uuid;
    v21->_uuid = v22;

    v21->_retrievalType = retrievalType;
    v21->_hasOCRTextMatch = match;
    v24 = [distancesCopy copy];
    embeddingDistances = v21->_embeddingDistances;
    v21->_embeddingDistances = v24;

    objc_storeStrong(&v21->_l1Score, score);
    objc_storeStrong(&v21->_l2Score, l2Score);
    objc_storeStrong(&v21->_collectionScore, collectionScore);
    v21->_isSensitiveLocation = location;
    objc_storeStrong(&v21->_creationDate, date);
    objc_storeStrong(&v21->_addedDate, addedDate);
    v26 = [identifierCopy copy];
    matchedThumbnailIdentifier = v21->_matchedThumbnailIdentifier;
    v21->_matchedThumbnailIdentifier = v26;

    v28 = [bundleIdentifierCopy copy];
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
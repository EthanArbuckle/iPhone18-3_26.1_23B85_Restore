@interface EKSuggestedEventInfo
+ (id)knownIdentityKeysForComparison;
+ (id)knownSingleValueKeysForComparison;
- (BOOL)changesAcknowledged;
- (EKSuggestedEventInfo)initWithEventStore:(id)store opaqueKey:(id)key uniqueKey:(id)uniqueKey extractionGroupIdentifier:(id)identifier;
- (double)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)semanticIdentifier;
- (unint64_t)changedFields;
- (void)setChangedFields:(unint64_t)fields;
- (void)setTimestamp:(double)timestamp;
@end

@implementation EKSuggestedEventInfo

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_1 != -1)
  {
    +[EKSuggestedEventInfo knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_1;

  return v3;
}

void __54__EKSuggestedEventInfo_knownIdentityKeysForComparison__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992DD0];
  v4[0] = *MEMORY[0x1E6992DC0];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownIdentityKeysForComparison_keys_1;
  knownIdentityKeysForComparison_keys_1 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_0 != -1)
  {
    +[EKSuggestedEventInfo knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_0;

  return v3;
}

void __57__EKSuggestedEventInfo_knownSingleValueKeysForComparison__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992DC8];
  v4[0] = *MEMORY[0x1E6992DA8];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownSingleValueKeysForComparison_keys_0;
  knownSingleValueKeysForComparison_keys_0 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (EKSuggestedEventInfo)initWithEventStore:(id)store opaqueKey:(id)key uniqueKey:(id)uniqueKey extractionGroupIdentifier:(id)identifier
{
  storeCopy = store;
  keyCopy = key;
  uniqueKeyCopy = uniqueKey;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = EKSuggestedEventInfo;
  v14 = [(EKObject *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(EKObject *)v14 setEventStore:storeCopy];
    [(EKSuggestedEventInfo *)v15 setOpaqueKey:keyCopy];
    [(EKSuggestedEventInfo *)v15 setUniqueKey:uniqueKeyCopy];
    [(EKSuggestedEventInfo *)v15 setChangedFields:0];
    [(EKSuggestedEventInfo *)v15 setChangesAcknowledged:0];
    [(EKSuggestedEventInfo *)v15 setExtractionGroupIdentifier:identifierCopy];
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  opaqueKey = [(EKSuggestedEventInfo *)self opaqueKey];
  uniqueKey = [(EKSuggestedEventInfo *)self uniqueKey];
  extractionGroupIdentifier = [(EKSuggestedEventInfo *)self extractionGroupIdentifier];
  changedFields = [(EKSuggestedEventInfo *)self changedFields];
  changesAcknowledged = [(EKSuggestedEventInfo *)self changesAcknowledged];
  [(EKSuggestedEventInfo *)self timestamp];
  v12 = [v3 stringWithFormat:@"[%@] opaqueKey: %@, uniqueKey: %@, extractionGroupIdentifier: %@, changedFields: %lu, changesAcknowledged: %d, timestamp: %f", v5, opaqueKey, uniqueKey, extractionGroupIdentifier, changedFields, changesAcknowledged, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v12.receiver = self;
    v12.super_class = EKSuggestedEventInfo;
    return [(EKObject *)&v12 copyWithZone:zone];
  }

  else
  {
    v6 = [EKSuggestedEventInfo alloc];
    eventStore = [(EKObject *)self eventStore];
    opaqueKey = [(EKSuggestedEventInfo *)self opaqueKey];
    uniqueKey = [(EKSuggestedEventInfo *)self uniqueKey];
    extractionGroupIdentifier = [(EKSuggestedEventInfo *)self extractionGroupIdentifier];
    v5 = [(EKSuggestedEventInfo *)v6 initWithEventStore:eventStore opaqueKey:opaqueKey uniqueKey:uniqueKey extractionGroupIdentifier:extractionGroupIdentifier];

    [(EKSuggestedEventInfo *)v5 setChangedFields:[(EKSuggestedEventInfo *)self changedFields]];
    [(EKSuggestedEventInfo *)v5 setChangesAcknowledged:[(EKSuggestedEventInfo *)self changesAcknowledged]];
    [(EKSuggestedEventInfo *)self timestamp];
    [(EKSuggestedEventInfo *)v5 setTimestamp:?];
  }

  return v5;
}

- (unint64_t)changedFields
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992DA8]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setChangedFields:(unint64_t)fields
{
  if ([(EKSuggestedEventInfo *)self changedFields]!= fields)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fields];
    [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992DA8]];
  }
}

- (BOOL)changesAcknowledged
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992DB0]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setTimestamp:(double)timestamp
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:timestamp];
  [(EKSuggestedEventInfo *)self setTimestampAsDate:v4];
}

- (double)timestamp
{
  timestampAsDate = [(EKSuggestedEventInfo *)self timestampAsDate];
  [timestampAsDate timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (id)semanticIdentifier
{
  uniqueIdentifier = [(EKObject *)self uniqueIdentifier];
  v4 = uniqueIdentifier;
  if (uniqueIdentifier)
  {
    semanticIdentifier = uniqueIdentifier;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKSuggestedEventInfo;
    semanticIdentifier = [(EKObject *)&v8 semanticIdentifier];
  }

  v6 = semanticIdentifier;

  return v6;
}

@end
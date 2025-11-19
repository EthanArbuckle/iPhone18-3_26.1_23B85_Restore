@interface EKSuggestedEventInfo
+ (id)knownIdentityKeysForComparison;
+ (id)knownSingleValueKeysForComparison;
- (BOOL)changesAcknowledged;
- (EKSuggestedEventInfo)initWithEventStore:(id)a3 opaqueKey:(id)a4 uniqueKey:(id)a5 extractionGroupIdentifier:(id)a6;
- (double)timestamp;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)semanticIdentifier;
- (unint64_t)changedFields;
- (void)setChangedFields:(unint64_t)a3;
- (void)setTimestamp:(double)a3;
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

- (EKSuggestedEventInfo)initWithEventStore:(id)a3 opaqueKey:(id)a4 uniqueKey:(id)a5 extractionGroupIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = EKSuggestedEventInfo;
  v14 = [(EKObject *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(EKObject *)v14 setEventStore:v10];
    [(EKSuggestedEventInfo *)v15 setOpaqueKey:v11];
    [(EKSuggestedEventInfo *)v15 setUniqueKey:v12];
    [(EKSuggestedEventInfo *)v15 setChangedFields:0];
    [(EKSuggestedEventInfo *)v15 setChangesAcknowledged:0];
    [(EKSuggestedEventInfo *)v15 setExtractionGroupIdentifier:v13];
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(EKSuggestedEventInfo *)self opaqueKey];
  v7 = [(EKSuggestedEventInfo *)self uniqueKey];
  v8 = [(EKSuggestedEventInfo *)self extractionGroupIdentifier];
  v9 = [(EKSuggestedEventInfo *)self changedFields];
  v10 = [(EKSuggestedEventInfo *)self changesAcknowledged];
  [(EKSuggestedEventInfo *)self timestamp];
  v12 = [v3 stringWithFormat:@"[%@] opaqueKey: %@, uniqueKey: %@, extractionGroupIdentifier: %@, changedFields: %lu, changesAcknowledged: %d, timestamp: %f", v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v12.receiver = self;
    v12.super_class = EKSuggestedEventInfo;
    return [(EKObject *)&v12 copyWithZone:a3];
  }

  else
  {
    v6 = [EKSuggestedEventInfo alloc];
    v7 = [(EKObject *)self eventStore];
    v8 = [(EKSuggestedEventInfo *)self opaqueKey];
    v9 = [(EKSuggestedEventInfo *)self uniqueKey];
    v10 = [(EKSuggestedEventInfo *)self extractionGroupIdentifier];
    v5 = [(EKSuggestedEventInfo *)v6 initWithEventStore:v7 opaqueKey:v8 uniqueKey:v9 extractionGroupIdentifier:v10];

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
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setChangedFields:(unint64_t)a3
{
  if ([(EKSuggestedEventInfo *)self changedFields]!= a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(EKObject *)self setSingleChangedValue:v5 forKey:*MEMORY[0x1E6992DA8]];
  }
}

- (BOOL)changesAcknowledged
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992DB0]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setTimestamp:(double)a3
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  [(EKSuggestedEventInfo *)self setTimestampAsDate:v4];
}

- (double)timestamp
{
  v2 = [(EKSuggestedEventInfo *)self timestampAsDate];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (id)semanticIdentifier
{
  v3 = [(EKObject *)self uniqueIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKSuggestedEventInfo;
    v5 = [(EKObject *)&v8 semanticIdentifier];
  }

  v6 = v5;

  return v6;
}

@end
@interface EKImage
+ (id)imageWithEventStore:(id)a3 systemSymbolName:(id)a4 colorData:(id)a5;
+ (id)knownIdentityKeysForComparison;
- (id)_generateIdentifierInCalendar:(id)a3;
- (int64_t)type;
- (void)saveInCalendar:(id)a3;
- (void)setSource:(id)a3;
- (void)setType:(int64_t)a3;
@end

@implementation EKImage

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_2 != -1)
  {
    +[EKImage knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_2;

  return v3;
}

void __41__EKImage_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992A10];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_2;
  knownIdentityKeysForComparison_keys_2 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)imageWithEventStore:(id)a3 systemSymbolName:(id)a4 colorData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init([a1 frozenClass]);
  v10 = [[a1 alloc] initWithPersistentObject:v9];
  [v10 setName:v8];

  [v10 setColorData:v7];
  [v10 setType:1];

  return v10;
}

- (int64_t)type
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992A28]];
  v3 = [v2 intValue];

  return v3;
}

- (void)setType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992A28]];
}

- (void)setSource:(id)a3
{
  v4 = *MEMORY[0x1E6992A20];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:objc_opt_class()];
}

- (void)saveInCalendar:(id)a3
{
  v14 = a3;
  v4 = [v14 source];
  v5 = [v14 eventStore];
  if (![(EKObject *)self isNew])
  {
    v9 = [(EKImage *)self source];
    if ([v4 isEqual:v9])
    {
      goto LABEL_10;
    }

    v10 = [(EKImage *)self identifier];
    v11 = [v5 imageCache];
    v12 = [v4 objectID];
    v13 = [v11 persistentImageForSourceID:v12 identifier:v10];

    if (v13)
    {
      [(EKObject *)self setBackingObject:v13];
      [(EKObject *)self markAsSaved];

      goto LABEL_10;
    }

    [(EKObject *)self rebase];
  }

  [(EKImage *)self setSource:v4];
  v6 = [(EKImage *)self identifier];

  if (!v6)
  {
    v7 = [(EKImage *)self _generateIdentifierInCalendar:v14];
    [(EKImage *)self setIdentifier:v7];
  }

  v8 = [v5 imageCache];
  [v8 updateToCachedVersionOrCacheImage:self];

  v9 = [(EKObject *)self backingObject];
  if ([v9 isNew] && (objc_msgSend(v9, "_isPendingInsert") & 1) == 0)
  {
    [v5 _insertObject:v9];
  }

LABEL_10:
}

- (id)_generateIdentifierInCalendar:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(EKImage *)self type];
  if (v4 == 2)
  {
    v11 = MEMORY[0x1E696AEC0];
    v10 = [(EKImage *)self name];
    v12 = [v11 stringWithFormat:@"custom:%@", v10];
  }

  else
  {
    if (v4 != 1)
    {
      v12 = @"icon";
      goto LABEL_12;
    }

    v5 = [(EKImage *)self colorData];
    v6 = v5;
    if (v5)
    {
      CC_SHA1([v5 bytes], objc_msgSend(v5, "length"), md);
      v7 = 0;
      v8 = v18;
      do
      {
        v9 = md[v7];
        *(v8 - 1) = _generateIdentifierInCalendar__nibbleToChar[v9 & 0xF];
        *v8 = _generateIdentifierInCalendar__nibbleToChar[v9 >> 4];
        v8 += 2;
        ++v7;
      }

      while (v7 != 8);
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v17 length:16 encoding:4];
    }

    else
    {
      v10 = @"nocolor";
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = [(EKImage *)self name];
    v12 = [v13 stringWithFormat:@"symbol:%@:%@", v10, v14];
  }

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

@end
@interface EKImage
+ (id)imageWithEventStore:(id)store systemSymbolName:(id)name colorData:(id)data;
+ (id)knownIdentityKeysForComparison;
- (id)_generateIdentifierInCalendar:(id)calendar;
- (int64_t)type;
- (void)saveInCalendar:(id)calendar;
- (void)setSource:(id)source;
- (void)setType:(int64_t)type;
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

+ (id)imageWithEventStore:(id)store systemSymbolName:(id)name colorData:(id)data
{
  dataCopy = data;
  nameCopy = name;
  v9 = objc_alloc_init([self frozenClass]);
  v10 = [[self alloc] initWithPersistentObject:v9];
  [v10 setName:nameCopy];

  [v10 setColorData:dataCopy];
  [v10 setType:1];

  return v10;
}

- (int64_t)type
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992A28]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992A28]];
}

- (void)setSource:(id)source
{
  v4 = *MEMORY[0x1E6992A20];
  sourceCopy = source;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:sourceCopy forKey:v4 frozenClass:objc_opt_class()];
}

- (void)saveInCalendar:(id)calendar
{
  calendarCopy = calendar;
  source = [calendarCopy source];
  eventStore = [calendarCopy eventStore];
  if (![(EKObject *)self isNew])
  {
    source2 = [(EKImage *)self source];
    if ([source isEqual:source2])
    {
      goto LABEL_10;
    }

    identifier = [(EKImage *)self identifier];
    imageCache = [eventStore imageCache];
    objectID = [source objectID];
    v13 = [imageCache persistentImageForSourceID:objectID identifier:identifier];

    if (v13)
    {
      [(EKObject *)self setBackingObject:v13];
      [(EKObject *)self markAsSaved];

      goto LABEL_10;
    }

    [(EKObject *)self rebase];
  }

  [(EKImage *)self setSource:source];
  identifier2 = [(EKImage *)self identifier];

  if (!identifier2)
  {
    v7 = [(EKImage *)self _generateIdentifierInCalendar:calendarCopy];
    [(EKImage *)self setIdentifier:v7];
  }

  imageCache2 = [eventStore imageCache];
  [imageCache2 updateToCachedVersionOrCacheImage:self];

  source2 = [(EKObject *)self backingObject];
  if ([source2 isNew] && (objc_msgSend(source2, "_isPendingInsert") & 1) == 0)
  {
    [eventStore _insertObject:source2];
  }

LABEL_10:
}

- (id)_generateIdentifierInCalendar:(id)calendar
{
  v20 = *MEMORY[0x1E69E9840];
  type = [(EKImage *)self type];
  if (type == 2)
  {
    v11 = MEMORY[0x1E696AEC0];
    name = [(EKImage *)self name];
    v12 = [v11 stringWithFormat:@"custom:%@", name];
  }

  else
  {
    if (type != 1)
    {
      v12 = @"icon";
      goto LABEL_12;
    }

    colorData = [(EKImage *)self colorData];
    v6 = colorData;
    if (colorData)
    {
      CC_SHA1([colorData bytes], objc_msgSend(colorData, "length"), md);
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
      name = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v17 length:16 encoding:4];
    }

    else
    {
      name = @"nocolor";
    }

    v13 = MEMORY[0x1E696AEC0];
    name2 = [(EKImage *)self name];
    v12 = [v13 stringWithFormat:@"symbol:%@:%@", name, name2];
  }

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

@end
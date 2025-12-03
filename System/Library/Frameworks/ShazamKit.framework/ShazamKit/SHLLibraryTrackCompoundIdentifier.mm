@interface SHLLibraryTrackCompoundIdentifier
+ (id)compoundIdentifierFromTrackIdentifier:(id)identifier;
+ (id)identifierWithRecognitionIdentifier:(id)identifier shazamKey:(id)key;
+ (id)recognitionIdentifierFromTrackIdentifier:(id)identifier;
+ (id)shazamKeyFromTrackIdentifier:(id)identifier;
- (BOOL)hasValidRecognitionIdentifier;
- (BOOL)isEqual:(id)equal;
- (NSString)libraryItemIdentifier;
- (SHLLibraryTrackCompoundIdentifier)initWithCoder:(id)coder;
- (SHLLibraryTrackCompoundIdentifier)initWithRecognitionIdentifier:(id)identifier shazamKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHLLibraryTrackCompoundIdentifier

+ (id)identifierWithRecognitionIdentifier:(id)identifier shazamKey:(id)key
{
  keyCopy = key;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithRecognitionIdentifier:identifierCopy shazamKey:keyCopy];

  return v8;
}

- (SHLLibraryTrackCompoundIdentifier)initWithRecognitionIdentifier:(id)identifier shazamKey:(id)key
{
  identifierCopy = identifier;
  keyCopy = key;
  v9 = keyCopy;
  if (!identifierCopy || !keyCopy)
  {
    keyCopy = [NSString stringWithFormat:@"%@ %@ is not a valid recognition identifier and key", identifierCopy, keyCopy];
    v14 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:keyCopy];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v16.receiver = self;
  v16.super_class = SHLLibraryTrackCompoundIdentifier;
  v10 = [(SHLLibraryTrackCompoundIdentifier *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_recognitionIdentifier, identifier);
    objc_storeStrong(&v11->_shazamKey, key);
  }

  return v11;
}

+ (id)compoundIdentifierFromTrackIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([SHLLibraryTrackCompoundIdentifier isTrackIdentifier:identifierCopy])
  {
    v5 = [SHLLibraryTrackCompoundIdentifier recognitionIdentifierFromTrackIdentifier:identifierCopy];
    v6 = [SHLLibraryTrackCompoundIdentifier shazamKeyFromTrackIdentifier:identifierCopy];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [self identifierWithRecognitionIdentifier:v5 shazamKey:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)shazamKeyFromTrackIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy rangeOfString:@"_[T]_" options:4];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [identifierCopy substringFromIndex:{&v4[objc_msgSend(@"_[T]_", "length")]}];
    v5 = [SHLShazamKey keyWithValue:v6];
  }

  return v5;
}

+ (id)recognitionIdentifierFromTrackIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy rangeOfString:@"_[T]_" options:4];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [identifierCopy substringToIndex:v4];
    if ([v6 length] >= 2)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)libraryItemIdentifier
{
  recognitionIdentifier = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
  precomposedStringWithCanonicalMapping = [recognitionIdentifier precomposedStringWithCanonicalMapping];
  shazamKey = [(SHLLibraryTrackCompoundIdentifier *)self shazamKey];
  validatedKey = [shazamKey validatedKey];
  v7 = [NSString stringWithFormat:@"%@%@%@", precomposedStringWithCanonicalMapping, @"_[T]_", validatedKey];

  return v7;
}

- (BOOL)hasValidRecognitionIdentifier
{
  recognitionIdentifier = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
  v3 = [recognitionIdentifier length] != 0;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  recognitionIdentifier = self->_recognitionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:recognitionIdentifier forKey:@"SHLLibraryTrackRecognitionIdentifierKey"];
  validatedKey = [(SHLShazamKey *)self->_shazamKey validatedKey];
  [coderCopy encodeObject:validatedKey forKey:@"SHLLibraryTrackShazamKey"];
}

- (SHLLibraryTrackCompoundIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackShazamKey"];
  v6 = [[SHLShazamKey alloc] initWithKey:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackRecognitionIdentifierKey"];

  v8 = [(SHLLibraryTrackCompoundIdentifier *)self initWithRecognitionIdentifier:v7 shazamKey:v6];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  recognitionIdentifier = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
  v5 = [recognitionIdentifier copy];

  shazamKey = [(SHLLibraryTrackCompoundIdentifier *)self shazamKey];
  validatedKey = [shazamKey validatedKey];
  v8 = [SHLShazamKey keyWithValue:validatedKey];

  v9 = [SHLLibraryTrackCompoundIdentifier identifierWithRecognitionIdentifier:v5 shazamKey:v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    recognitionIdentifier = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
    recognitionIdentifier2 = [v5 recognitionIdentifier];
    if ([recognitionIdentifier isEqualToString:recognitionIdentifier2])
    {
      shazamKey = [(SHLLibraryTrackCompoundIdentifier *)self shazamKey];
      validatedKey = [shazamKey validatedKey];
      shazamKey2 = [v5 shazamKey];
      validatedKey2 = [shazamKey2 validatedKey];
      v12 = [validatedKey isEqualToString:validatedKey2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  recognitionIdentifier = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
  v4 = [recognitionIdentifier hash];
  shazamKey = [(SHLLibraryTrackCompoundIdentifier *)self shazamKey];
  validatedKey = [shazamKey validatedKey];
  v7 = [validatedKey hash];

  return v7 ^ v4;
}

@end
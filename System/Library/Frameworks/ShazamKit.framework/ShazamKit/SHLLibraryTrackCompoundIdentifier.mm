@interface SHLLibraryTrackCompoundIdentifier
+ (id)compoundIdentifierFromTrackIdentifier:(id)a3;
+ (id)identifierWithRecognitionIdentifier:(id)a3 shazamKey:(id)a4;
+ (id)recognitionIdentifierFromTrackIdentifier:(id)a3;
+ (id)shazamKeyFromTrackIdentifier:(id)a3;
- (BOOL)hasValidRecognitionIdentifier;
- (BOOL)isEqual:(id)a3;
- (NSString)libraryItemIdentifier;
- (SHLLibraryTrackCompoundIdentifier)initWithCoder:(id)a3;
- (SHLLibraryTrackCompoundIdentifier)initWithRecognitionIdentifier:(id)a3 shazamKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHLLibraryTrackCompoundIdentifier

+ (id)identifierWithRecognitionIdentifier:(id)a3 shazamKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRecognitionIdentifier:v7 shazamKey:v6];

  return v8;
}

- (SHLLibraryTrackCompoundIdentifier)initWithRecognitionIdentifier:(id)a3 shazamKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    v13 = [NSString stringWithFormat:@"%@ %@ is not a valid recognition identifier and key", v7, v8];
    v14 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v13];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v16.receiver = self;
  v16.super_class = SHLLibraryTrackCompoundIdentifier;
  v10 = [(SHLLibraryTrackCompoundIdentifier *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_recognitionIdentifier, a3);
    objc_storeStrong(&v11->_shazamKey, a4);
  }

  return v11;
}

+ (id)compoundIdentifierFromTrackIdentifier:(id)a3
{
  v4 = a3;
  if ([SHLLibraryTrackCompoundIdentifier isTrackIdentifier:v4])
  {
    v5 = [SHLLibraryTrackCompoundIdentifier recognitionIdentifierFromTrackIdentifier:v4];
    v6 = [SHLLibraryTrackCompoundIdentifier shazamKeyFromTrackIdentifier:v4];
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
      v9 = [a1 identifierWithRecognitionIdentifier:v5 shazamKey:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)shazamKeyFromTrackIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"_[T]_" options:4];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:{&v4[objc_msgSend(@"_[T]_", "length")]}];
    v5 = [SHLShazamKey keyWithValue:v6];
  }

  return v5;
}

+ (id)recognitionIdentifierFromTrackIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"_[T]_" options:4];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 substringToIndex:v4];
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
  v3 = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
  v4 = [v3 precomposedStringWithCanonicalMapping];
  v5 = [(SHLLibraryTrackCompoundIdentifier *)self shazamKey];
  v6 = [v5 validatedKey];
  v7 = [NSString stringWithFormat:@"%@%@%@", v4, @"_[T]_", v6];

  return v7;
}

- (BOOL)hasValidRecognitionIdentifier
{
  v2 = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  recognitionIdentifier = self->_recognitionIdentifier;
  v5 = a3;
  [v5 encodeObject:recognitionIdentifier forKey:@"SHLLibraryTrackRecognitionIdentifierKey"];
  v6 = [(SHLShazamKey *)self->_shazamKey validatedKey];
  [v5 encodeObject:v6 forKey:@"SHLLibraryTrackShazamKey"];
}

- (SHLLibraryTrackCompoundIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackShazamKey"];
  v6 = [[SHLShazamKey alloc] initWithKey:v5];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackRecognitionIdentifierKey"];

  v8 = [(SHLLibraryTrackCompoundIdentifier *)self initWithRecognitionIdentifier:v7 shazamKey:v6];
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
  v5 = [v4 copy];

  v6 = [(SHLLibraryTrackCompoundIdentifier *)self shazamKey];
  v7 = [v6 validatedKey];
  v8 = [SHLShazamKey keyWithValue:v7];

  v9 = [SHLLibraryTrackCompoundIdentifier identifierWithRecognitionIdentifier:v5 shazamKey:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
    v7 = [v5 recognitionIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(SHLLibraryTrackCompoundIdentifier *)self shazamKey];
      v9 = [v8 validatedKey];
      v10 = [v5 shazamKey];
      v11 = [v10 validatedKey];
      v12 = [v9 isEqualToString:v11];
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
  v3 = [(SHLLibraryTrackCompoundIdentifier *)self recognitionIdentifier];
  v4 = [v3 hash];
  v5 = [(SHLLibraryTrackCompoundIdentifier *)self shazamKey];
  v6 = [v5 validatedKey];
  v7 = [v6 hash];

  return v7 ^ v4;
}

@end
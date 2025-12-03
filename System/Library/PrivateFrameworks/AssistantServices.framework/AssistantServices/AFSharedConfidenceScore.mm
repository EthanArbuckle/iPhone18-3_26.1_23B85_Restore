@interface AFSharedConfidenceScore
+ (id)newWithBuilder:(id)builder;
- (AFSharedConfidenceScore)initWithBuilder:(id)builder;
- (AFSharedConfidenceScore)initWithCoder:(id)coder;
- (AFSharedConfidenceScore)initWithDictionaryRepresentation:(id)representation;
- (AFSharedConfidenceScore)initWithSharedUserId:(id)id confidenceScore:(unint64_t)score;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSharedConfidenceScore

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  sharedUserId = self->_sharedUserId;
  if (sharedUserId)
  {
    [v3 setObject:sharedUserId forKey:@"sharedUserId"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_confidenceScore];
  [v4 setObject:v6 forKey:@"confidenceScore"];

  v7 = [v4 copy];

  return v7;
}

- (AFSharedConfidenceScore)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKey:@"sharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [representationCopy objectForKey:@"confidenceScore"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    unsignedIntegerValue = [v9 unsignedIntegerValue];
    self = [(AFSharedConfidenceScore *)self initWithSharedUserId:v6 confidenceScore:unsignedIntegerValue];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  sharedUserId = self->_sharedUserId;
  coderCopy = coder;
  [coderCopy encodeObject:sharedUserId forKey:@"AFSharedConfidenceScore::sharedUserId"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_confidenceScore];
  [coderCopy encodeObject:v6 forKey:@"AFSharedConfidenceScore::confidenceScore"];
}

- (AFSharedConfidenceScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedConfidenceScore::sharedUserId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedConfidenceScore::confidenceScore"];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = [(AFSharedConfidenceScore *)self initWithSharedUserId:v5 confidenceScore:unsignedIntegerValue];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      confidenceScore = self->_confidenceScore;
      if (confidenceScore == [(AFSharedConfidenceScore *)v5 confidenceScore])
      {
        sharedUserId = [(AFSharedConfidenceScore *)v5 sharedUserId];
        sharedUserId = self->_sharedUserId;
        v9 = sharedUserId == sharedUserId || [(NSString *)sharedUserId isEqual:sharedUserId];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sharedUserId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_confidenceScore];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSharedConfidenceScore;
  v5 = [(AFSharedConfidenceScore *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {sharedUserId = %@, confidenceScore = %llu}", v5, self->_sharedUserId, self->_confidenceScore];

  return v6;
}

- (AFSharedConfidenceScore)initWithSharedUserId:(id)id confidenceScore:(unint64_t)score
{
  idCopy = id;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFSharedConfidenceScore_initWithSharedUserId_confidenceScore___block_invoke;
  v10[3] = &unk_1E7348198;
  v11 = idCopy;
  scoreCopy = score;
  v7 = idCopy;
  v8 = [(AFSharedConfidenceScore *)self initWithBuilder:v10];

  return v8;
}

void __64__AFSharedConfidenceScore_initWithSharedUserId_confidenceScore___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSharedUserId:v3];
  [v4 setConfidenceScore:*(a1 + 40)];
}

- (AFSharedConfidenceScore)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFSharedConfidenceScore;
  v5 = [(AFSharedConfidenceScore *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSharedConfidenceScoreMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSharedConfidenceScoreMutation *)v7 isDirty])
    {
      getSharedUserId = [(_AFSharedConfidenceScoreMutation *)v7 getSharedUserId];
      v9 = [getSharedUserId copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v9;

      v6->_confidenceScore = [(_AFSharedConfidenceScoreMutation *)v7 getConfidenceScore];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFSharedConfidenceScoreMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSharedConfidenceScoreMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSharedConfidenceScore);
      getSharedUserId = [(_AFSharedConfidenceScoreMutation *)v5 getSharedUserId];
      v8 = [getSharedUserId copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v8;

      v6->_confidenceScore = [(_AFSharedConfidenceScoreMutation *)v5 getConfidenceScore];
    }

    else
    {
      v6 = [(AFSharedConfidenceScore *)self copy];
    }
  }

  else
  {
    v6 = [(AFSharedConfidenceScore *)self copy];
  }

  return v6;
}

@end
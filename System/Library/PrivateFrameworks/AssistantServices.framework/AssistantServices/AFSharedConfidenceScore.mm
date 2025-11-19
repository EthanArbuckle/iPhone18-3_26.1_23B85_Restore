@interface AFSharedConfidenceScore
+ (id)newWithBuilder:(id)a3;
- (AFSharedConfidenceScore)initWithBuilder:(id)a3;
- (AFSharedConfidenceScore)initWithCoder:(id)a3;
- (AFSharedConfidenceScore)initWithDictionaryRepresentation:(id)a3;
- (AFSharedConfidenceScore)initWithSharedUserId:(id)a3 confidenceScore:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (AFSharedConfidenceScore)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"sharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKey:@"confidenceScore"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 unsignedIntegerValue];
    self = [(AFSharedConfidenceScore *)self initWithSharedUserId:v6 confidenceScore:v10];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  sharedUserId = self->_sharedUserId;
  v5 = a3;
  [v5 encodeObject:sharedUserId forKey:@"AFSharedConfidenceScore::sharedUserId"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_confidenceScore];
  [v5 encodeObject:v6 forKey:@"AFSharedConfidenceScore::confidenceScore"];
}

- (AFSharedConfidenceScore)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedConfidenceScore::sharedUserId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedConfidenceScore::confidenceScore"];

  v7 = [v6 unsignedIntegerValue];
  v8 = [(AFSharedConfidenceScore *)self initWithSharedUserId:v5 confidenceScore:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      confidenceScore = self->_confidenceScore;
      if (confidenceScore == [(AFSharedConfidenceScore *)v5 confidenceScore])
      {
        v7 = [(AFSharedConfidenceScore *)v5 sharedUserId];
        sharedUserId = self->_sharedUserId;
        v9 = sharedUserId == v7 || [(NSString *)sharedUserId isEqual:v7];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSharedConfidenceScore;
  v5 = [(AFSharedConfidenceScore *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {sharedUserId = %@, confidenceScore = %llu}", v5, self->_sharedUserId, self->_confidenceScore];

  return v6;
}

- (AFSharedConfidenceScore)initWithSharedUserId:(id)a3 confidenceScore:(unint64_t)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFSharedConfidenceScore_initWithSharedUserId_confidenceScore___block_invoke;
  v10[3] = &unk_1E7348198;
  v11 = v6;
  v12 = a4;
  v7 = v6;
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

- (AFSharedConfidenceScore)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFSharedConfidenceScore;
  v5 = [(AFSharedConfidenceScore *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSharedConfidenceScoreMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSharedConfidenceScoreMutation *)v7 isDirty])
    {
      v8 = [(_AFSharedConfidenceScoreMutation *)v7 getSharedUserId];
      v9 = [v8 copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v9;

      v6->_confidenceScore = [(_AFSharedConfidenceScoreMutation *)v7 getConfidenceScore];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFSharedConfidenceScoreMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSharedConfidenceScoreMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSharedConfidenceScore);
      v7 = [(_AFSharedConfidenceScoreMutation *)v5 getSharedUserId];
      v8 = [v7 copy];
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
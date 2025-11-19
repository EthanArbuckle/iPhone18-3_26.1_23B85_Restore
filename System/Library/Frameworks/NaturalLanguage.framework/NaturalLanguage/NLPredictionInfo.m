@interface NLPredictionInfo
- (BOOL)isEqual:(id)a3;
- (NLPredictionInfo)initWithCoder:(id)a3;
- (NLPredictionInfo)initWithPrediction:(id)a3 tokenIDArray:(id)a4 contextLength:(unint64_t)a5 probabilityInfo:(id)a6;
- (NLPredictionInfo)initWithPrediction:(id)a3 tokenIDs:(const unsigned int *)a4 length:(unint64_t)a5 contextLength:(unint64_t)a6 probabilityInfo:(id)a7;
- (id)description;
- (unint64_t)hash;
- (unint64_t)tokenIDLength;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NLPredictionInfo

- (NLPredictionInfo)initWithPrediction:(id)a3 tokenIDArray:(id)a4 contextLength:(unint64_t)a5 probabilityInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = NLPredictionInfo;
  v13 = [(NLPredictionInfo *)&v26 init];
  if (v13)
  {
    v14 = [v11 count];
    v15 = [v10 copy];
    prediction = v13->_prediction;
    v13->_prediction = v15;

    v13->_contextLength = a5;
    v17 = [v12 copy];
    probabilityInfo = v13->_probabilityInfo;
    v13->_probabilityInfo = v17;

    v19 = [v11 copy];
    tokenIDArray = v13->_tokenIDArray;
    v13->_tokenIDArray = v19;

    v13->_tokenIDs = 0;
    if (v14)
    {
      v21 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
      if (v21)
      {
        v22 = v21;
        for (i = 0; i != v14; ++i)
        {
          v24 = [v11 objectAtIndex:i];
          v22[i] = [v24 unsignedIntegerValue];
        }

        v13->_tokenIDs = v22;
      }
    }
  }

  return v13;
}

- (NLPredictionInfo)initWithPrediction:(id)a3 tokenIDs:(const unsigned int *)a4 length:(unint64_t)a5 contextLength:(unint64_t)a6 probabilityInfo:(id)a7
{
  v12 = a3;
  v13 = a7;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    v15 = *a4++;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    [i addObject:v16];
  }

  v17 = [(NLPredictionInfo *)self initWithPrediction:v12 tokenIDArray:i contextLength:a6 probabilityInfo:v13];

  return v17;
}

- (void)dealloc
{
  tokenIDs = self->_tokenIDs;
  if (tokenIDs)
  {
    free(tokenIDs);
  }

  v4.receiver = self;
  v4.super_class = NLPredictionInfo;
  [(NLPredictionInfo *)&v4 dealloc];
}

- (unint64_t)tokenIDLength
{
  v2 = [(NLPredictionInfo *)self tokenIDArray];
  v3 = [v2 count];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NLPredictionInfo *)self prediction];
  v5 = [(NLPredictionInfo *)self probabilityInfo];
  v6 = [v3 stringWithFormat:@"<%@> %@", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NLPredictionInfo *)self prediction];
  v4 = [v3 hash];
  v5 = [(NLPredictionInfo *)self contextLength]^ v4;
  v6 = [(NLPredictionInfo *)self probabilityInfo];
  v7 = [v6 hash];
  v8 = [(NLPredictionInfo *)self tokenIDArray];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_8;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v6 = [(NLPredictionInfo *)self prediction];
  v7 = [(NLPredictionInfo *)v5 prediction];
  if (![v6 isEqual:v7] || (v8 = -[NLPredictionInfo contextLength](self, "contextLength"), v8 != -[NLPredictionInfo contextLength](v5, "contextLength")))
  {
LABEL_10:

    goto LABEL_11;
  }

  v9 = [(NLPredictionInfo *)self probabilityInfo];
  v10 = [(NLPredictionInfo *)v5 probabilityInfo];
  if (![v9 isEqual:v10])
  {

    goto LABEL_10;
  }

  v11 = [(NLPredictionInfo *)self tokenIDArray];
  v12 = [(NLPredictionInfo *)v5 tokenIDArray];
  v13 = [v11 isEqual:v12];

  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v14 = 1;
LABEL_12:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (([v8 allowsKeyedCoding] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLPredictionInfo requires keyed coding" userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = [(NLPredictionInfo *)self prediction];
  [v8 encodeObject:v4 forKey:@"NLPrediction"];

  [v8 encodeInteger:-[NLPredictionInfo contextLength](self forKey:{"contextLength"), @"NLContextLength"}];
  v5 = [(NLPredictionInfo *)self probabilityInfo];
  [v8 encodeObject:v5 forKey:@"NLProbabilityInfo"];

  v6 = [(NLPredictionInfo *)self tokenIDArray];
  [v8 encodeObject:v6 forKey:@"NLTokenIDArray"];
}

- (NLPredictionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLPredictionInfo requires keyed coding" userInfo:0];
    objc_exception_throw(v11);
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NLPrediction"];
  v6 = [v4 decodeIntegerForKey:@"NLContextLength"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NLProbabilityInfo"];
  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NLTokenIDArray"];
  v9 = [(NLPredictionInfo *)self initWithPrediction:v5 tokenIDArray:v8 contextLength:v6 probabilityInfo:v7];

  return v9;
}

@end
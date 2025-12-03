@interface NLPredictionInfo
- (BOOL)isEqual:(id)equal;
- (NLPredictionInfo)initWithCoder:(id)coder;
- (NLPredictionInfo)initWithPrediction:(id)prediction tokenIDArray:(id)array contextLength:(unint64_t)length probabilityInfo:(id)info;
- (NLPredictionInfo)initWithPrediction:(id)prediction tokenIDs:(const unsigned int *)ds length:(unint64_t)length contextLength:(unint64_t)contextLength probabilityInfo:(id)info;
- (id)description;
- (unint64_t)hash;
- (unint64_t)tokenIDLength;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NLPredictionInfo

- (NLPredictionInfo)initWithPrediction:(id)prediction tokenIDArray:(id)array contextLength:(unint64_t)length probabilityInfo:(id)info
{
  predictionCopy = prediction;
  arrayCopy = array;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = NLPredictionInfo;
  v13 = [(NLPredictionInfo *)&v26 init];
  if (v13)
  {
    v14 = [arrayCopy count];
    v15 = [predictionCopy copy];
    prediction = v13->_prediction;
    v13->_prediction = v15;

    v13->_contextLength = length;
    v17 = [infoCopy copy];
    probabilityInfo = v13->_probabilityInfo;
    v13->_probabilityInfo = v17;

    v19 = [arrayCopy copy];
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
          v24 = [arrayCopy objectAtIndex:i];
          v22[i] = [v24 unsignedIntegerValue];
        }

        v13->_tokenIDs = v22;
      }
    }
  }

  return v13;
}

- (NLPredictionInfo)initWithPrediction:(id)prediction tokenIDs:(const unsigned int *)ds length:(unint64_t)length contextLength:(unint64_t)contextLength probabilityInfo:(id)info
{
  predictionCopy = prediction;
  infoCopy = info;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    v15 = *ds++;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    [i addObject:v16];
  }

  v17 = [(NLPredictionInfo *)self initWithPrediction:predictionCopy tokenIDArray:i contextLength:contextLength probabilityInfo:infoCopy];

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
  tokenIDArray = [(NLPredictionInfo *)self tokenIDArray];
  v3 = [tokenIDArray count];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  prediction = [(NLPredictionInfo *)self prediction];
  probabilityInfo = [(NLPredictionInfo *)self probabilityInfo];
  v6 = [v3 stringWithFormat:@"<%@> %@", prediction, probabilityInfo];

  return v6;
}

- (unint64_t)hash
{
  prediction = [(NLPredictionInfo *)self prediction];
  v4 = [prediction hash];
  v5 = [(NLPredictionInfo *)self contextLength]^ v4;
  probabilityInfo = [(NLPredictionInfo *)self probabilityInfo];
  v7 = [probabilityInfo hash];
  tokenIDArray = [(NLPredictionInfo *)self tokenIDArray];
  v9 = v7 ^ [tokenIDArray hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_8;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  prediction = [(NLPredictionInfo *)self prediction];
  prediction2 = [(NLPredictionInfo *)v5 prediction];
  if (![prediction isEqual:prediction2] || (v8 = -[NLPredictionInfo contextLength](self, "contextLength"), v8 != -[NLPredictionInfo contextLength](v5, "contextLength")))
  {
LABEL_10:

    goto LABEL_11;
  }

  probabilityInfo = [(NLPredictionInfo *)self probabilityInfo];
  probabilityInfo2 = [(NLPredictionInfo *)v5 probabilityInfo];
  if (![probabilityInfo isEqual:probabilityInfo2])
  {

    goto LABEL_10;
  }

  tokenIDArray = [(NLPredictionInfo *)self tokenIDArray];
  tokenIDArray2 = [(NLPredictionInfo *)v5 tokenIDArray];
  v13 = [tokenIDArray isEqual:tokenIDArray2];

  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v14 = 1;
LABEL_12:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLPredictionInfo requires keyed coding" userInfo:0];
    objc_exception_throw(v7);
  }

  prediction = [(NLPredictionInfo *)self prediction];
  [coderCopy encodeObject:prediction forKey:@"NLPrediction"];

  [coderCopy encodeInteger:-[NLPredictionInfo contextLength](self forKey:{"contextLength"), @"NLContextLength"}];
  probabilityInfo = [(NLPredictionInfo *)self probabilityInfo];
  [coderCopy encodeObject:probabilityInfo forKey:@"NLProbabilityInfo"];

  tokenIDArray = [(NLPredictionInfo *)self tokenIDArray];
  [coderCopy encodeObject:tokenIDArray forKey:@"NLTokenIDArray"];
}

- (NLPredictionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLPredictionInfo requires keyed coding" userInfo:0];
    objc_exception_throw(v11);
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NLPrediction"];
  v6 = [coderCopy decodeIntegerForKey:@"NLContextLength"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NLProbabilityInfo"];
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NLTokenIDArray"];
  v9 = [(NLPredictionInfo *)self initWithPrediction:v5 tokenIDArray:v8 contextLength:v6 probabilityInfo:v7];

  return v9;
}

@end
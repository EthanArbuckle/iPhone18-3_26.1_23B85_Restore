@interface INScoredPerson
- (BOOL)isEqual:(id)equal;
- (INScoredPerson)initWithCoder:(id)coder;
- (INScoredPerson)initWithPerson:(id)person recommendation:(int64_t)recommendation;
- (INScoredPerson)initWithPerson:(id)person score:(id)score;
- (INScoredPerson)initWithPerson:(id)person score:(id)score recommendation:(int64_t)recommendation;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INScoredPerson

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"person";
  person = self->_person;
  null = person;
  if (!person)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"score";
  score = self->_score;
  null2 = score;
  if (!score)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"recommendation";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_recommendation];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (score)
  {
    if (person)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (person)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INScoredPerson;
  v6 = [(INScoredPerson *)&v11 description];
  _dictionaryRepresentation = [(INScoredPerson *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INScoredPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"person"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"score"];
  v7 = [coderCopy decodeIntegerForKey:@"recommendation"];

  v8 = [(INScoredPerson *)self initWithPerson:v5 score:v6 recommendation:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  person = self->_person;
  coderCopy = coder;
  [coderCopy encodeObject:person forKey:@"person"];
  [coderCopy encodeObject:self->_score forKey:@"score"];
  [coderCopy encodeInteger:self->_recommendation forKey:@"recommendation"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    person = self->_person;
    v8 = (person == v5[1] || [(INPerson *)person isEqual:?]) && ((score = self->_score, score == v5[2]) || [(NSNumber *)score isEqual:?]) && self->_recommendation == v5[3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (INScoredPerson)initWithPerson:(id)person score:(id)score recommendation:(int64_t)recommendation
{
  personCopy = person;
  scoreCopy = score;
  v16.receiver = self;
  v16.super_class = INScoredPerson;
  v10 = [(INScoredPerson *)&v16 init];
  if (v10)
  {
    v11 = [personCopy copy];
    person = v10->_person;
    v10->_person = v11;

    v13 = [scoreCopy copy];
    score = v10->_score;
    v10->_score = v13;

    v10->_recommendation = recommendation;
  }

  return v10;
}

- (INScoredPerson)initWithPerson:(id)person recommendation:(int64_t)recommendation
{
  if (recommendation)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = MEMORY[0x1E696AD98];
  personCopy = person;
  v9 = [v7 numberWithDouble:v6];
  v10 = [(INScoredPerson *)self initWithPerson:personCopy score:v9 recommendation:recommendation];

  return v10;
}

- (INScoredPerson)initWithPerson:(id)person score:(id)score
{
  personCopy = person;
  scoreCopy = score;
  v8 = scoreCopy;
  if (scoreCopy)
  {
    [scoreCopy doubleValue];
    if (v9 < 1.0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [(INScoredPerson *)self initWithPerson:personCopy score:v8 recommendation:v10];

  return v11;
}

@end
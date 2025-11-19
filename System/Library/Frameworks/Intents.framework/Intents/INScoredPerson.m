@interface INScoredPerson
- (BOOL)isEqual:(id)a3;
- (INScoredPerson)initWithCoder:(id)a3;
- (INScoredPerson)initWithPerson:(id)a3 recommendation:(int64_t)a4;
- (INScoredPerson)initWithPerson:(id)a3 score:(id)a4;
- (INScoredPerson)initWithPerson:(id)a3 score:(id)a4 recommendation:(int64_t)a5;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INScoredPerson

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"person";
  person = self->_person;
  v4 = person;
  if (!person)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v4;
  v11[1] = @"score";
  score = self->_score;
  v6 = score;
  if (!score)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v6;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INScoredPerson;
  v6 = [(INScoredPerson *)&v11 description];
  v7 = [(INScoredPerson *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INScoredPerson)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"person"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
  v7 = [v4 decodeIntegerForKey:@"recommendation"];

  v8 = [(INScoredPerson *)self initWithPerson:v5 score:v6 recommendation:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  person = self->_person;
  v5 = a3;
  [v5 encodeObject:person forKey:@"person"];
  [v5 encodeObject:self->_score forKey:@"score"];
  [v5 encodeInteger:self->_recommendation forKey:@"recommendation"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    person = self->_person;
    v8 = (person == v5[1] || [(INPerson *)person isEqual:?]) && ((score = self->_score, score == v5[2]) || [(NSNumber *)score isEqual:?]) && self->_recommendation == v5[3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (INScoredPerson)initWithPerson:(id)a3 score:(id)a4 recommendation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = INScoredPerson;
  v10 = [(INScoredPerson *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    person = v10->_person;
    v10->_person = v11;

    v13 = [v9 copy];
    score = v10->_score;
    v10->_score = v13;

    v10->_recommendation = a5;
  }

  return v10;
}

- (INScoredPerson)initWithPerson:(id)a3 recommendation:(int64_t)a4
{
  if (a4)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = MEMORY[0x1E696AD98];
  v8 = a3;
  v9 = [v7 numberWithDouble:v6];
  v10 = [(INScoredPerson *)self initWithPerson:v8 score:v9 recommendation:a4];

  return v10;
}

- (INScoredPerson)initWithPerson:(id)a3 score:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
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

  v11 = [(INScoredPerson *)self initWithPerson:v6 score:v8 recommendation:v10];

  return v11;
}

@end
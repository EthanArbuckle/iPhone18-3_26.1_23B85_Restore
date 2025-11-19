@interface NSMorphologyPronoun
- (BOOL)isEqual:(id)a3;
- (NSMorphologyPronoun)initWithCoder:(id)a3;
- (NSMorphologyPronoun)initWithPronoun:(NSString *)pronoun morphology:(NSMorphology *)morphology dependentMorphology:(NSMorphology *)dependentMorphology;
- (id)_morphunConstraints;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSMorphologyPronoun

- (id)_morphunConstraints
{
  v2 = self;
  NSMorphologyPronoun.morphunConstraints()();

  v3 = _NativeDictionary.bridged()();

  return v3;
}

- (NSMorphologyPronoun)initWithPronoun:(NSString *)pronoun morphology:(NSMorphology *)morphology dependentMorphology:(NSMorphology *)dependentMorphology
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSMorphologyPronoun;
  v8 = [(NSMorphologyPronoun *)&v10 init];
  if (v8)
  {
    v8->_pronoun = [(NSString *)pronoun copy];
    v8->_morphology = [(NSMorphology *)morphology copy];
    v8->_dependentMorphology = [(NSMorphology *)dependentMorphology copy];
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMorphologyPronoun;
  [(NSMorphologyPronoun *)&v3 dealloc];
}

- (unint64_t)hash
{
  v3 = [(NSString *)[(NSMorphologyPronoun *)self pronoun] hash];
  v4 = [[(NSMorphologyPronoun *)self morphology] hash]^ v3;
  return v4 ^ [[(NSMorphologyPronoun *)self dependentMorphology] hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = -[NSString isEqualToString:](-[NSMorphologyPronoun pronoun](self, "pronoun"), "isEqualToString:", [a3 pronoun]);
    if (v5)
    {
      v5 = -[NSMorphology isEqual:](-[NSMorphologyPronoun morphology](self, "morphology"), "isEqual:", [a3 morphology]);
      if (v5)
      {
        v6 = [(NSMorphologyPronoun *)self dependentMorphology];
        if (v6 == [a3 dependentMorphology])
        {
          LOBYTE(v5) = 1;
        }

        else
        {
          v7 = [(NSMorphologyPronoun *)self dependentMorphology];
          v8 = [a3 dependentMorphology];

          LOBYTE(v5) = [(NSMorphology *)v7 isEqual:v8];
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_pronoun forKey:@"pronoun"];
  [a3 encodeObject:self->_morphology forKey:@"morphology"];
  if (self->_dependentMorphology)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (NSMorphologyPronoun)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMorphologyPronoun;
  v4 = [(NSMorphologyPronoun *)&v6 init];
  if (v4)
  {
    v4->_pronoun = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"pronoun", "copy"}];
    v4->_morphology = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"morphology", "copy"}];
    v4->_dependentMorphology = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"dependentMorphology", "copy"}];
  }

  return v4;
}

@end
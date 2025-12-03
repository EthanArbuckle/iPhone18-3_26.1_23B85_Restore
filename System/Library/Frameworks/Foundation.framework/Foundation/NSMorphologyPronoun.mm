@interface NSMorphologyPronoun
- (BOOL)isEqual:(id)equal;
- (NSMorphologyPronoun)initWithCoder:(id)coder;
- (NSMorphologyPronoun)initWithPronoun:(NSString *)pronoun morphology:(NSMorphology *)morphology dependentMorphology:(NSMorphology *)dependentMorphology;
- (id)_morphunConstraints;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSMorphologyPronoun

- (id)_morphunConstraints
{
  selfCopy = self;
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = -[NSString isEqualToString:](-[NSMorphologyPronoun pronoun](self, "pronoun"), "isEqualToString:", [equal pronoun]);
    if (v5)
    {
      v5 = -[NSMorphology isEqual:](-[NSMorphologyPronoun morphology](self, "morphology"), "isEqual:", [equal morphology]);
      if (v5)
      {
        dependentMorphology = [(NSMorphologyPronoun *)self dependentMorphology];
        if (dependentMorphology == [equal dependentMorphology])
        {
          LOBYTE(v5) = 1;
        }

        else
        {
          dependentMorphology2 = [(NSMorphologyPronoun *)self dependentMorphology];
          dependentMorphology3 = [equal dependentMorphology];

          LOBYTE(v5) = [(NSMorphology *)dependentMorphology2 isEqual:dependentMorphology3];
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_pronoun forKey:@"pronoun"];
  [coder encodeObject:self->_morphology forKey:@"morphology"];
  if (self->_dependentMorphology)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (NSMorphologyPronoun)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMorphologyPronoun;
  v4 = [(NSMorphologyPronoun *)&v6 init];
  if (v4)
  {
    v4->_pronoun = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"pronoun", "copy"}];
    v4->_morphology = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"morphology", "copy"}];
    v4->_dependentMorphology = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"dependentMorphology", "copy"}];
  }

  return v4;
}

@end
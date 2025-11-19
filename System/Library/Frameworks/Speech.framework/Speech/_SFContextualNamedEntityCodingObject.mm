@interface _SFContextualNamedEntityCodingObject
- (_SFContextualNamedEntityCodingObject)initWithCoder:(id)a3;
- (_SFContextualNamedEntityCodingObject)initWithContent:(id)a3 sourceFramework:(int64_t)a4 score:(id)a5 category:(id)a6 language:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFContextualNamedEntityCodingObject

- (_SFContextualNamedEntityCodingObject)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFContextualNamedEntityCodingObject;
  v5 = [(_SFContextualNamedEntityCodingObject *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_content"];
    content = v5->_content;
    v5->_content = v6;

    v5->_sourceFramework = [v4 decodeIntegerForKey:@"_sourceFramework"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_score"];
    score = v5->_score;
    v5->_score = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_category"];
    category = v5->_category;
    v5->_category = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_language"];
    language = v5->_language;
    v5->_language = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  content = self->_content;
  v5 = a3;
  [v5 encodeObject:content forKey:@"_content"];
  [v5 encodeInteger:self->_sourceFramework forKey:@"_sourceFramework"];
  [v5 encodeObject:self->_score forKey:@"_score"];
  [v5 encodeObject:self->_category forKey:@"_category"];
  [v5 encodeObject:self->_language forKey:@"_language"];
}

- (_SFContextualNamedEntityCodingObject)initWithContent:(id)a3 sourceFramework:(int64_t)a4 score:(id)a5 category:(id)a6 language:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = _SFContextualNamedEntityCodingObject;
  v16 = [(_SFContextualNamedEntityCodingObject *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    content = v16->_content;
    v16->_content = v17;

    v16->_sourceFramework = a4;
    v19 = [v13 copy];
    score = v16->_score;
    v16->_score = v19;

    v21 = [v14 copy];
    category = v16->_category;
    v16->_category = v21;

    v23 = [v15 copy];
    language = v16->_language;
    v16->_language = v23;
  }

  return v16;
}

@end
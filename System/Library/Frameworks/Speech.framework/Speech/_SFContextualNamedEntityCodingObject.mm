@interface _SFContextualNamedEntityCodingObject
- (_SFContextualNamedEntityCodingObject)initWithCoder:(id)coder;
- (_SFContextualNamedEntityCodingObject)initWithContent:(id)content sourceFramework:(int64_t)framework score:(id)score category:(id)category language:(id)language;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFContextualNamedEntityCodingObject

- (_SFContextualNamedEntityCodingObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _SFContextualNamedEntityCodingObject;
  v5 = [(_SFContextualNamedEntityCodingObject *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_content"];
    content = v5->_content;
    v5->_content = v6;

    v5->_sourceFramework = [coderCopy decodeIntegerForKey:@"_sourceFramework"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_score"];
    score = v5->_score;
    v5->_score = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_category"];
    category = v5->_category;
    v5->_category = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_language"];
    language = v5->_language;
    v5->_language = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  content = self->_content;
  coderCopy = coder;
  [coderCopy encodeObject:content forKey:@"_content"];
  [coderCopy encodeInteger:self->_sourceFramework forKey:@"_sourceFramework"];
  [coderCopy encodeObject:self->_score forKey:@"_score"];
  [coderCopy encodeObject:self->_category forKey:@"_category"];
  [coderCopy encodeObject:self->_language forKey:@"_language"];
}

- (_SFContextualNamedEntityCodingObject)initWithContent:(id)content sourceFramework:(int64_t)framework score:(id)score category:(id)category language:(id)language
{
  contentCopy = content;
  scoreCopy = score;
  categoryCopy = category;
  languageCopy = language;
  v26.receiver = self;
  v26.super_class = _SFContextualNamedEntityCodingObject;
  v16 = [(_SFContextualNamedEntityCodingObject *)&v26 init];
  if (v16)
  {
    v17 = [contentCopy copy];
    content = v16->_content;
    v16->_content = v17;

    v16->_sourceFramework = framework;
    v19 = [scoreCopy copy];
    score = v16->_score;
    v16->_score = v19;

    v21 = [categoryCopy copy];
    category = v16->_category;
    v16->_category = v21;

    v23 = [languageCopy copy];
    language = v16->_language;
    v16->_language = v23;
  }

  return v16;
}

@end
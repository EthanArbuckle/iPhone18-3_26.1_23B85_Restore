@interface _SFAnalysisContextCodingObject
- (_SFAnalysisContextCodingObject)initWithCoder:(id)coder;
- (_SFAnalysisContextCodingObject)initWithLeftContext:(id)context rightContext:(id)rightContext selectedText:(id)text contextualStrings:(id)strings contextualNamedEntities:(id)entities profileData:(id)data jitProfileData:(id)profileData enhancedContextualStrings:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFAnalysisContextCodingObject

- (_SFAnalysisContextCodingObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = _SFAnalysisContextCodingObject;
  v5 = [(_SFAnalysisContextCodingObject *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_leftContext"];
    leftContext = v5->_leftContext;
    v5->_leftContext = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_rightContext"];
    rightContext = v5->_rightContext;
    v5->_rightContext = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_selectedText"];
    selectedText = v5->_selectedText;
    v5->_selectedText = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_contextualStrings"];
    contextualStrings = v5->_contextualStrings;
    v5->_contextualStrings = v12;

    v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_contextualNamedEntities"];
    contextualNamedEntities = v5->_contextualNamedEntities;
    v5->_contextualNamedEntities = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_profileData"];
    profileData = v5->_profileData;
    v5->_profileData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_jitProfileData"];
    jitProfileData = v5->_jitProfileData;
    v5->_jitProfileData = v18;

    v20 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_enhancedContextualStrings"];
    enhancedContextualStrings = v5->_enhancedContextualStrings;
    v5->_enhancedContextualStrings = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  leftContext = self->_leftContext;
  coderCopy = coder;
  [coderCopy encodeObject:leftContext forKey:@"_leftContext"];
  [coderCopy encodeObject:self->_rightContext forKey:@"_rightContext"];
  [coderCopy encodeObject:self->_selectedText forKey:@"_selectedText"];
  [coderCopy encodeObject:self->_contextualStrings forKey:@"_contextualStrings"];
  [coderCopy encodeObject:self->_contextualNamedEntities forKey:@"_contextualNamedEntities"];
  [coderCopy encodeObject:self->_profileData forKey:@"_profileData"];
  [coderCopy encodeObject:self->_jitProfileData forKey:@"_jitProfileData"];
  [coderCopy encodeObject:self->_enhancedContextualStrings forKey:@"_enhancedContextualStrings"];
}

- (_SFAnalysisContextCodingObject)initWithLeftContext:(id)context rightContext:(id)rightContext selectedText:(id)text contextualStrings:(id)strings contextualNamedEntities:(id)entities profileData:(id)data jitProfileData:(id)profileData enhancedContextualStrings:(id)self0
{
  contextCopy = context;
  rightContextCopy = rightContext;
  textCopy = text;
  stringsCopy = strings;
  entitiesCopy = entities;
  dataCopy = data;
  profileDataCopy = profileData;
  contextualStringsCopy = contextualStrings;
  v42.receiver = self;
  v42.super_class = _SFAnalysisContextCodingObject;
  v24 = [(_SFAnalysisContextCodingObject *)&v42 init];
  if (v24)
  {
    v25 = [contextCopy copy];
    leftContext = v24->_leftContext;
    v24->_leftContext = v25;

    v27 = [rightContextCopy copy];
    rightContext = v24->_rightContext;
    v24->_rightContext = v27;

    v29 = [textCopy copy];
    selectedText = v24->_selectedText;
    v24->_selectedText = v29;

    v31 = [stringsCopy copy];
    contextualStrings = v24->_contextualStrings;
    v24->_contextualStrings = v31;

    v33 = [entitiesCopy copy];
    contextualNamedEntities = v24->_contextualNamedEntities;
    v24->_contextualNamedEntities = v33;

    v35 = [dataCopy copy];
    profileData = v24->_profileData;
    v24->_profileData = v35;

    v37 = [profileDataCopy copy];
    jitProfileData = v24->_jitProfileData;
    v24->_jitProfileData = v37;

    v39 = [contextualStringsCopy copy];
    enhancedContextualStrings = v24->_enhancedContextualStrings;
    v24->_enhancedContextualStrings = v39;
  }

  return v24;
}

@end
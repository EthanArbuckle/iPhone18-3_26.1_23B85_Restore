@interface _SFAnalysisContextCodingObject
- (_SFAnalysisContextCodingObject)initWithCoder:(id)a3;
- (_SFAnalysisContextCodingObject)initWithLeftContext:(id)a3 rightContext:(id)a4 selectedText:(id)a5 contextualStrings:(id)a6 contextualNamedEntities:(id)a7 profileData:(id)a8 jitProfileData:(id)a9 enhancedContextualStrings:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFAnalysisContextCodingObject

- (_SFAnalysisContextCodingObject)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _SFAnalysisContextCodingObject;
  v5 = [(_SFAnalysisContextCodingObject *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_leftContext"];
    leftContext = v5->_leftContext;
    v5->_leftContext = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_rightContext"];
    rightContext = v5->_rightContext;
    v5->_rightContext = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_selectedText"];
    selectedText = v5->_selectedText;
    v5->_selectedText = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_contextualStrings"];
    contextualStrings = v5->_contextualStrings;
    v5->_contextualStrings = v12;

    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_contextualNamedEntities"];
    contextualNamedEntities = v5->_contextualNamedEntities;
    v5->_contextualNamedEntities = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_profileData"];
    profileData = v5->_profileData;
    v5->_profileData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_jitProfileData"];
    jitProfileData = v5->_jitProfileData;
    v5->_jitProfileData = v18;

    v20 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_enhancedContextualStrings"];
    enhancedContextualStrings = v5->_enhancedContextualStrings;
    v5->_enhancedContextualStrings = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  leftContext = self->_leftContext;
  v5 = a3;
  [v5 encodeObject:leftContext forKey:@"_leftContext"];
  [v5 encodeObject:self->_rightContext forKey:@"_rightContext"];
  [v5 encodeObject:self->_selectedText forKey:@"_selectedText"];
  [v5 encodeObject:self->_contextualStrings forKey:@"_contextualStrings"];
  [v5 encodeObject:self->_contextualNamedEntities forKey:@"_contextualNamedEntities"];
  [v5 encodeObject:self->_profileData forKey:@"_profileData"];
  [v5 encodeObject:self->_jitProfileData forKey:@"_jitProfileData"];
  [v5 encodeObject:self->_enhancedContextualStrings forKey:@"_enhancedContextualStrings"];
}

- (_SFAnalysisContextCodingObject)initWithLeftContext:(id)a3 rightContext:(id)a4 selectedText:(id)a5 contextualStrings:(id)a6 contextualNamedEntities:(id)a7 profileData:(id)a8 jitProfileData:(id)a9 enhancedContextualStrings:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v42.receiver = self;
  v42.super_class = _SFAnalysisContextCodingObject;
  v24 = [(_SFAnalysisContextCodingObject *)&v42 init];
  if (v24)
  {
    v25 = [v16 copy];
    leftContext = v24->_leftContext;
    v24->_leftContext = v25;

    v27 = [v17 copy];
    rightContext = v24->_rightContext;
    v24->_rightContext = v27;

    v29 = [v18 copy];
    selectedText = v24->_selectedText;
    v24->_selectedText = v29;

    v31 = [v19 copy];
    contextualStrings = v24->_contextualStrings;
    v24->_contextualStrings = v31;

    v33 = [v20 copy];
    contextualNamedEntities = v24->_contextualNamedEntities;
    v24->_contextualNamedEntities = v33;

    v35 = [v21 copy];
    profileData = v24->_profileData;
    v24->_profileData = v35;

    v37 = [v22 copy];
    jitProfileData = v24->_jitProfileData;
    v24->_jitProfileData = v37;

    v39 = [v23 copy];
    enhancedContextualStrings = v24->_enhancedContextualStrings;
    v24->_enhancedContextualStrings = v39;
  }

  return v24;
}

@end
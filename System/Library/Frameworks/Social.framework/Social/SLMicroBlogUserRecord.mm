@interface SLMicroBlogUserRecord
+ (SLMicroBlogUserRecord)userRecordWithDictionaryRepresentation:(id)representation;
- (SLMicroBlogUserRecord)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setValuesWithUserDictionary:(id)dictionary;
@end

@implementation SLMicroBlogUserRecord

+ (SLMicroBlogUserRecord)userRecordWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = objc_alloc_init(SLMicroBlogUserRecord);
  v5 = v4;
  if (representationCopy)
  {
    [(SLMicroBlogUserRecord *)v4 setValuesWithUserDictionary:representationCopy];
  }

  return v5;
}

- (void)setValuesWithUserDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"name"];
  [(SLMicroBlogUserRecord *)self setName:v5];

  v6 = [dictionaryCopy objectForKey:@"screen_name"];
  [(SLMicroBlogUserRecord *)self setScreen_name:v6];

  v7 = [dictionaryCopy objectForKey:@"profile_image_url"];

  [(SLMicroBlogUserRecord *)self setProfile_image_url:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(SLMicroBlogUserRecord *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  screen_name = [(SLMicroBlogUserRecord *)self screen_name];
  [coderCopy encodeObject:screen_name forKey:@"screen_name"];

  profile_image_url = [(SLMicroBlogUserRecord *)self profile_image_url];
  [coderCopy encodeObject:profile_image_url forKey:@"profile_image_url"];
}

- (SLMicroBlogUserRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SLMicroBlogUserRecord;
  v5 = [(SLMicroBlogUserRecord *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(SLMicroBlogUserRecord *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screen_name"];
    [(SLMicroBlogUserRecord *)v5 setScreen_name:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profile_image_url"];
    [(SLMicroBlogUserRecord *)v5 setProfile_image_url:v8];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SLMicroBlogUserRecord;
  v4 = [(SLMicroBlogUserRecord *)&v9 description];
  screen_name = [(SLMicroBlogUserRecord *)self screen_name];
  name = [(SLMicroBlogUserRecord *)self name];
  v7 = [v3 stringWithFormat:@"%@ screenName: %@ name: %@", v4, screen_name, name];

  return v7;
}

@end
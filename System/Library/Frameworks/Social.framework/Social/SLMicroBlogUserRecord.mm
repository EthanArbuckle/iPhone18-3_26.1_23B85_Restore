@interface SLMicroBlogUserRecord
+ (SLMicroBlogUserRecord)userRecordWithDictionaryRepresentation:(id)a3;
- (SLMicroBlogUserRecord)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setValuesWithUserDictionary:(id)a3;
@end

@implementation SLMicroBlogUserRecord

+ (SLMicroBlogUserRecord)userRecordWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SLMicroBlogUserRecord);
  v5 = v4;
  if (v3)
  {
    [(SLMicroBlogUserRecord *)v4 setValuesWithUserDictionary:v3];
  }

  return v5;
}

- (void)setValuesWithUserDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"name"];
  [(SLMicroBlogUserRecord *)self setName:v5];

  v6 = [v4 objectForKey:@"screen_name"];
  [(SLMicroBlogUserRecord *)self setScreen_name:v6];

  v7 = [v4 objectForKey:@"profile_image_url"];

  [(SLMicroBlogUserRecord *)self setProfile_image_url:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLMicroBlogUserRecord *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(SLMicroBlogUserRecord *)self screen_name];
  [v4 encodeObject:v6 forKey:@"screen_name"];

  v7 = [(SLMicroBlogUserRecord *)self profile_image_url];
  [v4 encodeObject:v7 forKey:@"profile_image_url"];
}

- (SLMicroBlogUserRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SLMicroBlogUserRecord;
  v5 = [(SLMicroBlogUserRecord *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(SLMicroBlogUserRecord *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"screen_name"];
    [(SLMicroBlogUserRecord *)v5 setScreen_name:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profile_image_url"];
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
  v5 = [(SLMicroBlogUserRecord *)self screen_name];
  v6 = [(SLMicroBlogUserRecord *)self name];
  v7 = [v3 stringWithFormat:@"%@ screenName: %@ name: %@", v4, v5, v6];

  return v7;
}

@end
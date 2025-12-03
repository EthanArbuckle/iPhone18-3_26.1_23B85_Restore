@interface MediaSocialAuthor
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation MediaSocialAuthor

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_4D2BA0(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_ABB3A0();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_4D2D68();

  return v3;
}

@end
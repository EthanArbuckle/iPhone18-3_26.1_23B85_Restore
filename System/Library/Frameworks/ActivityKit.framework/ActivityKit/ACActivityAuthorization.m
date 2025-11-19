@interface ACActivityAuthorization
- (ACActivityAuthorization)init;
@end

@implementation ACActivityAuthorization

- (ACActivityAuthorization)init
{
  v6.receiver = self;
  v6.super_class = ACActivityAuthorization;
  v2 = [(ACActivityAuthorization *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC11ActivityKit21ActivityAuthorization);
    activityAuthorization = v2->_activityAuthorization;
    v2->_activityAuthorization = v3;
  }

  return v2;
}

@end
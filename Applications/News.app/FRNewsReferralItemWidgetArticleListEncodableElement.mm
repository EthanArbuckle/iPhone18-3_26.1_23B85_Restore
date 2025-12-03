@interface FRNewsReferralItemWidgetArticleListEncodableElement
- (FRNewsReferralItemWidgetArticleListEncodableElement)init;
- (FRNewsReferralItemWidgetArticleListEncodableElement)initWithCoder:(id)coder;
- (FRNewsReferralItemWidgetArticleListEncodableElement)initWithJSONArray:(id)array;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FRNewsReferralItemWidgetArticleListEncodableElement

- (FRNewsReferralItemWidgetArticleListEncodableElement)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRNewsReferralItemWidgetArticleListEncodableElement init]";
    v8 = 2080;
    v9 = "FRNewsReferralItemWidgetArticleList.m";
    v10 = 1024;
    v11 = 164;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRNewsReferralItemWidgetArticleListEncodableElement init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRNewsReferralItemWidgetArticleListEncodableElement)initWithJSONArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B774();
  }

  v9.receiver = self;
  v9.super_class = FRNewsReferralItemWidgetArticleListEncodableElement;
  v5 = [(FRNewsReferralItemWidgetArticleListEncodableElement *)&v9 init];
  if (v5)
  {
    v6 = [arrayCopy copy];
    JSONArray = v5->_JSONArray;
    v5->_JSONArray = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  jSONArray = [(FRNewsReferralItemWidgetArticleListEncodableElement *)self JSONArray];
  [coderCopy encodeObject:jSONArray forKey:@"b"];
}

- (FRNewsReferralItemWidgetArticleListEncodableElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v5, v6, v7, v8, objc_opt_class(), 0];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"b"];

  v11 = [(FRNewsReferralItemWidgetArticleListEncodableElement *)self initWithJSONArray:v10];
  return v11;
}

@end
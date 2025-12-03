@interface _LSCompatibilityNothingBindable
- (BOOL)isEqual:(id)equal;
- (BindingEvaluator)baseBindingEvaluatorWithBindingStyle:(SEL)style auditToken:(unsigned __int8)token;
- (_LSCompatibilityNothingBindable)init;
- (id)typeRecordWithError:(id *)error;
@end

@implementation _LSCompatibilityNothingBindable

- (_LSCompatibilityNothingBindable)init
{
  v3.receiver = self;
  v3.super_class = _LSCompatibilityNothingBindable;
  return [(LSClaimBindingBindable *)&v3 _initProtected];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)typeRecordWithError:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9499, 0, "[_LSCompatibilityNothingBindable typeRecordWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimBindingConfiguration.mm", 476);
  }

  return 0;
}

- (BindingEvaluator)baseBindingEvaluatorWithBindingStyle:(SEL)style auditToken:(unsigned __int8)token
{
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_LSCompatibilityNothingBindable baseBindingEvaluatorWithBindingStyle:v6 auditToken:?];
  }

  LaunchServices::BindingEvaluator::CreateWithUTI(0, 0, retstr);
  return result;
}

@end
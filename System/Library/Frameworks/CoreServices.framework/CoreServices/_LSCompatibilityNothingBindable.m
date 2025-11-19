@interface _LSCompatibilityNothingBindable
- (BOOL)isEqual:(id)a3;
- (BindingEvaluator)baseBindingEvaluatorWithBindingStyle:(SEL)a3 auditToken:(unsigned __int8)a4;
- (_LSCompatibilityNothingBindable)init;
- (id)typeRecordWithError:(id *)a3;
@end

@implementation _LSCompatibilityNothingBindable

- (_LSCompatibilityNothingBindable)init
{
  v3.receiver = self;
  v3.super_class = _LSCompatibilityNothingBindable;
  return [(LSClaimBindingBindable *)&v3 _initProtected];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)typeRecordWithError:(id *)a3
{
  if (a3)
  {
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9499, 0, "[_LSCompatibilityNothingBindable typeRecordWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSClaimBindingConfiguration.mm", 476);
  }

  return 0;
}

- (BindingEvaluator)baseBindingEvaluatorWithBindingStyle:(SEL)a3 auditToken:(unsigned __int8)a4
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
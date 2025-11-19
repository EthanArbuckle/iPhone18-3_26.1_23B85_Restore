@interface _SCNShadableCompilationIssue
+ (id)issueWithShadable:(id)a3 entryPoint:(id)a4 effectiveModifier:(id)a5 message:(id)a6 line:(int64_t)a7 type:(unint64_t)a8;
- (void)dealloc;
@end

@implementation _SCNShadableCompilationIssue

+ (id)issueWithShadable:(id)a3 entryPoint:(id)a4 effectiveModifier:(id)a5 message:(id)a6 line:(int64_t)a7 type:(unint64_t)a8
{
  v14 = objc_alloc_init(_SCNShadableCompilationIssue);
  v14->_shadable = a3;
  v14->_entryPoint = a4;
  v14->_effectiveModifier = a5;
  v14->_message = a6;
  v14->_type = a8;
  v14->_line = a7;
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _SCNShadableCompilationIssue;
  [(_SCNShadableCompilationIssue *)&v3 dealloc];
}

@end
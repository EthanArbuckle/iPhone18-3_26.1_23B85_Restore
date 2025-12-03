@interface _SCNShadableCompilationIssue
+ (id)issueWithShadable:(id)shadable entryPoint:(id)point effectiveModifier:(id)modifier message:(id)message line:(int64_t)line type:(unint64_t)type;
- (void)dealloc;
@end

@implementation _SCNShadableCompilationIssue

+ (id)issueWithShadable:(id)shadable entryPoint:(id)point effectiveModifier:(id)modifier message:(id)message line:(int64_t)line type:(unint64_t)type
{
  v14 = objc_alloc_init(_SCNShadableCompilationIssue);
  v14->_shadable = shadable;
  v14->_entryPoint = point;
  v14->_effectiveModifier = modifier;
  v14->_message = message;
  v14->_type = type;
  v14->_line = line;
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _SCNShadableCompilationIssue;
  [(_SCNShadableCompilationIssue *)&v3 dealloc];
}

@end
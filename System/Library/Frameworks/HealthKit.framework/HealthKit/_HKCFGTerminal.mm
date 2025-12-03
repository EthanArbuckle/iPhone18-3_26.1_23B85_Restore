@interface _HKCFGTerminal
+ (id)_terminalMatchingDoubleWithCondition:(id)condition;
+ (id)_terminalMatchingIntegerWithCondition:(id)condition;
+ (id)terminalMatchingCharacterInSet:(id)set;
+ (id)terminalMatchingCharacterInString:(id)string;
+ (id)terminalMatchingSequenceOfCharactersInSet:(id)set;
- (BOOL)_scanValue:(id *)value withScanner:(id)scanner;
- (id)_label;
- (id)characterSet;
- (unint64_t)_minimumLength;
- (void)_tryNodesWithContext:(id)context solutionTest:(id)test;
@end

@implementation _HKCFGTerminal

+ (id)terminalMatchingCharacterInSet:(id)set
{
  setCopy = set;
  v4 = objc_alloc_init(_HKCFGCharacterTerminal);
  [(_HKCFGCharacterTerminal *)v4 setCharacterSet:setCopy];

  return v4;
}

+ (id)terminalMatchingCharacterInString:(id)string
{
  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:string];
  v5 = [self terminalMatchingCharacterInSet:v4];

  return v5;
}

+ (id)_terminalMatchingIntegerWithCondition:(id)condition
{
  conditionCopy = condition;
  v4 = objc_alloc_init(_HKCFGIntegerTerminal);
  [(_HKCFGIntegerTerminal *)v4 setCondition:conditionCopy];

  return v4;
}

+ (id)_terminalMatchingDoubleWithCondition:(id)condition
{
  conditionCopy = condition;
  v4 = objc_alloc_init(_HKCFGDoubleTerminal);
  [(_HKCFGDoubleTerminal *)v4 setCondition:conditionCopy];

  return v4;
}

- (void)_tryNodesWithContext:(id)context solutionTest:(id)test
{
  testCopy = test;
  scanner = [context scanner];
  scanLocation = [scanner scanLocation];
  v12 = 0;
  v9 = [(_HKCFGTerminal *)self _scanValue:&v12 withScanner:scanner];
  v10 = v12;
  if (v9)
  {
    v11 = +[_HKCFGTerminalNode nodeWithValue:rangeOfString:](_HKCFGTerminalNode, "nodeWithValue:rangeOfString:", v10, scanLocation, [scanner scanLocation] - scanLocation);
    testCopy[2](testCopy, v11);
  }

  [scanner setScanLocation:scanLocation];
}

+ (id)terminalMatchingSequenceOfCharactersInSet:(id)set
{
  setCopy = set;
  v4 = objc_alloc_init(_HKCFGCharacterSequenceTerminal);
  [(_HKCFGCharacterSequenceTerminal *)v4 setCharacterSet:setCopy];

  return v4;
}

- (BOOL)_scanValue:(id *)value withScanner:(id)scanner
{
  OUTLINED_FUNCTION_0_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_label
{
  OUTLINED_FUNCTION_0_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)_minimumLength
{
  OUTLINED_FUNCTION_0_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)characterSet
{
  OUTLINED_FUNCTION_0_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

+ (void)terminalMatchingString:caseSensitive:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"_HKContextFreeGrammar.m" lineNumber:507 description:@"CFG terminal expression cannot be empty string"];
}

@end
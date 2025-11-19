@interface _HKCFGTerminal
+ (id)_terminalMatchingDoubleWithCondition:(id)a3;
+ (id)_terminalMatchingIntegerWithCondition:(id)a3;
+ (id)terminalMatchingCharacterInSet:(id)a3;
+ (id)terminalMatchingCharacterInString:(id)a3;
+ (id)terminalMatchingSequenceOfCharactersInSet:(id)a3;
- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4;
- (id)_label;
- (id)characterSet;
- (unint64_t)_minimumLength;
- (void)_tryNodesWithContext:(id)a3 solutionTest:(id)a4;
@end

@implementation _HKCFGTerminal

+ (id)terminalMatchingCharacterInSet:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_HKCFGCharacterTerminal);
  [(_HKCFGCharacterTerminal *)v4 setCharacterSet:v3];

  return v4;
}

+ (id)terminalMatchingCharacterInString:(id)a3
{
  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:a3];
  v5 = [a1 terminalMatchingCharacterInSet:v4];

  return v5;
}

+ (id)_terminalMatchingIntegerWithCondition:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_HKCFGIntegerTerminal);
  [(_HKCFGIntegerTerminal *)v4 setCondition:v3];

  return v4;
}

+ (id)_terminalMatchingDoubleWithCondition:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_HKCFGDoubleTerminal);
  [(_HKCFGDoubleTerminal *)v4 setCondition:v3];

  return v4;
}

- (void)_tryNodesWithContext:(id)a3 solutionTest:(id)a4
{
  v6 = a4;
  v7 = [a3 scanner];
  v8 = [v7 scanLocation];
  v12 = 0;
  v9 = [(_HKCFGTerminal *)self _scanValue:&v12 withScanner:v7];
  v10 = v12;
  if (v9)
  {
    v11 = +[_HKCFGTerminalNode nodeWithValue:rangeOfString:](_HKCFGTerminalNode, "nodeWithValue:rangeOfString:", v10, v8, [v7 scanLocation] - v8);
    v6[2](v6, v11);
  }

  [v7 setScanLocation:v8];
}

+ (id)terminalMatchingSequenceOfCharactersInSet:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_HKCFGCharacterSequenceTerminal);
  [(_HKCFGCharacterSequenceTerminal *)v4 setCharacterSet:v3];

  return v4;
}

- (BOOL)_scanValue:(id *)a3 withScanner:(id)a4
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
@interface LSApplicationWorkspace(DefaultApps)
@end

@implementation LSApplicationWorkspace(DefaultApps)

- (void)relaxApplicationTypeRequirements:()DefaultApps forApplicationRecord:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"appRecord != nil" object:? file:? lineNumber:? description:?];
}

- (void)setDefaultHandlerForTypeRecord:()DefaultApps toApplicationRecord:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
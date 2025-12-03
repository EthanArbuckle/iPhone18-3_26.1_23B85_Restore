@interface FBSceneWorkspaceAccessibility_SettingsLoader
+ (void)_accessibilityPerformValidations:(id)validations;
- (FBSceneWorkspaceAccessibility_SettingsLoader)initWithIdentifier:(id)identifier;
- (void)invalidate;
@end

@implementation FBSceneWorkspaceAccessibility_SettingsLoader

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FBSceneWorkspace" hasInstanceMethod:@"initWithIdentifier:" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FBSceneWorkspace" hasInstanceMethod:@"invalidate" withFullSignature:{"v", 0}];
}

- (FBSceneWorkspaceAccessibility_SettingsLoader)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = FBSceneWorkspaceAccessibility_SettingsLoader;
  v5 = [(FBSceneWorkspaceAccessibility_SettingsLoader *)&v8 initWithIdentifier:identifierCopy];
  if (initWithIdentifier__onceToken != -1)
  {
    [FBSceneWorkspaceAccessibility_SettingsLoader initWithIdentifier:];
  }

  [AXWorkspaces setObject:v5 forKeyedSubscript:identifierCopy];
  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FBSceneWorkspaceAccessibility_SettingsLoader *)identifierCopy initWithIdentifier:v5, v6];
  }

  return v5;
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = FBSceneWorkspaceAccessibility_SettingsLoader;
  [(FBSceneWorkspaceAccessibility_SettingsLoader *)&v5 invalidate];
  v3 = AXWorkspaces;
  v4 = [(FBSceneWorkspaceAccessibility_SettingsLoader *)self safeStringForKey:@"_identifier"];
  [v3 setObject:0 forKeyedSubscript:v4];
}

- (void)initWithIdentifier:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_29BADF000, log, OS_LOG_TYPE_DEBUG, "Monitoring workspace: %@ %@", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

@end
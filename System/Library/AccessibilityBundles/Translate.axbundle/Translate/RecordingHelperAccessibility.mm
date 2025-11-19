@interface RecordingHelperAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityDidStartListening;
- (void)_accessibilityDidStopListening;
@end

@implementation RecordingHelperAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SequoiaTranslator.RecordingHelper" hasInstanceMethod:@"_accessibilityDidStartListening" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SequoiaTranslator.RecordingHelper" hasInstanceMethod:@"_accessibilityDidStopListening" withFullSignature:{"v", 0}];
}

- (void)_accessibilityDidStartListening
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_29C4D0000, v2, OS_LOG_TYPE_DEFAULT, "Marking VO to be quiet since we are recording for Translation", v3, 2u);
  }

  [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:MEMORY[0x29EDB8EB0]];
}

- (void)_accessibilityDidStopListening
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_29C4D0000, v2, OS_LOG_TYPE_DEFAULT, "Finished recording for Translation. Resetting VO quiet state.", v3, 2u);
  }

  [*MEMORY[0x29EDC8008] _accessibilitySetIsDictationListeningOverride:0];
}

@end
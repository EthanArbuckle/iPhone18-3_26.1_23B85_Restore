@interface CNContainerEnabledDescription
- (id)CNValueForContainer:(id)container;
- (void)setCNValue:(id)value onContainer:(id)container;
@end

@implementation CNContainerEnabledDescription

- (id)CNValueForContainer:(id)container
{
  v3 = MEMORY[0x1E696AD98];
  isEnabled = [container isEnabled];

  return [v3 numberWithBool:isEnabled];
}

- (void)setCNValue:(id)value onContainer:(id)container
{
  containerCopy = container;
  [containerCopy setEnabled:{objc_msgSend(value, "BOOLValue")}];
}

@end
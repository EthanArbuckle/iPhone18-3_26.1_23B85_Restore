@interface CNContainerEnabledDescription
- (id)CNValueForContainer:(id)a3;
- (void)setCNValue:(id)a3 onContainer:(id)a4;
@end

@implementation CNContainerEnabledDescription

- (id)CNValueForContainer:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 isEnabled];

  return [v3 numberWithBool:v4];
}

- (void)setCNValue:(id)a3 onContainer:(id)a4
{
  v5 = a4;
  [v5 setEnabled:{objc_msgSend(a3, "BOOLValue")}];
}

@end
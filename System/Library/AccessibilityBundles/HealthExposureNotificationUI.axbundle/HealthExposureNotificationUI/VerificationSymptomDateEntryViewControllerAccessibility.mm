@interface VerificationSymptomDateEntryViewControllerAccessibility
- (void)updateSymptomsDateCell:(id)cell;
@end

@implementation VerificationSymptomDateEntryViewControllerAccessibility

- (void)updateSymptomsDateCell:(id)cell
{
  v8.receiver = self;
  v8.super_class = VerificationSymptomDateEntryViewControllerAccessibility;
  cellCopy = cell;
  [(VerificationSymptomDateEntryViewControllerAccessibility *)&v8 updateSymptomsDateCell:cellCopy];
  v5 = [(VerificationSymptomDateEntryViewControllerAccessibility *)self safeBoolForKey:@"hasSymptoms"];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __82__VerificationSymptomDateEntryViewControllerAccessibility_updateSymptomsDateCell___block_invoke;
  v6[3] = &__block_descriptor_33_e5_Q8__0l;
  v7 = v5;
  [cellCopy _setAccessibilityTraitsBlock:v6];
}

uint64_t __82__VerificationSymptomDateEntryViewControllerAccessibility_updateSymptomsDateCell___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = MEMORY[0x29EDC7FA0];
  }

  else
  {
    v1 = MEMORY[0x29EDC7FA8];
  }

  return *v1;
}

@end
@interface PUPickerSearchBasedSuggestion
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerSearchBasedSuggestion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PickerSearchBasedSuggestion.encode(with:)(coderCopy);
}

@end
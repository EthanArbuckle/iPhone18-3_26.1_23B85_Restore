@interface TVRUICaptionsButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation TVRUICaptionsButtonAccessibility

- (unint64_t)accessibilityTraits
{
  if ([(TVRUICaptionsButtonAccessibility *)self safeBoolForKey:@"captionsEnabled"])
  {
    v5.receiver = self;
    v5.super_class = TVRUICaptionsButtonAccessibility;
    return *MEMORY[0x29EDC7FC0] | [(TVRUICaptionsButtonAccessibility *)&v5 accessibilityTraits];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = TVRUICaptionsButtonAccessibility;
    return [(TVRUICaptionsButtonAccessibility *)&v4 accessibilityTraits];
  }
}

@end
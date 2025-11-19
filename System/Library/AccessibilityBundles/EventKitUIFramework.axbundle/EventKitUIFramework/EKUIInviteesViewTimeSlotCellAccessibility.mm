@interface EKUIInviteesViewTimeSlotCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (EKUIInviteesViewTimeSlotCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation EKUIInviteesViewTimeSlotCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKUIInviteesViewTimeSlotCell" hasInstanceMethod:@"checked" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKUIInviteesViewTimeSlotCell" hasInstanceMethod:@"topTimeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKUIInviteesViewTimeSlotCell" hasInstanceMethod:@"bottomTimeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKUIInviteesViewTimeSlotCell" hasInstanceMethod:@"participantsTextView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKUIInviteesViewTimeSlotCell" hasInstanceMethod:@"initWithStyle: reuseIdentifier:" withFullSignature:{"@", "q", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = EKUIInviteesViewTimeSlotCellAccessibility;
  v3 = [(EKUIInviteesViewTimeSlotCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(EKUIInviteesViewTimeSlotCellAccessibility *)self safeBoolForKey:@"checked"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (id)accessibilityLabel
{
  v3 = [(EKUIInviteesViewTimeSlotCellAccessibility *)self safeValueForKey:@"topTimeLabel"];
  v4 = [(EKUIInviteesViewTimeSlotCellAccessibility *)self safeValueForKey:@"bottomTimeLabel"];
  v5 = [(EKUIInviteesViewTimeSlotCellAccessibility *)self safeValueForKey:@"participantsTextView"];
  v8 = [v5 safeValueForKey:@"text"];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = EKUIInviteesViewTimeSlotCellAccessibility;
  [(EKUIInviteesViewTimeSlotCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(EKUIInviteesViewTimeSlotCellAccessibility *)self safeValueForKey:@"participantsTextView"];
  [v3 setIsAccessibilityElement:0];
}

- (EKUIInviteesViewTimeSlotCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = EKUIInviteesViewTimeSlotCellAccessibility;
  v4 = [(EKUIInviteesViewTimeSlotCellAccessibility *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  [(EKUIInviteesViewTimeSlotCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end
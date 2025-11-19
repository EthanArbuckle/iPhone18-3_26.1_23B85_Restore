@interface _MKNanoAddressSnapshotViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _MKNanoAddressSnapshotViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_MKNanoAddressSnapshotView" hasInstanceVariable:@"_mapItem" withType:"MKMapItem"];
  [v3 validateClass:@"_MKNanoAddressSnapshotView" hasInstanceVariable:@"_showsName" withType:"B"];
  [v3 validateClass:@"MKMapItem"];
  [v3 validateClass:@"MKMapItem" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMapItem" hasInstanceMethod:@"_addressFormattedAsMultilineAddress" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(_MKNanoAddressSnapshotViewAccessibility *)self safeValueForKey:@"_mapItem"];
  v4 = [v3 safeValueForKey:@"name"];
  v5 = [v3 safeValueForKey:@"_addressFormattedAsMultilineAddress"];
  if ([(_MKNanoAddressSnapshotViewAccessibility *)self safeBoolForKey:@"_showsName"])
  {
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

@end
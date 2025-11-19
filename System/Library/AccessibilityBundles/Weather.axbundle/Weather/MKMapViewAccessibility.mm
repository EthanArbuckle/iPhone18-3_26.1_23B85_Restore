@interface MKMapViewAccessibility
@end

@implementation MKMapViewAccessibility

Class __68__MKMapViewAccessibility__Weather__MapKit_accessibilityCustomRotors__block_invoke()
{
  result = NSClassFromString(&cfstr_WeathermapsWea.isa);
  accessibilityCustomRotors__WeatherMapAnnotationView = result;
  return result;
}

id __68__MKMapViewAccessibility__Weather__MapKit_accessibilityCustomRotors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_opt_new();
  v6 = [WeakRetained safeValueForKey:@"_annotationContainer"];
  v7 = [v6 accessibilityElements];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __68__MKMapViewAccessibility__Weather__MapKit_accessibilityCustomRotors__block_invoke_3;
  v11[3] = &unk_29F31ED08;
  v12 = v5;
  v8 = v5;
  [v7 enumerateObjectsUsingBlock:v11];

  v9 = [WeakRetained _accessibilityCustomRotorResultHelper:v3 array:v8];

  return v9;
}

void __68__MKMapViewAccessibility__Weather__MapKit_accessibilityCustomRotors__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 safeBoolForKey:@"hidden"] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __88__MKMapViewAccessibility__Weather__MapKit__axApplyModelToVKFeatureAccessibilityElement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axUpdateLocation:v6 withModel:v5];

  [WeakRetained _axSetRequestIsInFlight:0 forLocation:v6];
}

Class __80__MKMapViewAccessibility__Weather__MapKit__axVKFeatureAccessibilityElementClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Vkfeatureacces.isa);
  _axVKFeatureAccessibilityElementClass__VKFeatureAccessibilityElementClass = result;
  return result;
}

Class __69__MKMapViewAccessibility__Weather__MapKit__axMKAttributionLabelClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Mkattributionl.isa);
  _axMKAttributionLabelClass__MKAttributionLabelClass = result;
  return result;
}

@end
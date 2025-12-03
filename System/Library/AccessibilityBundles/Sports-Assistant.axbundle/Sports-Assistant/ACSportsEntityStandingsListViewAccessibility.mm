@interface ACSportsEntityStandingsListViewAccessibility
- (id)accessibilityElements;
- (void)configureDomainObjectView:(id)view withDomainObject:(id)object beforeDomainObject:(id)domainObject afterDomainObject:(id)afterDomainObject league:(id)league index:(unint64_t)index;
@end

@implementation ACSportsEntityStandingsListViewAccessibility

- (void)configureDomainObjectView:(id)view withDomainObject:(id)object beforeDomainObject:(id)domainObject afterDomainObject:(id)afterDomainObject league:(id)league index:(unint64_t)index
{
  v9.receiver = self;
  v9.super_class = ACSportsEntityStandingsListViewAccessibility;
  [(ACSportsEntityStandingsListViewAccessibility *)&v9 configureDomainObjectView:view withDomainObject:object beforeDomainObject:domainObject afterDomainObject:afterDomainObject league:league index:index];
  [(ACSportsEntityStandingsListViewAccessibility *)self _accessibilityRemoveValueForKey:@"AXStandingsElements"];
}

- (id)accessibilityElements
{
  v3 = [(ACSportsEntityStandingsListViewAccessibility *)self _accessibilityValueForKey:@"AXStandingsElements"];
  if (!v3)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v5 = [(ACSportsEntityStandingsListViewAccessibility *)self safeValueForKey:@"snippetColumns"];
    v6 = [(ACSportsEntityStandingsListViewAccessibility *)self safeValueForKey:@"domainObjectViews"];
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3221225472;
    v12 = __69__ACSportsEntityStandingsListViewAccessibility_accessibilityElements__block_invoke;
    v13 = &unk_29F2FA7C8;
    v14 = v5;
    v7 = array;
    v15 = v7;
    v8 = v5;
    [v6 enumerateObjectsWithOptions:2 usingBlock:&v10];
    v3 = v7;
    [(ACSportsEntityStandingsListViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"AXStandingsElements", v10, v11, v12, v13];
  }

  return v3;
}

void __69__ACSportsEntityStandingsListViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 _accessibilitySetRetainedValue:v3 forKey:@"AXStandingsColumns"];
  [*(a1 + 40) ax_enqueueObject:v4];
}

@end
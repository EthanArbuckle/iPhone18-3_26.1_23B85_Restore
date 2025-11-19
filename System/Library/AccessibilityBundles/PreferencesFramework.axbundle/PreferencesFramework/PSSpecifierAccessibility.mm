@interface PSSpecifierAccessibility
- (id)accessibilityIdentification;
- (void)dealloc;
@end

@implementation PSSpecifierAccessibility

- (void)dealloc
{
  [(PSSpecifierAccessibility *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = PSSpecifierAccessibility;
  [(PSSpecifierAccessibility *)&v3 dealloc];
}

- (id)accessibilityIdentification
{
  v3 = [(PSSpecifierAccessibility *)self propertyForKey:@"accessibilityIdentification"];
  if (v3 || (v7.receiver = self, v7.super_class = PSSpecifierAccessibility, [(PSSpecifierAccessibility *)&v7 accessibilityIdentification], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(PSSpecifierAccessibility *)self propertyForKey:*MEMORY[0x29EDC6308]], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = [(PSSpecifierAccessibility *)self propertyForKey:*MEMORY[0x29EDC6320]];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@", v4];

    v4 = v5;
  }

LABEL_7:

  return v4;
}

@end
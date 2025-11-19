@interface SiriMoviesChevronButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityProxyChevronButton;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SiriMoviesChevronButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriMoviesChevronButton" hasInstanceMethod:@"primaryString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriMoviesChevronButton" hasInstanceMethod:@"secondaryString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriMoviesChevronButton" hasInstanceMethod:@"accessoryString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriMoviesChevronButton" hasInstanceMethod:@"showtimeListView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriMoviesShowtimeListView" hasInstanceMethod:@"showtimes" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SAMovieShowtime" hasInstanceMethod:@"showtime" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SACalendar" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
}

- (id)_accessibilityProxyChevronButton
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v2 = [(SiriMoviesChevronButtonAccessibility *)self safeValueForKey:@"subviews"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __72__SiriMoviesChevronButtonAccessibility__accessibilityProxyChevronButton__block_invoke;
  v5[3] = &unk_29F2DC248;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __72__SiriMoviesChevronButtonAccessibility__accessibilityProxyChevronButton__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  NSClassFromString(&cfstr_Sirimovieschev.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SiriMoviesChevronButtonAccessibility *)self safeValueForKey:@"primaryString"];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SiriMoviesChevronButtonAccessibility *)self safeValueForKey:@"showtimeListView"];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(SiriMoviesChevronButtonAccessibility *)self _accessibilityProxyChevronButton];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SiriMoviesChevronButtonAccessibility *)self safeValueForKey:@"accessoryString"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v4];
  v6 = MEMORY[0x29EDB8EB0];
  [v5 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9D8]];
  [v5 setAttribute:v6 forKey:*MEMORY[0x29EDBD8F0]];
  v7 = [(SiriMoviesChevronButtonAccessibility *)self safeValueForKey:@"primaryString"];
  v13 = [(SiriMoviesChevronButtonAccessibility *)self safeValueForKey:@"secondaryString"];
  v8 = __UIAXStringForVariables();

  v9 = [(SiriMoviesChevronButtonAccessibility *)self _accessibilityProxyChevronButton:v13];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 accessibilityLabel];

    v8 = v11;
  }

  return v8;
}

- (id)accessibilityValue
{
  v3 = [(SiriMoviesChevronButtonAccessibility *)self _accessibilityProxyChevronButton];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityValue];
  }

  else
  {
    v6 = [(SiriMoviesChevronButtonAccessibility *)self safeValueForKey:@"showtimeListView"];
    if (v6)
    {
      v7 = [MEMORY[0x29EDB8DE8] array];
      v8 = [MEMORY[0x29EDB8DE8] array];
      v9 = [v6 safeValueForKey:@"showtimes"];
      v19[0] = MEMORY[0x29EDCA5F8];
      v19[1] = 3221225472;
      v19[2] = __58__SiriMoviesChevronButtonAccessibility_accessibilityValue__block_invoke;
      v19[3] = &unk_29F2DC270;
      v20 = v8;
      v10 = v8;
      [v9 enumerateObjectsUsingBlock:v19];

      v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_0];
      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __58__SiriMoviesChevronButtonAccessibility_accessibilityValue__block_invoke_3;
      v17 = &unk_29F2DC270;
      v18 = v7;
      v12 = v7;
      [v11 enumerateObjectsUsingBlock:&v14];
      v5 = [v12 componentsJoinedByString:{@", ", v14, v15, v16, v17}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t __58__SiriMoviesChevronButtonAccessibility_accessibilityValue__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t __58__SiriMoviesChevronButtonAccessibility_accessibilityValue__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = [v4 safeValueForKey:@"showtime"];
  v7 = [v6 safeValueForKey:@"date"];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = [v5 safeValueForKey:@"showtime"];
  v10 = [v9 safeValueForKey:@"date"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = [v8 compare:v11];
  return v12;
}

void __58__SiriMoviesChevronButtonAccessibility_accessibilityValue__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"showtime"];
  v5 = [v4 safeValueForKey:@"date"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = AXDateStringForFormat();
  if ([v7 length])
  {
    [*(a1 + 32) addObject:v7];
  }
}

@end
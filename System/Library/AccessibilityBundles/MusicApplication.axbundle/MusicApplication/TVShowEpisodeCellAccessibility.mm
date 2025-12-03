@interface TVShowEpisodeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)layoutSubviews;
@end

@implementation TVShowEpisodeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.TVShowEpisodeCell" hasInstanceMethod:@"accessibilityHeaderLockupView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.TVShowEpisodeCell" hasInstanceMethod:@"accessibilityHeadlineTextStackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.TVShowEpisodeCell" hasInstanceMethod:@"accessibilityTextStackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.TVShowEpisodeCell" hasInstanceMethod:@"accessibilityDescriptionTextStackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.TVShowEpisodeCell" hasInstanceMethod:@"accessibilityChevronImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.TVShowEpisodeCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  _accessibilityTVShowEpisodeCellElements = [(TVShowEpisodeCellAccessibility *)self _accessibilityTVShowEpisodeCellElements];
  if (!_accessibilityTVShowEpisodeCellElements)
  {
    _accessibilityTVShowEpisodeCellElements = [MEMORY[0x29EDB8DE8] array];
    v4 = [(TVShowEpisodeCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"headline, title"];
    objc_opt_class();
    v5 = [(TVShowEpisodeCellAccessibility *)self safeValueForKey:@"accessibilityHeaderLockupView"];
    v6 = __UIAccessibilityCastAsSafeCategory();

    [v6 _accessibilitySetVideoLabel:v4];
    [_accessibilityTVShowEpisodeCellElements axSafelyAddObject:v6];
    v7 = MEMORY[0x29EDB8D80];
    v8 = [(TVShowEpisodeCellAccessibility *)self safeValueForKey:@"accessibilityHeadlineTextStackView"];
    v9 = [(TVShowEpisodeCellAccessibility *)self safeValueForKey:@"accessibilityTextStackView"];
    v10 = [(TVShowEpisodeCellAccessibility *)self safeValueForKey:@"accessibilityDescriptionTextStackView"];
    v11 = [(TVShowEpisodeCellAccessibility *)self safeValueForKey:@"accessibilityChevronImageView"];
    v12 = [v7 axArrayByIgnoringNilElementsWithCount:{4, v8, v9, v10, v11}];

    v13 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:self representedElements:v12];
    v14 = [(TVShowEpisodeCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"headline, title, descriptionText"];
    [v13 setAccessibilityLabel:v14];
    [_accessibilityTVShowEpisodeCellElements axSafelyAddObject:v13];
    [(TVShowEpisodeCellAccessibility *)self _setAccessibilityTVShowEpisodeCellElements:_accessibilityTVShowEpisodeCellElements];
  }

  return _accessibilityTVShowEpisodeCellElements;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TVShowEpisodeCellAccessibility;
  [(TVShowEpisodeCellAccessibility *)&v3 layoutSubviews];
  [(TVShowEpisodeCellAccessibility *)self _setAccessibilityTVShowEpisodeCellElements:0];
}

@end
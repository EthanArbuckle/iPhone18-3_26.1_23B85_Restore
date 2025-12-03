@interface MKTransitSectionPagingFilter
+ (id)defaultFilterForDepartures;
+ (id)defaultFilterForInactiveLines;
@end

@implementation MKTransitSectionPagingFilter

+ (id)defaultFilterForInactiveLines
{
  v3 = objc_alloc_init(MKTransitSectionPagingFilter);
  [(MKTransitSectionPagingFilter *)v3 setLimitNumLines:1];
  -[MKTransitSectionPagingFilter setNumLinesFallbackThreshold:](v3, "setNumLinesFallbackThreshold:", [self _kMaxLinesInSectionBeforePage]);
  -[MKTransitSectionPagingFilter setNumLinesFallbackValue:](v3, "setNumLinesFallbackValue:", [self _kNumLinesFallbackValue]);

  return v3;
}

+ (id)defaultFilterForDepartures
{
  v3 = objc_alloc_init(MKTransitSectionPagingFilter);
  [(MKTransitSectionPagingFilter *)v3 setLimitNumLines:1];
  -[MKTransitSectionPagingFilter setNumLinesFallbackThreshold:](v3, "setNumLinesFallbackThreshold:", [self _kMaxLinesInSectionBeforePage]);
  -[MKTransitSectionPagingFilter setNumLinesFallbackValue:](v3, "setNumLinesFallbackValue:", [self _kNumLinesFallbackValue]);

  return v3;
}

@end
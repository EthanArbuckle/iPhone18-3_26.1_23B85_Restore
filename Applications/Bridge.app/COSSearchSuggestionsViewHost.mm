@interface COSSearchSuggestionsViewHost
+ (id)makeSearchSuggestionsViewController;
- (COSSearchSuggestionsViewHost)init;
@end

@implementation COSSearchSuggestionsViewHost

+ (id)makeSearchSuggestionsViewController
{
  sub_10000AAEC();
  v2 = objc_allocWithZone(sub_1001379C4(&qword_1002BC128));
  v3 = UIHostingController.init(rootView:)();

  return v3;
}

- (COSSearchSuggestionsViewHost)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchSuggestionsViewHost();
  return [(COSSearchSuggestionsViewHost *)&v3 init];
}

@end
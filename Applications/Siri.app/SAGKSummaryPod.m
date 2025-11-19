@interface SAGKSummaryPod
- (id)_convertedCardSection;
- (id)_convertedCardSections;
@end

@implementation SAGKSummaryPod

- (id)_convertedCardSection
{
  v3 = objc_alloc_init(SFDescriptionCardSection);
  v4 = [(SAGKSummaryPod *)self text];
  v5 = [SFText textWithString:v4];

  [v5 setMaxLines:14];
  [v3 setDescriptionText:v5];
  v6 = sub_100078408(@"ENCYCLOPEDIA_DESCRIPTION_EXPAND_TEXT");
  [v3 setExpandText:v6];

  v7 = [(SAGKSummaryPod *)self imageResource];
  v8 = [v7 _convertedImageOfSize:{60.0, 75.0}];
  [v3 setImage:v8];

  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  [v3 setCardSectionId:v10];

  [v3 setSeparatorStyle:5];

  return v3;
}

- (id)_convertedCardSections
{
  v2 = [(SAGKSummaryPod *)self _convertedCardSection];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end
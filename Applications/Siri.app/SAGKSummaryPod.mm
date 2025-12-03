@interface SAGKSummaryPod
- (id)_convertedCardSection;
- (id)_convertedCardSections;
@end

@implementation SAGKSummaryPod

- (id)_convertedCardSection
{
  v3 = objc_alloc_init(SFDescriptionCardSection);
  text = [(SAGKSummaryPod *)self text];
  v5 = [SFText textWithString:text];

  [v5 setMaxLines:14];
  [v3 setDescriptionText:v5];
  v6 = sub_100078408(@"ENCYCLOPEDIA_DESCRIPTION_EXPAND_TEXT");
  [v3 setExpandText:v6];

  imageResource = [(SAGKSummaryPod *)self imageResource];
  v8 = [imageResource _convertedImageOfSize:{60.0, 75.0}];
  [v3 setImage:v8];

  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];
  [v3 setCardSectionId:uUIDString];

  [v3 setSeparatorStyle:5];

  return v3;
}

- (id)_convertedCardSections
{
  _convertedCardSection = [(SAGKSummaryPod *)self _convertedCardSection];
  v5 = _convertedCardSection;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end
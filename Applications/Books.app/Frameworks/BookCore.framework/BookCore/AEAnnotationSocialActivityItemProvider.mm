@interface AEAnnotationSocialActivityItemProvider
- (id)supportedActivityTypes;
- (id)text;
@end

@implementation AEAnnotationSocialActivityItemProvider

- (id)supportedActivityTypes
{
  v4[0] = UIActivityTypePostToFacebook;
  v4[1] = UIActivityTypePostToTwitter;
  v4[2] = UIActivityTypePostToWeibo;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)text
{
  characterLimit = [(AEAnnotationSocialActivityItemProvider *)self characterLimit];
  v10.receiver = self;
  v10.super_class = AEAnnotationSocialActivityItemProvider;
  text = [(AEAnnotationActivityItemProviderSource *)&v10 text];
  v5 = IMCommonCoreBundle();
  v6 = [v5 localizedStringForKey:@"\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v7 = [text stringByTruncatingToLength:characterLimit options:3 truncationString:v6];

  stringByEnclosingInQuotes = [v7 stringByEnclosingInQuotes];

  return stringByEnclosingInQuotes;
}

@end
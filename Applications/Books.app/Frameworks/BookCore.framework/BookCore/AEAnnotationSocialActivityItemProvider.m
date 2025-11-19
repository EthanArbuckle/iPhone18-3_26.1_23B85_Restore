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
  v3 = [(AEAnnotationSocialActivityItemProvider *)self characterLimit];
  v10.receiver = self;
  v10.super_class = AEAnnotationSocialActivityItemProvider;
  v4 = [(AEAnnotationActivityItemProviderSource *)&v10 text];
  v5 = IMCommonCoreBundle();
  v6 = [v5 localizedStringForKey:@"\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v7 = [v4 stringByTruncatingToLength:v3 options:3 truncationString:v6];

  v8 = [v7 stringByEnclosingInQuotes];

  return v8;
}

@end
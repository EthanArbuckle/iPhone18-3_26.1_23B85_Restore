@interface PHAsset
- (NSString)crlaxFriendlyFilename;
- (NSString)crlaxLabel;
- (NSString)crlaxMediaSubtypeName;
- (NSString)crlaxMediaTypeName;
@end

@implementation PHAsset

- (NSString)crlaxLabel
{
  v3 = [(PHAsset *)self crlaxMediaSubtypeName];
  v4 = [(PHAsset *)self crlaxMediaTypeName];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  v6 = [(PHAsset *)self crlaxFriendlyFilename];
  v13 = __CRLAccessibilityStringForVariables(1, v6, v7, v8, v9, v10, v11, v12, v5);

  return v13;
}

- (NSString)crlaxFriendlyFilename
{
  v8 = 0;
  v2 = [(PHAsset *)self crlaxValueForKey:@"filename"];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;

  v6 = CRLAccessibilityFriendlyFilename(v5);

  return v6;
}

- (NSString)crlaxMediaTypeName
{
  v2 = [(PHAsset *)self crlaxMediaType];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = CRLAccessibilityLocalizedString(off_10183ADD8[v2]);
  }

  return v3;
}

- (NSString)crlaxMediaSubtypeName
{
  v3 = +[NSMutableString string];
  v4 = [(PHAsset *)self crlaxMediaSubtype];
  if ((v4 & 2) != 0)
  {
    v5 = CRLAccessibilityLocalizedString(@"photos.asset.media.subtype.hdr");
    [v3 appendString:v5];
  }

  if (v4)
  {
    v6 = @"photos.asset.media.subtype.panorama";
  }

  else
  {
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    v6 = @"photos.asset.media.subtype.timelapse";
  }

  v7 = CRLAccessibilityLocalizedString(v6);
  [v3 appendString:v7];

LABEL_8:
  v8 = [NSString stringWithString:v3];

  return v8;
}

@end
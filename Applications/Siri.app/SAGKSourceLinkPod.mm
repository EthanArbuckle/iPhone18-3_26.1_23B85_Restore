@interface SAGKSourceLinkPod
- (id)_convertedCardSections;
@end

@implementation SAGKSourceLinkPod

- (id)_convertedCardSections
{
  v3 = objc_alloc_init(SFRowCardSection);
  [v3 setImageIsRightAligned:1];
  v4 = objc_alloc_init(SFRichText);
  v5 = sub_100078408(@"SEE_MORE_ON_PUNCHOUT_FORMAT");
  punchOut = [(SAGKSourceLinkPod *)self punchOut];
  punchOutName = [punchOut punchOutName];
  v8 = [NSString stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, punchOutName];
  [v4 setText:v8];

  [v3 setLeadingText:v4];
  punchOut2 = [(SAGKSourceLinkPod *)self punchOut];
  _convertedPunchout = [punchOut2 _convertedPunchout];
  v15 = _convertedPunchout;
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  [v3 setPunchoutOptions:v11];

  [v3 setSeparatorStyle:5];
  v14 = v3;
  v12 = [NSArray arrayWithObjects:&v14 count:1];

  return v12;
}

@end
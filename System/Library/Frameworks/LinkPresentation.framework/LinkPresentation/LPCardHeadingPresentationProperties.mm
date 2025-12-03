@interface LPCardHeadingPresentationProperties
- (LPCardHeadingPresentationProperties)initWithStyle:(int64_t)style topCaption:(id)caption attributedBottomCaption:(id)bottomCaption icons:(id)icons;
- (LPCardHeadingPresentationProperties)initWithStyle:(int64_t)style topCaption:(id)caption bottomCaption:(id)bottomCaption icon:(id)icon;
@end

@implementation LPCardHeadingPresentationProperties

- (LPCardHeadingPresentationProperties)initWithStyle:(int64_t)style topCaption:(id)caption bottomCaption:(id)bottomCaption icon:(id)icon
{
  captionCopy = caption;
  bottomCaptionCopy = bottomCaption;
  iconCopy = icon;
  v25.receiver = self;
  v25.super_class = LPCardHeadingPresentationProperties;
  v13 = [(LPCardHeadingPresentationProperties *)&v25 init];
  v14 = v13;
  if (v13)
  {
    [(LPWebLinkPresentationProperties *)v13 setStyle:style];
    v15 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [(LPWebLinkPresentationProperties *)v14 setCaptionBar:v15];

    captionBar = [(LPWebLinkPresentationProperties *)v14 captionBar];
    [captionBar setLeadingIcon:iconCopy];

    captionBar2 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    v18 = [captionBar2 top];
    leading = [v18 leading];
    [leading setText:captionCopy];

    captionBar3 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    bottom = [captionBar3 bottom];
    leading2 = [bottom leading];
    [leading2 setText:bottomCaptionCopy];

    v23 = v14;
  }

  return v14;
}

- (LPCardHeadingPresentationProperties)initWithStyle:(int64_t)style topCaption:(id)caption attributedBottomCaption:(id)bottomCaption icons:(id)icons
{
  captionCopy = caption;
  bottomCaptionCopy = bottomCaption;
  iconsCopy = icons;
  v28.receiver = self;
  v28.super_class = LPCardHeadingPresentationProperties;
  v13 = [(LPCardHeadingPresentationProperties *)&v28 init];
  v14 = v13;
  if (v13)
  {
    [(LPWebLinkPresentationProperties *)v13 setStyle:style];
    v15 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [(LPWebLinkPresentationProperties *)v14 setCaptionBar:v15];

    firstObject = [iconsCopy firstObject];
    captionBar = [(LPWebLinkPresentationProperties *)v14 captionBar];
    [captionBar setLeadingIcon:firstObject];

    if ([iconsCopy count] >= 2)
    {
      v18 = [iconsCopy subarrayWithRange:{1, objc_msgSend(iconsCopy, "count") - 1}];
      captionBar2 = [(LPWebLinkPresentationProperties *)v14 captionBar];
      [captionBar2 setAdditionalLeadingIcons:v18];
    }

    captionBar3 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    v21 = [captionBar3 top];
    leading = [v21 leading];
    [leading setText:captionCopy];

    captionBar4 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    bottom = [captionBar4 bottom];
    leading2 = [bottom leading];
    [leading2 setAttributedText:bottomCaptionCopy];

    v26 = v14;
  }

  return v14;
}

@end
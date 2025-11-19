@interface LPCardHeadingPresentationProperties
- (LPCardHeadingPresentationProperties)initWithStyle:(int64_t)a3 topCaption:(id)a4 attributedBottomCaption:(id)a5 icons:(id)a6;
- (LPCardHeadingPresentationProperties)initWithStyle:(int64_t)a3 topCaption:(id)a4 bottomCaption:(id)a5 icon:(id)a6;
@end

@implementation LPCardHeadingPresentationProperties

- (LPCardHeadingPresentationProperties)initWithStyle:(int64_t)a3 topCaption:(id)a4 bottomCaption:(id)a5 icon:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = LPCardHeadingPresentationProperties;
  v13 = [(LPCardHeadingPresentationProperties *)&v25 init];
  v14 = v13;
  if (v13)
  {
    [(LPWebLinkPresentationProperties *)v13 setStyle:a3];
    v15 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [(LPWebLinkPresentationProperties *)v14 setCaptionBar:v15];

    v16 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    [v16 setLeadingIcon:v12];

    v17 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    v18 = [v17 top];
    v19 = [v18 leading];
    [v19 setText:v10];

    v20 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    v21 = [v20 bottom];
    v22 = [v21 leading];
    [v22 setText:v11];

    v23 = v14;
  }

  return v14;
}

- (LPCardHeadingPresentationProperties)initWithStyle:(int64_t)a3 topCaption:(id)a4 attributedBottomCaption:(id)a5 icons:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v28.receiver = self;
  v28.super_class = LPCardHeadingPresentationProperties;
  v13 = [(LPCardHeadingPresentationProperties *)&v28 init];
  v14 = v13;
  if (v13)
  {
    [(LPWebLinkPresentationProperties *)v13 setStyle:a3];
    v15 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [(LPWebLinkPresentationProperties *)v14 setCaptionBar:v15];

    v16 = [v12 firstObject];
    v17 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    [v17 setLeadingIcon:v16];

    if ([v12 count] >= 2)
    {
      v18 = [v12 subarrayWithRange:{1, objc_msgSend(v12, "count") - 1}];
      v19 = [(LPWebLinkPresentationProperties *)v14 captionBar];
      [v19 setAdditionalLeadingIcons:v18];
    }

    v20 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    v21 = [v20 top];
    v22 = [v21 leading];
    [v22 setText:v10];

    v23 = [(LPWebLinkPresentationProperties *)v14 captionBar];
    v24 = [v23 bottom];
    v25 = [v24 leading];
    [v25 setAttributedText:v11];

    v26 = v14;
  }

  return v14;
}

@end
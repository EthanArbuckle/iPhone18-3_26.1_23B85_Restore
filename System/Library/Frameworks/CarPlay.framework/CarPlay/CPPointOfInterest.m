@interface CPPointOfInterest
+ (CGSize)pinImageSize;
+ (CGSize)selectedPinImageSize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPointOfInterest:(id)a3;
- (CPPointOfInterest)initWithCoder:(id)a3;
- (CPPointOfInterest)initWithLocation:(MKMapItem *)location title:(NSString *)title subtitle:(NSString *)subtitle summary:(NSString *)summary detailTitle:(NSString *)detailTitle detailSubtitle:(NSString *)detailSubtitle detailSummary:(NSString *)detailSummary pinImage:(UIImage *)pinImage selectedPinImage:(UIImage *)selectedPinImage;
- (UIImage)pinImage;
- (UIImage)selectedPinImage;
- (void)encodeWithCoder:(id)a3;
- (void)setPinImage:(UIImage *)pinImage;
- (void)setSelectedPinImage:(UIImage *)selectedPinImage;
@end

@implementation CPPointOfInterest

+ (CGSize)pinImageSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)selectedPinImageSize
{
  v2 = 48.0;
  v3 = 48.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CPPointOfInterest)initWithLocation:(MKMapItem *)location title:(NSString *)title subtitle:(NSString *)subtitle summary:(NSString *)summary detailTitle:(NSString *)detailTitle detailSubtitle:(NSString *)detailSubtitle detailSummary:(NSString *)detailSummary pinImage:(UIImage *)pinImage selectedPinImage:(UIImage *)selectedPinImage
{
  v42 = location;
  v18 = title;
  v19 = subtitle;
  v20 = summary;
  v21 = detailTitle;
  v22 = detailSubtitle;
  v23 = detailSummary;
  v24 = pinImage;
  v25 = selectedPinImage;
  v43.receiver = self;
  v43.super_class = CPPointOfInterest;
  v26 = [(CPPointOfInterest *)&v43 init];
  if (v26)
  {
    v27 = [MEMORY[0x277CCAD78] UUID];
    identifier = v26->_identifier;
    v26->_identifier = v27;

    objc_storeStrong(&v26->_location, location);
    v29 = [(NSString *)v18 copy];
    v30 = v26->_title;
    v26->_title = v29;

    v31 = [(NSString *)v19 copy];
    v32 = v26->_subtitle;
    v26->_subtitle = v31;

    v33 = [(NSString *)v20 copy];
    v34 = v26->_summary;
    v26->_summary = v33;

    v35 = [(NSString *)v21 copy];
    v36 = v26->_detailTitle;
    v26->_detailTitle = v35;

    v37 = [(NSString *)v22 copy];
    v38 = v26->_detailSubtitle;
    v26->_detailSubtitle = v37;

    v39 = [(NSString *)v23 copy];
    v40 = v26->_detailSummary;
    v26->_detailSummary = v39;

    [(CPPointOfInterest *)v26 setPinImage:v24];
    [(CPPointOfInterest *)v26 setSelectedPinImage:v25];
  }

  return v26;
}

- (CPPointOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPPointOfInterest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestLocation"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestTitle"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestSummaryKey"];
    summary = v5->_summary;
    v5->_summary = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestMapMarkerKey"];
    pinImageSet = v5->_pinImageSet;
    v5->_pinImageSet = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestSelectedMapMarkerKey"];
    selectedPinImageSet = v5->_selectedPinImageSet;
    v5->_selectedPinImageSet = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailTitleKey"];
    detailTitle = v5->_detailTitle;
    v5->_detailTitle = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailSubtitleKey"];
    detailSubtitle = v5->_detailSubtitle;
    v5->_detailSubtitle = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailSummaryKey"];
    detailSummary = v5->_detailSummary;
    v5->_detailSummary = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailPrimaryButtonKey"];
    primaryButton = v5->_primaryButton;
    v5->_primaryButton = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailSecondayButtonKey"];
    secondaryButton = v5->_secondaryButton;
    v5->_secondaryButton = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPPointOfInterestIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPPointOfInterest *)self location];
  [v4 encodeObject:v5 forKey:@"CPPointOfInterestLocation"];

  v6 = [(CPPointOfInterest *)self title];
  [v4 encodeObject:v6 forKey:@"CPPointOfInterestTitle"];

  v7 = [(CPPointOfInterest *)self subtitle];
  [v4 encodeObject:v7 forKey:@"CPPointOfInterestSubtitle"];

  v8 = [(CPPointOfInterest *)self summary];
  [v4 encodeObject:v8 forKey:@"CPPointOfInterestSummaryKey"];

  v9 = [(CPPointOfInterest *)self pinImageSet];
  [v4 encodeObject:v9 forKey:@"CPPointOfInterestMapMarkerKey"];

  v10 = [(CPPointOfInterest *)self selectedPinImageSet];
  [v4 encodeObject:v10 forKey:@"CPPointOfInterestSelectedMapMarkerKey"];

  v11 = [(CPPointOfInterest *)self detailTitle];
  [v4 encodeObject:v11 forKey:@"CPPointOfInterestDetailTitleKey"];

  v12 = [(CPPointOfInterest *)self detailSubtitle];
  [v4 encodeObject:v12 forKey:@"CPPointOfInterestDetailSubtitleKey"];

  v13 = [(CPPointOfInterest *)self detailSummary];
  [v4 encodeObject:v13 forKey:@"CPPointOfInterestDetailSummaryKey"];

  v14 = [(CPPointOfInterest *)self primaryButton];
  [v4 encodeObject:v14 forKey:@"CPPointOfInterestDetailPrimaryButtonKey"];

  v15 = [(CPPointOfInterest *)self secondaryButton];
  [v4 encodeObject:v15 forKey:@"CPPointOfInterestDetailSecondayButtonKey"];

  v16 = [(CPPointOfInterest *)self identifier];
  [v4 encodeObject:v16 forKey:@"kCPPointOfInterestIdentifierKey"];
}

- (void)setPinImage:(UIImage *)pinImage
{
  v4 = pinImage;
  if (v4)
  {
    v5 = [CPImageSet alloc];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__CPPointOfInterest_setPinImage___block_invoke;
    v8[3] = &unk_278A11190;
    v8[4] = self;
    v6 = [(CPImageSet *)v5 initWithImage:v4 treatmentBlock:v8];
    pinImageSet = self->_pinImageSet;
    self->_pinImageSet = v6;
  }

  else
  {
    pinImageSet = self->_pinImageSet;
    self->_pinImageSet = 0;
  }
}

id __33__CPPointOfInterest_setPinImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() pinImageSize];
  v6 = CPImageByScalingImageToSize(v3, v4, v5);

  return v6;
}

- (UIImage)pinImage
{
  v2 = [(CPPointOfInterest *)self pinImageSet];
  v3 = [v2 image];

  return v3;
}

- (void)setSelectedPinImage:(UIImage *)selectedPinImage
{
  v4 = selectedPinImage;
  if (v4)
  {
    v5 = [CPImageSet alloc];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__CPPointOfInterest_setSelectedPinImage___block_invoke;
    v8[3] = &unk_278A11190;
    v8[4] = self;
    v6 = [(CPImageSet *)v5 initWithImage:v4 treatmentBlock:v8];
    selectedPinImageSet = self->_selectedPinImageSet;
    self->_selectedPinImageSet = v6;
  }

  else
  {
    selectedPinImageSet = self->_selectedPinImageSet;
    self->_selectedPinImageSet = 0;
  }
}

id __41__CPPointOfInterest_setSelectedPinImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() selectedPinImageSize];
  v6 = CPImageByScalingImageToSize(v3, v4, v5);

  return v6;
}

- (UIImage)selectedPinImage
{
  v2 = [(CPPointOfInterest *)self selectedPinImageSet];
  v3 = [v2 image];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPPointOfInterest *)self isEqualToPointOfInterest:v4];

  return v5;
}

- (BOOL)isEqualToPointOfInterest:(id)a3
{
  v4 = a3;
  v5 = [(CPPointOfInterest *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [(CPPointOfInterest *)self title];
  v9 = [v4 title];
  v10 = [v8 isEqual:v9];

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [(CPPointOfInterest *)self subtitle];
  v12 = [v4 subtitle];
  v13 = [v11 isEqual:v12];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [(CPPointOfInterest *)self summary];
  v15 = [v4 summary];
  v16 = [v14 isEqual:v15];

  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = [(CPPointOfInterest *)self detailTitle];
  v18 = [v4 detailTitle];
  v19 = [v17 isEqual:v18];

  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = [(CPPointOfInterest *)self detailSubtitle];
  v21 = [v4 detailSubtitle];
  v22 = [v20 isEqual:v21];

  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = [(CPPointOfInterest *)self detailSummary];
  v24 = [v4 detailSummary];
  v25 = [v23 isEqual:v24];

  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = [(CPPointOfInterest *)self pinImageSet];
  v27 = [v4 pinImageSet];
  v28 = [v26 isEqual:v27];

  if (v28)
  {
    v29 = [(CPPointOfInterest *)self location];
    v30 = [v4 location];
    v31 = [v29 isEqual:v30];
  }

  else
  {
LABEL_10:
    v31 = 0;
  }

  return v31;
}

@end
@interface CPPointOfInterest
+ (CGSize)pinImageSize;
+ (CGSize)selectedPinImageSize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPointOfInterest:(id)interest;
- (CPPointOfInterest)initWithCoder:(id)coder;
- (CPPointOfInterest)initWithLocation:(MKMapItem *)location title:(NSString *)title subtitle:(NSString *)subtitle summary:(NSString *)summary detailTitle:(NSString *)detailTitle detailSubtitle:(NSString *)detailSubtitle detailSummary:(NSString *)detailSummary pinImage:(UIImage *)pinImage selectedPinImage:(UIImage *)selectedPinImage;
- (UIImage)pinImage;
- (UIImage)selectedPinImage;
- (void)encodeWithCoder:(id)coder;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v26->_identifier;
    v26->_identifier = uUID;

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

- (CPPointOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPPointOfInterest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestLocation"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestTitle"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestSummaryKey"];
    summary = v5->_summary;
    v5->_summary = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestMapMarkerKey"];
    pinImageSet = v5->_pinImageSet;
    v5->_pinImageSet = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestSelectedMapMarkerKey"];
    selectedPinImageSet = v5->_selectedPinImageSet;
    v5->_selectedPinImageSet = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailTitleKey"];
    detailTitle = v5->_detailTitle;
    v5->_detailTitle = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailSubtitleKey"];
    detailSubtitle = v5->_detailSubtitle;
    v5->_detailSubtitle = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailSummaryKey"];
    detailSummary = v5->_detailSummary;
    v5->_detailSummary = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailPrimaryButtonKey"];
    primaryButton = v5->_primaryButton;
    v5->_primaryButton = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPPointOfInterestDetailSecondayButtonKey"];
    secondaryButton = v5->_secondaryButton;
    v5->_secondaryButton = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPPointOfInterestIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(CPPointOfInterest *)self location];
  [coderCopy encodeObject:location forKey:@"CPPointOfInterestLocation"];

  title = [(CPPointOfInterest *)self title];
  [coderCopy encodeObject:title forKey:@"CPPointOfInterestTitle"];

  subtitle = [(CPPointOfInterest *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"CPPointOfInterestSubtitle"];

  summary = [(CPPointOfInterest *)self summary];
  [coderCopy encodeObject:summary forKey:@"CPPointOfInterestSummaryKey"];

  pinImageSet = [(CPPointOfInterest *)self pinImageSet];
  [coderCopy encodeObject:pinImageSet forKey:@"CPPointOfInterestMapMarkerKey"];

  selectedPinImageSet = [(CPPointOfInterest *)self selectedPinImageSet];
  [coderCopy encodeObject:selectedPinImageSet forKey:@"CPPointOfInterestSelectedMapMarkerKey"];

  detailTitle = [(CPPointOfInterest *)self detailTitle];
  [coderCopy encodeObject:detailTitle forKey:@"CPPointOfInterestDetailTitleKey"];

  detailSubtitle = [(CPPointOfInterest *)self detailSubtitle];
  [coderCopy encodeObject:detailSubtitle forKey:@"CPPointOfInterestDetailSubtitleKey"];

  detailSummary = [(CPPointOfInterest *)self detailSummary];
  [coderCopy encodeObject:detailSummary forKey:@"CPPointOfInterestDetailSummaryKey"];

  primaryButton = [(CPPointOfInterest *)self primaryButton];
  [coderCopy encodeObject:primaryButton forKey:@"CPPointOfInterestDetailPrimaryButtonKey"];

  secondaryButton = [(CPPointOfInterest *)self secondaryButton];
  [coderCopy encodeObject:secondaryButton forKey:@"CPPointOfInterestDetailSecondayButtonKey"];

  identifier = [(CPPointOfInterest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPPointOfInterestIdentifierKey"];
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
  pinImageSet = [(CPPointOfInterest *)self pinImageSet];
  image = [pinImageSet image];

  return image;
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
  selectedPinImageSet = [(CPPointOfInterest *)self selectedPinImageSet];
  image = [selectedPinImageSet image];

  return image;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPPointOfInterest *)self isEqualToPointOfInterest:equalCopy];

  return v5;
}

- (BOOL)isEqualToPointOfInterest:(id)interest
{
  interestCopy = interest;
  identifier = [(CPPointOfInterest *)self identifier];
  identifier2 = [interestCopy identifier];
  v7 = [identifier isEqual:identifier2];

  if (!v7)
  {
    goto LABEL_10;
  }

  title = [(CPPointOfInterest *)self title];
  title2 = [interestCopy title];
  v10 = [title isEqual:title2];

  if (!v10)
  {
    goto LABEL_10;
  }

  subtitle = [(CPPointOfInterest *)self subtitle];
  subtitle2 = [interestCopy subtitle];
  v13 = [subtitle isEqual:subtitle2];

  if (!v13)
  {
    goto LABEL_10;
  }

  summary = [(CPPointOfInterest *)self summary];
  summary2 = [interestCopy summary];
  v16 = [summary isEqual:summary2];

  if (!v16)
  {
    goto LABEL_10;
  }

  detailTitle = [(CPPointOfInterest *)self detailTitle];
  detailTitle2 = [interestCopy detailTitle];
  v19 = [detailTitle isEqual:detailTitle2];

  if (!v19)
  {
    goto LABEL_10;
  }

  detailSubtitle = [(CPPointOfInterest *)self detailSubtitle];
  detailSubtitle2 = [interestCopy detailSubtitle];
  v22 = [detailSubtitle isEqual:detailSubtitle2];

  if (!v22)
  {
    goto LABEL_10;
  }

  detailSummary = [(CPPointOfInterest *)self detailSummary];
  detailSummary2 = [interestCopy detailSummary];
  v25 = [detailSummary isEqual:detailSummary2];

  if (!v25)
  {
    goto LABEL_10;
  }

  pinImageSet = [(CPPointOfInterest *)self pinImageSet];
  pinImageSet2 = [interestCopy pinImageSet];
  v28 = [pinImageSet isEqual:pinImageSet2];

  if (v28)
  {
    location = [(CPPointOfInterest *)self location];
    location2 = [interestCopy location];
    v31 = [location isEqual:location2];
  }

  else
  {
LABEL_10:
    v31 = 0;
  }

  return v31;
}

@end
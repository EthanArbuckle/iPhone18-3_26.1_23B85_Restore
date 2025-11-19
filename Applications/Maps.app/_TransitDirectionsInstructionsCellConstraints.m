@interface _TransitDirectionsInstructionsCellConstraints
- (void)deactivateConstraints;
- (void)dealloc;
@end

@implementation _TransitDirectionsInstructionsCellConstraints

- (void)dealloc
{
  [(_TransitDirectionsInstructionsCellConstraints *)self deactivateConstraints];
  v3.receiver = self;
  v3.super_class = _TransitDirectionsInstructionsCellConstraints;
  [(_TransitDirectionsInstructionsCellConstraints *)&v3 dealloc];
}

- (void)deactivateConstraints
{
  v30 = objc_alloc_init(NSMutableArray);
  v3 = [(_TransitDirectionsInstructionsCellConstraints *)self minimumCellHeightConstraint];

  if (v3)
  {
    v4 = [(_TransitDirectionsInstructionsCellConstraints *)self minimumCellHeightConstraint];
    [v30 addObject:v4];
  }

  v5 = [(_TransitDirectionsInstructionsCellConstraints *)self topToPrimaryConstraint];

  if (v5)
  {
    v6 = [(_TransitDirectionsInstructionsCellConstraints *)self topToPrimaryConstraint];
    [v30 addObject:v6];
  }

  v7 = [(_TransitDirectionsInstructionsCellConstraints *)self contentLayoutGuideToPrimaryLeadingConstraint];

  if (v7)
  {
    v8 = [(_TransitDirectionsInstructionsCellConstraints *)self contentLayoutGuideToPrimaryLeadingConstraint];
    [v30 addObject:v8];
  }

  v9 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryBaselineToBottomConstraint];

  if (v9)
  {
    v10 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryBaselineToBottomConstraint];
    [v30 addObject:v10];
  }

  v11 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryToSecondaryAccessoryConstraint];

  if (v11)
  {
    v12 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryToSecondaryAccessoryConstraint];
    [v30 addObject:v12];
  }

  v13 = [(_TransitDirectionsInstructionsCellConstraints *)self platformArtworkBottomToBottomConstraint];

  if (v13)
  {
    v14 = [(_TransitDirectionsInstructionsCellConstraints *)self platformArtworkBottomToBottomConstraint];
    [v30 addObject:v14];
  }

  v15 = [(_TransitDirectionsInstructionsCellConstraints *)self platformArtworkTrailingToTextStackLabelLeadingConstraint];

  if (v15)
  {
    v16 = [(_TransitDirectionsInstructionsCellConstraints *)self platformArtworkTrailingToTextStackLabelLeadingConstraint];
    [v30 addObject:v16];
  }

  v17 = [(_TransitDirectionsInstructionsCellConstraints *)self textStackLeadingToPrimaryLabelLeadingConstraint];

  if (v17)
  {
    v18 = [(_TransitDirectionsInstructionsCellConstraints *)self textStackLeadingToPrimaryLabelLeadingConstraint];
    [v30 addObject:v18];
  }

  v19 = [(_TransitDirectionsInstructionsCellConstraints *)self secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];

  if (v19)
  {
    v20 = [(_TransitDirectionsInstructionsCellConstraints *)self secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];
    [v30 addObject:v20];
  }

  v21 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryLabelTrailingToTrailingContentConstraint];

  if (v21)
  {
    v22 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryLabelTrailingToTrailingContentConstraint];
    [v30 addObject:v22];
  }

  v23 = [(_TransitDirectionsInstructionsCellConstraints *)self secondaryLabelTrailingToTrailingContentConstraint];

  if (v23)
  {
    v24 = [(_TransitDirectionsInstructionsCellConstraints *)self secondaryLabelTrailingToTrailingContentConstraint];
    [v30 addObject:v24];
  }

  v25 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryToTrailingConstraint];

  if (v25)
  {
    v26 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryToTrailingConstraint];
    [v30 addObject:v26];
  }

  v27 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryMaximumWidthFactorConstraint];

  if (v27)
  {
    v28 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryMaximumWidthFactorConstraint];
    [v30 addObject:v28];
  }

  v29 = [(_TransitDirectionsInstructionsCellConstraints *)self initialConstraints];
  [v30 addObjectsFromArray:v29];

  [NSLayoutConstraint deactivateConstraints:v30];
}

@end
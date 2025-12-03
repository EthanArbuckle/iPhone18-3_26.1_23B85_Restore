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
  minimumCellHeightConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self minimumCellHeightConstraint];

  if (minimumCellHeightConstraint)
  {
    minimumCellHeightConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self minimumCellHeightConstraint];
    [v30 addObject:minimumCellHeightConstraint2];
  }

  topToPrimaryConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self topToPrimaryConstraint];

  if (topToPrimaryConstraint)
  {
    topToPrimaryConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self topToPrimaryConstraint];
    [v30 addObject:topToPrimaryConstraint2];
  }

  contentLayoutGuideToPrimaryLeadingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self contentLayoutGuideToPrimaryLeadingConstraint];

  if (contentLayoutGuideToPrimaryLeadingConstraint)
  {
    contentLayoutGuideToPrimaryLeadingConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self contentLayoutGuideToPrimaryLeadingConstraint];
    [v30 addObject:contentLayoutGuideToPrimaryLeadingConstraint2];
  }

  primaryBaselineToBottomConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self primaryBaselineToBottomConstraint];

  if (primaryBaselineToBottomConstraint)
  {
    primaryBaselineToBottomConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryBaselineToBottomConstraint];
    [v30 addObject:primaryBaselineToBottomConstraint2];
  }

  primaryAccessoryToSecondaryAccessoryConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryToSecondaryAccessoryConstraint];

  if (primaryAccessoryToSecondaryAccessoryConstraint)
  {
    primaryAccessoryToSecondaryAccessoryConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryToSecondaryAccessoryConstraint];
    [v30 addObject:primaryAccessoryToSecondaryAccessoryConstraint2];
  }

  platformArtworkBottomToBottomConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self platformArtworkBottomToBottomConstraint];

  if (platformArtworkBottomToBottomConstraint)
  {
    platformArtworkBottomToBottomConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self platformArtworkBottomToBottomConstraint];
    [v30 addObject:platformArtworkBottomToBottomConstraint2];
  }

  platformArtworkTrailingToTextStackLabelLeadingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self platformArtworkTrailingToTextStackLabelLeadingConstraint];

  if (platformArtworkTrailingToTextStackLabelLeadingConstraint)
  {
    platformArtworkTrailingToTextStackLabelLeadingConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self platformArtworkTrailingToTextStackLabelLeadingConstraint];
    [v30 addObject:platformArtworkTrailingToTextStackLabelLeadingConstraint2];
  }

  textStackLeadingToPrimaryLabelLeadingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self textStackLeadingToPrimaryLabelLeadingConstraint];

  if (textStackLeadingToPrimaryLabelLeadingConstraint)
  {
    textStackLeadingToPrimaryLabelLeadingConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self textStackLeadingToPrimaryLabelLeadingConstraint];
    [v30 addObject:textStackLeadingToPrimaryLabelLeadingConstraint2];
  }

  secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];

  if (secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint)
  {
    secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];
    [v30 addObject:secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint2];
  }

  primaryLabelTrailingToTrailingContentConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self primaryLabelTrailingToTrailingContentConstraint];

  if (primaryLabelTrailingToTrailingContentConstraint)
  {
    primaryLabelTrailingToTrailingContentConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryLabelTrailingToTrailingContentConstraint];
    [v30 addObject:primaryLabelTrailingToTrailingContentConstraint2];
  }

  secondaryLabelTrailingToTrailingContentConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self secondaryLabelTrailingToTrailingContentConstraint];

  if (secondaryLabelTrailingToTrailingContentConstraint)
  {
    secondaryLabelTrailingToTrailingContentConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self secondaryLabelTrailingToTrailingContentConstraint];
    [v30 addObject:secondaryLabelTrailingToTrailingContentConstraint2];
  }

  primaryAccessoryToTrailingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryToTrailingConstraint];

  if (primaryAccessoryToTrailingConstraint)
  {
    primaryAccessoryToTrailingConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryToTrailingConstraint];
    [v30 addObject:primaryAccessoryToTrailingConstraint2];
  }

  primaryAccessoryMaximumWidthFactorConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryMaximumWidthFactorConstraint];

  if (primaryAccessoryMaximumWidthFactorConstraint)
  {
    primaryAccessoryMaximumWidthFactorConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self primaryAccessoryMaximumWidthFactorConstraint];
    [v30 addObject:primaryAccessoryMaximumWidthFactorConstraint2];
  }

  initialConstraints = [(_TransitDirectionsInstructionsCellConstraints *)self initialConstraints];
  [v30 addObjectsFromArray:initialConstraints];

  [NSLayoutConstraint deactivateConstraints:v30];
}

@end
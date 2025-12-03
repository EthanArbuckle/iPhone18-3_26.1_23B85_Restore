@interface LPLinkRendererSizeClassParameters
- (BOOL)isEqual:(id)equal;
- (LPLinkRendererSizeClassParameters)initWithCoder:(id)coder;
- (id)_cacheKey;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPLinkRendererSizeClassParameters

- (LPLinkRendererSizeClassParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = LPLinkRendererSizeClassParameters;
  v5 = [(LPLinkRendererSizeClassParameters *)&v11 init];
  if (v5)
  {
    v5->_alignButtonWithCaptionTextLeadingEdge = [coderCopy decodeBoolForKey:@"alignButtonWithCaptionTextLeadingEdge"];
    v5->_preserveIconAspectRatioAndAlignmentWhenScaling = [coderCopy decodeBoolForKey:@"preserveIconAspectRatioAndAlignmentWhenScaling"];
    v5->_onlyShowIcon = [coderCopy decodeBoolForKey:@"onlyShowIcon"];
    v5->_neverShowIcon = [coderCopy decodeBoolForKey:@"neverShowIcon"];
    v5->_neverShowText = [coderCopy decodeBoolForKey:@"neverShowText"];
    v5->_disableTextWrapping = [coderCopy decodeBoolForKey:@"disableTextWrapping"];
    [coderCopy decodeDoubleForKey:@"minimumMediaCornerRadius"];
    v5->_minimumMediaCornerRadius = v6;
    [coderCopy decodeDoubleForKey:@"minimumIconCornerRadius"];
    v5->_minimumIconCornerRadius = v7;
    v5->_alignTextAndMediaHorizontalEdges = [coderCopy decodeBoolForKey:@"alignTextAndMediaHorizontalEdges"];
    [coderCopy decodeDoubleForKey:@"mediaFixedAspectRatio"];
    v5->_mediaFixedAspectRatio = v8;
    v5->_needsSpaceAffordanceForDeleteButton = [coderCopy decodeBoolForKey:@"needsSpaceAffordanceForDeleteButton"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_alignButtonWithCaptionTextLeadingEdge forKey:@"alignButtonWithCaptionTextLeadingEdge"];
  [coderCopy encodeBool:self->_preserveIconAspectRatioAndAlignmentWhenScaling forKey:@"preserveIconAspectRatioAndAlignmentWhenScaling"];
  [coderCopy encodeBool:self->_onlyShowIcon forKey:@"onlyShowIcon"];
  [coderCopy encodeBool:self->_neverShowIcon forKey:@"neverShowIcon"];
  [coderCopy encodeBool:self->_neverShowText forKey:@"neverShowText"];
  [coderCopy encodeBool:self->_disableTextWrapping forKey:@"disableTextWrapping"];
  [coderCopy encodeDouble:@"minimumMediaCornerRadius" forKey:self->_minimumMediaCornerRadius];
  [coderCopy encodeDouble:@"minimumIconCornerRadius" forKey:self->_minimumIconCornerRadius];
  [coderCopy encodeBool:self->_alignTextAndMediaHorizontalEdges forKey:@"alignTextAndMediaHorizontalEdges"];
  [coderCopy encodeDouble:@"mediaFixedAspectRatio" forKey:self->_mediaFixedAspectRatio];
  [coderCopy encodeBool:self->_needsSpaceAffordanceForDeleteButton forKey:@"needsSpaceAffordanceForDeleteButton"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPLinkRendererSizeClassParameters;
  if ([(LPLinkRendererSizeClassParameters *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v5 = *(v6 + 8) == self->_alignButtonWithCaptionTextLeadingEdge && *(v6 + 9) == self->_preserveIconAspectRatioAndAlignmentWhenScaling && *(v6 + 10) == self->_onlyShowIcon && *(v6 + 11) == self->_neverShowIcon && *(v6 + 12) == self->_neverShowText && *(v6 + 13) == self->_disableTextWrapping && v6[2] == self->_minimumMediaCornerRadius && v6[3] == self->_minimumIconCornerRadius && *(v6 + 14) == self->_alignTextAndMediaHorizontalEdges && v6[4] == self->_mediaFixedAspectRatio && *(v6 + 15) == self->_needsSpaceAffordanceForDeleteButton;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPLinkRendererSizeClassParameters allocWithZone:zone];
  if (v4)
  {
    [(LPLinkRendererSizeClassParameters *)v4 setAlignButtonWithCaptionTextLeadingEdge:[(LPLinkRendererSizeClassParameters *)self alignButtonWithCaptionTextLeadingEdge]];
    [(LPLinkRendererSizeClassParameters *)v4 setPreserveIconAspectRatioAndAlignmentWhenScaling:[(LPLinkRendererSizeClassParameters *)self preserveIconAspectRatioAndAlignmentWhenScaling]];
    [(LPLinkRendererSizeClassParameters *)v4 setOnlyShowIcon:[(LPLinkRendererSizeClassParameters *)self onlyShowIcon]];
    [(LPLinkRendererSizeClassParameters *)v4 setNeverShowIcon:[(LPLinkRendererSizeClassParameters *)self neverShowIcon]];
    [(LPLinkRendererSizeClassParameters *)v4 setNeverShowText:[(LPLinkRendererSizeClassParameters *)self neverShowText]];
    [(LPLinkRendererSizeClassParameters *)v4 setDisableTextWrapping:[(LPLinkRendererSizeClassParameters *)self disableTextWrapping]];
    [(LPLinkRendererSizeClassParameters *)self minimumMediaCornerRadius];
    [(LPLinkRendererSizeClassParameters *)v4 setMinimumMediaCornerRadius:?];
    [(LPLinkRendererSizeClassParameters *)self minimumIconCornerRadius];
    [(LPLinkRendererSizeClassParameters *)v4 setMinimumIconCornerRadius:?];
    [(LPLinkRendererSizeClassParameters *)v4 setAlignTextAndMediaHorizontalEdges:[(LPLinkRendererSizeClassParameters *)self alignTextAndMediaHorizontalEdges]];
    [(LPLinkRendererSizeClassParameters *)self mediaFixedAspectRatio];
    [(LPLinkRendererSizeClassParameters *)v4 setMediaFixedAspectRatio:?];
    [(LPLinkRendererSizeClassParameters *)v4 setNeedsSpaceAffordanceForDeleteButton:[(LPLinkRendererSizeClassParameters *)self needsSpaceAffordanceForDeleteButton]];
    v5 = v4;
  }

  return v4;
}

- (id)_cacheKey
{
  v3 = MEMORY[0x1E696AEC0];
  alignButtonWithCaptionTextLeadingEdge = [(LPLinkRendererSizeClassParameters *)self alignButtonWithCaptionTextLeadingEdge];
  preserveIconAspectRatioAndAlignmentWhenScaling = [(LPLinkRendererSizeClassParameters *)self preserveIconAspectRatioAndAlignmentWhenScaling];
  onlyShowIcon = [(LPLinkRendererSizeClassParameters *)self onlyShowIcon];
  disableTextWrapping = [(LPLinkRendererSizeClassParameters *)self disableTextWrapping];
  [(LPLinkRendererSizeClassParameters *)self minimumMediaCornerRadius];
  return [v3 stringWithFormat:@"%d%d%d%d%d%d%d", alignButtonWithCaptionTextLeadingEdge, preserveIconAspectRatioAndAlignmentWhenScaling, onlyShowIcon, disableTextWrapping, v8, -[LPLinkRendererSizeClassParameters alignTextAndMediaHorizontalEdges](self, "alignTextAndMediaHorizontalEdges"), -[LPLinkRendererSizeClassParameters needsSpaceAffordanceForDeleteButton](self, "needsSpaceAffordanceForDeleteButton")];
}

@end
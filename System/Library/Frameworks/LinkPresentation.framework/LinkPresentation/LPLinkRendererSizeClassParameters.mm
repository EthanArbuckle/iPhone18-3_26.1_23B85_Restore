@interface LPLinkRendererSizeClassParameters
- (BOOL)isEqual:(id)a3;
- (LPLinkRendererSizeClassParameters)initWithCoder:(id)a3;
- (id)_cacheKey;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPLinkRendererSizeClassParameters

- (LPLinkRendererSizeClassParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LPLinkRendererSizeClassParameters;
  v5 = [(LPLinkRendererSizeClassParameters *)&v11 init];
  if (v5)
  {
    v5->_alignButtonWithCaptionTextLeadingEdge = [v4 decodeBoolForKey:@"alignButtonWithCaptionTextLeadingEdge"];
    v5->_preserveIconAspectRatioAndAlignmentWhenScaling = [v4 decodeBoolForKey:@"preserveIconAspectRatioAndAlignmentWhenScaling"];
    v5->_onlyShowIcon = [v4 decodeBoolForKey:@"onlyShowIcon"];
    v5->_neverShowIcon = [v4 decodeBoolForKey:@"neverShowIcon"];
    v5->_neverShowText = [v4 decodeBoolForKey:@"neverShowText"];
    v5->_disableTextWrapping = [v4 decodeBoolForKey:@"disableTextWrapping"];
    [v4 decodeDoubleForKey:@"minimumMediaCornerRadius"];
    v5->_minimumMediaCornerRadius = v6;
    [v4 decodeDoubleForKey:@"minimumIconCornerRadius"];
    v5->_minimumIconCornerRadius = v7;
    v5->_alignTextAndMediaHorizontalEdges = [v4 decodeBoolForKey:@"alignTextAndMediaHorizontalEdges"];
    [v4 decodeDoubleForKey:@"mediaFixedAspectRatio"];
    v5->_mediaFixedAspectRatio = v8;
    v5->_needsSpaceAffordanceForDeleteButton = [v4 decodeBoolForKey:@"needsSpaceAffordanceForDeleteButton"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_alignButtonWithCaptionTextLeadingEdge forKey:@"alignButtonWithCaptionTextLeadingEdge"];
  [v4 encodeBool:self->_preserveIconAspectRatioAndAlignmentWhenScaling forKey:@"preserveIconAspectRatioAndAlignmentWhenScaling"];
  [v4 encodeBool:self->_onlyShowIcon forKey:@"onlyShowIcon"];
  [v4 encodeBool:self->_neverShowIcon forKey:@"neverShowIcon"];
  [v4 encodeBool:self->_neverShowText forKey:@"neverShowText"];
  [v4 encodeBool:self->_disableTextWrapping forKey:@"disableTextWrapping"];
  [v4 encodeDouble:@"minimumMediaCornerRadius" forKey:self->_minimumMediaCornerRadius];
  [v4 encodeDouble:@"minimumIconCornerRadius" forKey:self->_minimumIconCornerRadius];
  [v4 encodeBool:self->_alignTextAndMediaHorizontalEdges forKey:@"alignTextAndMediaHorizontalEdges"];
  [v4 encodeDouble:@"mediaFixedAspectRatio" forKey:self->_mediaFixedAspectRatio];
  [v4 encodeBool:self->_needsSpaceAffordanceForDeleteButton forKey:@"needsSpaceAffordanceForDeleteButton"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPLinkRendererSizeClassParameters;
  if ([(LPLinkRendererSizeClassParameters *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v5 = *(v6 + 8) == self->_alignButtonWithCaptionTextLeadingEdge && *(v6 + 9) == self->_preserveIconAspectRatioAndAlignmentWhenScaling && *(v6 + 10) == self->_onlyShowIcon && *(v6 + 11) == self->_neverShowIcon && *(v6 + 12) == self->_neverShowText && *(v6 + 13) == self->_disableTextWrapping && v6[2] == self->_minimumMediaCornerRadius && v6[3] == self->_minimumIconCornerRadius && *(v6 + 14) == self->_alignTextAndMediaHorizontalEdges && v6[4] == self->_mediaFixedAspectRatio && *(v6 + 15) == self->_needsSpaceAffordanceForDeleteButton;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPLinkRendererSizeClassParameters allocWithZone:a3];
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
  v4 = [(LPLinkRendererSizeClassParameters *)self alignButtonWithCaptionTextLeadingEdge];
  v5 = [(LPLinkRendererSizeClassParameters *)self preserveIconAspectRatioAndAlignmentWhenScaling];
  v6 = [(LPLinkRendererSizeClassParameters *)self onlyShowIcon];
  v7 = [(LPLinkRendererSizeClassParameters *)self disableTextWrapping];
  [(LPLinkRendererSizeClassParameters *)self minimumMediaCornerRadius];
  return [v3 stringWithFormat:@"%d%d%d%d%d%d%d", v4, v5, v6, v7, v8, -[LPLinkRendererSizeClassParameters alignTextAndMediaHorizontalEdges](self, "alignTextAndMediaHorizontalEdges"), -[LPLinkRendererSizeClassParameters needsSpaceAffordanceForDeleteButton](self, "needsSpaceAffordanceForDeleteButton")];
}

@end
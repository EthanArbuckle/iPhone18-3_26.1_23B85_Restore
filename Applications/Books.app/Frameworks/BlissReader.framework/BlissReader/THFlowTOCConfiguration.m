@interface THFlowTOCConfiguration
- (THFlowTOCConfiguration)initWithContext:(id)a3;
- (double)cellHeight;
- (double)chapterLabelFontSize;
- (double)discloseButtonLeftMargin;
- (double)discloseButtonRadius;
- (double)discloseButtonRightMargin;
- (double)discloseButtonWidth;
- (double)headerImageToTocTableMargin;
- (double)ordinalNumberLeftMargin;
- (double)ordinalNumberRightMarginChapter;
- (double)ordinalNumberRightMarginSection;
- (double)ordinalWidthLevel1;
- (double)ordinalWidthLevel2;
- (double)ordinalWidthLevel3;
- (double)pageNumberFontSize;
- (double)pageNumberWidth;
- (double)sectionLabelFontSize;
- (double)sectionLabelRightMargin;
- (double)separatorColorWhite;
- (double)viewTopToTocTableMargin;
- (void)_setupCompact;
- (void)_setupMegaPad;
- (void)_setupRegular;
@end

@implementation THFlowTOCConfiguration

- (THFlowTOCConfiguration)initWithContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = THFlowTOCConfiguration;
  v4 = [(THFlowTOCConfiguration *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_context = a3;
    [(THFlowTOCConfiguration *)v4 _setupCompact];
    [(THFlowTOCConfiguration *)v5 _setupRegular];
    [(THFlowTOCConfiguration *)v5 _setupMegaPad];
  }

  return v5;
}

- (double)cellHeight
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"cellHeight" context:v3];
  return result;
}

- (double)chapterLabelFontSize
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"chapterLabelFontSize" context:v3];
  return result;
}

- (double)discloseButtonLeftMargin
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"discloseButtonLeftMargin" context:v3];
  return result;
}

- (double)discloseButtonRadius
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"discloseButtonRadius" context:v3];
  return result;
}

- (double)discloseButtonRightMargin
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"discloseButtonRightMargin" context:v3];
  return result;
}

- (double)discloseButtonWidth
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"discloseButtonWidth" context:v3];
  return result;
}

- (double)headerImageToTocTableMargin
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"headerImageToTocTableMargin" context:v3];
  return result;
}

- (double)ordinalNumberLeftMargin
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalNumberLeftMargin" context:v3];
  return result;
}

- (double)ordinalNumberRightMarginChapter
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalNumberRightMarginChapter" context:v3];
  return result;
}

- (double)ordinalNumberRightMarginSection
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalNumberRightMarginSection" context:v3];
  return result;
}

- (double)ordinalWidthLevel1
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalWidthLevel1" context:v3];
  return result;
}

- (double)ordinalWidthLevel2
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalWidthLevel2" context:v3];
  return result;
}

- (double)ordinalWidthLevel3
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalWidthLevel3" context:v3];
  return result;
}

- (double)pageNumberFontSize
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"pageNumberFontSize" context:v3];
  return result;
}

- (double)pageNumberWidth
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"pageNumberWidth" context:v3];
  return result;
}

- (double)sectionLabelFontSize
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"sectionLabelFontSize" context:v3];
  return result;
}

- (double)sectionLabelRightMargin
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"sectionLabelRightMargin" context:v3];
  return result;
}

- (double)separatorColorWhite
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"separatorColorWhite" context:v3];
  return result;
}

- (double)viewTopToTocTableMargin
{
  v3 = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"viewTopToTocTableMargin" context:v3];
  return result;
}

- (void)_setupCompact
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_ED64C;
  v4[3] = &unk_45D558;
  v4[4] = &stru_45D530;
  [(THFlowTOCConfiguration *)self addWithPredicate:+[IMConfigurationPredicate adder:"iPadSizeClassPredicate"], v4];
  [(THFlowTOCConfiguration *)self addWithPredicate:[IMConfigurationPredicate adder:"iPad10SizeClassPredicate" iPad10SizeClassPredicate:3221225472], &v3];
  [(THFlowTOCConfiguration *)self addWithPredicate:+[IMConfigurationPredicate adder:"iPadOtherSizeClassPredicate"], &v3];
}

- (void)_setupRegular
{
  [(THFlowTOCConfiguration *)self addWithPredicate:+[IMConfigurationPredicate adder:"iPadSizeClassPredicate"], &stru_45D578];
  [(THFlowTOCConfiguration *)self addWithPredicate:+[IMConfigurationPredicate adder:"iPad10SizeClassPredicate"], &stru_45D5D8];
  [(THFlowTOCConfiguration *)self addWithPredicate:+[IMConfigurationPredicate adder:"iPadOtherSizeClassPredicate"], &stru_45D5D8];
  [(THFlowTOCConfiguration *)self addWithPredicate:+[IMConfigurationPredicate adder:"superPhonePortraitExactSizePredicate"], &stru_45D638];
  [(THFlowTOCConfiguration *)self addWithPredicate:+[IMConfigurationPredicate adder:"superPhoneLandscapeExactSizePredicate"], &stru_45D638];
  [(THFlowTOCConfiguration *)self addWithPredicate:+[IMConfigurationPredicate adder:"superMegaPhonePortraitExactSizePredicate"], &stru_45D638];
  v3 = +[IMConfigurationPredicate superMegaPhoneLandscapeExactSizePredicate];

  [(THFlowTOCConfiguration *)self addWithPredicate:v3 adder:&stru_45D638];
}

- (void)_setupMegaPad
{
  v3 = +[IMConfigurationPredicate megaPadSizeClassPredicate];

  [(THFlowTOCConfiguration *)self addWithPredicate:v3 adder:&stru_45D658];
}

@end
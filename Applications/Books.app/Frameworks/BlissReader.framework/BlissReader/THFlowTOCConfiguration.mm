@interface THFlowTOCConfiguration
- (THFlowTOCConfiguration)initWithContext:(id)context;
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

- (THFlowTOCConfiguration)initWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = THFlowTOCConfiguration;
  v4 = [(THFlowTOCConfiguration *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_context = context;
    [(THFlowTOCConfiguration *)v4 _setupCompact];
    [(THFlowTOCConfiguration *)v5 _setupRegular];
    [(THFlowTOCConfiguration *)v5 _setupMegaPad];
  }

  return v5;
}

- (double)cellHeight
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"cellHeight" context:context];
  return result;
}

- (double)chapterLabelFontSize
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"chapterLabelFontSize" context:context];
  return result;
}

- (double)discloseButtonLeftMargin
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"discloseButtonLeftMargin" context:context];
  return result;
}

- (double)discloseButtonRadius
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"discloseButtonRadius" context:context];
  return result;
}

- (double)discloseButtonRightMargin
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"discloseButtonRightMargin" context:context];
  return result;
}

- (double)discloseButtonWidth
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"discloseButtonWidth" context:context];
  return result;
}

- (double)headerImageToTocTableMargin
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"headerImageToTocTableMargin" context:context];
  return result;
}

- (double)ordinalNumberLeftMargin
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalNumberLeftMargin" context:context];
  return result;
}

- (double)ordinalNumberRightMarginChapter
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalNumberRightMarginChapter" context:context];
  return result;
}

- (double)ordinalNumberRightMarginSection
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalNumberRightMarginSection" context:context];
  return result;
}

- (double)ordinalWidthLevel1
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalWidthLevel1" context:context];
  return result;
}

- (double)ordinalWidthLevel2
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalWidthLevel2" context:context];
  return result;
}

- (double)ordinalWidthLevel3
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"ordinalWidthLevel3" context:context];
  return result;
}

- (double)pageNumberFontSize
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"pageNumberFontSize" context:context];
  return result;
}

- (double)pageNumberWidth
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"pageNumberWidth" context:context];
  return result;
}

- (double)sectionLabelFontSize
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"sectionLabelFontSize" context:context];
  return result;
}

- (double)sectionLabelRightMargin
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"sectionLabelRightMargin" context:context];
  return result;
}

- (double)separatorColorWhite
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"separatorColorWhite" context:context];
  return result;
}

- (double)viewTopToTocTableMargin
{
  context = [(THFlowTOCConfiguration *)self context];

  [(THFlowTOCConfiguration *)self floatForKey:@"viewTopToTocTableMargin" context:context];
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
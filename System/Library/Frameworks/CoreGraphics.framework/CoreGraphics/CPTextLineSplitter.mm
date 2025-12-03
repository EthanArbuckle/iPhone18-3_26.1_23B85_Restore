@interface CPTextLineSplitter
+ (void)splitLinesIn:(id)in;
@end

@implementation CPTextLineSplitter

+ (void)splitLinesIn:(id)in
{
  v4 = [[CPGuideFinder alloc] initWithContentZone:in];
  [(CPGuideFinder *)v4 findGutters];
  [(CPGuideFinder *)v4 findGuides];
  [in setGutters:{-[CPGuideFinder gutters](v4, "gutters")}];
  [in setLeftGuides:{-[CPGuideFinder leftGuides](v4, "leftGuides")}];
  [in setRightGuides:{-[CPGuideFinder rightGuides](v4, "rightGuides")}];
  [(CPGuideFinder *)v4 markTextLines];
  [(CPGuideFinder *)v4 dispose];

  v5 = [[CPSpacerFinder alloc] initWithContentZone:in];
  [(CPSpacerFinder *)v5 findSpacers];
  [in setSpacers:{-[CPSpacerFinder spacers](v5, "spacers")}];
  [(CPSpacerFinder *)v5 splitTextLines];
  [(CPSpacerFinder *)v5 dispose];

  [in sortUsingSelector:sel_compareYDescending_];
}

@end
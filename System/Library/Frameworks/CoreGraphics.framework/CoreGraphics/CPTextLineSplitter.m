@interface CPTextLineSplitter
+ (void)splitLinesIn:(id)a3;
@end

@implementation CPTextLineSplitter

+ (void)splitLinesIn:(id)a3
{
  v4 = [[CPGuideFinder alloc] initWithContentZone:a3];
  [(CPGuideFinder *)v4 findGutters];
  [(CPGuideFinder *)v4 findGuides];
  [a3 setGutters:{-[CPGuideFinder gutters](v4, "gutters")}];
  [a3 setLeftGuides:{-[CPGuideFinder leftGuides](v4, "leftGuides")}];
  [a3 setRightGuides:{-[CPGuideFinder rightGuides](v4, "rightGuides")}];
  [(CPGuideFinder *)v4 markTextLines];
  [(CPGuideFinder *)v4 dispose];

  v5 = [[CPSpacerFinder alloc] initWithContentZone:a3];
  [(CPSpacerFinder *)v5 findSpacers];
  [a3 setSpacers:{-[CPSpacerFinder spacers](v5, "spacers")}];
  [(CPSpacerFinder *)v5 splitTextLines];
  [(CPSpacerFinder *)v5 dispose];

  [a3 sortUsingSelector:sel_compareYDescending_];
}

@end
@interface CRLBoardItemSelectionAccessibility
- (NSSet)crlaxInfos;
- (unint64_t)crlaxInfoCount;
@end

@implementation CRLBoardItemSelectionAccessibility

- (NSSet)crlaxInfos
{
  v2 = [(CRLBoardItemSelectionAccessibility *)self crlaxTarget];
  v3 = [v2 boardItems];

  return v3;
}

- (unint64_t)crlaxInfoCount
{
  v2 = [(CRLBoardItemSelectionAccessibility *)self crlaxTarget];
  v3 = [v2 itemCount];

  return v3;
}

@end
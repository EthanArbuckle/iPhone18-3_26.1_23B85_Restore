@interface CRLBoardItemSelectionAccessibility
- (NSSet)crlaxInfos;
- (unint64_t)crlaxInfoCount;
@end

@implementation CRLBoardItemSelectionAccessibility

- (NSSet)crlaxInfos
{
  crlaxTarget = [(CRLBoardItemSelectionAccessibility *)self crlaxTarget];
  boardItems = [crlaxTarget boardItems];

  return boardItems;
}

- (unint64_t)crlaxInfoCount
{
  crlaxTarget = [(CRLBoardItemSelectionAccessibility *)self crlaxTarget];
  itemCount = [crlaxTarget itemCount];

  return itemCount;
}

@end
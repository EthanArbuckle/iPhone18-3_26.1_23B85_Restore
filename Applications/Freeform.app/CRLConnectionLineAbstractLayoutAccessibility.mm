@interface CRLConnectionLineAbstractLayoutAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_crlaxVisuallyPointsAtHead;
- (BOOL)_crlaxVisuallyPointsAtTail;
- (BOOL)crlaxIsVisuallyPointingAt:(id)at;
- (id)crlaxOppositeConnectedLayoutFrom:(id)from;
@end

@implementation CRLConnectionLineAbstractLayoutAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)crlaxIsVisuallyPointingAt:(id)at
{
  atCopy = at;
  if ([(CRLConnectionLineAbstractLayoutAccessibility *)self _crlaxVisuallyPointsAtHead])
  {
    crlaxTarget = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
    connectedTo = [crlaxTarget connectedTo];
    v7 = connectedTo == atCopy;
  }

  else
  {
    v7 = 0;
  }

  if ([(CRLConnectionLineAbstractLayoutAccessibility *)self _crlaxVisuallyPointsAtTail])
  {
    crlaxTarget2 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
    connectedFrom = [crlaxTarget2 connectedFrom];
    v10 = connectedFrom == atCopy;
  }

  else
  {
    v10 = 0;
  }

  return v7 || v10;
}

- (id)crlaxOppositeConnectedLayoutFrom:(id)from
{
  fromCopy = from;
  crlaxTarget = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  connectedTo = [crlaxTarget connectedTo];

  crlaxTarget2 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  v8 = crlaxTarget2;
  if (connectedTo == fromCopy)
  {
    [crlaxTarget2 connectedFrom];
  }

  else
  {
    [crlaxTarget2 connectedTo];
  }
  v9 = ;

  return v9;
}

- (BOOL)_crlaxVisuallyPointsAtHead
{
  crlaxTarget = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  strokeHeadLineEnd = [crlaxTarget strokeHeadLineEnd];

  crlaxTarget2 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  strokeTailLineEnd = [crlaxTarget2 strokeTailLineEnd];

  if (!strokeHeadLineEnd)
  {
    LOBYTE(v7) = 0;
    if (strokeTailLineEnd)
    {
      goto LABEL_3;
    }

LABEL_5:
    isNone = 1;
    goto LABEL_6;
  }

  v7 = [strokeHeadLineEnd isNone] ^ 1;
  if (!strokeTailLineEnd)
  {
    goto LABEL_5;
  }

LABEL_3:
  isNone = [strokeTailLineEnd isNone];
LABEL_6:
  v9 = v7 | isNone;

  return v9 & 1;
}

- (BOOL)_crlaxVisuallyPointsAtTail
{
  crlaxTarget = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  strokeHeadLineEnd = [crlaxTarget strokeHeadLineEnd];

  crlaxTarget2 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  strokeTailLineEnd = [crlaxTarget2 strokeTailLineEnd];

  if (!strokeHeadLineEnd)
  {
    isNone = 1;
    if (!strokeTailLineEnd)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  isNone = [strokeHeadLineEnd isNone];
  if (strokeTailLineEnd)
  {
LABEL_3:
    isNone |= [strokeTailLineEnd isNone] ^ 1;
  }

LABEL_4:

  return isNone & 1;
}

@end
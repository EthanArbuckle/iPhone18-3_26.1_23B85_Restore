@interface CRLConnectionLineAbstractLayoutAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_crlaxVisuallyPointsAtHead;
- (BOOL)_crlaxVisuallyPointsAtTail;
- (BOOL)crlaxIsVisuallyPointingAt:(id)a3;
- (id)crlaxOppositeConnectedLayoutFrom:(id)a3;
@end

@implementation CRLConnectionLineAbstractLayoutAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)crlaxIsVisuallyPointingAt:(id)a3
{
  v4 = a3;
  if ([(CRLConnectionLineAbstractLayoutAccessibility *)self _crlaxVisuallyPointsAtHead])
  {
    v5 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
    v6 = [v5 connectedTo];
    v7 = v6 == v4;
  }

  else
  {
    v7 = 0;
  }

  if ([(CRLConnectionLineAbstractLayoutAccessibility *)self _crlaxVisuallyPointsAtTail])
  {
    v8 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
    v9 = [v8 connectedFrom];
    v10 = v9 == v4;
  }

  else
  {
    v10 = 0;
  }

  return v7 || v10;
}

- (id)crlaxOppositeConnectedLayoutFrom:(id)a3
{
  v4 = a3;
  v5 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  v6 = [v5 connectedTo];

  v7 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  v8 = v7;
  if (v6 == v4)
  {
    [v7 connectedFrom];
  }

  else
  {
    [v7 connectedTo];
  }
  v9 = ;

  return v9;
}

- (BOOL)_crlaxVisuallyPointsAtHead
{
  v3 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  v4 = [v3 strokeHeadLineEnd];

  v5 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  v6 = [v5 strokeTailLineEnd];

  if (!v4)
  {
    LOBYTE(v7) = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  v7 = [v4 isNone] ^ 1;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [v6 isNone];
LABEL_6:
  v9 = v7 | v8;

  return v9 & 1;
}

- (BOOL)_crlaxVisuallyPointsAtTail
{
  v3 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  v4 = [v3 strokeHeadLineEnd];

  v5 = [(CRLConnectionLineAbstractLayoutAccessibility *)self crlaxTarget];
  v6 = [v5 strokeTailLineEnd];

  if (!v4)
  {
    v7 = 1;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = [v4 isNone];
  if (v6)
  {
LABEL_3:
    v7 |= [v6 isNone] ^ 1;
  }

LABEL_4:

  return v7 & 1;
}

@end